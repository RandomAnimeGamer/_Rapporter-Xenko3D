
using System;
using System.Collections.Generic;
using System.Reflection;
using SiliconStudio.Core.Serialization;
using SiliconStudio.Core.Reflection;
using SiliconStudio.Core.Serialization.Serializers;
using SiliconStudio.DataSerializers;

[assembly: AssemblyVersion("1.0.0.0")]
[assembly: System.Runtime.Versioning.TargetFramework(".NETPortable,Version=v5.0", FrameworkDisplayName=".NET Portable Subset")]

[assembly: SiliconStudio.Core.Serialization.Serializers.AssemblySerializerFactory(Type = typeof(SiliconStudio.DataSerializers.FirstPersonShooter2_GameSerializerFactory))]

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
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.FirstPersonShooter2_TriggerScriptSerializer), typeof(FirstPersonShooter2.TriggerScript), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.FirstPersonShooter2Trigger_TriggerGroupSerializer), typeof(FirstPersonShooter2.Trigger.TriggerGroup), DataSerializerGenericMode.None, false, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.Core.Serialization.Serializers.ListSerializer<FirstPersonShooter2.Trigger.TriggerEvent>), typeof(System.Collections.Generic.List<FirstPersonShooter2.Trigger.TriggerEvent>), DataSerializerGenericMode.None, false, false, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.FirstPersonShooter2Trigger_TriggerEventSerializer), typeof(FirstPersonShooter2.Trigger.TriggerEvent), DataSerializerGenericMode.None, false, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.FirstPersonShooter2_EffectControllerSerializer), typeof(FirstPersonShooter2.EffectController), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.FirstPersonShooter2_FpsCameraSerializer), typeof(FirstPersonShooter2.FpsCamera), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.FirstPersonShooter2Player_AnimationControllerSerializer), typeof(FirstPersonShooter2.Player.AnimationController), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.FirstPersonShooter2Player_PlayerControllerSerializer), typeof(FirstPersonShooter2.Player.PlayerController), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.FirstPersonShooter2Player_PlayerInputSerializer), typeof(FirstPersonShooter2.Player.PlayerInput), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.Core.Serialization.Serializers.ListSerializer<SiliconStudio.Xenko.Input.Keys>), typeof(System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>), DataSerializerGenericMode.None, false, false, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.Core.Serialization.Serializers.EnumSerializer<SiliconStudio.Xenko.Input.Keys>), typeof(SiliconStudio.Xenko.Input.Keys), DataSerializerGenericMode.None, false, false, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.FirstPersonShooter2Player_WeaponScriptSerializer), typeof(FirstPersonShooter2.Player.WeaponScript), DataSerializerGenericMode.None, true, true, Profile = "Default")]
   	public static class FirstPersonShooter2_GameSerializerFactory
	{
	    [SiliconStudio.Core.ModuleInitializer]
        internal static void Initialize()
        {
			var assemblySerializers = new AssemblySerializers(typeof(FirstPersonShooter2_GameSerializerFactory).GetTypeInfo().Assembly);

			// Register data contract aliases
			assemblySerializers.DataContractAliases.Add(new KeyValuePair<string, Type>(@"TriggerEvent", typeof(FirstPersonShooter2.Trigger.TriggerEvent)));
			assemblySerializers.DataContractAliases.Add(new KeyValuePair<string, Type>(@"TriggerGroup", typeof(FirstPersonShooter2.Trigger.TriggerGroup)));

			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_EngineSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_PhysicsSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Core_MathematicsSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_CoreSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_ParticlesSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_SpriteStudio_RuntimeSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_NativeSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_UISerializerFactory).GetTypeInfo().Module);

			{
				var assemblySerializersProfile = new AssemblySerializersPerProfile();
				assemblySerializers.Profiles["Default"] = assemblySerializersProfile;

				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xac1e8d7a, 0x7e79aae8, 0x146babc5, 0x215e0c92), typeof(FirstPersonShooter2.TriggerScript), typeof(SiliconStudio.DataSerializers.FirstPersonShooter2_TriggerScriptSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x07258e1d, 0xecd2aadd, 0x34403b5c, 0x9ad5de16), typeof(FirstPersonShooter2.Trigger.TriggerGroup), typeof(SiliconStudio.DataSerializers.FirstPersonShooter2Trigger_TriggerGroupSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xcf385916, 0xb40a3fd4, 0xe841afa9, 0xcf3903d3), typeof(System.Collections.Generic.List<FirstPersonShooter2.Trigger.TriggerEvent>), typeof(SiliconStudio.Core.Serialization.Serializers.ListSerializer<FirstPersonShooter2.Trigger.TriggerEvent>)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x289c4a21, 0x4e0c1ea8, 0xac5d3d24, 0xcaebc3f7), typeof(FirstPersonShooter2.Trigger.TriggerEvent), typeof(SiliconStudio.DataSerializers.FirstPersonShooter2Trigger_TriggerEventSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xce76b83f, 0x95f8ac46, 0xb5ad2bc1, 0x2f183dea), typeof(FirstPersonShooter2.EffectController), typeof(SiliconStudio.DataSerializers.FirstPersonShooter2_EffectControllerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xed0a7f92, 0xd1c97711, 0x99da67d6, 0x4ce90b08), typeof(FirstPersonShooter2.FpsCamera), typeof(SiliconStudio.DataSerializers.FirstPersonShooter2_FpsCameraSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xa99cb63b, 0xa6130cba, 0x9c4c2b72, 0x90bd27fc), typeof(FirstPersonShooter2.Player.AnimationController), typeof(SiliconStudio.DataSerializers.FirstPersonShooter2Player_AnimationControllerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x778a61ca, 0x298ee36a, 0xcf0a9163, 0xc0145609), typeof(FirstPersonShooter2.Player.PlayerController), typeof(SiliconStudio.DataSerializers.FirstPersonShooter2Player_PlayerControllerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xb4a8f735, 0x8bbcfe15, 0x62c662ce, 0x5bfe85aa), typeof(FirstPersonShooter2.Player.PlayerInput), typeof(SiliconStudio.DataSerializers.FirstPersonShooter2Player_PlayerInputSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xd4040867, 0xf10f81e8, 0x8b793bd8, 0xfd612480), typeof(System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>), typeof(SiliconStudio.Core.Serialization.Serializers.ListSerializer<SiliconStudio.Xenko.Input.Keys>)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x3b55a4c0, 0x93225d33, 0xe5593eaa, 0xf80dbca0), typeof(SiliconStudio.Xenko.Input.Keys), typeof(SiliconStudio.Core.Serialization.Serializers.EnumSerializer<SiliconStudio.Xenko.Input.Keys>)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xaed1b6e9, 0xabbe94da, 0x002a5d7f, 0xdb1b156f), typeof(FirstPersonShooter2.Player.WeaponScript), typeof(SiliconStudio.DataSerializers.FirstPersonShooter2Player_WeaponScriptSerializer)));
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
            AssemblyRegistry.Register(typeof(FirstPersonShooter2_GameSerializerFactory).GetTypeInfo().Assembly, AssemblyCommonCategories.Engine);
        }
	}
}



