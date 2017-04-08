﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core;
using SiliconStudio.Core.Collections;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Animations;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;
using SiliconStudio.Xenko.Physics;
using RapporterV2.Player;

namespace RapporterV2.Animations { public class NPC1_Animations : SyncScript {
    private readonly EventReceiver<int> talk = new EventReceiver<int>(NPCTalk.ttm); AnimationComponent anim;
    public static readonly EventReceiver<bool> walking = new EventReceiver<bool>(WalkAnim.walking);
    public override void Start() { anim = Entity.Get<AnimationComponent>(); anim.Play("idle"); }
    public override void Update() {
        var wlk=false; walking.TryReceive(out wlk);
        if(!wlk) {
            var tlk=0; talk.TryReceive(out tlk);
            if(tlk==1&&anim.IsPlaying("idle")) anim.Play("talk");
            else if(tlk==2&&anim.IsPlaying("talk")) anim.Play("idle");
        }
    }
} }