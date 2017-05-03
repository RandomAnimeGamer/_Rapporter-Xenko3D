using System; using System.Collections.Generic; using System.Linq; using System.Text; using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Input; using SiliconStudio.Xenko.Physics;
using SiliconStudio.Xenko.Engine; using SiliconStudio.Xenko.Engine.Events; using RapporterV2.Core;
using SiliconStudio.Xenko.Audio;
namespace RapporterV2.Player { public class Enemy : SyncScript {
    private Simulation simulation; AnimationComponent anim; RigidbodyComponent r;
    public CameraComponent Camera { get; set; }
    public static readonly EventKey<Vector3> MoveDirectionEventKey = new EventKey<Vector3>();
    public static readonly EventKey<Vector2> CameraDirectionEventKey = new EventKey<Vector2>();
    public static readonly EventKey<bool> main = new EventKey<bool>();
    public static readonly EventReceiver<bool> damage = new EventReceiver<bool>(WeaponCollide.die);
    public static readonly EventReceiver<bool> ded = new EventReceiver<bool>(EnemyCollide.die);
    public static readonly EventReceiver<bool> valid = new EventReceiver<bool>(WeaponScript.atking);
    private int HP=100; private float deathTime = 40f; bool attacking=false;//is the hitbox "active"?
    bool completed = true;float time=0;//60f = 1s
    int state=0;//0=waiting, 1=circling, 2=charging, 3=death
    public Sound SoundEffect; private SoundInstance move;
    public override void Start() { anim = Entity.Get<AnimationComponent>(); r = Entity.Get<RigidbodyComponent>();
        move = SoundEffect.CreateInstance(); move.Stop(); }
    public override void Update() {
        if(!anim.IsPlaying("Idle")&&!anim.IsPlaying("Death")&&!anim.IsPlaying("Hurt")) anim.Play("Idle");
        var moveDirection = Vector2.Zero;
        DamageCheck();
        if(HP==0&&deathTime>0) deathTime--;
        if(deathTime<=0) { r.IsTrigger=true; r.ApplyImpulse(new Vector3(0f,-10000f,0f));
            SceneSystem.SceneInstance.RootScene = Content.Load<Scene>("0Rapporter_Assets/Scenes/Credits"); }
        if(deathTime==10) {
            var particles = Content.Load<Prefab>("0Rapporter_Assets/Particles/Death");
            var instance = particles.Instantiate();
            var death = instance[0];
            SceneSystem.SceneInstance.RootScene.Entities.Add(death);
            death.Transform.Position = Entity.Transform.Position;
        }
        
        
/*        if(completed) {
            state++; completed = false;
            if(state==1) time=10f;//check how much time is needed to circle a full time around once
            if(state==2) time=10f;//check how much time is needed to have it charge the radius of the circle
        } else {
            if(state==1) Circle();
            else if(state==2) Charge();
            time--; if(time<=0) time=0;
        }*/
    }
    //Camera rotation
    //        var cameraDirection = Vector2.Zero;
    //        if (Input.IsMousePositionLocked) cameraDirection += new Vector2(Input.MouseDelta.X, -Input.MouseDelta.Y) * MouseSensitivity;
    //        CameraDirectionEventKey.Broadcast(cameraDirection);//Broadcast the camera direction directly, as a screen-space Vector2
    
    public void DamageCheck() {
        var dmg=false; var v=false; var ec=false; damage.TryReceive(out dmg); valid.TryReceive(out v); ded.TryReceive(out ec);
        if(dmg&&v&&ec) { //Entity.Transform.Position += new Vector3(0f,1f,0f); anim.Play("damaged");
            anim.Play("Hurt");
            HP-=25; if(HP<0) { HP=0; } CheckDeath(); }
    }
    public void CheckDeath() { if(HP<=0) { anim.Play("Death"); main.Broadcast(true);
        move.Play(); } }
    public void Circle() { Charge();
        CameraDirectionEventKey.Broadcast(new Vector2(1f, 0f)); }//Broadcast the camera direction directly, as a screen-space Vector2 }
    public void Charge() {
        attacking=true;
        Vector2 moveDirection = new Vector2(1f, 0f);
        var worldSpeed = (Camera != null)//Broadcast the movement vector as a world-space Vector3 to allow characters to be controlled
            ? Utils.LogicDirectionToWorldDirection(moveDirection, Camera, Vector3.UnitY)
            : new Vector3(moveDirection.X, 0f, moveDirection.Y);//No camera? No problem!
    //        if(worldSpeed!=Vector3.Zero) {
    //        MoveDirectionEventKey.Broadcast(worldSpeed);
        if(time==0) { attacking=false; completed=true; }
    }
} }
