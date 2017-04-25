﻿using System.Collections.Generic; using System.Linq; using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Graphics;
using SiliconStudio.Xenko.Audio; using SiliconStudio.Xenko.Physics; using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events; using SiliconStudio.Xenko.Input; using RapporterV2.Core;

namespace RapporterV2.Player { public class PlayerInput : SyncScript {
    private Simulation simulation; public float MouseSensitivity { get; set; } = 100.0f;
    public CameraComponent Camera { get; set; }
    public static readonly EventKey<Vector3> PlayerPos = new EventKey<Vector3>();
    public static readonly EventKey<Vector3> MoveDirectionEventKey = new EventKey<Vector3>();
    public static readonly EventKey<Vector3> MoveWeaponEventKey = new EventKey<Vector3>();
    public static readonly EventKey<Vector2> CameraDirectionEventKey = new EventKey<Vector2>();
    public static readonly EventKey<int> AtkEventKey = new EventKey<int>();
    public static readonly EventKey<bool> ResetEvent = new EventKey<bool>();
    public static readonly EventKey<bool> ResetTime = new EventKey<bool>();
    public static readonly EventReceiver<bool> AtkComp = new EventReceiver<bool>(WeaponScript.completed);
    public List<Keys> KeysLeft { get; } = new List<Keys>(); public List<Keys> KeysRight { get; } = new List<Keys>();
    public List<Keys> KeysUp { get; } = new List<Keys>(); public List<Keys> KeysDown { get; } = new List<Keys>();
    public List<Keys> KeysJump { get; } = new List<Keys>();
    private bool jumped=false, doneJumping=true; private int jumpCount=0, combo=0; private float jumpForce;
    public Sound SoundMusic; private SoundInstance forest; public Sound SoundEffect; private SoundInstance move;
    private int HP=100; public static readonly EventKey<int> HPKey = new EventKey<int>();
    public static readonly EventKey<bool> dead = new EventKey<bool>();
    public static readonly EventReceiver<bool> ded = new EventReceiver<bool>(CollisionDie.main);
    public static readonly EventReceiver<int> damage = new EventReceiver<int>(CollisionDamage.main); bool dmg=false;
    CharacterComponent c;
    public override void Start() {
        simulation = this.GetSimulation();
        HP=100; c = Entity.Get<CharacterComponent>(); c.Teleport(new Vector3(-35.285f, 0.585f, 0.15f));
        forest = SoundMusic.CreateInstance(); move = SoundEffect.CreateInstance();
        if (!IsLiveReloading) { forest.IsLooping = true; //forest.Play();
        } move.Stop();
        Input.LockMousePosition(true);
    }
    
    public override void Update() { { //Character movement
        var damaging=0; damage.TryReceive(out damaging);
        if(damaging!=0) { if(damaging==1) { dmg=true; } if(damaging==2) { dmg=false; } } if(dmg) HP--;
        var dying=false; ded.TryReceive(out dying);
        if(dying) { HP=0; Entity.Get<CharacterComponent>().Teleport(Entity.Transform.Position-new Vector3(0f, 100f, 0f)); }
        PlayerPos.Broadcast(Entity.Transform.Position); HPKey.Broadcast(HP);
        if(HP<=0) { dead.Broadcast(true); c.Teleport(new Vector3(-35.285f, 0.585f, 0.15f)); } else dead.Broadcast(false);
        jumpForce = 0; RaycastDown();
        if(KeysJump.Any(key => Input.IsKeyDown(key)) && jumped) { jumpForce = 2; jumped = false; doneJumping=false; }
        if(!doneJumping&&!jumped) { jumpCount++; jumpForce=2; if(jumpCount==5) { doneJumping=true; jumpCount=0; } }
        if(doneJumping) jumpForce=-0.2f;

        var moveDirection = Vector2.Zero;
        if (KeysLeft.Any(key => Input.IsKeyDown(key))) moveDirection += -Vector2.UnitX * 50;
        if (KeysRight.Any(key => Input.IsKeyDown(key))) moveDirection += +Vector2.UnitX * 50;
        if (KeysUp.Any(key => Input.IsKeyDown(key))) moveDirection += +Vector2.UnitY * 50;
        if (KeysDown.Any(key => Input.IsKeyDown(key))) moveDirection += -Vector2.UnitY * 50;
        
        var worldSpeed = (Camera != null)//Broadcast the movement vector as a world-space Vector3 to allow characters to be controlled
            ? Utils.LogicDirectionToWorldDirection(moveDirection, Camera, Vector3.UnitY) + new Vector3(0, jumpForce, 0)
            : new Vector3(moveDirection.X, jumpForce, moveDirection.Y);//No camera? No problem!
        if(worldSpeed!=Vector3.Zero) { if (!IsLiveReloading) { move.IsLooping = true; move.Volume=20; //move.Play();
        } }
        else { move.Stop(); }
        MoveDirectionEventKey.Broadcast(worldSpeed);
    } { //Camera rotation
        var cameraDirection = Vector2.Zero;
        if (Input.IsMouseButtonDown(MouseButton.Left)) Input.LockMousePosition(true);
        if (Input.IsKeyPressed(Keys.Escape)) Input.UnlockMousePosition();//Mouse-based camera rotation. Click = Activate, Esc = Cancel
        if (Input.IsMousePositionLocked) cameraDirection += new Vector2(Input.MouseDelta.X, -Input.MouseDelta.Y) * MouseSensitivity;
        CameraDirectionEventKey.Broadcast(cameraDirection);//Broadcast the camera direction directly, as a screen-space Vector2
    } {//Attack Code
        var comp=false; AtkComp.TryReceive(out comp);
        if(Input.HasMouse&&Input.IsMouseButtonPressed(MouseButton.Left)&&comp) {
            combo++; if(combo>3) { combo=1; ResetEvent.Broadcast(true); }
            ResetTime.Broadcast(true); AtkEventKey.Broadcast(combo);
        }
    } }
    private void RaycastDown() {
        var unprojectedNear = Entity.Transform.Position;
        var unprojectedFar = Entity.Transform.Position + new Vector3(0f, -0.2f, 0f);
        var result = simulation.Raycast(unprojectedNear, unprojectedFar);

        if(result.Succeeded) { if (result.Collider != null) { jumped = true; doneJumping=false; } }
    }
} }