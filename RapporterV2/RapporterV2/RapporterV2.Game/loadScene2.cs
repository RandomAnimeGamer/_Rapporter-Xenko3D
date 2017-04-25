using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Input; using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Audio;

namespace RapporterV2 { public class loadScene2 : SyncScript {
    public Sound SoundMusic; private SoundInstance forest;
    public override void Start() {
        forest = SoundMusic.CreateInstance(); Input.UnlockMousePosition();
        if (!IsLiveReloading) { forest.IsLooping = true; forest.Play(); }
    }

    public override void Update() {
        if(Input.IsKeyPressed(Keys.Space)) { forest.Stop();
            SceneSystem.SceneInstance.Scene = Content.Load<Scene>("0Rapporter_Assets/Scenes/Forest Scene"); }
    }
} }