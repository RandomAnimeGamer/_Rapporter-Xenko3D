
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
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Sounds_SoundScriptSerializer), typeof(Sounds.SoundScript), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2_AnimationSerializer), typeof(RapporterV2.Animation), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2_Back2TitleSerializer), typeof(RapporterV2.Back2Title), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2_DebugPhysicsShapesSerializer), typeof(RapporterV2.DebugPhysicsShapes), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2_EnemyCameraSerializer), typeof(RapporterV2.EnemyCamera), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2_FpsCameraSerializer), typeof(RapporterV2.FpsCamera), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2_FullSerializer), typeof(RapporterV2.Full), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2_HPBarSerializer), typeof(RapporterV2.HPBar), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2_loadSceneSerializer), typeof(RapporterV2.loadScene), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2_loadScene2Serializer), typeof(RapporterV2.loadScene2), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2_ScriptSerializer), typeof(RapporterV2.Script), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2_TriggerScriptSerializer), typeof(RapporterV2.TriggerScript), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Trigger_TriggerGroupSerializer), typeof(RapporterV2.Trigger.TriggerGroup), DataSerializerGenericMode.None, false, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.Core.Serialization.Serializers.ListSerializer<RapporterV2.Trigger.TriggerEvent>), typeof(System.Collections.Generic.List<RapporterV2.Trigger.TriggerEvent>), DataSerializerGenericMode.None, false, false, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Trigger_TriggerEventSerializer), typeof(RapporterV2.Trigger.TriggerEvent), DataSerializerGenericMode.None, false, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Sounds_MusicDeerSerializer), typeof(RapporterV2.Sounds.MusicDeer), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Sounds_MusicDeerSyncSerializer), typeof(RapporterV2.Sounds.MusicDeerSync), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Sounds_MusicForestSerializer), typeof(RapporterV2.Sounds.MusicForest), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Sounds_MusicForestSyncSerializer), typeof(RapporterV2.Sounds.MusicForestSync), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Sounds_MusicTownSerializer), typeof(RapporterV2.Sounds.MusicTown), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Sounds_MusicTownSyncSerializer), typeof(RapporterV2.Sounds.MusicTownSync), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Quest_QuestManagerSerializer), typeof(RapporterV2.Quest.QuestManager), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Quest_ScrollQuestSerializer), typeof(RapporterV2.Quest.ScrollQuest), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Quest_ScrollQuestTextSerializer), typeof(RapporterV2.Quest.ScrollQuestText), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Quest_ScrollQuestText2Serializer), typeof(RapporterV2.Quest.ScrollQuestText2), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Quest_SwordQSerializer), typeof(RapporterV2.Quest.SwordQ), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_AnimationControllerSerializer), typeof(RapporterV2.Player.AnimationController), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_BearTrapAnimSerializer), typeof(RapporterV2.Player.BearTrapAnim), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_CollisionDamageSerializer), typeof(RapporterV2.Player.CollisionDamage), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_CollisionDieSerializer), typeof(RapporterV2.Player.CollisionDie), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_DeathSerializer), typeof(RapporterV2.Player.Death), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_DeathTextSerializer), typeof(RapporterV2.Player.DeathText), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_EnemySerializer), typeof(RapporterV2.Player.Enemy), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_EnemyCollideSerializer), typeof(RapporterV2.Player.EnemyCollide), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_EnemyControllerSerializer), typeof(RapporterV2.Player.EnemyController), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_NPCTalkSerializer), typeof(RapporterV2.Player.NPCTalk), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_NPCTalk2Serializer), typeof(RapporterV2.Player.NPCTalk2), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_NPCTalk3Serializer), typeof(RapporterV2.Player.NPCTalk3), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_NPCTalk4Serializer), typeof(RapporterV2.Player.NPCTalk4), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_PlayerControllerSerializer), typeof(RapporterV2.Player.PlayerController), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_PlayerInputSerializer), typeof(RapporterV2.Player.PlayerInput), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.Core.Serialization.Serializers.ListSerializer<SiliconStudio.Xenko.Input.Keys>), typeof(System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>), DataSerializerGenericMode.None, false, false, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.Core.Serialization.Serializers.EnumSerializer<SiliconStudio.Xenko.Input.Keys>), typeof(SiliconStudio.Xenko.Input.Keys), DataSerializerGenericMode.None, false, false, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_ScrollTextSerializer), typeof(RapporterV2.Player.ScrollText), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_ScrollText2Serializer), typeof(RapporterV2.Player.ScrollText2), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_ScrollText3Serializer), typeof(RapporterV2.Player.ScrollText3), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_ScrollText4Serializer), typeof(RapporterV2.Player.ScrollText4), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_ScrollTextTextSerializer), typeof(RapporterV2.Player.ScrollTextText), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_ScrollTextText2Serializer), typeof(RapporterV2.Player.ScrollTextText2), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_ScrollTextText3Serializer), typeof(RapporterV2.Player.ScrollTextText3), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_ScrollTextText4Serializer), typeof(RapporterV2.Player.ScrollTextText4), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_WeaponCollideSerializer), typeof(RapporterV2.Player.WeaponCollide), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_WeaponControllerSerializer), typeof(RapporterV2.Player.WeaponController), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Player_WeaponScriptSerializer), typeof(RapporterV2.Player.WeaponScript), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Animations_NPC1_AnimationsSerializer), typeof(RapporterV2.Animations.NPC1_Animations), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Animations_NPC2_AnimationsSerializer), typeof(RapporterV2.Animations.NPC2_Animations), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Animations_NPC3_AnimationsSerializer), typeof(RapporterV2.Animations.NPC3_Animations), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.RapporterV2Animations_NPC4_AnimationsSerializer), typeof(RapporterV2.Animations.NPC4_Animations), DataSerializerGenericMode.None, true, true, Profile = "Default")]
   	public static class RapporterV2_GameSerializerFactory
	{
	    [SiliconStudio.Core.ModuleInitializer(-1000)]
        internal static void Initialize()
        {
			var assemblySerializers = new AssemblySerializers(typeof(RapporterV2_GameSerializerFactory).GetTypeInfo().Assembly);

			// Register data contract aliases
			assemblySerializers.DataContractAliases.Add(new AssemblySerializers.DataContractAlias(@"TriggerEvent", typeof(RapporterV2.Trigger.TriggerEvent), false));
			assemblySerializers.DataContractAliases.Add(new AssemblySerializers.DataContractAlias(@"TriggerGroup", typeof(RapporterV2.Trigger.TriggerGroup), false));

			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_EngineSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_AudioSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_PhysicsSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Core_MathematicsSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_CoreSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Core_SerializationSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_ParticlesSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_SpriteStudio_RuntimeSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_NativeSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_UISerializerFactory).GetTypeInfo().Module);

			{
				var assemblySerializersProfile = new AssemblySerializersPerProfile();
				assemblySerializers.Profiles["Default"] = assemblySerializersProfile;

				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xef36bdff, 0x8aa4c795, 0x399411e3, 0x6201654a), typeof(Sounds.SoundScript), typeof(SiliconStudio.DataSerializers.Sounds_SoundScriptSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xafda4686, 0xec44df1c, 0x72237e91, 0x8ff34521), typeof(RapporterV2.Animation), typeof(SiliconStudio.DataSerializers.RapporterV2_AnimationSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x35609d4b, 0xfb1a4e03, 0xfb966d0d, 0xac49d083), typeof(RapporterV2.Back2Title), typeof(SiliconStudio.DataSerializers.RapporterV2_Back2TitleSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x51e9a5d0, 0x99b88ce0, 0x7f14096e, 0xe7f43599), typeof(RapporterV2.DebugPhysicsShapes), typeof(SiliconStudio.DataSerializers.RapporterV2_DebugPhysicsShapesSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x0228deeb, 0x8cb39b54, 0x367bcd7d, 0xafe3756d), typeof(RapporterV2.EnemyCamera), typeof(SiliconStudio.DataSerializers.RapporterV2_EnemyCameraSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xb561e011, 0xc6fcfefa, 0xe33fcc13, 0x5d12644b), typeof(RapporterV2.FpsCamera), typeof(SiliconStudio.DataSerializers.RapporterV2_FpsCameraSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xb66a9340, 0x1b0bfb50, 0x750ed843, 0x190a27e0), typeof(RapporterV2.Full), typeof(SiliconStudio.DataSerializers.RapporterV2_FullSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xe8259b8d, 0x6acb683a, 0x30a66ac3, 0xe68cb27d), typeof(RapporterV2.HPBar), typeof(SiliconStudio.DataSerializers.RapporterV2_HPBarSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x8c4c1ca7, 0xbab971b7, 0x084a382c, 0xbab3120f), typeof(RapporterV2.loadScene), typeof(SiliconStudio.DataSerializers.RapporterV2_loadSceneSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x65184326, 0xb97a4198, 0xa670b746, 0xf3668438), typeof(RapporterV2.loadScene2), typeof(SiliconStudio.DataSerializers.RapporterV2_loadScene2Serializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x6306d3d6, 0x002cb09d, 0x31edd489, 0xec47a1c4), typeof(RapporterV2.Script), typeof(SiliconStudio.DataSerializers.RapporterV2_ScriptSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x3c939d77, 0xf13b65c6, 0x61d39e7a, 0x4a8618cc), typeof(RapporterV2.TriggerScript), typeof(SiliconStudio.DataSerializers.RapporterV2_TriggerScriptSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x28d24634, 0xd72d3da2, 0xf58b93bb, 0xe8172d32), typeof(RapporterV2.Trigger.TriggerGroup), typeof(SiliconStudio.DataSerializers.RapporterV2Trigger_TriggerGroupSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xa3255dcc, 0x3c9e3f5d, 0x76156847, 0x4968b4c8), typeof(System.Collections.Generic.List<RapporterV2.Trigger.TriggerEvent>), typeof(SiliconStudio.Core.Serialization.Serializers.ListSerializer<RapporterV2.Trigger.TriggerEvent>)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xec543b3a, 0x96bb5f76, 0x23ae3f6d, 0x497b982f), typeof(RapporterV2.Trigger.TriggerEvent), typeof(SiliconStudio.DataSerializers.RapporterV2Trigger_TriggerEventSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xd99e7774, 0xd0aed26c, 0x8e925096, 0x4bf8492a), typeof(RapporterV2.Sounds.MusicDeer), typeof(SiliconStudio.DataSerializers.RapporterV2Sounds_MusicDeerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x83a12728, 0x58250b0c, 0x43571755, 0xed257af0), typeof(RapporterV2.Sounds.MusicDeerSync), typeof(SiliconStudio.DataSerializers.RapporterV2Sounds_MusicDeerSyncSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xade39606, 0x0aad56f1, 0x0bd7c9a0, 0xfc6ec178), typeof(RapporterV2.Sounds.MusicForest), typeof(SiliconStudio.DataSerializers.RapporterV2Sounds_MusicForestSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xbfb04064, 0x980af140, 0xd52a271d, 0x2bb408df), typeof(RapporterV2.Sounds.MusicForestSync), typeof(SiliconStudio.DataSerializers.RapporterV2Sounds_MusicForestSyncSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x3aa22582, 0x5d7b9010, 0x6d77b229, 0xe9d75f10), typeof(RapporterV2.Sounds.MusicTown), typeof(SiliconStudio.DataSerializers.RapporterV2Sounds_MusicTownSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x2ff854d3, 0xd0468d35, 0xb2fec7de, 0x8c8c6611), typeof(RapporterV2.Sounds.MusicTownSync), typeof(SiliconStudio.DataSerializers.RapporterV2Sounds_MusicTownSyncSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x01634228, 0xb8fa6bcf, 0x4a3c3b66, 0x8c6b4a57), typeof(RapporterV2.Quest.QuestManager), typeof(SiliconStudio.DataSerializers.RapporterV2Quest_QuestManagerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x974421d3, 0x0006d240, 0x021d493e, 0x373979e3), typeof(RapporterV2.Quest.ScrollQuest), typeof(SiliconStudio.DataSerializers.RapporterV2Quest_ScrollQuestSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xafaca863, 0x776458ac, 0x2e5991f3, 0xec5e8e66), typeof(RapporterV2.Quest.ScrollQuestText), typeof(SiliconStudio.DataSerializers.RapporterV2Quest_ScrollQuestTextSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xd221553b, 0x1a8b76b6, 0x63a1391a, 0xd00dea69), typeof(RapporterV2.Quest.ScrollQuestText2), typeof(SiliconStudio.DataSerializers.RapporterV2Quest_ScrollQuestText2Serializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x7f10bc79, 0xb6bcae8d, 0x9d8ab66a, 0xfac070aa), typeof(RapporterV2.Quest.SwordQ), typeof(SiliconStudio.DataSerializers.RapporterV2Quest_SwordQSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x29609120, 0x7fbd9e9e, 0x5a5c9ebf, 0xcf423a0f), typeof(RapporterV2.Player.AnimationController), typeof(SiliconStudio.DataSerializers.RapporterV2Player_AnimationControllerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xfa15f358, 0x378e05c5, 0xdfcc3a35, 0x995f601f), typeof(RapporterV2.Player.BearTrapAnim), typeof(SiliconStudio.DataSerializers.RapporterV2Player_BearTrapAnimSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x1d439b41, 0xb49922ef, 0x237e2954, 0x08c1d909), typeof(RapporterV2.Player.CollisionDamage), typeof(SiliconStudio.DataSerializers.RapporterV2Player_CollisionDamageSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x95e35f16, 0xff8baa32, 0xed58549f, 0x51aa5efa), typeof(RapporterV2.Player.CollisionDie), typeof(SiliconStudio.DataSerializers.RapporterV2Player_CollisionDieSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xfe3775c3, 0xe4cc3211, 0x5fca5e08, 0x123a2aaf), typeof(RapporterV2.Player.Death), typeof(SiliconStudio.DataSerializers.RapporterV2Player_DeathSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x1dab2b30, 0xc68d7bae, 0x50de399c, 0xff152f45), typeof(RapporterV2.Player.DeathText), typeof(SiliconStudio.DataSerializers.RapporterV2Player_DeathTextSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xd8692cf0, 0xafee77c1, 0x48f151c6, 0xe6ae5767), typeof(RapporterV2.Player.Enemy), typeof(SiliconStudio.DataSerializers.RapporterV2Player_EnemySerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x9fcda753, 0x80002fe1, 0xe575348e, 0x4e9ae56a), typeof(RapporterV2.Player.EnemyCollide), typeof(SiliconStudio.DataSerializers.RapporterV2Player_EnemyCollideSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xe026a648, 0x8b826faa, 0xd85643c3, 0xcb528071), typeof(RapporterV2.Player.EnemyController), typeof(SiliconStudio.DataSerializers.RapporterV2Player_EnemyControllerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x2847fe42, 0x2b7754f1, 0x556a3d07, 0x9421e296), typeof(RapporterV2.Player.NPCTalk), typeof(SiliconStudio.DataSerializers.RapporterV2Player_NPCTalkSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xcaa628a3, 0xa3a1bc14, 0xfcdc842c, 0x04577328), typeof(RapporterV2.Player.NPCTalk2), typeof(SiliconStudio.DataSerializers.RapporterV2Player_NPCTalk2Serializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x1ed62d45, 0xd443cf58, 0x26e160eb, 0x9e477a05), typeof(RapporterV2.Player.NPCTalk3), typeof(SiliconStudio.DataSerializers.RapporterV2Player_NPCTalk3Serializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xc95fc45d, 0x66d7e931, 0x72bed894, 0x9f7d39ff), typeof(RapporterV2.Player.NPCTalk4), typeof(SiliconStudio.DataSerializers.RapporterV2Player_NPCTalk4Serializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x1924f15e, 0xafa7ecf0, 0xff8c4719, 0x85de4847), typeof(RapporterV2.Player.PlayerController), typeof(SiliconStudio.DataSerializers.RapporterV2Player_PlayerControllerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xe07e05c6, 0x188dcafa, 0x635ce8ac, 0x090e08d6), typeof(RapporterV2.Player.PlayerInput), typeof(SiliconStudio.DataSerializers.RapporterV2Player_PlayerInputSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xd4040867, 0xf10f81e8, 0x8b793bd8, 0xfd612480), typeof(System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>), typeof(SiliconStudio.Core.Serialization.Serializers.ListSerializer<SiliconStudio.Xenko.Input.Keys>)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x3b55a4c0, 0x93225d33, 0xe5593eaa, 0xf80dbca0), typeof(SiliconStudio.Xenko.Input.Keys), typeof(SiliconStudio.Core.Serialization.Serializers.EnumSerializer<SiliconStudio.Xenko.Input.Keys>)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xaee42616, 0x5c517e91, 0x229b448f, 0x522d417c), typeof(RapporterV2.Player.ScrollText), typeof(SiliconStudio.DataSerializers.RapporterV2Player_ScrollTextSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xe5618166, 0xe9c98e7f, 0xbbc67377, 0xd5bbfabf), typeof(RapporterV2.Player.ScrollText2), typeof(SiliconStudio.DataSerializers.RapporterV2Player_ScrollText2Serializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x14e5580a, 0xaeb954e0, 0x0c8ec55c, 0x2b37bd06), typeof(RapporterV2.Player.ScrollText3), typeof(SiliconStudio.DataSerializers.RapporterV2Player_ScrollText3Serializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x8ed61544, 0x48af0ab3, 0xa34ee1bd, 0xadda1807), typeof(RapporterV2.Player.ScrollText4), typeof(SiliconStudio.DataSerializers.RapporterV2Player_ScrollText4Serializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x814646ba, 0xa86354ff, 0xe2937db7, 0x3ef10922), typeof(RapporterV2.Player.ScrollTextText), typeof(SiliconStudio.DataSerializers.RapporterV2Player_ScrollTextTextSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x7655cb7d, 0x616c8fbf, 0x3e402030, 0xf493c78d), typeof(RapporterV2.Player.ScrollTextText2), typeof(SiliconStudio.DataSerializers.RapporterV2Player_ScrollTextText2Serializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x7d9dbfb5, 0xf2854062, 0xc0eec785, 0x87f74b80), typeof(RapporterV2.Player.ScrollTextText3), typeof(SiliconStudio.DataSerializers.RapporterV2Player_ScrollTextText3Serializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xd79434ed, 0x7df91100, 0xbbc6662e, 0x60bf2aba), typeof(RapporterV2.Player.ScrollTextText4), typeof(SiliconStudio.DataSerializers.RapporterV2Player_ScrollTextText4Serializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x8c24acb5, 0x156659ad, 0xd5b3ca6f, 0xf3e4c494), typeof(RapporterV2.Player.WeaponCollide), typeof(SiliconStudio.DataSerializers.RapporterV2Player_WeaponCollideSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xc26aacf9, 0xd57f2b5d, 0x055b1283, 0x22c02bf1), typeof(RapporterV2.Player.WeaponController), typeof(SiliconStudio.DataSerializers.RapporterV2Player_WeaponControllerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xc24b4df9, 0x04ffd3ac, 0xcfd8efab, 0x9d329213), typeof(RapporterV2.Player.WeaponScript), typeof(SiliconStudio.DataSerializers.RapporterV2Player_WeaponScriptSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x255b30b0, 0x65698acb, 0x8ed33bad, 0xe0a83dfa), typeof(RapporterV2.Animations.NPC1_Animations), typeof(SiliconStudio.DataSerializers.RapporterV2Animations_NPC1_AnimationsSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xf2140e90, 0x6d05916f, 0xa355e5f1, 0x0361bc75), typeof(RapporterV2.Animations.NPC2_Animations), typeof(SiliconStudio.DataSerializers.RapporterV2Animations_NPC2_AnimationsSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x49e2e9d8, 0x59b43890, 0x0d01c1dc, 0x06c7a44b), typeof(RapporterV2.Animations.NPC3_Animations), typeof(SiliconStudio.DataSerializers.RapporterV2Animations_NPC3_AnimationsSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xb53a97af, 0x7b72abc4, 0x40aa29b7, 0x3582aec7), typeof(RapporterV2.Animations.NPC4_Animations), typeof(SiliconStudio.DataSerializers.RapporterV2Animations_NPC4_AnimationsSerializer)));
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
	sealed class Sounds_SoundScriptSerializer : ClassDataSerializer<Sounds.SoundScript>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.AsyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Audio.Sound> SoundMusicSerializer;
		private DataSerializer<SiliconStudio.Xenko.Audio.Sound> SoundEffectSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.AsyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.AsyncScript"));
			// Cache member serializers
			SoundMusicSerializer = MemberSerializer<SiliconStudio.Xenko.Audio.Sound>.Create(serializerSelector);
		}

		public override void Serialize(ref Sounds.SoundScript obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Sounds.SoundScript)parentObj;

            SoundMusicSerializer.Serialize(ref obj.SoundMusic, mode, stream);
            SoundMusicSerializer.Serialize(ref obj.SoundEffect, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2_AnimationSerializer : ClassDataSerializer<RapporterV2.Animation>
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

		public override void Serialize(ref RapporterV2.Animation obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Animation)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2_Back2TitleSerializer : ClassDataSerializer<RapporterV2.Back2Title>
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

		public override void Serialize(ref RapporterV2.Back2Title obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Back2Title)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2_DebugPhysicsShapesSerializer : ClassDataSerializer<RapporterV2.DebugPhysicsShapes>
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

		public override void Serialize(ref RapporterV2.DebugPhysicsShapes obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.DebugPhysicsShapes)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2_EnemyCameraSerializer : ClassDataSerializer<RapporterV2.EnemyCamera>
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

		public override void Serialize(ref RapporterV2.EnemyCamera obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.EnemyCamera)parentObj;

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
	sealed class RapporterV2_FullSerializer : ClassDataSerializer<RapporterV2.Full>
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

		public override void Serialize(ref RapporterV2.Full obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Full)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2_HPBarSerializer : ClassDataSerializer<RapporterV2.HPBar>
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

		public override void Serialize(ref RapporterV2.HPBar obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.HPBar)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2_loadSceneSerializer : ClassDataSerializer<RapporterV2.loadScene>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Audio.Sound> SoundMusicSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			SoundMusicSerializer = MemberSerializer<SiliconStudio.Xenko.Audio.Sound>.Create(serializerSelector);
		}

		public override void Serialize(ref RapporterV2.loadScene obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.loadScene)parentObj;

            SoundMusicSerializer.Serialize(ref obj.SoundMusic, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2_loadScene2Serializer : ClassDataSerializer<RapporterV2.loadScene2>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Audio.Sound> SoundMusicSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			SoundMusicSerializer = MemberSerializer<SiliconStudio.Xenko.Audio.Sound>.Create(serializerSelector);
		}

		public override void Serialize(ref RapporterV2.loadScene2 obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.loadScene2)parentObj;

            SoundMusicSerializer.Serialize(ref obj.SoundMusic, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2_ScriptSerializer : ClassDataSerializer<RapporterV2.Script>
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

		public override void Serialize(ref RapporterV2.Script obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.StartupScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Script)parentObj;

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
	sealed class RapporterV2Sounds_MusicDeerSerializer : ClassDataSerializer<RapporterV2.Sounds.MusicDeer>
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

		public override void Serialize(ref RapporterV2.Sounds.MusicDeer obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Sounds.MusicDeer)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Sounds_MusicDeerSyncSerializer : ClassDataSerializer<RapporterV2.Sounds.MusicDeerSync>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Audio.Sound> SoundMusicSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			SoundMusicSerializer = MemberSerializer<SiliconStudio.Xenko.Audio.Sound>.Create(serializerSelector);
		}

		public override void Serialize(ref RapporterV2.Sounds.MusicDeerSync obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Sounds.MusicDeerSync)parentObj;

            SoundMusicSerializer.Serialize(ref obj.SoundMusic, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Sounds_MusicForestSerializer : ClassDataSerializer<RapporterV2.Sounds.MusicForest>
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

		public override void Serialize(ref RapporterV2.Sounds.MusicForest obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Sounds.MusicForest)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Sounds_MusicForestSyncSerializer : ClassDataSerializer<RapporterV2.Sounds.MusicForestSync>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Audio.Sound> SoundMusicSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			SoundMusicSerializer = MemberSerializer<SiliconStudio.Xenko.Audio.Sound>.Create(serializerSelector);
		}

		public override void Serialize(ref RapporterV2.Sounds.MusicForestSync obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Sounds.MusicForestSync)parentObj;

            SoundMusicSerializer.Serialize(ref obj.SoundMusic, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Sounds_MusicTownSerializer : ClassDataSerializer<RapporterV2.Sounds.MusicTown>
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

		public override void Serialize(ref RapporterV2.Sounds.MusicTown obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Sounds.MusicTown)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Sounds_MusicTownSyncSerializer : ClassDataSerializer<RapporterV2.Sounds.MusicTownSync>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Audio.Sound> SoundMusicSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			SoundMusicSerializer = MemberSerializer<SiliconStudio.Xenko.Audio.Sound>.Create(serializerSelector);
		}

		public override void Serialize(ref RapporterV2.Sounds.MusicTownSync obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Sounds.MusicTownSync)parentObj;

            SoundMusicSerializer.Serialize(ref obj.SoundMusic, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Quest_QuestManagerSerializer : ClassDataSerializer<RapporterV2.Quest.QuestManager>
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

		public override void Serialize(ref RapporterV2.Quest.QuestManager obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Quest.QuestManager)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Quest_ScrollQuestSerializer : ClassDataSerializer<RapporterV2.Quest.ScrollQuest>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<System.Single> movingSerializer;
		private DataSerializer<System.Single> oldSerializer;
		private DataSerializer<System.Single> questSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			movingSerializer = MemberSerializer<System.Single>.Create(serializerSelector);
		}

		public override void Serialize(ref RapporterV2.Quest.ScrollQuest obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Quest.ScrollQuest)parentObj;

            movingSerializer.Serialize(ref obj.moving, mode, stream);
            movingSerializer.Serialize(ref obj.old, mode, stream);
            movingSerializer.Serialize(ref obj.quest, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Quest_ScrollQuestTextSerializer : ClassDataSerializer<RapporterV2.Quest.ScrollQuestText>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<System.Int32> qSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			qSerializer = MemberSerializer<System.Int32>.Create(serializerSelector);
		}

		public override void Serialize(ref RapporterV2.Quest.ScrollQuestText obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Quest.ScrollQuestText)parentObj;

            qSerializer.Serialize(ref obj.q, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Quest_ScrollQuestText2Serializer : ClassDataSerializer<RapporterV2.Quest.ScrollQuestText2>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<System.Int32> qSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			qSerializer = MemberSerializer<System.Int32>.Create(serializerSelector);
		}

		public override void Serialize(ref RapporterV2.Quest.ScrollQuestText2 obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Quest.ScrollQuestText2)parentObj;

            qSerializer.Serialize(ref obj.q, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Quest_SwordQSerializer : ClassDataSerializer<RapporterV2.Quest.SwordQ>
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

		public override void Serialize(ref RapporterV2.Quest.SwordQ obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Quest.SwordQ)parentObj;

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
	sealed class RapporterV2Player_BearTrapAnimSerializer : ClassDataSerializer<RapporterV2.Player.BearTrapAnim>
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

		public override void Serialize(ref RapporterV2.Player.BearTrapAnim obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.BearTrapAnim)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_CollisionDamageSerializer : ClassDataSerializer<RapporterV2.Player.CollisionDamage>
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

		public override void Serialize(ref RapporterV2.Player.CollisionDamage obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.CollisionDamage)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_CollisionDieSerializer : ClassDataSerializer<RapporterV2.Player.CollisionDie>
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

		public override void Serialize(ref RapporterV2.Player.CollisionDie obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.CollisionDie)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_DeathSerializer : ClassDataSerializer<RapporterV2.Player.Death>
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

		public override void Serialize(ref RapporterV2.Player.Death obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.Death)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_DeathTextSerializer : ClassDataSerializer<RapporterV2.Player.DeathText>
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

		public override void Serialize(ref RapporterV2.Player.DeathText obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.DeathText)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_EnemySerializer : ClassDataSerializer<RapporterV2.Player.Enemy>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Audio.Sound> SoundEffectSerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.CameraComponent> CameraSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			SoundEffectSerializer = MemberSerializer<SiliconStudio.Xenko.Audio.Sound>.Create(serializerSelector);
			CameraSerializer = MemberSerializer<SiliconStudio.Xenko.Engine.CameraComponent>.Create(serializerSelector);
		}

		public override void Serialize(ref RapporterV2.Player.Enemy obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.Enemy)parentObj;

            SoundEffectSerializer.Serialize(ref obj.SoundEffect, mode, stream);
            SiliconStudio.Xenko.Engine.CameraComponent camera = mode == ArchiveMode.Serialize ? obj.Camera : default(SiliconStudio.Xenko.Engine.CameraComponent);
            CameraSerializer.Serialize(ref camera, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.Camera = camera;
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_EnemyCollideSerializer : ClassDataSerializer<RapporterV2.Player.EnemyCollide>
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

		public override void Serialize(ref RapporterV2.Player.EnemyCollide obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.EnemyCollide)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_EnemyControllerSerializer : ClassDataSerializer<RapporterV2.Player.EnemyController>
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

		public override void Serialize(ref RapporterV2.Player.EnemyController obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.EnemyController)parentObj;

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
	sealed class RapporterV2Player_NPCTalkSerializer : ClassDataSerializer<RapporterV2.Player.NPCTalk>
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

		public override void Serialize(ref RapporterV2.Player.NPCTalk obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.NPCTalk)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_NPCTalk2Serializer : ClassDataSerializer<RapporterV2.Player.NPCTalk2>
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

		public override void Serialize(ref RapporterV2.Player.NPCTalk2 obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.NPCTalk2)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_NPCTalk3Serializer : ClassDataSerializer<RapporterV2.Player.NPCTalk3>
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

		public override void Serialize(ref RapporterV2.Player.NPCTalk3 obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.NPCTalk3)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_NPCTalk4Serializer : ClassDataSerializer<RapporterV2.Player.NPCTalk4>
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

		public override void Serialize(ref RapporterV2.Player.NPCTalk4 obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.NPCTalk4)parentObj;

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
		private DataSerializer<SiliconStudio.Xenko.Audio.Sound> SoundMusicSerializer;
		private DataSerializer<SiliconStudio.Xenko.Audio.Sound> SoundEffectSerializer;
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
			SoundMusicSerializer = MemberSerializer<SiliconStudio.Xenko.Audio.Sound>.Create(serializerSelector);
			MouseSensitivitySerializer = MemberSerializer<System.Single>.Create(serializerSelector);
			CameraSerializer = MemberSerializer<SiliconStudio.Xenko.Engine.CameraComponent>.Create(serializerSelector);
			KeysLeftSerializer = MemberSerializer<System.Collections.Generic.List<SiliconStudio.Xenko.Input.Keys>>.Create(serializerSelector);
		}

		public override void Serialize(ref RapporterV2.Player.PlayerInput obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.PlayerInput)parentObj;

            SoundMusicSerializer.Serialize(ref obj.SoundMusic, mode, stream);
            SoundMusicSerializer.Serialize(ref obj.SoundEffect, mode, stream);
            System.Single mouseSensitivity = mode == ArchiveMode.Serialize ? obj.MouseSensitivity : default(System.Single);
            MouseSensitivitySerializer.Serialize(ref mouseSensitivity, mode, stream);
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
	sealed class RapporterV2Player_ScrollTextSerializer : ClassDataSerializer<RapporterV2.Player.ScrollText>
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

		public override void Serialize(ref RapporterV2.Player.ScrollText obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.ScrollText)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_ScrollText2Serializer : ClassDataSerializer<RapporterV2.Player.ScrollText2>
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

		public override void Serialize(ref RapporterV2.Player.ScrollText2 obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.ScrollText2)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_ScrollText3Serializer : ClassDataSerializer<RapporterV2.Player.ScrollText3>
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

		public override void Serialize(ref RapporterV2.Player.ScrollText3 obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.ScrollText3)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_ScrollText4Serializer : ClassDataSerializer<RapporterV2.Player.ScrollText4>
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

		public override void Serialize(ref RapporterV2.Player.ScrollText4 obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.ScrollText4)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_ScrollTextTextSerializer : ClassDataSerializer<RapporterV2.Player.ScrollTextText>
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

		public override void Serialize(ref RapporterV2.Player.ScrollTextText obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.ScrollTextText)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_ScrollTextText2Serializer : ClassDataSerializer<RapporterV2.Player.ScrollTextText2>
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

		public override void Serialize(ref RapporterV2.Player.ScrollTextText2 obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.ScrollTextText2)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_ScrollTextText3Serializer : ClassDataSerializer<RapporterV2.Player.ScrollTextText3>
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

		public override void Serialize(ref RapporterV2.Player.ScrollTextText3 obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.ScrollTextText3)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_ScrollTextText4Serializer : ClassDataSerializer<RapporterV2.Player.ScrollTextText4>
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

		public override void Serialize(ref RapporterV2.Player.ScrollTextText4 obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.ScrollTextText4)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Player_WeaponCollideSerializer : ClassDataSerializer<RapporterV2.Player.WeaponCollide>
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

		public override void Serialize(ref RapporterV2.Player.WeaponCollide obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.WeaponCollide)parentObj;

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
		private DataSerializer<SiliconStudio.Xenko.Audio.Sound> SoundEffectSerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.CameraComponent> CameraSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			SoundEffectSerializer = MemberSerializer<SiliconStudio.Xenko.Audio.Sound>.Create(serializerSelector);
			CameraSerializer = MemberSerializer<SiliconStudio.Xenko.Engine.CameraComponent>.Create(serializerSelector);
		}

		public override void Serialize(ref RapporterV2.Player.WeaponScript obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Player.WeaponScript)parentObj;

            SoundEffectSerializer.Serialize(ref obj.SoundEffect, mode, stream);
            SiliconStudio.Xenko.Engine.CameraComponent camera = mode == ArchiveMode.Serialize ? obj.Camera : default(SiliconStudio.Xenko.Engine.CameraComponent);
            CameraSerializer.Serialize(ref camera, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.Camera = camera;
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Animations_NPC1_AnimationsSerializer : ClassDataSerializer<RapporterV2.Animations.NPC1_Animations>
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

		public override void Serialize(ref RapporterV2.Animations.NPC1_Animations obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Animations.NPC1_Animations)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Animations_NPC2_AnimationsSerializer : ClassDataSerializer<RapporterV2.Animations.NPC2_Animations>
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

		public override void Serialize(ref RapporterV2.Animations.NPC2_Animations obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Animations.NPC2_Animations)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Animations_NPC3_AnimationsSerializer : ClassDataSerializer<RapporterV2.Animations.NPC3_Animations>
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

		public override void Serialize(ref RapporterV2.Animations.NPC3_Animations obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Animations.NPC3_Animations)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class RapporterV2Animations_NPC4_AnimationsSerializer : ClassDataSerializer<RapporterV2.Animations.NPC4_Animations>
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

		public override void Serialize(ref RapporterV2.Animations.NPC4_Animations obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (RapporterV2.Animations.NPC4_Animations)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}