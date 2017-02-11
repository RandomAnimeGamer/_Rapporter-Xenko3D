
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
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Rapporter_TriggerScriptSerializer), typeof(Rapporter.TriggerScript), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterTrigger_TriggerGroupSerializer), typeof(Rapporter.Trigger.TriggerGroup), DataSerializerGenericMode.None, false, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.Core.Serialization.Serializers.ListSerializer<Rapporter.Trigger.TriggerEvent>), typeof(System.Collections.Generic.List<Rapporter.Trigger.TriggerEvent>), DataSerializerGenericMode.None, false, false, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterTrigger_TriggerEventSerializer), typeof(Rapporter.Trigger.TriggerEvent), DataSerializerGenericMode.None, false, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Rapporter_EffectControllerSerializer), typeof(Rapporter.EffectController), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Rapporter_fontScriptTestSerializer), typeof(Rapporter.fontScriptTest), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Rapporter_FpsCameraSerializer), typeof(Rapporter.FpsCamera), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Rapporter_RigidbodyMoveSerializer), typeof(Rapporter.RigidbodyMove), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterPlayer_AnimationControllerSerializer), typeof(Rapporter.Player.AnimationController), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterPlayer_PlayerControllerSerializer), typeof(Rapporter.Player.PlayerController), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterPlayer_PlayerInputSerializer), typeof(Rapporter.Player.PlayerInput), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.Core.Serialization.Serializers.ListSerializer<SiliconStudio.Xenko.Input.Keys>), typeof(System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>), DataSerializerGenericMode.None, false, false, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.Core.Serialization.Serializers.EnumSerializer<SiliconStudio.Xenko.Input.Keys>), typeof(SiliconStudio.Xenko.Input.Keys), DataSerializerGenericMode.None, false, false, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterPlayer_WeaponScriptSerializer), typeof(Rapporter.Player.WeaponScript), DataSerializerGenericMode.None, true, true, Profile = "Default")]
   	public static class Rapporter_GameSerializerFactory
	{
	    [SiliconStudio.Core.ModuleInitializer]
        internal static void Initialize()
        {
			var assemblySerializers = new AssemblySerializers(typeof(Rapporter_GameSerializerFactory).GetTypeInfo().Assembly);

			// Register data contract aliases
			assemblySerializers.DataContractAliases.Add(new KeyValuePair<string, Type>(@"TriggerEvent", typeof(Rapporter.Trigger.TriggerEvent)));
			assemblySerializers.DataContractAliases.Add(new KeyValuePair<string, Type>(@"TriggerGroup", typeof(Rapporter.Trigger.TriggerGroup)));

			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_EngineSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Core_MathematicsSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_PhysicsSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_GraphicsSerializerFactory).GetTypeInfo().Module);
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
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xd2cbc481, 0x427d5f23, 0xde02dead, 0x006e6fea), typeof(Rapporter.TriggerScript), typeof(SiliconStudio.DataSerializers.Rapporter_TriggerScriptSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x3cad9273, 0xb782d035, 0x1bf748e4, 0x63fb0bae), typeof(Rapporter.Trigger.TriggerGroup), typeof(SiliconStudio.DataSerializers.RapporterTrigger_TriggerGroupSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xb139c3fe, 0x21480e62, 0xd02f4b59, 0x8c647534), typeof(System.Collections.Generic.List<Rapporter.Trigger.TriggerEvent>), typeof(SiliconStudio.Core.Serialization.Serializers.ListSerializer<Rapporter.Trigger.TriggerEvent>)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xd1f62297, 0x82a14b71, 0x019334a5, 0xa4ca7b47), typeof(Rapporter.Trigger.TriggerEvent), typeof(SiliconStudio.DataSerializers.RapporterTrigger_TriggerEventSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xb7efd6b5, 0xa8206f45, 0xfcb563f3, 0x92ba06ff), typeof(Rapporter.EffectController), typeof(SiliconStudio.DataSerializers.Rapporter_EffectControllerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x332adffe, 0x1b04aba6, 0x773392d8, 0x959ab0f1), typeof(Rapporter.fontScriptTest), typeof(SiliconStudio.DataSerializers.Rapporter_fontScriptTestSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xf218c95b, 0x03ef8936, 0x48caca76, 0xcf7ff1ed), typeof(Rapporter.FpsCamera), typeof(SiliconStudio.DataSerializers.Rapporter_FpsCameraSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x051a538e, 0x04aeb45c, 0x7ed64eeb, 0xe5702132), typeof(Rapporter.RigidbodyMove), typeof(SiliconStudio.DataSerializers.Rapporter_RigidbodyMoveSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x66bbfcf6, 0xce49cc28, 0xd976abac, 0x8d9390a6), typeof(Rapporter.Player.AnimationController), typeof(SiliconStudio.DataSerializers.RapporterPlayer_AnimationControllerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xf5770bfd, 0xe69d30a7, 0x5a45b17a, 0xbf96386f), typeof(Rapporter.Player.PlayerController), typeof(SiliconStudio.DataSerializers.RapporterPlayer_PlayerControllerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x0ca7907e, 0x0fee09c1, 0x4cd5b715, 0x4c5acf5c), typeof(Rapporter.Player.PlayerInput), typeof(SiliconStudio.DataSerializers.RapporterPlayer_PlayerInputSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xd4040867, 0xf10f81e8, 0x8b793bd8, 0xfd612480), typeof(System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>), typeof(SiliconStudio.Core.Serialization.Serializers.ListSerializer<SiliconStudio.Xenko.Input.Keys>)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x3b55a4c0, 0x93225d33, 0xe5593eaa, 0xf80dbca0), typeof(SiliconStudio.Xenko.Input.Keys), typeof(SiliconStudio.Core.Serialization.Serializers.EnumSerializer<SiliconStudio.Xenko.Input.Keys>)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x46ce5c9b, 0xd0e36120, 0xce38c8ce, 0xaaa18efb), typeof(Rapporter.Player.WeaponScript), typeof(SiliconStudio.DataSerializers.RapporterPlayer_WeaponScriptSerializer)));
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
	sealed class Rapporter_TriggerScriptSerializer : DataSerializer<Rapporter.TriggerScript>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.AsyncScript> parentSerializer;
		private DataSerializer<Rapporter.Trigger.TriggerGroup> TriggerGroupSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.AsyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.AsyncScript"));
			// Cache member serializers
			TriggerGroupSerializer = MemberSerializer<Rapporter.Trigger.TriggerGroup>.Create(serializerSelector);
		}

		public override void Serialize(ref Rapporter.TriggerScript obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Rapporter.TriggerScript)parentObj;

            Rapporter.Trigger.TriggerGroup triggerGroup = mode == ArchiveMode.Serialize ? obj.TriggerGroup : default(Rapporter.Trigger.TriggerGroup);
            TriggerGroupSerializer.Serialize(ref triggerGroup, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.TriggerGroup = triggerGroup;
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterTrigger_TriggerGroupSerializer : ClassDataSerializer<Rapporter.Trigger.TriggerGroup>
	{
		private DataSerializer<System.String> NameSerializer;
		private DataSerializer<System.Collections.Generic.List<Rapporter.Trigger.TriggerEvent>> TriggerEventsSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Cache member serializers
			NameSerializer = MemberSerializer<System.String>.Create(serializerSelector);
			TriggerEventsSerializer = MemberSerializer<System.Collections.Generic.List<Rapporter.Trigger.TriggerEvent>>.Create(serializerSelector);
		}

		public override void Serialize(ref Rapporter.Trigger.TriggerGroup obj, ArchiveMode mode, SerializationStream stream)
		{
            System.String name = mode == ArchiveMode.Serialize ? obj.Name : default(System.String);
            NameSerializer.Serialize(ref name, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.Name = name;
            System.Collections.Generic.List<Rapporter.Trigger.TriggerEvent> triggerEvents = obj.TriggerEvents;
            TriggerEventsSerializer.Serialize(ref triggerEvents, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterTrigger_TriggerEventSerializer : ClassDataSerializer<Rapporter.Trigger.TriggerEvent>
	{
		private DataSerializer<System.String> NameSerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Prefab> SourcePrefabSerializer;
		private DataSerializer<System.Boolean> FollowEntitySerializer;
		private DataSerializer<System.Single> DurationSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector3> PositionSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Quaternion> RotationSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector3> ScaleSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Cache member serializers
			NameSerializer = MemberSerializer<System.String>.Create(serializerSelector);
			SourcePrefabSerializer = MemberSerializer<SiliconStudio.Xenko.Engine.Prefab>.Create(serializerSelector);
			FollowEntitySerializer = MemberSerializer<System.Boolean>.Create(serializerSelector);
			DurationSerializer = MemberSerializer<System.Single>.Create(serializerSelector);
			PositionSerializer = MemberSerializer<SiliconStudio.Core.Mathematics.Vector3>.Create(serializerSelector);
			RotationSerializer = MemberSerializer<SiliconStudio.Core.Mathematics.Quaternion>.Create(serializerSelector);
		}

		public override void Serialize(ref Rapporter.Trigger.TriggerEvent obj, ArchiveMode mode, SerializationStream stream)
		{
            System.String name = mode == ArchiveMode.Serialize ? obj.Name : default(System.String);
            NameSerializer.Serialize(ref name, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.Name = name;
            SiliconStudio.Xenko.Engine.Prefab sourcePrefab = mode == ArchiveMode.Serialize ? obj.SourcePrefab : default(SiliconStudio.Xenko.Engine.Prefab);
            SourcePrefabSerializer.Serialize(ref sourcePrefab, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.SourcePrefab = sourcePrefab;
            System.Boolean followEntity = mode == ArchiveMode.Serialize ? obj.FollowEntity : default(System.Boolean);
            FollowEntitySerializer.Serialize(ref followEntity, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.FollowEntity = followEntity;
            System.Single duration = mode == ArchiveMode.Serialize ? obj.Duration : default(System.Single);
            DurationSerializer.Serialize(ref duration, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.Duration = duration;
            SiliconStudio.Core.Mathematics.Vector3 position = mode == ArchiveMode.Serialize ? obj.Position : default(SiliconStudio.Core.Mathematics.Vector3);
            PositionSerializer.Serialize(ref position, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.Position = position;
            SiliconStudio.Core.Mathematics.Quaternion rotation = mode == ArchiveMode.Serialize ? obj.Rotation : default(SiliconStudio.Core.Mathematics.Quaternion);
            RotationSerializer.Serialize(ref rotation, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.Rotation = rotation;
            SiliconStudio.Core.Mathematics.Vector3 scale = mode == ArchiveMode.Serialize ? obj.Scale : default(SiliconStudio.Core.Mathematics.Vector3);
            PositionSerializer.Serialize(ref scale, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.Scale = scale;
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class Rapporter_EffectControllerSerializer : ClassDataSerializer<Rapporter.EffectController>
	{
		private DataSerializer<Rapporter.TriggerScript> parentSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<Rapporter.TriggerScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"Rapporter.TriggerScript"));
			// Cache member serializers
		}

		public override void Serialize(ref Rapporter.EffectController obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			Rapporter.TriggerScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Rapporter.EffectController)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class Rapporter_fontScriptTestSerializer : ClassDataSerializer<Rapporter.fontScriptTest>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.AsyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Graphics.SpriteFont> StaticFontSerializer;
		private DataSerializer<SiliconStudio.Xenko.Graphics.SpriteFont> DynamicFontSerializer;
		private DataSerializer<SiliconStudio.Xenko.Graphics.SpriteFont> BoldFontSerializer;
		private DataSerializer<SiliconStudio.Xenko.Graphics.SpriteFont> ItalicFontSerializer;
		private DataSerializer<SiliconStudio.Xenko.Graphics.SpriteFont> AliasedFontSerializer;
		private DataSerializer<SiliconStudio.Xenko.Graphics.SpriteFont> AntialiasedFontSerializer;
		private DataSerializer<SiliconStudio.Xenko.Graphics.SpriteFont> ClearTypeFontSerializer;
		private DataSerializer<SiliconStudio.Xenko.Graphics.SpriteFont> JapaneseFontSerializer;
		private DataSerializer<SiliconStudio.Xenko.Graphics.SpriteFont> TimesNewRomanSerializer;
		private DataSerializer<SiliconStudio.Xenko.Graphics.SpriteFont> HeaderFontSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.AsyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.AsyncScript"));
			// Cache member serializers
			StaticFontSerializer = MemberSerializer<SiliconStudio.Xenko.Graphics.SpriteFont>.Create(serializerSelector);
		}

		public override void Serialize(ref Rapporter.fontScriptTest obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Rapporter.fontScriptTest)parentObj;

            StaticFontSerializer.Serialize(ref obj.StaticFont, mode, stream);
            StaticFontSerializer.Serialize(ref obj.DynamicFont, mode, stream);
            StaticFontSerializer.Serialize(ref obj.BoldFont, mode, stream);
            StaticFontSerializer.Serialize(ref obj.ItalicFont, mode, stream);
            StaticFontSerializer.Serialize(ref obj.AliasedFont, mode, stream);
            StaticFontSerializer.Serialize(ref obj.AntialiasedFont, mode, stream);
            StaticFontSerializer.Serialize(ref obj.ClearTypeFont, mode, stream);
            StaticFontSerializer.Serialize(ref obj.JapaneseFont, mode, stream);
            StaticFontSerializer.Serialize(ref obj.TimesNewRoman, mode, stream);
            StaticFontSerializer.Serialize(ref obj.HeaderFont, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class Rapporter_FpsCameraSerializer : ClassDataSerializer<Rapporter.FpsCamera>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.AsyncScript> parentSerializer;
		private DataSerializer<System.Single> RotationSpeedSerializer;
		private DataSerializer<System.Single> RotationAdaptationSpeedSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.AsyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.AsyncScript"));
			// Cache member serializers
			RotationSpeedSerializer = MemberSerializer<System.Single>.Create(serializerSelector);
		}

		public override void Serialize(ref Rapporter.FpsCamera obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Rapporter.FpsCamera)parentObj;

            System.Single rotationSpeed = mode == ArchiveMode.Serialize ? obj.RotationSpeed : default(System.Single);
            RotationSpeedSerializer.Serialize(ref rotationSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.RotationSpeed = rotationSpeed;
            System.Single rotationAdaptationSpeed = mode == ArchiveMode.Serialize ? obj.RotationAdaptationSpeed : default(System.Single);
            RotationSpeedSerializer.Serialize(ref rotationAdaptationSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.RotationAdaptationSpeed = rotationAdaptationSpeed;
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class Rapporter_RigidbodyMoveSerializer : ClassDataSerializer<Rapporter.RigidbodyMove>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector3> KeyboardMovementSpeedSerializer;
		private DataSerializer<System.Single> SpeedFactorSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector2> KeyboardRotationSpeedSerializer;

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

		public override void Serialize(ref Rapporter.RigidbodyMove obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Rapporter.RigidbodyMove)parentObj;

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
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterPlayer_AnimationControllerSerializer : ClassDataSerializer<Rapporter.Player.AnimationController>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.AnimationComponent> AnimationComponentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Animations.AnimationClip> AnimationIdleSerializer;
		private DataSerializer<SiliconStudio.Xenko.Animations.AnimationClip> AnimationWalkSerializer;
		private DataSerializer<SiliconStudio.Xenko.Animations.AnimationClip> AnimationShootSerializer;
		private DataSerializer<SiliconStudio.Xenko.Animations.AnimationClip> AnimationReloadSerializer;
		private DataSerializer<System.Double> TimeFactorSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			AnimationComponentSerializer = MemberSerializer<SiliconStudio.Xenko.Engine.AnimationComponent>.Create(serializerSelector);
			AnimationIdleSerializer = MemberSerializer<SiliconStudio.Xenko.Animations.AnimationClip>.Create(serializerSelector);
			TimeFactorSerializer = MemberSerializer<System.Double>.Create(serializerSelector);
		}

		public override void Serialize(ref Rapporter.Player.AnimationController obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Rapporter.Player.AnimationController)parentObj;

            SiliconStudio.Xenko.Engine.AnimationComponent animationComponent = mode == ArchiveMode.Serialize ? obj.AnimationComponent : default(SiliconStudio.Xenko.Engine.AnimationComponent);
            AnimationComponentSerializer.Serialize(ref animationComponent, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.AnimationComponent = animationComponent;
            SiliconStudio.Xenko.Animations.AnimationClip animationIdle = mode == ArchiveMode.Serialize ? obj.AnimationIdle : default(SiliconStudio.Xenko.Animations.AnimationClip);
            AnimationIdleSerializer.Serialize(ref animationIdle, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.AnimationIdle = animationIdle;
            SiliconStudio.Xenko.Animations.AnimationClip animationWalk = mode == ArchiveMode.Serialize ? obj.AnimationWalk : default(SiliconStudio.Xenko.Animations.AnimationClip);
            AnimationIdleSerializer.Serialize(ref animationWalk, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.AnimationWalk = animationWalk;
            SiliconStudio.Xenko.Animations.AnimationClip animationShoot = mode == ArchiveMode.Serialize ? obj.AnimationShoot : default(SiliconStudio.Xenko.Animations.AnimationClip);
            AnimationIdleSerializer.Serialize(ref animationShoot, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.AnimationShoot = animationShoot;
            SiliconStudio.Xenko.Animations.AnimationClip animationReload = mode == ArchiveMode.Serialize ? obj.AnimationReload : default(SiliconStudio.Xenko.Animations.AnimationClip);
            AnimationIdleSerializer.Serialize(ref animationReload, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.AnimationReload = animationReload;
            System.Double timeFactor = mode == ArchiveMode.Serialize ? obj.TimeFactor : default(System.Double);
            TimeFactorSerializer.Serialize(ref timeFactor, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.TimeFactor = timeFactor;
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterPlayer_PlayerControllerSerializer : ClassDataSerializer<Rapporter.Player.PlayerController>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<System.Single> MaxRunSpeedSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			MaxRunSpeedSerializer = MemberSerializer<System.Single>.Create(serializerSelector);
		}

		public override void Serialize(ref Rapporter.Player.PlayerController obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Rapporter.Player.PlayerController)parentObj;

            System.Single maxRunSpeed = mode == ArchiveMode.Serialize ? obj.MaxRunSpeed : default(System.Single);
            MaxRunSpeedSerializer.Serialize(ref maxRunSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.MaxRunSpeed = maxRunSpeed;
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterPlayer_PlayerInputSerializer : ClassDataSerializer<Rapporter.Player.PlayerInput>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<System.Single> DeadZoneSerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.CameraComponent> CameraSerializer;
		private DataSerializer<System.Single> MouseSensitivitySerializer;
		private DataSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>> KeysLeftSerializer;
		private DataSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>> KeysRightSerializer;
		private DataSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>> KeysUpSerializer;
		private DataSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>> KeysDownSerializer;
		private DataSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>> KeysJumpSerializer;
		private DataSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>> ParticleTestSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			DeadZoneSerializer = MemberSerializer<System.Single>.Create(serializerSelector);
			CameraSerializer = MemberSerializer<SiliconStudio.Xenko.Engine.CameraComponent>.Create(serializerSelector);
			KeysLeftSerializer = MemberSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>>.Create(serializerSelector);
		}

		public override void Serialize(ref Rapporter.Player.PlayerInput obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Rapporter.Player.PlayerInput)parentObj;

            System.Single deadZone = mode == ArchiveMode.Serialize ? obj.DeadZone : default(System.Single);
            DeadZoneSerializer.Serialize(ref deadZone, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.DeadZone = deadZone;
            SiliconStudio.Xenko.Engine.CameraComponent camera = mode == ArchiveMode.Serialize ? obj.Camera : default(SiliconStudio.Xenko.Engine.CameraComponent);
            CameraSerializer.Serialize(ref camera, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.Camera = camera;
            System.Single mouseSensitivity = mode == ArchiveMode.Serialize ? obj.MouseSensitivity : default(System.Single);
            DeadZoneSerializer.Serialize(ref mouseSensitivity, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.MouseSensitivity = mouseSensitivity;
            System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys> keysLeft = obj.KeysLeft;
            KeysLeftSerializer.Serialize(ref keysLeft, mode, stream);
            System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys> keysRight = obj.KeysRight;
            KeysLeftSerializer.Serialize(ref keysRight, mode, stream);
            System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys> keysUp = obj.KeysUp;
            KeysLeftSerializer.Serialize(ref keysUp, mode, stream);
            System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys> keysDown = obj.KeysDown;
            KeysLeftSerializer.Serialize(ref keysDown, mode, stream);
            System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys> keysJump = obj.KeysJump;
            KeysLeftSerializer.Serialize(ref keysJump, mode, stream);
            System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys> particleTest = obj.ParticleTest;
            KeysLeftSerializer.Serialize(ref particleTest, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterPlayer_WeaponScriptSerializer : ClassDataSerializer<Rapporter.Player.WeaponScript>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<System.Single> MaxShootDistanceSerializer;
		private DataSerializer<System.Single> ShootImpulseSerializer;
		private DataSerializer<System.Single> CooldownSerializer;
		private DataSerializer<System.Single> ReloadCooldownSerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.SpriteComponent> RemainingBulletsSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			MaxShootDistanceSerializer = MemberSerializer<System.Single>.Create(serializerSelector);
			RemainingBulletsSerializer = MemberSerializer<SiliconStudio.Xenko.Engine.SpriteComponent>.Create(serializerSelector);
		}

		public override void Serialize(ref Rapporter.Player.WeaponScript obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Rapporter.Player.WeaponScript)parentObj;

            System.Single maxShootDistance = mode == ArchiveMode.Serialize ? obj.MaxShootDistance : default(System.Single);
            MaxShootDistanceSerializer.Serialize(ref maxShootDistance, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.MaxShootDistance = maxShootDistance;
            System.Single shootImpulse = mode == ArchiveMode.Serialize ? obj.ShootImpulse : default(System.Single);
            MaxShootDistanceSerializer.Serialize(ref shootImpulse, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.ShootImpulse = shootImpulse;
            System.Single cooldown = mode == ArchiveMode.Serialize ? obj.Cooldown : default(System.Single);
            MaxShootDistanceSerializer.Serialize(ref cooldown, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.Cooldown = cooldown;
            System.Single reloadCooldown = mode == ArchiveMode.Serialize ? obj.ReloadCooldown : default(System.Single);
            MaxShootDistanceSerializer.Serialize(ref reloadCooldown, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.ReloadCooldown = reloadCooldown;
            SiliconStudio.Xenko.Engine.SpriteComponent remainingBullets = mode == ArchiveMode.Serialize ? obj.RemainingBullets : default(SiliconStudio.Xenko.Engine.SpriteComponent);
            RemainingBulletsSerializer.Serialize(ref remainingBullets, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.RemainingBullets = remainingBullets;
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}