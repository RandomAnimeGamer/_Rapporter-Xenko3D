using System;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;
using SiliconStudio.Xenko.Physics;
using SiliconStudio.Xenko.Rendering.Sprites;

namespace RapporterV2.Player {
    public struct WeaponFiredResult {
        public bool         DidFire;
        public bool         DidHit;
        public HitResult    HitResult;
    }
    public class WeaponScript : SyncScript {
        private readonly EventReceiver<int> AtkEvent = new EventReceiver<int>(PlayerInput.AtkEventKey);
        public static readonly EventKey<bool> completed = new EventKey<bool>();
        private int combo=3;//3 is null state

        public static readonly EventKey<WeaponFiredResult> WeaponFired = new EventKey<WeaponFiredResult>();
//        private readonly EventReceiver<bool> shootEvent = new EventReceiver<bool>(PlayerInput.ShootEventKey);

        public float MaxShootDistance { get; set; } = 100f;
        public float ShootImpulse { get; set; } = 5f;
        public float Cooldown { get; set; } = 0.3f;
        private float cooldownRemaining = 0;

//        public override void Update() {
//            bool didShoot;
//            shootEvent.TryReceive(out didShoot);

/*            cooldownRemaining = (cooldownRemaining > 0) ? (cooldownRemaining - this.GetSimulation().FixedTimeStep) : 0f;
            if (cooldownRemaining > 0) return; // Can't shoot yet
            if (!didShoot) return;

            cooldownRemaining = Cooldown;

            var raycastStart = Entity.Transform.WorldMatrix.TranslationVector;
            var forward = Entity.Transform.WorldMatrix.Forward;
            var raycastEnd = raycastStart + forward * MaxShootDistance;

            var result = this.GetSimulation().Raycast(raycastStart, raycastEnd);

            var weaponFired = new WeaponFiredResult { HitResult = result, DidFire = true, DidHit = false };

            if (result.Succeeded && result.Collider != null) {
                weaponFired.DidHit = true;
                var rigidBody = result.Collider as RigidbodyComponent;
                if (rigidBody != null) {
                    rigidBody.Activate();
                    rigidBody.ApplyImpulse(forward * ShootImpulse);
                    rigidBody.ApplyTorqueImpulse(forward * ShootImpulse + new Vector3(0, 1, 0));
                }
            }

            WeaponFired.Broadcast(weaponFired);// Broadcast the fire event
        }*/
    
        public override void Update() {
            AtkEvent.TryReceive(out combo);
            if(combo==0) { completed.Broadcast(false); }//decrement x&y rateX:Y=2:1, move z ^ then V where z is like x^2 graph, rotate y until 180
            if(combo==1) { completed.Broadcast(false); }//reverse combo 1
            if(combo==2) { completed.Broadcast(false); }//move z back a bit, rotate so all axes are 0, then move z forward, then reverse the process
            if(combo==3) { completed.Broadcast(false); }
        }
    }
}