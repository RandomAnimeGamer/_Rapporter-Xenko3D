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
        RigidbodyComponent r;
        public override void Start() {
            r = Entity.Get<RigidbodyComponent>();
        }
        public override void Update() {
            if (Input.IsKeyDown(Keys.Space)) {
                r.ApplyForce(new Vector3(0,10,0));
            }
        }
    }
}
