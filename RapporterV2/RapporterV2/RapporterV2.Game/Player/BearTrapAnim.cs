using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine; using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2.Player { public class BearTrapAnim : SyncScript {
    public static readonly EventReceiver<int> damage = new EventReceiver<int>(CollisionDamage.main); bool dmg=false;
    AnimationComponent anim; public override void Start() { anim = Entity.Get<AnimationComponent>(); }
    public override void Update() {
        if(!dmg) {
            var damaging=0; damage.TryReceive(out damaging);
            if(damaging!=0) { if(damaging==1) { anim.Play("close"); dmg=true; } }
        }
    }
} }