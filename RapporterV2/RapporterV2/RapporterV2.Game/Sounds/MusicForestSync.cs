using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Audio; using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Physics; using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2.Sounds { public class MusicForestSync : SyncScript {
    public Sound SoundMusic; private SoundInstance forest;
    public static readonly EventReceiver<int> m = new EventReceiver<int>(MusicForest.main);
    public static readonly EventReceiver<int> m2 = new EventReceiver<int>(MusicDeer.main);
    public override void Start() { forest = SoundMusic.CreateInstance(); }
    public override void Update() {
        var mu = 0; m.TryReceive(out mu); var mu2 = 0; m2.TryReceive(out mu2);
        if(mu==1||mu2==2) forest.Play();
        if(mu==2||mu2==1) forest.Stop();
    }
} }