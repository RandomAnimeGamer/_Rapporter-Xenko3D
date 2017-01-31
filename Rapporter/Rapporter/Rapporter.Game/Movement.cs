using System;
using SiliconStudio.Core;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Input;

namespace Rapporter {
    public class Movement : SyncScript {
        private const float MaximumPitch = MathUtil.PiOverTwo * 0.99f;
        private Vector3 upVector;
        private Vector3 translation;
        private float yaw;
        private float pitch;

        public Vector3 KeyboardMovementSpeed { get; set; } = new Vector3(5.0f);
        public float SpeedFactor { get; set; } = 5.0f;
        public Vector2 KeyboardRotationSpeed { get; set; } = new Vector2(3.0f);
        public Vector2 MouseRotationSpeed { get; set; } = new Vector2(90.0f, 60.0f);
        public override void Start() {
            base.Start();

            // Default up-direction
            upVector = Vector3.UnitY;

            // Configure touch input
            if (!Platform.IsWindowsDesktop) {
                Input.ActivatedGestures.Add(new GestureConfigDrag());
                Input.ActivatedGestures.Add(new GestureConfigComposite());
            }
        }

        public override void Update() {
            ProcessInput();
            UpdateTransform();
        }

        private void ProcessInput() {
            translation = Vector3.Zero;
            yaw = 0;
            pitch = 0;

            // Move with keyboard
            if (Input.IsKeyDown(Keys.I)) {
                translation.Z = -KeyboardMovementSpeed.Z;
            }
            else if (Input.IsKeyDown(Keys.K)) {
                translation.Z = KeyboardMovementSpeed.Z;
            }
            if (Input.IsKeyDown(Keys.J)) {
                translation.X = -KeyboardMovementSpeed.X;
            }
            else if (Input.IsKeyDown(Keys.L)) {
                translation.X = KeyboardMovementSpeed.X;
            }
            if (Input.IsKeyDown(Keys.U)) {
                translation.Y = -KeyboardMovementSpeed.Y;
            }
            else if (Input.IsKeyDown(Keys.O)) {
                translation.Y = KeyboardMovementSpeed.Y;
            }

            // Alternative translation speed
            if (Input.IsKeyDown(Keys.LeftShift) || Input.IsKeyDown(Keys.RightShift)) {
                translation *= SpeedFactor;
            }

            // Rotate with keyboard
            if (Input.IsKeyDown(Keys.NumPad2)) {
                pitch = KeyboardRotationSpeed.X;
            }
            else if (Input.IsKeyDown(Keys.NumPad8)) {
                pitch = -KeyboardRotationSpeed.X;
            }

            if (Input.IsKeyDown(Keys.NumPad4)) {
                yaw = KeyboardRotationSpeed.Y;
            }
            else if (Input.IsKeyDown(Keys.NumPad6)) {
                yaw = -KeyboardRotationSpeed.Y;
            }

            // Rotate with mouse
            if (Input.IsMouseButtonDown(MouseButton.Right)) {
                Input.LockMousePosition();

                yaw = -Input.MouseDelta.X * MouseRotationSpeed.X;
                pitch = -Input.MouseDelta.Y * MouseRotationSpeed.Y;
            }
            else {
                Input.UnlockMousePosition();
            }
        }

        private void UpdateTransform() {
            var elapsedTime = (float)Game.UpdateTime.Elapsed.TotalSeconds;

            translation *= elapsedTime;
            yaw *= elapsedTime;
            pitch *= elapsedTime;

            // Get the local coordinate system
            var rotation = Matrix.RotationQuaternion(Entity.Transform.Rotation);

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
            Entity.Transform.Position += Vector3.TransformCoordinate(translation, rotation);

            // Yaw around global up-vector, pitch and roll in local space
            Entity.Transform.Rotation =
                Quaternion.RotationMatrix(rotation) *
                Quaternion.RotationAxis(right, pitch) *
                Quaternion.RotationAxis(upVector, yaw);
        }
    }
}
