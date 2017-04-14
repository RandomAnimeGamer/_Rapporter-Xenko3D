﻿using System;
using System.Collections.Generic;
using System.Numerics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2.Quest { public class ScrollQuestText : SyncScript { public float q;//quest assigned to this object
    public static readonly EventReceiver<Vector3> pos = new EventReceiver<Vector3>(ScrollQuest.trans);
    public override void Update() { Vector3 p = Vector3.Zero; pos.TryReceive(out p);
        Entity.Transform.Position = new Vector3(p.X+0.002f, p.Y-0.012f, -0.123f); }
} }