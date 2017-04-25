using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Audio; using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Physics; using SiliconStudio.Xenko.Engine.Events; using RapporterV2.Player;

namespace RapporterV2.Sounds { public class MusicDeerSync : SyncScript {
    public Sound SoundMusic; private SoundInstance forest;
    public static readonly EventReceiver<int> m = new EventReceiver<int>(MusicDeer.main);
    public static readonly EventReceiver<bool> m2 = new EventReceiver<bool>(Enemy.main);
    public override void Start() { forest = SoundMusic.CreateInstance(); }
    public override void Update() {
        var mu = 0; m.TryReceive(out mu); var mu2 = false; m2.TryReceive(out mu2);
        if(mu==1) forest.Play();
        if(mu==2||mu2) forest.Stop();
    }
} }