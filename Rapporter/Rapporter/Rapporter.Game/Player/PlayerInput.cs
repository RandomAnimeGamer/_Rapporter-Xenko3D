using System.Collections.Generic;
using System.Linq;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Graphics;
using SiliconStudio.Xenko.Physics;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;
using SiliconStudio.Xenko.Input;
using Rapporter.Core;

namespace Rapporter.Player { public class PlayerInput : SyncScript {
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
    public bool doneJumping = true;
    public int jumpCount=0;
    private Simulation simulation;

    public override void Start() {
        simulation = this.GetSimulation();
    }
    public override void Update() {
        {
            var jumpForce = 0;
            var moveDirection = new Vector2(0,0);
            RaycastDown();
            // Keyboard Input
            if (KeysLeft.Any(key => Input.IsKeyDown(key))) moveDirection += -Vector2.UnitX;
            if (KeysRight.Any(key => Input.IsKeyDown(key))) moveDirection += +Vector2.UnitX;
            if (KeysUp.Any(key => Input.IsKeyDown(key))) moveDirection += +Vector2.UnitY;
            if (KeysDown.Any(key => Input.IsKeyDown(key))) moveDirection += -Vector2.UnitY;
            if(KeysJump.Any(key => Input.IsKeyDown(key)) && jumped) { jumpForce = 15; jumped = false; doneJumping=false; }
            if(!doneJumping&&!jumped) { jumpCount++; jumpForce=15; if(jumpCount==5) { doneJumping=true; jumpCount=0; } }
            foreach (var pointerEvent in Input.PointerEvents.Where(x => x.State == PointerState.Down)) {
                Raycast(pointerEvent.Position);
            }
//            if(ParticleTest.Any(key => Input.IsKeyDown(key))) SpawnEvent("MuzzleFlash", Entity, Matrix.Identity);

            // Broadcast the movement vector as a world-space Vector3 to allow characters to be controlled
            var worldSpeed = (Camera != null)
                ? Utils.LogicDirectionToWorldDirection(moveDirection, Camera, Vector3.UnitY) + new Vector3(0, jumpForce, 0)
                : new Vector3(moveDirection.X, jumpForce, moveDirection.Y); // If we don't have the correct camera attached we can send the directions anyway, but they probably won't match

            MoveDirectionEventKey.Broadcast(worldSpeed);
        }

        // Camera rotation
        //  Camera rotation is ALWAYS in camera space, so we don't need to account for View or Projection matrices
        {
            var cameraDirection = new Vector2(0,0);
            // Mouse-based camera rotation.
            //  Only enabled after you click the screen to lock your cursor, pressing escape will cancel it.
            if (Input.IsMouseButtonDown(MouseButton.Left)) Input.LockMousePosition(true);
            if (Input.IsKeyPressed(Keys.Escape)) Input.UnlockMousePosition();
            if (Input.IsMousePositionLocked) cameraDirection += new Vector2(Input.MouseDelta.X, -Input.MouseDelta.Y) * MouseSensitivity;

            // Broadcast the camera direction directly, as a screen-space Vector2
            CameraDirectionEventKey.Broadcast(cameraDirection);
        }
    }
    private void RaycastDown() {
        var unprojectedNear = Entity.Transform.Position;
        var unprojectedFar = Entity.Transform.Position + new Vector3(0f, -0.2f, 0f);
        var result = simulation.Raycast(unprojectedNear, unprojectedFar);

        if(result.Succeeded) { if (result.Collider != null) jumped = true; }
    }
    private void Raycast(Vector2 screenPos) {
        var backBuffer = GraphicsDevice.Presenter.BackBuffer;
        screenPos.X *= backBuffer.Width;
        screenPos.Y *= backBuffer.Height;

        var viewport = new Viewport(0, 0, backBuffer.Width, backBuffer.Height);
        var unprojectedNear =
            viewport.Unproject(
                new Vector3(screenPos, 0.0f),
                Camera.ProjectionMatrix,
                Camera.ViewMatrix,
                Matrix.Identity);

        var unprojectedFar =
            viewport.Unproject(
                new Vector3(screenPos, 1.0f),
                Camera.ProjectionMatrix,
                Camera.ViewMatrix,
                Matrix.Identity);

        var result = simulation.Raycast(unprojectedNear, unprojectedFar);
        if (!result.Succeeded || result.Collider == null) return;

        var rigidBody = result.Collider as RigidbodyComponent;
        if (rigidBody == null) return;

        rigidBody.Activate();
        rigidBody.ApplyImpulse(new Vector3(0, 5, 0));
    }
} }
