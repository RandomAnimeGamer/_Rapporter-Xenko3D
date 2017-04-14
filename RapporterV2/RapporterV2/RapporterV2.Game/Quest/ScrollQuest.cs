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
    public float moving=0, old=0; public float quest;//1=main, 2=sword, 3=move, 4=jump, 5=complete
    //move1.X is whether or not the object needs to move, move1.Y is where in the queue it is.
    public static readonly EventReceiver<Vector2> move1 = new EventReceiver<Vector2>(QuestManager.mainMove);
    public static readonly EventReceiver<Vector2> move2 = new EventReceiver<Vector2>(QuestManager.swordMove);
    public static readonly EventReceiver<int> move5 = new EventReceiver<int>(QuestManager.completed);//returns quest #
    public static readonly EventKey<Vector3> trans = new EventKey<Vector3>();//X/Y = Transform, Z = Quest
    private Vector3 startAt = new Vector3(-1f,0.04f,-0.123f);
    private Vector3 vect1 = new Vector3(-0.072f,0.04f,-0.123f);
    private Vector3 vect2 = new Vector3(-0.072f,0.02f,-0.123f);
    public override void Update() {
        trans.Broadcast(new Vector3(Entity.Transform.Position.X, Entity.Transform.Position.Y, quest));
        //receive when quest is accepted
        //receive when quest should be moved down (as int = quest count)
        //if quest is accepted, move to startAt
        //if quest should be moved down, move to the int it receives
        if(moving!=5) {
        
            if(moving==1&&old<=moving) { Entity.Transform.Position.X+=0.005f;
                if(Entity.Transform.Position.X>=vect1.X) Entity.Transform.Position.X=vect1.X; }
            if(moving==1&&old==2) { Entity.Transform.Position.X-=0.005f;
                if(Entity.Transform.Position.X<=vect1.X) Entity.Transform.Position.X=vect1.X; }
                
            if(moving==2&&old<=moving) { Entity.Transform.Position.Y-=0.005f;
                if(Entity.Transform.Position.Y<=vect2.Y) Entity.Transform.Position.Y=vect2.Y; }
            if(moving==2&&old==3) { Entity.Transform.Position.Y+=0.005f;
                if(Entity.Transform.Position.Y>=vect2.Y) Entity.Transform.Position.Y=vect2.Y; }
                
            if(quest==1) {
                var check=Vector2.Zero; move1.TryReceive(out check);
                if(check.X==1) { old=moving; moving=check.Y; }//check.Y is the vector it moves to
            }
            if(quest==2) {
                var check=Vector2.Zero; move2.TryReceive(out check);
                if(check.X==1) { old=moving; moving=check.Y; }//check.Y is the vector it moves to
            }
        }
        var comp=0; move5.TryReceive(out comp); if(comp==quest) moving=5;
        if(moving==5) { Entity.Transform.Position.X-=0.005f;
            if(Entity.Transform.Position.X<=startAt.X) Entity.Transform.Position.X=startAt.X; }
        /*text.Broadcast(Entity.Transform.Position);
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
