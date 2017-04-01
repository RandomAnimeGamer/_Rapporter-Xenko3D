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
    public static readonly EventKey<bool> atking = new EventKey<bool>();
    public CameraComponent Camera { get; set; }
    private int buffer=0, combo=0;//0 is null state
    private bool reset=false, T=false;
    private Vector3 posVect = new Vector3(.6f, -.3f, -.8f);
    private Vector3 rotVect = new Vector3(320, 0, 0);
    private RigidbodyComponent r;

    private float cooldownRemaining = 0f;

    public override void Start() { r = Entity.Get<RigidbodyComponent>(); }
    public override void Update() {
        resetPos.TryReceive(out reset);//try to receive a position reset
        resetT.TryReceive(out T);
        AtkEvent.TryReceive(out buffer);//try to receive a combo number, 0 is NaN state

        if(T) cooldownRemaining = 10f;
        if(reset) { Entity.Transform.Position = posVect; Entity.Transform.RotationEulerXYZ = rotVect; }
        if(buffer!=0) { combo=buffer; }//buffer for a combo number

        var pos = Vector3.Zero;//translation vector
        if(combo==1&&cooldownRemaining > 0f) {//decrement x&y rateX:Y=2:1, move z ^ then V where z is like x^2 graph, rotate y and z
            atking.Broadcast(true);
//            Entity.Get<AnimationComponent>().Play("slash");
            pos.X -= .15f; pos.Y -= .05f;
            cooldownRemaining -= 1f;
            if(cooldownRemaining > 3f) pos.Z -= .1f;
            else if(cooldownRemaining < 3f) pos.Z += .1f;
            else pos.Z += 0f;
            if(cooldownRemaining > 4f) Entity.Transform.RotationEulerXYZ -= new Vector3(.1f, 0f, 0f);
            atking.Broadcast(true);
        }
        if(combo==2&&cooldownRemaining > 0f) {//reverse combo 1
            atking.Broadcast(true);
//            Entity.Get<AnimationComponent>().Play("slash");
            cooldownRemaining -= 1f;
            if(cooldownRemaining > 4f) Entity.Transform.RotationEulerXYZ += new Vector3(.1f, 0f, 0f);
            if(cooldownRemaining > 3f) pos.Z -= .1f;
            else if(cooldownRemaining < 3f) pos.Z += .1f;
            else pos.Z += 0f;
            pos.Y += .05f; pos.X += .15f;
            atking.Broadcast(true);
        }
        if(combo==3&&cooldownRemaining > 0f) {
            atking.Broadcast(true);
            if(cooldownRemaining >= 5f) {
                Entity.Transform.RotationEulerXYZ -= new Vector3(.2f, 0f, 0f);
                pos.X -= .1f; pos.Z += .2f;
            }
            else if(cooldownRemaining < 5f) {
                pos.Z -= .5f;
            }
            cooldownRemaining -= 1f;
            atking.Broadcast(true);
        }//move z back a bit, rotate so all axes are 0, then move z forward, then reverse the process
        
        
        var worldSpeed = pos;//keep this here in case we need to modify this variable
        Entity.Transform.Position += worldSpeed;//apply modified vector to translation

        if(cooldownRemaining <= 0f) { cooldownRemaining=0f; completed.Broadcast(true); }
    }
} }