using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Physics;

namespace Rapporter { public class Gravity : AsyncScript {
    public override async Task Execute() {
        var trigger = Entity.Get<PhysicsComponent>(); trigger.ProcessCollisions=true;
        while(Game.IsRunning) {
            trigger.UpdatePhysicsTransformation();
            var first = await trigger.NewCollision();
            var otherCollider = trigger == first.ColliderA ? first.ColliderB : first.ColliderA;
            otherCollider.Entity.Transform.Scale = new Vector3(2.0f, 2.0f, 2.0f);
            Collision collision;
            do { collision = await trigger.CollisionEnded(); }
            while(collision != first);
            otherCollider.Entity.Transform.Scale = new Vector3(1.0f, 1.0f, 1.0f);
            
            await Script.NextFrame();
        }
    }
} }
