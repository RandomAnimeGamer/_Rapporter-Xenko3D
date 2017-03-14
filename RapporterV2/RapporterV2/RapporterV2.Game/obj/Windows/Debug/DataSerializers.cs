
using System;
using System.Collections.Generic;
using System.Reflection;
using SiliconStudio.Core.Serialization;
using SiliconStudio.Core.Reflection;
using SiliconStudio.Core.Serialization.Serializers;
using SiliconStudio.DataSerializers;

[assembly: AssemblyVersion("1.0.0.0")]
[assembly: System.Runtime.Versioning.TargetFramework(".NETPortable,Version=v5.0", FrameworkDisplayName=".NET Portable Subset")]

[assembly: SiliconStudio.Core.Serialization.Serializers.AssemblySerializerFactory(Type = typeof(SiliconStudio.DataSerializers.RapporterV2_GameSerializerFactory))]

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
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Player_ScrollTextSerializer), typeof(Player.ScrollText), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2_FpsCameraSerializer), typeof(RapporterV2.FpsCamera), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2_TriggerScriptSerializer), typeof(RapporterV2.TriggerScript), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Trigger_TriggerGroupSerializer), typeof(RapporterV2.Trigger.TriggerGroup), DataSerializerGenericMode.None, false, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.Core.Serialization.Serializers.ListSerializer<RapporterV2.Trigger.TriggerEvent>), typeof(System.Collections.Generic.List<RapporterV2.Trigger.TriggerEvent>), DataSerializerGenericMode.None, false, false, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Trigger_TriggerEventSerializer), typeof(RapporterV2.Trigger.TriggerEvent), DataSerializerGenericMode.None, false, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_AnimationControllerSerializer), typeof(RapporterV2.Player.AnimationController), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_NPCTalkSerializer), typeof(RapporterV2.Player.NPCTalk), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_PlayerControllerSerializer), typeof(RapporterV2.Player.PlayerController), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_PlayerInputSerializer), typeof(RapporterV2.Player.PlayerInput), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.Core.Serialization.Serializers.ListSerializer<SiliconStudio.Xenko.Input.Keys>), typeof(System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>), DataSerializerGenericMode.None, false, false, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.Core.Serialization.Serializers.EnumSerializer<SiliconStudio.Xenko.Input.Keys>), typeof(SiliconStudio.Xenko.Input.Keys), DataSerializerGenericMode.None, false, false, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_WeaponControllerSerializer), typeof(RapporterV2.Player.WeaponController), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_WeaponScriptSerializer), typeof(RapporterV2.Player.WeaponScript), DataSerializerGenericMode.None, true, true, Profile = "Default")]
   	public static class RapporterV2_GameSerializerFactory
	{
	    [SiliconStudio.Core.ModuleInitializer]
        internal static void Initialize()
        {
			var assemblySerializers = new AssemblySerializers(typeof(RapporterV2_GameSerializerFactory).GetTypeInfo().Assembly);

			// Register data contract aliases
			assemblySerializers.DataContractAliases.Add(new KeyValuePair<string, Type>(@"TriggerEvent", typeof(RapporterV2.Trigger.TriggerEvent)));
			assemblySerializers.DataContractAliases.Add(new KeyValuePair<string, Type>(@"TriggerGroup", typeof(RapporterV2.Trigger.TriggerGroup)));

			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_EngineSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Core_MathematicsSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_CoreSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_PhysicsSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_ParticlesSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_SpriteStudio_RuntimeSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_NativeSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_UISerializerFactory).GetTypeInfo().Module);

			{
				var assemblySerializersProfile = new AssemblySerializersPerProfile();
				assemblySerializers.Profiles["Default"] = assemblySerializersProfile;

				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xb41fac00, 0xe398770f, 0x16cb5995, 0x9ec41c96), typeof(Player.ScrollText), typeof(SiliconStudio.DataSerializers.Player_ScrollTextSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xb561e011, 0xc6fcfefa, 0xe33fcc13, 0x5d12644b), typeof(RapporterV2.FpsCamera), typeof(SiliconStudio.DataSerializers.RapporterV2_FpsCameraSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x3c939d77, 0xf13b65c6, 0x61d39e7a, 0x4a8618cc), typeof(RapporterV2.TriggerScript), typeof(SiliconStudio.DataSerializers.RapporterV2_TriggerScriptSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x28d24634, 0xd72d3da2, 0xf58b93bb, 0xe8172d32), typeof(RapporterV2.Trigger.TriggerGroup), typeof(SiliconStudio.DataSerializers.RapporterV2Trigger_TriggerGroupSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xa3255dcc, 0x3c9e3f5d, 0x76156847, 0x4968b4c8), typeof(System.Collections.Generic.List<RapporterV2.Trigger.TriggerEvent>), typeof(SiliconStudio.Core.Serialization.Serializers.ListSerializer<RapporterV2.Trigger.TriggerEvent>)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xec543b3a, 0x96bb5f76, 0x23ae3f6d, 0x497b982f), typeof(RapporterV2.Trigger.TriggerEvent), typeof(SiliconStudio.DataSerializers.RapporterV2Trigger_TriggerEventSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x29609120, 0x7fbd9e9e, 0x5a5c9ebf, 0xcf423a0f), typeof(RapporterV2.Player.AnimationController), typeof(SiliconStudio.DataSerializers.RapporterV2Player_AnimationControllerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x2847fe42, 0x2b7754f1, 0x556a3d07, 0x9421e296), typeof(RapporterV2.Player.NPCTalk), typeof(SiliconStudio.DataSerializers.RapporterV2Player_NPCTalkSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x1924f15e, 0xafa7ecf0, 0xff8c4719, 0x85de4847), typeof(RapporterV2.Player.PlayerController), typeof(SiliconStudio.DataSerializers.RapporterV2Player_PlayerControllerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xe07e05c6, 0x188dcafa, 0x635ce8ac, 0x090e08d6), typeof(RapporterV2.Player.PlayerInput), typeof(SiliconStudio.DataSerializers.RapporterV2Player_PlayerInputSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xd4040867, 0xf10f81e8, 0x8b793bd8, 0xfd612480), typeof(System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>), typeof(SiliconStudio.Core.Serialization.Serializers.ListSerializer<SiliconStudio.Xenko.Input.Keys>)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x3b55a4c0, 0x93225d33, 0xe5593eaa, 0xf80dbca0), typeof(SiliconStudio.Xenko.Input.Keys), typeof(SiliconStudio.Core.Serialization.Serializers.EnumSerializer<SiliconStudio.Xenko.Input.Keys>)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xc26aacf9, 0xd57f2b5d, 0x055b1283, 0x22c02bf1), typeof(RapporterV2.Player.WeaponController), typeof(SiliconStudio.DataSerializers.RapporterV2Player_WeaponControllerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xc24b4df9, 0x04ffd3ac, 0xcfd8efab, 0x9d329213), typeof(RapporterV2.Player.WeaponScript), typeof(SiliconStudio.DataSerializers.RapporterV2Player_WeaponScriptSerializer)));
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
            AssemblyRegistry.Register(typeof(RapporterV2_GameSerializerFactory).GetTypeInfo().Assembly, AssemblyCommonCategories.Engine);
        }
	}
}



