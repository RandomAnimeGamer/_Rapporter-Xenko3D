using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2.Player { public class WalkAnim : SyncScript {
    public static readonly EventKey<bool> canWalk = new EventKey<bool>();
    public static readonly EventKey<bool> walking = new EventKey<bool>();
    public static readonly EventReceiver<bool> ready = new EventReceiver<bool>(PlayerInput.grounded);
    public static readonly EventReceiver<int> ttm = new EventReceiver<int>(NPCTalk.ttm);
    AnimationComponent anim;
    bool done=false; bool started=false;
    public override void Start() {
        anim = Entity.Get<AnimationComponent>();
    }

    public override void Update() {
        var redy=false; ready.TryReceive(out redy);
        var talk=0; ttm.TryReceive(out talk);
        if(redy&&!done&&talk!=1) {
            walking.Broadcast(true);
            if(!started) { started = true; anim.Play("walk"); }
            Entity.Transform.Position -= new Vector3(0.1f, 0, 0);
        }
        if(talk==1) { done=true; walking.Broadcast(false); }
    }
} }
