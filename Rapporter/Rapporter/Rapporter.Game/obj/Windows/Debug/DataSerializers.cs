
using System;
using System.Collections.Generic;
using System.Reflection;
using SiliconStudio.Core.Serialization;
using SiliconStudio.Core.Reflection;
using SiliconStudio.Core.Serialization.Serializers;
using SiliconStudio.DataSerializers;

[assembly: AssemblyVersion("1.0.0.0")]
[assembly: System.Runtime.Versioning.TargetFramework(".NETPortable,Version=v5.0", FrameworkDisplayName=".NET Portable Subset")]

[assembly: SiliconStudio.Core.Serialization.Serializers.AssemblySerializerFactory(Type = typeof(SiliconStudio.DataSerializers.Rapporter_GameSerializerFactory))]

namespace SiliconStudio.Core.Serialization.Serializers
{
	class AssemblySerializerFactoryAttribute : Attribute
	{
		public Type Type;
	}
}

namespace SiliconStudio.DataSerializers
{
    // Assembly attributes that defines supported serializer (only generics one so that other assemblies can do generic instantiations by themselves)
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Rapporter_BasicCameraControllerSerializer), typeof(Rapporter.BasicCameraController), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Rapporter_DebugPhysicsShapesSerializer), typeof(Rapporter.DebugPhysicsShapes), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Rapporter_GravitySerializer), typeof(Rapporter.Gravity), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Rapporter_JumpSerializer), typeof(Rapporter.Jump), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Rapporter_MovementSerializer), typeof(Rapporter.Movement), DataSerializerGenericMode.None, true, true, Profile = "Default")]
   	public static class Rapporter_GameSerializerFactory
	{
	    [SiliconStudio.Core.ModuleInitializer]
        internal static void Initialize()
        {
			var assemblySerializers = new AssemblySerializers(typeof(Rapporter_GameSerializerFactory).GetTypeInfo().Assembly);

			// Register data contract aliases

			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_EngineSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Core_MathematicsSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_PhysicsSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_CoreSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_ParticlesSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_SpriteStudio_RuntimeSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_NativeSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_UISerializerFactory).GetTypeInfo().Module);

			{
				var assemblySerializersProfile = new AssemblySerializersPerProfile();
				assemblySerializers.Profiles["Default"] = assemblySerializersProfile;

				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xb387d334, 0x081a82a5, 0xd7a79b1f, 0x04b56377), typeof(Rapporter.BasicCameraController), typeof(SiliconStudio.DataSerializers.Rapporter_BasicCameraControllerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x2d184418, 0xc6fd7c15, 0x86fea326, 0xedd88efe), typeof(Rapporter.DebugPhysicsShapes), typeof(SiliconStudio.DataSerializers.Rapporter_DebugPhysicsShapesSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x5c375119, 0x3502f6ca, 0x376746d2, 0x91176a1c), typeof(Rapporter.Gravity), typeof(SiliconStudio.DataSerializers.Rapporter_GravitySerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xc6ee40d8, 0x89605c78, 0xe57fa83d, 0x9b65b997), typeof(Rapporter.Jump), typeof(SiliconStudio.DataSerializers.Rapporter_JumpSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xa652915e, 0x75e06b6e, 0x14d58d6f, 0xec39476d), typeof(Rapporter.Movement), typeof(SiliconStudio.DataSerializers.Rapporter_MovementSerializer)));
			}
			{
				var assemblySerializersProfile = new AssemblySerializersPerProfile();
				assemblySerializers.Profiles["Content"] = assemblySerializersProfile;

			}
			{
				var assemblySerializersProfile = new AssemblySerializersPerProfile();
				assemblySerializers.Profiles["Hash"] = assemblySerializersProfile;

			}
			{
				var assemblySerializersProfile = new AssemblySerializersPerProfile();
				assemblySerializers.Profiles["Clone"] = assemblySerializersProfile;

			}

			DataSerializerFactory.RegisterSerializationAssembly(assemblySerializers);
            AssemblyRegistry.Register(typeof(Rapporter_GameSerializerFactory).GetTypeInfo().Assembly, AssemblyCommonCategories.Engine);
        }
	}
}



