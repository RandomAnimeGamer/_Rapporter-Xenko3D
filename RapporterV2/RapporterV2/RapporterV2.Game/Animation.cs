using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;

namespace RapporterV2
{
    public class Animation : SyncScript
    {

        public override void Update()
        {
            if (Input.IsKeyPressed(Keys.LeftCtrl)) {
                Entity.Get<AnimationComponent>().Play("Magic");
            }
        }
    }
}
