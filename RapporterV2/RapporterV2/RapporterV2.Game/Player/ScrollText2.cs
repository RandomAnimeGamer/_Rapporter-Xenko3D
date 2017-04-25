﻿using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Input; using SiliconStudio.Xenko.Engine; using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2.Player { public class ScrollText2 : SyncScript {
    public static readonly EventKey<Vector3> text = new EventKey<Vector3>();
    public static readonly EventReceiver<int> NPC = new EventReceiver<int>(NPCTalk2.ttm);
    private Vector3 startAt = new Vector3(0,-0.078f,-0.122f); private Vector3 stopAt = new Vector3(0,-0.038f,-0.122f);
    private int talk; private int talkBuffer;
    public override void Update() {
        text.Broadcast(Entity.Transform.Position);
        NPC.TryReceive(out talkBuffer); if(talkBuffer!=0) talk=talkBuffer;
        if(talk==1) { Entity.Transform.Position += new Vector3(0,0.008f,0);
            if(Entity.Transform.Position.Y >= stopAt.Y) Entity.Transform.Position = stopAt; }
        if(talk==2) { Entity.Transform.Position -= new Vector3(0,0.008f,0);
            if(Entity.Transform.Position.Y <= startAt.Y) Entity.Transform.Position = startAt; }
    }
} }