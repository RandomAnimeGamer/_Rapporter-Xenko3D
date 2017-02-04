using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Physics;

namespace Rapporter { public class RigidbodyMove : SyncScript {
    RigidbodyComponent shizuku;
    private const float MaximumPitch = MathUtil.PiOverTwo * 0.99f;
    private Vector3 upVector; private Vector3 translation;
    private float yaw; private float pitch;

    public Vector3 KeyboardMovementSpeed { get; set; } = new Vector3(5.0f);
    public float SpeedFactor { get; set; } = 5.0f;
    public Vector2 KeyboardRotationSpeed { get; set; } = new Vector2(3.0f);
    public override void Start() { base.Start(); upVector = Vector3.UnitY; shizuku = Entity.Get<RigidbodyComponent>(); }
    public override void Update() { ProcessInput(); UpdateTransform(); }

    private void ProcessInput() {
        translation = Vector3.Zero; yaw = 0; pitch = 0;

        // Move with keyboard
        if (Input.IsKeyDown(Keys.W)) translation.Z = -KeyboardMovementSpeed.Z;
        else if (Input.IsKeyDown(Keys.S) || Input.IsKeyDown(Keys.Down)) { translation.Z = KeyboardMovementSpeed.Z; }

        if (Input.IsKeyDown(Keys.A) || Input.IsKeyDown(Keys.Left)) { translation.X = -KeyboardMovementSpeed.X; }
        else if (Input.IsKeyDown(Keys.D) || Input.IsKeyDown(Keys.Right)) { translation.X = KeyboardMovementSpeed.X; }

        if (Input.IsKeyDown(Keys.Q)) { translation.Y = -KeyboardMovementSpeed.Y; }
        else if (Input.IsKeyDown(Keys.E)) { translation.Y = KeyboardMovementSpeed.Y; }


        if (Input.IsKeyDown(Keys.LeftShift) || Input.IsKeyDown(Keys.RightShift)) translation *= SpeedFactor;// Alt speed

        // Rotate with keyboard
//        if (Input.IsKeyDown(Keys.NumPad2)) { pitch = KeyboardRotationSpeed.X; }
//        else if (Input.IsKeyDown(Keys.NumPad8)) { pitch = -KeyboardRotationSpeed.X; }
//
//        if (Input.IsKeyDown(Keys.NumPad4)) { yaw = KeyboardRotationSpeed.Y; }
//        else if (Input.IsKeyDown(Keys.NumPad6)) { yaw = -KeyboardRotationSpeed.Y; }
    }

    private void UpdateTransform() {
        var elapsedTime = (float)Game.UpdateTime.Elapsed.TotalSeconds;

        translation *= elapsedTime;
        yaw *= elapsedTime;
        pitch *= elapsedTime;

        var rotation = Matrix.RotationQuaternion(Entity.Transform.Rotation);// Get the local coordinate system

        // Enforce the global up-vector by adjusting the local x-axis
        var right = Vector3.Cross(rotation.Forward, upVector);
        var up = Vector3.Cross(right, rotation.Forward);

        // Stabilize
        right.Normalize();
        up.Normalize();

        rotation.Right = right;
        rotation.Up = up;

        // Adjust pitch. Prevent it from exceeding up and down facing. Stabilize edge cases.
        var currentPitch = MathUtil.PiOverTwo - (float)Math.Acos(Vector3.Dot(rotation.Forward, upVector));
        pitch = MathUtil.Clamp(currentPitch + pitch, -MaximumPitch, MaximumPitch) - currentPitch;

        // Move in local coordinates
        shizuku.LinearVelocity += Vector3.TransformCoordinate(translation, rotation);
        // Yaw around global up-vector, pitch and roll in local space
//        shizuku.ApplyTorqueImpulse(new Vector3(yaw, 0, pitch) + upVector);
  //          Quaternion.RotationMatrix(rotation) *
  //          Quaternion.RotationAxis(right, pitch) *
//            Quaternion.RotationAxis(upVector, yaw);
    }
} }