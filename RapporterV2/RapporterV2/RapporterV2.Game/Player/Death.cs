using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Input; using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2.Player { public class Death : SyncScript {
    SpriteComponent s; float count;
    bool check=false; public static readonly EventReceiver<bool> ded = new EventReceiver<bool>(PlayerInput.dead);
    public override void Start() { s = Entity.Get<SpriteComponent>(); count=0; check=false; }
    public override void Update() {
        if(!check) { ded.TryReceive(out check); count=0;
            s.Color = new Color(new Vector3(0f, 0f, 0f), 0f); }
        if(check) { count+=0.01f; s.Color = new Color(new Vector3(count, count, count), count); }
        if(count>0.5f) {
            if(Input.IsKeyPressed(Keys.Space)) {
                SceneSystem.SceneInstance.RootScene = Content.Load<Scene>("0Rapporter_Assets/Scenes/Title Scene");
                Input.LockMousePosition(false);
            }
        }
    }
} }