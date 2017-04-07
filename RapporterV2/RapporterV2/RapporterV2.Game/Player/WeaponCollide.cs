﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2.Player { public class WeaponCollide : AsyncScript {
    public static readonly EventKey<bool> die = new EventKey<bool>();
//    public static readonly EventKey<bool> dieDirection = new EventKey<bool>();
    private bool damage = false;
    public override async Task Execute() {
        var trigger = Entity.Get<PhysicsComponent>();
        trigger.ProcessCollisions = true;
        while(Game.IsRunning) {
            var firstCollision = await trigger.NewCollision();//wait for entities coming in
            damage=true; die.Broadcast(damage);
            var collision = await trigger.CollisionEnded();
            damage=false; die.Broadcast(damage);
        }
    }
} }
