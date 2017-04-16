﻿using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine; using SiliconStudio.Xenko.Engine.Events; using SiliconStudio.Xenko.Physics;

namespace RapporterV2.Quest { public class SwordQ : AsyncScript {
    public static readonly EventKey<bool> main = new EventKey<bool>();
    public static readonly EventReceiver<bool> q = new EventReceiver<bool>(QuestManager.swordQ);
    public override async Task Execute() {
        var trigger = Entity.Get<PhysicsComponent>();
        trigger.ProcessCollisions = true;
        while(Game.IsRunning) {
            var firstCollision = await trigger.NewCollision();//wait for entities coming in
            var isQ = false; q.TryReceive(out isQ); if(isQ) main.Broadcast(true);
            var collision = await trigger.CollisionEnded();
            main.Broadcast(false);
        }
    }
} }