namespace SiliconStudio.DataSerializers
{
	sealed class FirstPersonShooter2_TriggerScriptSerializer : DataSerializer<FirstPersonShooter2.TriggerScript>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.AsyncScript> parentSerializer;
		private DataSerializer<FirstPersonShooter2.Trigger.TriggerGroup> TriggerGroupSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.AsyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.AsyncScript"));
			// Cache member serializers
			TriggerGroupSerializer = MemberSerializer<FirstPersonShooter2.Trigger.TriggerGroup>.Create(serializerSelector);
		}

		public override void Serialize(ref FirstPersonShooter2.TriggerScript obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (FirstPersonShooter2.TriggerScript)parentObj;

            FirstPersonShooter2.Trigger.TriggerGroup triggerGroup = mode == ArchiveMode.Serialize ? obj.TriggerGroup : default(FirstPersonShooter2.Trigger.TriggerGroup);
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
	sealed class FirstPersonShooter2Trigger_TriggerGroupSerializer : ClassDataSerializer<FirstPersonShooter2.Trigger.TriggerGroup>
	{
		private DataSerializer<System.String> NameSerializer;
		private DataSerializer<System.Collections.Generic.List<FirstPersonShooter2.Trigger.TriggerEvent>> TriggerEventsSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Cache member serializers
			NameSerializer = MemberSerializer<System.String>.Create(serializerSelector);
			TriggerEventsSerializer = MemberSerializer<System.Collections.Generic.List<FirstPersonShooter2.Trigger.TriggerEvent>>.Create(serializerSelector);
		}

		public override void Serialize(ref FirstPersonShooter2.Trigger.TriggerGroup obj, ArchiveMode mode, SerializationStream stream)
		{
            System.String name = mode == ArchiveMode.Serialize ? obj.Name : default(System.String);
            NameSerializer.Serialize(ref name, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.Name = name;
            System.Collections.Generic.List<FirstPersonShooter2.Trigger.TriggerEvent> triggerEvents = obj.TriggerEvents;
            TriggerEventsSerializer.Serialize(ref triggerEvents, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class FirstPersonShooter2Trigger_TriggerEventSerializer : ClassDataSerializer<FirstPersonShooter2.Trigger.TriggerEvent>
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

		public override void Serialize(ref FirstPersonShooter2.Trigger.TriggerEvent obj, ArchiveMode mode, SerializationStream stream)
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
	sealed class FirstPersonShooter2_EffectControllerSerializer : ClassDataSerializer<FirstPersonShooter2.EffectController>
	{
		private DataSerializer<FirstPersonShooter2.TriggerScript> parentSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<FirstPersonShooter2.TriggerScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"FirstPersonShooter2.TriggerScript"));
			// Cache member serializers
		}

		public override void Serialize(ref FirstPersonShooter2.EffectController obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			FirstPersonShooter2.TriggerScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (FirstPersonShooter2.EffectController)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class FirstPersonShooter2_FpsCameraSerializer : ClassDataSerializer<FirstPersonShooter2.FpsCamera>
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

		public override void Serialize(ref FirstPersonShooter2.FpsCamera obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (FirstPersonShooter2.FpsCamera)parentObj;

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
	sealed class FirstPersonShooter2Player_AnimationControllerSerializer : ClassDataSerializer<FirstPersonShooter2.Player.AnimationController>
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

		public override void Serialize(ref FirstPersonShooter2.Player.AnimationController obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (FirstPersonShooter2.Player.AnimationController)parentObj;

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
	sealed class FirstPersonShooter2Player_PlayerControllerSerializer : ClassDataSerializer<FirstPersonShooter2.Player.PlayerController>
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

		public override void Serialize(ref FirstPersonShooter2.Player.PlayerController obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (FirstPersonShooter2.Player.PlayerController)parentObj;

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
	sealed class FirstPersonShooter2Player_PlayerInputSerializer : ClassDataSerializer<FirstPersonShooter2.Player.PlayerInput>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<System.Single> DeadZoneSerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.CameraComponent> CameraSerializer;
		private DataSerializer<System.Single> MouseSensitivitySerializer;
		private DataSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>> KeysLeftSerializer;
		private DataSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>> KeysRightSerializer;
		private DataSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>> KeysUpSerializer;
		private DataSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>> KeysDownSerializer;
		private DataSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>> KeysReloadSerializer;

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

		public override void Serialize(ref FirstPersonShooter2.Player.PlayerInput obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (FirstPersonShooter2.Player.PlayerInput)parentObj;

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
            System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys> keysReload = obj.KeysReload;
            KeysLeftSerializer.Serialize(ref keysReload, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class FirstPersonShooter2Player_WeaponScriptSerializer : ClassDataSerializer<FirstPersonShooter2.Player.WeaponScript>
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

		public override void Serialize(ref FirstPersonShooter2.Player.WeaponScript obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (FirstPersonShooter2.Player.WeaponScript)parentObj;

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