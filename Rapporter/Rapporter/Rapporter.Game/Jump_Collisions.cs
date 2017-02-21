using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Physics;
using Rapporter.Core;

namespace Rapporter { public class Jump_Collisions : AsyncScript {
    public static readonly EventKey<Vector3> MoveDirectionEventKey = new EventKey<Vector3>();
    public static readonly EventKey<Vector2> CameraDirectionEventKey = new EventKey<Vector2>();
    public static readonly EventKey<bool> ShootEventKey = new EventKey<bool>();
    public static readonly EventKey<bool> ReloadEventKey = new EventKey<bool>();
    public static readonly EventKey<bool> JumpEventKey = new EventKey<bool>();
    public static readonly EventKey<bool> ParticleEventKey = new EventKey<bool>();
    public float DeadZone { get; set; } = 0.25f;
    public CameraComponent Camera { get; set; }
    public float MouseSensitivity { get; set; } = 100.0f;
    public List<Keys> KeysLeft { get; } = new List<Keys>();
    public List<Keys> KeysRight { get; } = new List<Keys>();
    public List<Keys> KeysUp { get; } = new List<Keys>();
    public List<Keys> KeysDown { get; } = new List<Keys>();
    public List<Keys> KeysJump { get; } = new List<Keys>();
    public List<Keys> ParticleTest { get; } = new List<Keys>();
    public bool jumped=false;
    
    public EventKey<bool> TriggerEvent = new EventKey<bool>();
    public override async Task Execute() {
        var trigger = Entity.Get<PhysicsComponent>();
        trigger.ProcessCollisions = true;
        while(Game.IsRunning) {
            //wait for entities coming in
            var firstCollision = await trigger.NewCollision();
            TriggerEvent.Broadcast(true);
            
            //now wait for entities exiting
            Collision collision;
            do { collision = await trigger.CollisionEnded(); } while (collision != firstCollision);
            TriggerEvent.Broadcast(false);
            
            
            
            var jumpForce = 0;
            var moveDirection = Input.GetLeftThumbAny(DeadZone);
            var isDeadZoneLeft = moveDirection.Length() < DeadZone;
            if (isDeadZoneLeft) moveDirection = Vector2.Zero;
            else moveDirection.Normalize();

            // Keyboard Input
            if (KeysLeft.Any(key => Input.IsKeyDown(key))) moveDirection += -Vector2.UnitX;
            if (KeysRight.Any(key => Input.IsKeyDown(key))) moveDirection += +Vector2.UnitX;
            if (KeysUp.Any(key => Input.IsKeyDown(key))) moveDirection += +Vector2.UnitY;
            if (KeysDown.Any(key => Input.IsKeyDown(key))) moveDirection += -Vector2.UnitY;
            if(KeysJump.Any(key => Input.IsKeyDown(key))) jumpForce = 10;
//            if(ParticleTest.Any(key => Input.IsKeyDown(key))) SpawnEvent("MuzzleFlash", Entity, Matrix.Identity);

            // Broadcast the movement vector as a world-space Vector3 to allow characters to be controlled
            var worldSpeed = (Camera != null)
                ? Utils.LogicDirectionToWorldDirection(moveDirection, Camera, Vector3.UnitY)
                : new Vector3(moveDirection.X, jumpForce, moveDirection.Y); // If we don't have the correct camera attached we can send the directions anyway, but they probably won't match

            MoveDirectionEventKey.Broadcast(worldSpeed);
            
            
            var cameraDirection = Input.GetRightThumbAny(DeadZone);
            var isDeadZoneRight = cameraDirection.Length() < DeadZone;
            if (isDeadZoneRight)
                cameraDirection = Vector2.Zero;
            else
                cameraDirection.Normalize();

            // Mouse-based camera rotation.
            //  Only enabled after you click the screen to lock your cursor, pressing escape will cancel it.
/*                if (Input.IsMouseButtonDown(MouseButton.Left))
                Input.LockMousePosition(true);
            if (Input.IsKeyPressed(Keys.Escape))
                Input.UnlockMousePosition();*/
//                if (Input.IsMousePositionLocked)
//                {
                cameraDirection += new Vector2(Input.MouseDelta.X, -Input.MouseDelta.Y) * MouseSensitivity;
//                }

            // Broadcast the camera direction directly, as a screen-space Vector2
            CameraDirectionEventKey.Broadcast(cameraDirection);
        }
    }
} }