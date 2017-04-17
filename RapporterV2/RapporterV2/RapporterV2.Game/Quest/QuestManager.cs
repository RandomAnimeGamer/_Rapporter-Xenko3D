﻿using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Input; using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events; using RapporterV2.Player;

namespace RapporterV2.Quest { public class QuestManager : SyncScript {
    int main = 0, sword = 0, move = 0, jump = 0;//0=not taken, 1=taken/incomplete, 2=complete
    int count = 0; List<String> quests = new List<String>();//maximum of 5? each quest be its own object off-screen?
    public static readonly EventReceiver<bool> mainSt = new EventReceiver<bool>(NPCTalk.main);
    public static readonly EventReceiver<bool> swordSt = new EventReceiver<bool>(NPCTalk2.main);
/*    public static readonly EventReceiver<bool> moveSt = new EventReceiver<bool>();
    public static readonly EventReceiver<bool> jumpSt = new EventReceiver<bool>();*/

    public static readonly EventReceiver<bool> mainComp = new EventReceiver<bool>(Enemy.main);
    public static readonly EventReceiver<bool> swordComp = new EventReceiver<bool>(SwordQ.main);
/*    public static readonly EventReceiver<bool> moveComp = new EventReceiver<bool>();
    public static readonly EventReceiver<bool> jumpComp = new EventReceiver<bool>();*/

    public static readonly EventKey<int> countKey = new EventKey<int>();
    public static readonly EventKey<Vector2> mainMove = new EventKey<Vector2>();//always broadcast (1, count)
    public static readonly EventKey<Vector2> swordMove = new EventKey<Vector2>();//always broadcast (1, count)
    public static readonly EventKey<int> completed = new EventKey<int>();//always quest #
    public static readonly EventKey<bool> swordQ = new EventKey<bool>();

    public override void Start() { }
    public override void Update() {
        move=0; jump=0; if(move==0&&jump==0) move=0;
        //Quest Acceptance
        if(main==0) { var maSt = false; mainSt.TryReceive(out maSt);
            if(maSt) {
                quests.Add("main"); main=1; count++;
				mainMove.Broadcast(new Vector2(1, count-quests.IndexOf("main")));
            }
        }
        if(main==1) mainMove.Broadcast(new Vector2(1, count-quests.IndexOf("main")));
        
        if(sword==0) { var swSt = false; swordSt.TryReceive(out swSt);
            if(swSt) {
                quests.Add("sword"); sword=1; count++;
                swordMove.Broadcast(new Vector2(1, count-quests.IndexOf("sword")));
            }
        }
        if(sword==1) { swordMove.Broadcast(new Vector2(1, count-quests.IndexOf("sword"))); swordQ.Broadcast(true); }
        
/*        if(move==0) { var moSt = false; moveSt.TryReceive(out moSt);
            if(moSt) {
                quests.Add("move");
                move=1; count++;
            }
        }
        if(jump==0) { var juSt = false; jumpSt.TryReceive(out juSt);
            if(juSt) {
                quests.Add("jump");
                jump=1; count++;
            }
        }*/

        //Quest Completion
        if(main==1) { var maCo = false; mainComp.TryReceive(out maCo);
            if(maCo) {
                quests.Remove("main"); main=2; count--; completed.Broadcast(1);
            }
        }
        if(sword==1) { var swCo = false; swordComp.TryReceive(out swCo);
            if(swCo) {
                quests.Remove("sword");
                sword=2; count--;
            }
        }
/*        if(move==1) { var moCo = false; moveComp.TryReceive(out moCo);
            if(moCo) {
                quests.Remove("move");
                move=2; count--;
            }
        }
        if(jump==1) { var juCo = false; jumpComp.TryReceive(out juCo);
            if(juCo) {
                quests.Remove("jump");
                jump=2; count--;
            }
        }*/
    }
} }
