
using System;
using System.Collections.Generic;
using System.Reflection;
using SiliconStudio.Core.Serialization;
using SiliconStudio.Core.Reflection;
using SiliconStudio.Core.Serialization.Serializers;
using SiliconStudio.DataSerializers;

[assembly: AssemblyVersion("1.0.0.0")]
[assembly: System.Runtime.Versioning.TargetFramework(".NETPortable,Version=v5.0", FrameworkDisplayName=".NET Portable Subset")]

[assembly: SiliconStudio.Core.Serialization.Serializers.AssemblySerializerFactory(Type = typeof(SiliconStudio.DataSerializers.PhysicsSample_GameSerializerFactory))]

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
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.PhysicsSample_AutoResetRigidbodySerializer), typeof(PhysicsSample.AutoResetRigidbody), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.PhysicsSample_CharacterScriptSerializer), typeof(PhysicsSample.CharacterScript), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.PhysicsSample_DemoScriptSerializer), typeof(PhysicsSample.DemoScript), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.PhysicsSample_EnemyScriptSerializer), typeof(PhysicsSample.EnemyScript), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.PhysicsSample_GuiScriptSerializer), typeof(PhysicsSample.GuiScript), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.PhysicsSample_ImpulseOnSpaceScriptSerializer), typeof(PhysicsSample.ImpulseOnSpaceScript), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.PhysicsSample_NextSceneScriptSerializer), typeof(PhysicsSample.NextSceneScript), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.PhysicsSample_PlayerSerializer), typeof(PhysicsSample.Player), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.PhysicsSample_RaycastingScriptSerializer), typeof(PhysicsSample.RaycastingScript), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.PhysicsSample_TriggerSerializer), typeof(PhysicsSample.Trigger), DataSerializerGenericMode.None, true, true, Profile = "Default")]
   	public static class PhysicsSample_GameSerializerFactory
	{
	    [SiliconStudio.Core.ModuleInitializer]
        internal static void Initialize()
        {
			var assemblySerializers = new AssemblySerializers(typeof(PhysicsSample_GameSerializerFactory).GetTypeInfo().Assembly);

			// Register data contract aliases

			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_EngineSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Core_MathematicsSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_PhysicsSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_CoreSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_GraphicsSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_UISerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_ParticlesSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_SpriteStudio_RuntimeSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_NativeSerializerFactory).GetTypeInfo().Module);

			{
				var assemblySerializersProfile = new AssemblySerializersPerProfile();
				assemblySerializers.Profiles["Default"] = assemblySerializersProfile;

				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x0e4383e9, 0x31d70063, 0xe5a8c562, 0x9a6c152e), typeof(PhysicsSample.AutoResetRigidbody), typeof(SiliconStudio.DataSerializers.PhysicsSample_AutoResetRigidbodySerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x87977fe5, 0x0b5da1e1, 0xb857f3dc, 0x8f0fa3f7), typeof(PhysicsSample.CharacterScript), typeof(SiliconStudio.DataSerializers.PhysicsSample_CharacterScriptSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xeed55d84, 0xf1dd3aeb, 0x2b1120b3, 0xa9995cd3), typeof(PhysicsSample.DemoScript), typeof(SiliconStudio.DataSerializers.PhysicsSample_DemoScriptSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x339e9593, 0x717d0bd7, 0xce23cde4, 0x6e0eedb7), typeof(PhysicsSample.EnemyScript), typeof(SiliconStudio.DataSerializers.PhysicsSample_EnemyScriptSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x15566dfc, 0x4feeeca4, 0x1aa813e6, 0x207be44c), typeof(PhysicsSample.GuiScript), typeof(SiliconStudio.DataSerializers.PhysicsSample_GuiScriptSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xfe62e38e, 0x436b52ad, 0x6ee2b0ee, 0x642e000e), typeof(PhysicsSample.ImpulseOnSpaceScript), typeof(SiliconStudio.DataSerializers.PhysicsSample_ImpulseOnSpaceScriptSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x9b2c7049, 0x043bbf8e, 0xe55b998c, 0x7d5e9bb5), typeof(PhysicsSample.NextSceneScript), typeof(SiliconStudio.DataSerializers.PhysicsSample_NextSceneScriptSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xf9e9262d, 0x84a0a75f, 0x79a8ffea, 0x41d2fb03), typeof(PhysicsSample.Player), typeof(SiliconStudio.DataSerializers.PhysicsSample_PlayerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x8008ad97, 0x1d30f9f7, 0x771c5ca2, 0xc8b8e0a8), typeof(PhysicsSample.RaycastingScript), typeof(SiliconStudio.DataSerializers.PhysicsSample_RaycastingScriptSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xdd151d88, 0xa3ee3f45, 0x32a13092, 0x7516f542), typeof(PhysicsSample.Trigger), typeof(SiliconStudio.DataSerializers.PhysicsSample_TriggerSerializer)));
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
            AssemblyRegistry.Register(typeof(PhysicsSample_GameSerializerFactory).GetTypeInfo().Assembly, AssemblyCommonCategories.Engine);
        }
	}
}



