using System; using SiliconStudio.Core; using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events; using SiliconStudio.Xenko.Physics;

namespace RapporterV2.Player { public class EnemyController : SyncScript {
    [Display("Run Speed")]
    public float MaxRunSpeed { get; set; } = 1000;
    public static readonly EventKey<float> RunSpeedEventKey = new EventKey<float>();
    private RigidbodyComponent character;
    private readonly EventReceiver<Vector3> moveDirectionEvent = new EventReceiver<Vector3>(Enemy.MoveDirectionEventKey);

    public override void Start() {
        base.Start(); character = Entity.Get<RigidbodyComponent>();//Will search for an CharacterComponent within the same entity as this script
        if (character == null) throw new ArgumentException("Please add a RigidbodyComponent to the entity containing EnemyController!");
    }
    public override void Update() { Move(); }

    private void Move() {
        Vector3 moveDirection = Vector3.Zero; moveDirectionEvent.TryReceive(out moveDirection);//Character speed
        character.ApplyImpulse(moveDirection * MaxRunSpeed * 2);
        //RunSpeedEventKey.Broadcast(moveDirection.Length());//Broadcast normalized speed
    }
} }
