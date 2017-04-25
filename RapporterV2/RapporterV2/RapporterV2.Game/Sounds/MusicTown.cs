using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Engine; using SiliconStudio.Xenko.Audio;
using SiliconStudio.Xenko.Physics; using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2.Sounds { public class MusicTown : AsyncScript {
    public static readonly EventKey<int> main = new EventKey<int>(); int ttm;
    public override async Task Execute() {
        var trigger = Entity.Get<PhysicsComponent>(); trigger.ProcessCollisions = true;
        while(Game.IsRunning) {
            var firstCollision = await trigger.NewCollision();//wait for entities coming in
            ttm=1; main.Broadcast(ttm);
            var collision = await trigger.CollisionEnded();
            ttm=2; main.Broadcast(ttm);
        }
    }
} }
