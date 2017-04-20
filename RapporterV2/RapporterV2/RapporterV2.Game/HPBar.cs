using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Input; using SiliconStudio.Xenko.Graphics;
using SiliconStudio.Xenko.Engine; using SiliconStudio.Xenko.Engine.Events; using RapporterV2.Player;

namespace RapporterV2 { public class HPBar : SyncScript {
        public static readonly EventReceiver<int> hp = new EventReceiver<int>(PlayerInput.HPKey);
        SpriteComponent healthComp; int health=100;
        public override void Start() { healthComp = Entity.Get<SpriteComponent>(); }
        public override void Update() {
            hp.TryReceive(out health); var num = (float)health/100;
            healthComp.Color = new Color(new Vector3(num, num, num), num); }
} }
