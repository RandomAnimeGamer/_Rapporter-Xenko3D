﻿using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Input; using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events; using SiliconStudio.Xenko.Physics;

namespace RapporterV2.Player { public class CollisionDie : AsyncScript {
    public static readonly EventKey<bool> main = new EventKey<bool>();
    public override async Task Execute() {
        var trigger = Entity.Get<PhysicsComponent>(); trigger.ProcessCollisions = true;
        while(Game.IsRunning) {
            var firstCollision = await trigger.NewCollision();//wait for entities coming in
            main.Broadcast(true);
            var collision = await trigger.CollisionEnded();
            main.Broadcast(false);
        }
    }
} }