using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2.Player { public class NPCTalk : AsyncScript {
    public static readonly EventKey<bool> ttm = new EventKey<bool>();
    public bool talkToMe = false;
    public override async Task Execute() {
        var trigger = Entity.Get<PhysicsComponent>();
        while(Game.IsRunning) {
            await trigger.NewCollision();//wait for entities coming in
            //do some shit when the collision happens
            
            await trigger.CollisionEnded();//now wait for entities exiting
            //undo that shit as necessary
        }
    }
} }