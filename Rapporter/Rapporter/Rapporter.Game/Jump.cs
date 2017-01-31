using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Physics;

namespace Rapporter {
    public class Jump : SyncScript {
        TransformComponent shizuku;
        public override void Start() {
            shizuku = Entity.Get<TransformComponent>();
        }
        public override void Update() {
            if (Input.IsKeyDown(Keys.Space)) {
                shizuku.Position += new Vector3(0,1,0);
            }
            Gravity();
        }
        void Gravity() {
            if(!OnCollisionEnter()) {
                shizuku.Position -= new Vector3(0, 0.1f, 0);
            }
        }
        bool OnCollisionEnter() {
            if(Input.IsKeyDown(Keys.LeftCtrl)) return false;
            else return true;
        }
    }
}
