using System;
using SiliconStudio.Core;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;
using SiliconStudio.Xenko.Physics;

namespace RapporterV2.Player { public class WeaponController : SyncScript {
    private readonly EventReceiver<Vector3> moveDirectionEvent = new EventReceiver<Vector3>(PlayerInput.MoveWeaponEventKey);
    public override void Start() {
        base.Start();
    }

    public override void Update() { Move(); }

    private void Move() {
        Vector3 moveDirection = Vector3.Zero; moveDirectionEvent.TryReceive(out moveDirection);//Character speed
        Entity.Transform.Position += moveDirection/100;
    }
} }