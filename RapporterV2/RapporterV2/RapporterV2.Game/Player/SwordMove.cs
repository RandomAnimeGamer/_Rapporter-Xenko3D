using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2.Player { public class SwordMove : SyncScript {
    public static readonly EventReceiver<bool> move = new EventReceiver<bool>(PlayerInput.swordMove);
    public bool buffer = false, ready = true, moving = false; public int count;
    private Vector3 moveVector;
    public override void Start() { moveVector = new Vector3(0f,0f,5f); count=0; }
    public override void Update() {
        move.TryReceive(out buffer);
        if(ready&&buffer) {
            ready = false;
            moving = true;
        }
        if(moving) {
            Entity.Transform.Rotation.Rotate(ref moveVector);
            count++;
            if(count>=5) { moving=false; ready=true; }
        }
    }
} }
