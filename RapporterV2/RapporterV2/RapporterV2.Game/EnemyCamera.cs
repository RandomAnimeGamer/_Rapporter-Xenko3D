using SiliconStudio.Core.Mathematics; using SiliconStudio.Xenko.Engine; using System; using System.Threading.Tasks;
using RapporterV2.Player; using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2 { public class EnemyCamera : AsyncScript {
	private float desiredYaw;
	private float desiredPitch;
	private CameraComponent Component => Entity?.Get<CameraComponent>();
	public float RotationSpeed { get; set; } = 2.355f;
	public float RotationAdaptationSpeed { get; set; } = 5.0f;
	private float Yaw { get; set; }
	private float Pitch { get; set; }
	private readonly EventReceiver<Vector2> cameraDirectionEvent = new EventReceiver<Vector2>(Enemy.CameraDirectionEventKey);
	public override async Task Execute() { Reset(); while (true) { UpdateCamera(); await Script.NextFrame(); } }
	public void Reset() {
		desiredYaw = Yaw = (float) Math.Asin(2 * Entity.Transform.Rotation.X * Entity.Transform.Rotation.Y +
			2 * Entity.Transform.Rotation.Z * Entity.Transform.Rotation.W);
		desiredPitch = Pitch = (float) Math.Atan2( 2 * Entity.Transform.Rotation.X * Entity.Transform.Rotation.W -
			2 * Entity.Transform.Rotation.Y * Entity.Transform.Rotation.Z,
			1 - 2 * Entity.Transform.Rotation.X * Entity.Transform.Rotation.X -
			2 * Entity.Transform.Rotation.Z * Entity.Transform.Rotation.Z);
	}
	protected virtual void UpdateCamera() {
		Vector2 cameraMovement; cameraDirectionEvent.TryReceive(out cameraMovement);

		//Take shortest path
		var deltaPitch = desiredPitch - Pitch; var deltaYaw = (desiredYaw - Yaw) % MathUtil.TwoPi;
		if (deltaYaw < 0) deltaYaw += MathUtil.TwoPi;
		if (deltaYaw > MathUtil.Pi) deltaYaw -= MathUtil.TwoPi;
		desiredYaw = Yaw + deltaYaw;

		// Perform orientation transition
		var rotationAdaptation = (float)Game.UpdateTime.Elapsed.TotalSeconds * RotationAdaptationSpeed;
		Yaw = Math.Abs(deltaYaw) < rotationAdaptation ? desiredYaw : Yaw + rotationAdaptation * Math.Sign(deltaYaw);
		Pitch = Math.Abs(deltaPitch) < rotationAdaptation ? desiredPitch : Pitch + rotationAdaptation * Math.Sign(deltaPitch);
		desiredYaw = Yaw -= 1.333f * cameraMovement.X * RotationSpeed;
		desiredPitch = Pitch = MathUtil.Clamp(Pitch + cameraMovement.Y * RotationSpeed, -MathUtil.PiOverTwo, MathUtil.PiOverTwo);

		// Update the camera view matrix
		UpdateViewMatrix();
	}
	private void UpdateViewMatrix() {
		var camera = Component; if (camera == null) return;
		var rotation = Quaternion.RotationYawPitchRoll(Yaw, Pitch, 0);
		Entity.Transform.Rotation = rotation;
	}
} }
