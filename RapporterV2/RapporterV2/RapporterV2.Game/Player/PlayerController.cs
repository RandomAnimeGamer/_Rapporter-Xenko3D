using System;
using SiliconStudio.Core;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;
using SiliconStudio.Xenko.Physics;

namespace RapporterV2.Player { public class PlayerController : SyncScript {
    [Display("Run Speed")]
    public float MaxRunSpeed { get; set; } = 5;
    public static readonly EventKey<float> RunSpeedEventKey = new EventKey<float>();
    private CharacterComponent character;//This component is the physics representation of a controllable character
    private readonly EventReceiver<Vector3> moveDirectionEvent = new EventReceiver<Vector3>(PlayerInput.MoveDirectionEventKey);

    public override void Start() {
        base.Start();
        character = Entity.Get<CharacterComponent>();//Will search for an CharacterComponent within the same entity as this script
        if (character == null) throw new ArgumentException("Please add a CharacterComponent to the entity containing PlayerController!");
    }

    public override void Update() { Move(); }

    private void Move() {
        Vector3 moveDirection = Vector3.Zero; moveDirectionEvent.TryReceive(out moveDirection);//Character speed
        character.SetVelocity(moveDirection * MaxRunSpeed);
        RunSpeedEventKey.Broadcast(moveDirection.Length());//Broadcast normalized speed
    }
} }