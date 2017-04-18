using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Input; using SiliconStudio.Xenko.Engine;

namespace RapporterV2.Player { public class Death : SyncScript {
    SpriteComponent s; float count;
    public override void Start() { s = Entity.Get<SpriteComponent>(); }
    public override void Update() {
        count+=0.01f; s.Color = new Color(new Vector3(1.0f, 1.0f, 1.0f), count);
    }
} }