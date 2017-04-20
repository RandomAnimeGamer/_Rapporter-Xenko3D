using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Input; using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2.Player { public class Death : SyncScript {
    SpriteComponent s; float count;
    bool check=false; public static readonly EventReceiver<bool> ded = new EventReceiver<bool>(PlayerInput.dead);
    public override void Start() { s = Entity.Get<SpriteComponent>(); }
    public override void Update() {
        if(!check) ded.TryReceive(out check);
        if(check) { count+=0.01f; s.Color = new Color(new Vector3(count, count, count), count); }
    }
} }