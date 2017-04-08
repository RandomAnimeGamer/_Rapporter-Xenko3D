﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2.Quest { public class ScrollQuest : SyncScript {
//    public static readonly EventKey<Vector3> text = new EventKey<Vector3>();
//    public static readonly EventReceiver<int> NPC = new EventReceiver<int>(NPCTalk.ttm);
//    public static readonly EventReceiver<Vector3> P1 = new EventReceiver<Vector3>(PlayerInput.PlayerPos);
    private Vector3 startAt = new Vector3(-0.08f,0.025f,-0.122f);
    public override void Update() {
        //receive when quest is accepted
        //receive when quest should be moved down (as int = quest count)
        //if quest is accepted, move to startAt
        //if quest should be moved down, move to the int it receives
/*        text.Broadcast(Entity.Transform.Position);
        NPC.TryReceive(out talkBuffer); if(talkBuffer!=0) talk=talkBuffer;
        if(talk==1) {
            Entity.Transform.Position += new Vector3(0,0.008f,0);
            if(Entity.Transform.Position.Y >= stopAt.Y) Entity.Transform.Position = stopAt;
        }
        if(talk==2) {
            Entity.Transform.Position -= new Vector3(0,0.008f,0);
            if(Entity.Transform.Position.Y <= startAt.Y) Entity.Transform.Position = startAt;
        }*/
    }
} }