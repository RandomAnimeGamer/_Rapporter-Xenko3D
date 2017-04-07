﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;

namespace Quest { public class QuestManager : SyncScript {
    int main = 0, sword = 0, move = 0, jump = 0;//0=not taken, 1=taken/incomplete, 2=complete
    int count = 0;//maximum of 5? each quest be its own object off-screen?
    
/*    public readonly EventReceiver<bool> mainSt = new EventReceiver<bool>();
    public readonly EventReceiver<bool> swordSt = new EventReceiver<bool>();
    public readonly EventReceiver<bool> moveSt = new EventReceiver<bool>();
    public readonly EventReceiver<bool> jumpSt = new EventReceiver<bool>();
    
    public readonly EventReceiver<bool> mainComp = new EventReceiver<bool>();
    public readonly EventReceiver<bool> swordComp = new EventReceiver<bool>();
    public readonly EventReceiver<bool> moveComp = new EventReceiver<bool>();
    public readonly EventReceiver<bool> jumpComp = new EventReceiver<bool>();*/
    
    public override void Start() {
    }

    public override void Update() {
/*        if(main==0) { var maSt = false; mainSt.TryReceive(out maSt);
            if(maSt) {
                //add quest to arraylist
                main=1; count++;
            }
        }
        if(sword==0) { var swSt = false; swordSt.TryReceive(out swSt);
            if(swSt) {
                //add quest to arraylist
                sword=1; count++;
            }
        }
        if(move==0) { var moSt = false; moveSt.TryReceive(out moSt);
            if(moSt) {
                //add quest to arraylist
                move=1; count++;
            }
        }
        if(jump==0) { var juSt = false; jumpSt.TryReceive(out juSt);
            if(juSt) {
                //add quest to arraylist
                jump=1; count++;
            }
        }

        var maCo = false; mainComp.TryReceive(out maCo);
        var swCo = false; swordComp.TryReceive(out swCo);
        var moCo = false; moveComp.TryReceive(out moCo);
        var juCo = false; jumpComp.TryReceive(out juCo);*/

        
    }
} }