﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2.Player { public class ScrollTextText3 : SyncScript {
    public static readonly EventReceiver<Vector3> pos = new EventReceiver<Vector3>(ScrollText3.text);
    public override void Update() { Vector3 p = Vector3.Zero; pos.TryReceive(out p); 
        p = p + new Vector3(0,0,0.002f); Entity.Transform.Position = p; }
} }