using System;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;
using SiliconStudio.Xenko.Physics;
using SiliconStudio.Xenko.Rendering.Sprites;
using RapporterV2.Core;

namespace RapporterV2.Player { public class WeaponScript : SyncScript {
    private readonly EventReceiver<int> AtkEvent = new EventReceiver<int>(PlayerInput.AtkEventKey);
    private readonly EventReceiver<bool> resetPos = new EventReceiver<bool>(PlayerInput.ResetEvent);
    private readonly EventReceiver<bool> resetT = new EventReceiver<bool>(PlayerInput.ResetTime);
    public static readonly EventKey<bool> completed = new EventKey<bool>();
    public CameraComponent Camera { get; set; }
    private int buffer=0, combo=0;//0 is null state
    private bool reset=false, T=false;

    private float Cooldown = 1f;
    private float cooldownRemaining = 0f;

    public override void Update() {
        resetPos.TryReceive(out reset);//try to receive a position reset
        resetT.TryReceive(out T);
        AtkEvent.TryReceive(out buffer);//try to receive a combo number, 0 is NaN state

        if(T) cooldownRemaining = 10f;
        if(reset) Entity.Transform.Position = new Vector3(.08f, -.05f, -.11f);
        if(buffer!=0) { combo=buffer; }//buffer for a combo number

        var pos = Vector3.Zero;//translation vector
        if(combo==1&&cooldownRemaining > 0f) {//decrement x&y rateX:Y=2:1, move z ^ then V where z is like x^2 graph, rotate y until 180
            pos.X -= .02f; pos.Y -= .01f;
            cooldownRemaining -= 1f;
            if(cooldownRemaining > 10f) pos.Z += .01f;
            else if(cooldownRemaining < 10) pos.Z-= .01f;
            else pos.Z += 0f;
            Vector3 Rotations = new Vector3(0f, 0f, 50f); Entity.Get<RigidbodyComponent>().ApplyTorque(Rotations);
        }
        //reverse combo 1
        if(combo==2) { completed.Broadcast(false); }//move z back a bit, rotate so all axes are 0, then move z forward, then reverse the process
        if(combo==3) { completed.Broadcast(false); }
        
        
        var worldSpeed = (Camera != null)//Convert translation vector to world if applicable
        ? Utils.LogicDirectionToWorldDirection(new Vector2(pos.X, pos.Z), Camera, Vector3.UnitY) + new Vector3(0, pos.Y, 0)
        : new Vector3(pos.X, pos.Y, pos.Z);//No camera? No problem!
        Entity.Transform.Position += worldSpeed;//apply modified vector to translation
        
        if(cooldownRemaining <= 0f) completed.Broadcast(true);
    }
} }