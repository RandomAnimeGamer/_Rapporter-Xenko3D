﻿using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Audio; using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Physics; using SiliconStudio.Xenko.Engine.Events; using RapporterV2.Player;

namespace RapporterV2.Sounds { public class MusicTownSync : SyncScript {
    public Sound SoundMusic; private SoundInstance forest;
    public static readonly EventReceiver<int> m = new EventReceiver<int>(MusicTown.main);
    bool check=false; public static readonly EventReceiver<bool> ded = new EventReceiver<bool>(PlayerInput.dead);
    public override void Start() { forest = SoundMusic.CreateInstance(); }
    public override void Update() {
        var mu = 0; m.TryReceive(out mu);
        if(mu==1) forest.Play();
        if(mu==2) forest.Stop();
        ded.TryReceive(out check); if(check) { forest.Stop(); }
    }
} }