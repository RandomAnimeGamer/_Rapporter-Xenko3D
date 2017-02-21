using System;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Physics;
using System.Threading.Tasks;
using SiliconStudio.Core;
using SiliconStudio.Xenko.Engine.Events;

namespace PhysicsSample
{
    public class Trigger : AsyncScript
    {
        [DataMemberIgnore]
        public EventKey<bool> TriggerEvent = new EventKey<bool>();

        public override async Task Execute()
        {
            var trigger = Entity.Get<PhysicsComponent>();
            trigger.ProcessCollisions = true;

            while (Game.IsRunning)
            {
                // Wait for the next collision event
                var firstCollision = await trigger.NewCollision();

                // Filter collisions based on collision groups
                var filterAhitB = ((int)firstCollision.ColliderA.CanCollideWith) & ((int)firstCollision.ColliderB.CollisionGroup);
                var filterBhitA = ((int)firstCollision.ColliderB.CanCollideWith) & ((int)firstCollision.ColliderA.CollisionGroup);
                if (filterAhitB == 0 || filterBhitA == 0)
                    continue;

                // Broadcast the collision start event
                TriggerEvent.Broadcast(true);

                // Wait for the collision to end and broadcast that event
                Func<Task> collisionEndTask = async () =>
                {
                    Collision collision;
                    do
                    {
                        collision = await trigger.CollisionEnded();
                    } while (collision != firstCollision);

                    TriggerEvent.Broadcast(false);
                };

                Script.AddTask(collisionEndTask);
            }
        }
    }
}
