using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Physics;

namespace Rapporter { public class Movement : SyncScript {
    RigidbodyComponent shizuku;
    public override void Start() { shizuku = Entity.Get<RigidbodyComponent>(); }
    public override void Update() {
        Vector3 lv = shizuku.LinearVelocity;
//        if (Input.IsKeyDown(Keys.Space)) shizuku.ApplyForce(new Vector3(0,100f,0));
        if (Input.IsKeyDown(Keys.Space)) shizuku.LinearVelocity = new Vector3(lv.X,100f,lv.Z);
        if(Input.IsKeyDown(Keys.W)) shizuku.LinearVelocity = new Vector3(10f, lv.Y, lv.Z);
        if(Input.IsKeyReleased(Keys.W)) shizuku.LinearVelocity = new Vector3(0, lv.Y, lv.Z);
//        if(Input.IsKeyDown(Keys.W)) shizuku.ApplyForce(new Vector3(10f, 0, 0));
    }
} }