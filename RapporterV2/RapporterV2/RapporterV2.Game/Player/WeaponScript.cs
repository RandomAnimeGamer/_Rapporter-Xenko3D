using System;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;
using SiliconStudio.Xenko.Physics;
using SiliconStudio.Xenko.Rendering.Sprites;

namespace RapporterV2.Player { public class WeaponScript : SyncScript {
    private readonly EventReceiver<int> AtkEvent = new EventReceiver<int>(PlayerInput.AtkEventKey);
    public static readonly EventKey<bool> completed = new EventKey<bool>();
    private int combo=3;//3 is null state

    public override void Update() {
        AtkEvent.TryReceive(out combo);
        if(combo==0) { completed.Broadcast(false); }//decrement x&y rateX:Y=2:1, move z ^ then V where z is like x^2 graph, rotate y until 180
        if(combo==1) { completed.Broadcast(false); }//reverse combo 1
        if(combo==2) { completed.Broadcast(false); }//move z back a bit, rotate so all axes are 0, then move z forward, then reverse the process
        if(combo==3) { completed.Broadcast(false); }
    }
} }