namespace SiliconStudio.DataSerializers
{
	sealed class Player_ScrollTextSerializer : ClassDataSerializer<Player.ScrollText>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector3> startAtSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector3> stopAtSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			startAtSerializer = MemberSerializer<SiliconStudio.Core.Mathematics.Vector3>.Create(serializerSelector);
		}

		public override void Serialize(ref Player.ScrollText obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Player.ScrollText)parentObj;

            startAtSerializer.Serialize(ref obj.startAt, mode, stream);
            startAtSerializer.Serialize(ref obj.stopAt, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2_FpsCameraSerializer : ClassDataSerializer<RapporterV2.FpsCamera>
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

		public override void Serialize(ref RapporterV2.FpsCamera obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.FpsCamera)parentObj;

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
	sealed class RapporterV2_TriggerScriptSerializer : DataSerializer<RapporterV2.TriggerScript>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.AsyncScript> parentSerializer;
		private DataSerializer<RapporterV2.Trigger.TriggerGroup> TriggerGroupSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.AsyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.AsyncScript"));
			// Cache member serializers
			TriggerGroupSerializer = MemberSerializer<RapporterV2.Trigger.TriggerGroup>.Create(serializerSelector);
		}

		public override void Serialize(ref RapporterV2.TriggerScript obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.TriggerScript)parentObj;

            RapporterV2.Trigger.TriggerGroup triggerGroup = mode == ArchiveMode.Serialize ? obj.TriggerGroup : default(RapporterV2.Trigger.TriggerGroup);
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
	sealed class RapporterV2Trigger_TriggerGroupSerializer : ClassDataSerializer<RapporterV2.Trigger.TriggerGroup>
	{
		private DataSerializer<System.String> NameSerializer;
		private DataSerializer<System.Collections.Generic.List<RapporterV2.Trigger.TriggerEvent>> TriggerEventsSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Cache member serializers
			NameSerializer = MemberSerializer<System.String>.Create(serializerSelector);
			TriggerEventsSerializer = MemberSerializer<System.Collections.Generic.List<RapporterV2.Trigger.TriggerEvent>>.Create(serializerSelector);
		}

		public override void Serialize(ref RapporterV2.Trigger.TriggerGroup obj, ArchiveMode mode, SerializationStream stream)
		{
            System.String name = mode == ArchiveMode.Serialize ? obj.Name : default(System.String);
            NameSerializer.Serialize(ref name, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.Name = name;
            System.Collections.Generic.List<RapporterV2.Trigger.TriggerEvent> triggerEvents = obj.TriggerEvents;
            TriggerEventsSerializer.Serialize(ref triggerEvents, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Trigger_TriggerEventSerializer : ClassDataSerializer<RapporterV2.Trigger.TriggerEvent>
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

		public override void Serialize(ref RapporterV2.Trigger.TriggerEvent obj, ArchiveMode mode, SerializationStream stream)
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
	sealed class RapporterV2Player_AnimationControllerSerializer : ClassDataSerializer<RapporterV2.Player.AnimationController>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.AnimationComponent> AnimationComponentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Animations.AnimationClip> AnimationIdleSerializer;
		private DataSerializer<SiliconStudio.Xenko.Animations.AnimationClip> AnimationWalkSerializer;
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

		public override void Serialize(ref RapporterV2.Player.AnimationController obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.AnimationController)parentObj;

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
	sealed class RapporterV2Player_NPCTalkSerializer : ClassDataSerializer<RapporterV2.Player.NPCTalk>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.AsyncScript> parentSerializer;
		private DataSerializer<System.Boolean> talkToMeSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.AsyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.AsyncScript"));
			// Cache member serializers
			talkToMeSerializer = MemberSerializer<System.Boolean>.Create(serializerSelector);
		}

		public override void Serialize(ref RapporterV2.Player.NPCTalk obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.NPCTalk)parentObj;

            talkToMeSerializer.Serialize(ref obj.talkToMe, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_PlayerControllerSerializer : ClassDataSerializer<RapporterV2.Player.PlayerController>
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

		public override void Serialize(ref RapporterV2.Player.PlayerController obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.PlayerController)parentObj;

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
	sealed class RapporterV2Player_PlayerInputSerializer : ClassDataSerializer<RapporterV2.Player.PlayerInput>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<System.Single> DeadZoneSerializer;
		private DataSerializer<System.Single> MouseSensitivitySerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.CameraComponent> CameraSerializer;
		private DataSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>> KeysLeftSerializer;
		private DataSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>> KeysRightSerializer;
		private DataSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>> KeysUpSerializer;
		private DataSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>> KeysDownSerializer;
		private DataSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>> KeysJumpSerializer;

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

		public override void Serialize(ref RapporterV2.Player.PlayerInput obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.PlayerInput)parentObj;

            System.Single deadZone = mode == ArchiveMode.Serialize ? obj.DeadZone : default(System.Single);
            DeadZoneSerializer.Serialize(ref deadZone, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.DeadZone = deadZone;
            System.Single mouseSensitivity = mode == ArchiveMode.Serialize ? obj.MouseSensitivity : default(System.Single);
            DeadZoneSerializer.Serialize(ref mouseSensitivity, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.MouseSensitivity = mouseSensitivity;
            SiliconStudio.Xenko.Engine.CameraComponent camera = mode == ArchiveMode.Serialize ? obj.Camera : default(SiliconStudio.Xenko.Engine.CameraComponent);
            CameraSerializer.Serialize(ref camera, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.Camera = camera;
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
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_WeaponControllerSerializer : ClassDataSerializer<RapporterV2.Player.WeaponController>
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

		public override void Serialize(ref RapporterV2.Player.WeaponController obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.WeaponController)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_WeaponScriptSerializer : ClassDataSerializer<RapporterV2.Player.WeaponScript>
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

		public override void Serialize(ref RapporterV2.Player.WeaponScript obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.WeaponScript)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}