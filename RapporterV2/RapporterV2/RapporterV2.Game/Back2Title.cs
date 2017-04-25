using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Input; using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Audio;

namespace RapporterV2 { public class Back2Title : SyncScript { public override void Start() { }
    public override void Update() {
        if(Input.IsKeyPressed(Keys.Space)) {
            SceneSystem.SceneInstance.Scene = Content.Load<Scene>("0Rapporter_Assets/Scenes/Title Scene"); }
    }
} }