using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Input; using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2.Player { public class DeathText : SyncScript {
    SpriteComponent s; float count, countR, countG, countB;
    bool check=false; public static readonly EventReceiver<bool> ded = new EventReceiver<bool>(PlayerInput.dead);
    public override void Start() { s = Entity.Get<SpriteComponent>(); count=0; countR=0; countG=0; countB=0; check=false; }
    public override void Update() {
        if(!check) { ded.TryReceive(out check); count=0; countR=0; countG=0; countB=0;
            s.Color = new Color(new Vector3(0f, 0f, 0f), 0f); }
        if(check) {
            count+=0.01f; countR+=0.01f; countG+=0.01f; countB+=0.01f;
            if(countR>0.9f) countR=0.9f;
            if(countG>0.17f) countG=0.17f;
            if(countB>0.17f) countB=0.17f;
            s.Color = new Color(new Vector3(countR, countG, countB), count); }
    }
} }