namespace SiliconStudio.DataSerializers
{
	sealed class PhysicsSample_AutoResetRigidbodySerializer : ClassDataSerializer<PhysicsSample.AutoResetRigidbody>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.AsyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> TriggerEntitySerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.AsyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.AsyncScript"));
			// Cache member serializers
			TriggerEntitySerializer = MemberSerializer<SiliconStudio.Xenko.Engine.Entity>.Create(serializerSelector);
		}

		public override void Serialize(ref PhysicsSample.AutoResetRigidbody obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (PhysicsSample.AutoResetRigidbody)parentObj;

            TriggerEntitySerializer.Serialize(ref obj.TriggerEntity, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class PhysicsSample_CharacterScriptSerializer : ClassDataSerializer<PhysicsSample.CharacterScript>
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

		public override void Serialize(ref PhysicsSample.CharacterScript obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (PhysicsSample.CharacterScript)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class PhysicsSample_DemoScriptSerializer : ClassDataSerializer<PhysicsSample.DemoScript>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.StartupScript> parentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> cubeSerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> sphereSerializer;
		private DataSerializer<SiliconStudio.Xenko.Graphics.SpriteFont> FontSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.StartupScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.StartupScript"));
			// Cache member serializers
			cubeSerializer = MemberSerializer<SiliconStudio.Xenko.Engine.Entity>.Create(serializerSelector);
			FontSerializer = MemberSerializer<SiliconStudio.Xenko.Graphics.SpriteFont>.Create(serializerSelector);
		}

		public override void Serialize(ref PhysicsSample.DemoScript obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.StartupScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (PhysicsSample.DemoScript)parentObj;

            cubeSerializer.Serialize(ref obj.cube, mode, stream);
            cubeSerializer.Serialize(ref obj.sphere, mode, stream);
            FontSerializer.Serialize(ref obj.Font, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class PhysicsSample_EnemyScriptSerializer : ClassDataSerializer<PhysicsSample.EnemyScript>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.StartupScript> parentSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.StartupScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.StartupScript"));
			// Cache member serializers
		}

		public override void Serialize(ref PhysicsSample.EnemyScript obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.StartupScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (PhysicsSample.EnemyScript)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class PhysicsSample_GuiScriptSerializer : ClassDataSerializer<PhysicsSample.GuiScript>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.StartupScript> parentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Graphics.SpriteFont> FontSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.StartupScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.StartupScript"));
			// Cache member serializers
			FontSerializer = MemberSerializer<SiliconStudio.Xenko.Graphics.SpriteFont>.Create(serializerSelector);
		}

		public override void Serialize(ref PhysicsSample.GuiScript obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.StartupScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (PhysicsSample.GuiScript)parentObj;

            FontSerializer.Serialize(ref obj.Font, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class PhysicsSample_ImpulseOnSpaceScriptSerializer : ClassDataSerializer<PhysicsSample.ImpulseOnSpaceScript>
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

		public override void Serialize(ref PhysicsSample.ImpulseOnSpaceScript obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (PhysicsSample.ImpulseOnSpaceScript)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class PhysicsSample_NextSceneScriptSerializer : ClassDataSerializer<PhysicsSample.NextSceneScript>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Scene> NextSceneSerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Scene> PreviousSceneSerializer;
		private DataSerializer<SiliconStudio.Xenko.Graphics.SpriteFont> FontSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			NextSceneSerializer = MemberSerializer<SiliconStudio.Xenko.Engine.Scene>.Create(serializerSelector);
			FontSerializer = MemberSerializer<SiliconStudio.Xenko.Graphics.SpriteFont>.Create(serializerSelector);
		}

		public override void Serialize(ref PhysicsSample.NextSceneScript obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (PhysicsSample.NextSceneScript)parentObj;

            NextSceneSerializer.Serialize(ref obj.NextScene, mode, stream);
            NextSceneSerializer.Serialize(ref obj.PreviousScene, mode, stream);
            FontSerializer.Serialize(ref obj.Font, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class PhysicsSample_PlayerSerializer : ClassDataSerializer<PhysicsSample.Player>
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

		public override void Serialize(ref PhysicsSample.Player obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (PhysicsSample.Player)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class PhysicsSample_RaycastingScriptSerializer : ClassDataSerializer<PhysicsSample.RaycastingScript>
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

		public override void Serialize(ref PhysicsSample.RaycastingScript obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (PhysicsSample.RaycastingScript)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class PhysicsSample_TriggerSerializer : ClassDataSerializer<PhysicsSample.Trigger>
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

		public override void Serialize(ref PhysicsSample.Trigger obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (PhysicsSample.Trigger)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}