namespace SiliconStudio.DataSerializers
{
	sealed class Rapporter_BasicCameraControllerSerializer : ClassDataSerializer<Rapporter.BasicCameraController>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector3> KeyboardMovementSpeedSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector3> TouchMovementSpeedSerializer;
		private DataSerializer<System.Single> SpeedFactorSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector2> KeyboardRotationSpeedSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector2> MouseRotationSpeedSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector2> TouchRotationSpeedSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			KeyboardMovementSpeedSerializer = MemberSerializer<SiliconStudio.Core.Mathematics.Vector3>.Create(serializerSelector);
			SpeedFactorSerializer = MemberSerializer<System.Single>.Create(serializerSelector);
			KeyboardRotationSpeedSerializer = MemberSerializer<SiliconStudio.Core.Mathematics.Vector2>.Create(serializerSelector);
		}

		public override void Serialize(ref Rapporter.BasicCameraController obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Rapporter.BasicCameraController)parentObj;

            SiliconStudio.Core.Mathematics.Vector3 keyboardMovementSpeed = mode == ArchiveMode.Serialize ? obj.KeyboardMovementSpeed : default(SiliconStudio.Core.Mathematics.Vector3);
            KeyboardMovementSpeedSerializer.Serialize(ref keyboardMovementSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.KeyboardMovementSpeed = keyboardMovementSpeed;
            SiliconStudio.Core.Mathematics.Vector3 touchMovementSpeed = mode == ArchiveMode.Serialize ? obj.TouchMovementSpeed : default(SiliconStudio.Core.Mathematics.Vector3);
            KeyboardMovementSpeedSerializer.Serialize(ref touchMovementSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.TouchMovementSpeed = touchMovementSpeed;
            System.Single speedFactor = mode == ArchiveMode.Serialize ? obj.SpeedFactor : default(System.Single);
            SpeedFactorSerializer.Serialize(ref speedFactor, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.SpeedFactor = speedFactor;
            SiliconStudio.Core.Mathematics.Vector2 keyboardRotationSpeed = mode == ArchiveMode.Serialize ? obj.KeyboardRotationSpeed : default(SiliconStudio.Core.Mathematics.Vector2);
            KeyboardRotationSpeedSerializer.Serialize(ref keyboardRotationSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.KeyboardRotationSpeed = keyboardRotationSpeed;
            SiliconStudio.Core.Mathematics.Vector2 mouseRotationSpeed = mode == ArchiveMode.Serialize ? obj.MouseRotationSpeed : default(SiliconStudio.Core.Mathematics.Vector2);
            KeyboardRotationSpeedSerializer.Serialize(ref mouseRotationSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.MouseRotationSpeed = mouseRotationSpeed;
            SiliconStudio.Core.Mathematics.Vector2 touchRotationSpeed = mode == ArchiveMode.Serialize ? obj.TouchRotationSpeed : default(SiliconStudio.Core.Mathematics.Vector2);
            KeyboardRotationSpeedSerializer.Serialize(ref touchRotationSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.TouchRotationSpeed = touchRotationSpeed;
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class Rapporter_DebugPhysicsShapesSerializer : ClassDataSerializer<Rapporter.DebugPhysicsShapes>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.AsyncScript> parentSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.AsyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.AsyncScript"));
			// Cache member serializers
		}

		public override void Serialize(ref Rapporter.DebugPhysicsShapes obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Rapporter.DebugPhysicsShapes)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class Rapporter_GravitySerializer : ClassDataSerializer<Rapporter.Gravity>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.AsyncScript> parentSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.AsyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.AsyncScript"));
			// Cache member serializers
		}

		public override void Serialize(ref Rapporter.Gravity obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Rapporter.Gravity)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class Rapporter_JumpSerializer : ClassDataSerializer<Rapporter.Jump>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
		}

		public override void Serialize(ref Rapporter.Jump obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Rapporter.Jump)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class Rapporter_MovementSerializer : ClassDataSerializer<Rapporter.Movement>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector3> KeyboardMovementSpeedSerializer;
		private DataSerializer<System.Single> SpeedFactorSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector2> KeyboardRotationSpeedSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector2> MouseRotationSpeedSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			KeyboardMovementSpeedSerializer = MemberSerializer<SiliconStudio.Core.Mathematics.Vector3>.Create(serializerSelector);
			SpeedFactorSerializer = MemberSerializer<System.Single>.Create(serializerSelector);
			KeyboardRotationSpeedSerializer = MemberSerializer<SiliconStudio.Core.Mathematics.Vector2>.Create(serializerSelector);
		}

		public override void Serialize(ref Rapporter.Movement obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Rapporter.Movement)parentObj;

            SiliconStudio.Core.Mathematics.Vector3 keyboardMovementSpeed = mode == ArchiveMode.Serialize ? obj.KeyboardMovementSpeed : default(SiliconStudio.Core.Mathematics.Vector3);
            KeyboardMovementSpeedSerializer.Serialize(ref keyboardMovementSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.KeyboardMovementSpeed = keyboardMovementSpeed;
            System.Single speedFactor = mode == ArchiveMode.Serialize ? obj.SpeedFactor : default(System.Single);
            SpeedFactorSerializer.Serialize(ref speedFactor, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.SpeedFactor = speedFactor;
            SiliconStudio.Core.Mathematics.Vector2 keyboardRotationSpeed = mode == ArchiveMode.Serialize ? obj.KeyboardRotationSpeed : default(SiliconStudio.Core.Mathematics.Vector2);
            KeyboardRotationSpeedSerializer.Serialize(ref keyboardRotationSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.KeyboardRotationSpeed = keyboardRotationSpeed;
            SiliconStudio.Core.Mathematics.Vector2 mouseRotationSpeed = mode == ArchiveMode.Serialize ? obj.MouseRotationSpeed : default(SiliconStudio.Core.Mathematics.Vector2);
            KeyboardRotationSpeedSerializer.Serialize(ref mouseRotationSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.MouseRotationSpeed = mouseRotationSpeed;
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}