using System.Collections.Generic;
using System.Linq;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Graphics;
using SiliconStudio.Xenko.Physics;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;
using SiliconStudio.Xenko.Input;
using RapporterV2.Core;

namespace RapporterV2.Player { public class PlayerInput : SyncScript {
    private Simulation simulation;
    public float DeadZone { get; set; } = 0.25f;
    public float MouseSensitivity { get; set; } = 100.0f;
    public CameraComponent Camera { get; set; }
    public static readonly EventKey<Vector3> PlayerPos = new EventKey<Vector3>();
    public static readonly EventKey<Vector3> MoveDirectionEventKey = new EventKey<Vector3>();
    public static readonly EventKey<Vector3> MoveWeaponEventKey = new EventKey<Vector3>();
    public static readonly EventKey<Vector2> CameraDirectionEventKey = new EventKey<Vector2>();
    public static readonly EventKey<int> AtkEventKey = new EventKey<int>();
    public static readonly EventReceiver<bool> AtkComp = new EventReceiver<bool>(WeaponScript.completed);
    public List<Keys> KeysLeft { get; } = new List<Keys>();
    public List<Keys> KeysRight { get; } = new List<Keys>();
    public List<Keys> KeysUp { get; } = new List<Keys>();
    public List<Keys> KeysDown { get; } = new List<Keys>();
    public List<Keys> KeysJump { get; } = new List<Keys>();
    private bool jumped=false, doneJumping=true, attacking=false; private int jumpCount=0, combo=0;
    private float jumpForce;
    public override void Start() { simulation = this.GetSimulation(); }
    
    public override void Update() { { //Character movement
        if (Input.IsMouseButtonDown(MouseButton.Left)) RaycastAtk();
        PlayerPos.Broadcast(Entity.Transform.Position);
        jumpForce = 0;
        RaycastDown();
        if(KeysJump.Any(key => Input.IsKeyDown(key)) && jumped) { jumpForce = 5; jumped = false; doneJumping=false; }
        if(!doneJumping&&!jumped) { jumpCount++; jumpForce=4; if(jumpCount==4) { doneJumping=true; jumpCount=0; } }
        if(doneJumping) jumpForce=-0.2f;

        var moveDirection = Vector2.Zero;
        if (KeysLeft.Any(key => Input.IsKeyDown(key))) moveDirection += -Vector2.UnitX;
        if (KeysRight.Any(key => Input.IsKeyDown(key))) moveDirection += +Vector2.UnitX;
        if (KeysUp.Any(key => Input.IsKeyDown(key))) moveDirection += +Vector2.UnitY;
        if (KeysDown.Any(key => Input.IsKeyDown(key))) moveDirection += -Vector2.UnitY;
        
        var worldSpeed = (Camera != null)//Broadcast the movement vector as a world-space Vector3 to allow characters to be controlled
            ? Utils.LogicDirectionToWorldDirection(moveDirection, Camera, Vector3.UnitY) + new Vector3(0, jumpForce, 0)
            : new Vector3(moveDirection.X, jumpForce, moveDirection.Y);//No camera? No problem!

        MoveDirectionEventKey.Broadcast(worldSpeed);
    } { //Camera rotation
        var cameraDirection = Vector2.Zero;
        if (Input.IsMouseButtonDown(MouseButton.Left)) Input.LockMousePosition(true);
        if (Input.IsKeyPressed(Keys.Escape)) Input.UnlockMousePosition();//Mouse-based camera rotation. Click = Activate, Esc = Cancel
        if (Input.IsMousePositionLocked) cameraDirection += new Vector2(Input.MouseDelta.X, -Input.MouseDelta.Y) * MouseSensitivity;
        CameraDirectionEventKey.Broadcast(cameraDirection);//Broadcast the camera direction directly, as a screen-space Vector2
    }/* {//Attack Code
        if(Input.HasMouse&&Input.IsMouseButtonDown(MouseButton.Left)){if(!attacking){ AtkEventKey.Broadcast(combo); attacking=true; }}
        var comp=false; AtkComp.TryReceive(out comp); if(comp==true) attacking=false;
        if(attacking) {
        
        
            //var worldSpeed2 = (Camera != null)
            //    ? Utils.LogicDirectionToWorldDirection(new Vector2(0f, 0.1f), Camera, Vector3.UnitY)
            //    : new Vector3(0.1f, 0f, 0.1f);
            //MoveWeaponEventKey.Broadcast(worldSpeed2);
            //MoveDirectionEventKey.Broadcast(worldSpeed2);
        
        
            if(combo==2) { attacking = false; }
            if(combo==1) { attacking = false; }
            if(combo==0) {
                if(jumped) { combo=1; attacking = true; attacking = false; }
                else { attacking = false; }
            }
        }
    } */}
    private void RaycastDown() {
        var unprojectedNear = Entity.Transform.Position;
        var unprojectedFar = Entity.Transform.Position + new Vector3(0f, -0.2f, 0f);
        var result = simulation.Raycast(unprojectedNear, unprojectedFar);

        if(result.Succeeded) { if (result.Collider != null) { jumped = true; doneJumping=false; } }
    }
    private void RaycastAtk() {
        var unprojectedNear = Entity.Transform.Position;
        var unprojectedFar = new Vector2(0f,100f);
        
        var unprojectedFar2 = (Camera != null)
            ? Utils.LogicDirectionToWorldDirection(unprojectedFar, Camera, Vector3.UnitY)
            : new Vector3(unprojectedFar.X, 0, unprojectedFar.Y);//No camera? No problem!
            

        var result = simulation.Raycast(unprojectedNear, unprojectedNear + unprojectedFar2);
        if(result.Succeeded) { if(result.Collider != null) {
            var rigidBody = result.Collider as RigidbodyComponent;
            if (rigidBody != null) {
                var forward = Entity.Transform.WorldMatrix.Forward;
                rigidBody.Activate();
                rigidBody.ApplyImpulse(forward * 5.0f);
                rigidBody.ApplyTorqueImpulse(forward * 5.0f + new Vector3(0, 1, 0));
            }
        } }
    }
} }