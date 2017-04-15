﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Physics;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2.Player { public class Enemy : SyncScript {
    private Simulation simulation; AnimationComponent anim; RigidbodyComponent r;
//    public CameraComponent Camera { get; set; }
//    public static readonly EventKey<Vector3> MoveDirectionEventKey = new EventKey<Vector3>();
//    public static readonly EventKey<Vector2> CameraDirectionEventKey = new EventKey<Vector2>();
    public static readonly EventKey<bool> main = new EventKey<bool>();
    public static readonly EventReceiver<bool> damage = new EventReceiver<bool>(WeaponCollide.die);
    public static readonly EventReceiver<bool> valid = new EventReceiver<bool>(WeaponScript.atking);
    private bool attacking=false; private int HP=100; private float deathTime = 40f;

    public override void Start() {
        simulation = this.GetSimulation(); anim = Entity.Get<AnimationComponent>(); r = Entity.Get<RigidbodyComponent>();
    }
    
    public override void Update() { { //Character movement
        if(!anim.IsPlaying("Idle")&&!anim.IsPlaying("Death")&&!anim.IsPlaying("Hurt")) anim.Play("Idle");
        var moveDirection = Vector2.Zero;
        DamageCheck();
        if(HP==0&&deathTime>0) deathTime--;
        if(deathTime<=0) { r.IsTrigger=true; r.ApplyImpulse(new Vector3(0f,-10000f,0f)); }
//        if (KeysLeft.Any(key => Input.IsKeyDown(key))) moveDirection += -Vector2.UnitX;
//        if (KeysRight.Any(key => Input.IsKeyDown(key))) moveDirection += +Vector2.UnitX;
//        if (KeysUp.Any(key => Input.IsKeyDown(key))) moveDirection += +Vector2.UnitY;
//        if (KeysDown.Any(key => Input.IsKeyDown(key))) moveDirection += -Vector2.UnitY;
        
//        var worldSpeed = (Camera != null)//Broadcast the movement vector as a world-space Vector3 to allow characters to be controlled
//            ? Utils.LogicDirectionToWorldDirection(moveDirection, Camera, Vector3.UnitY) + new Vector3(0, jumpForce, 0)
//            : new Vector3(moveDirection.X, jumpForce, moveDirection.Y);//No camera? No problem!
//        if(worldSpeed!=Vector3.Zero) {
//        MoveDirectionEventKey.Broadcast(worldSpeed);
    } { //Camera rotation
//        var cameraDirection = Vector2.Zero;
//        if (Input.IsMouseButtonDown(MouseButton.Left)) Input.LockMousePosition(true);
//        if (Input.IsKeyPressed(Keys.Escape)) Input.UnlockMousePosition();//Mouse-based camera rotation. Click = Activate, Esc = Cancel
//        if (Input.IsMousePositionLocked) cameraDirection += new Vector2(Input.MouseDelta.X, -Input.MouseDelta.Y) * MouseSensitivity;
//        CameraDirectionEventKey.Broadcast(cameraDirection);//Broadcast the camera direction directly, as a screen-space Vector2
    } {//Attack Code
/*        var comp=false; AtkComp.TryReceive(out comp);
        if(Input.HasMouse&&Input.IsMouseButtonDown(MouseButton.Left)&&comp) {
            combo++; if(combo>3) { combo=1; ResetEvent.Broadcast(true); }
            ResetTime.Broadcast(true); AtkEventKey.Broadcast(combo); attacking=true;
        }*/
    } }
    public void DamageCheck() {
        var dmg=false; var v=false; damage.TryReceive(out dmg); valid.TryReceive(out v);
        if(dmg&&v) { //Entity.Transform.Position += new Vector3(0f,1f,0f); anim.Play("damaged");
            anim.Play("Hurt");
            HP-=25; if(HP<0) { HP=0; } CheckDeath(); }
    }
    public void CheckDeath() {
        if(HP<=0) { anim.Play("Death"); main.Broadcast(true);
/*        var particles = Content.Load<Prefab>("0Rapporter_Assets/Particles/Death");
        // Instantiate a prefab
        var instance = particles.Instantiate();
        var death = instance[0];
        // Add the bullet to the scene
        SceneSystem.SceneInstance.Scene.Entities.Add(death);
        death.Transform.Position = Entity.Transform.Position;*/
        }
    }
} }
