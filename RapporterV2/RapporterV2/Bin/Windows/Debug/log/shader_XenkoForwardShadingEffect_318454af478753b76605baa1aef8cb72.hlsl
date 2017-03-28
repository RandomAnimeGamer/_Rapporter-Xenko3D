/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.HasSkinningPosition: True
@P Material.HasSkinningNormal: True
@P Material.HasSkinningTangent: False
@P Material.SkinningMaxBones: 56
@P Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceNormalMap<true,true,false> [{normalMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.NormalMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = ComputeColorConstantFloatLink<Material.GlossinessValue>}], mixin MaterialSurfaceMetalness [{metalnessMap = ComputeColorConstantFloatLink<Material.MetalnessValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Material.HasNormalMap: True
@P Lighting.DirectLightGroups: LightClusteredPointGroup<64>, LightClusteredSpotGroup<64>, mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false>, ShadowMapFilterPcf<PerView.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient, xkfx LightSkyboxEffect
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 4000]
@C    World_id29 => Transformation.World
@C    WorldInverse_id30 => Transformation.WorldInverse
@C    WorldInverseTranspose_id31 => Transformation.WorldInverseTranspose
@C    WorldView_id32 => Transformation.WorldView
@C    WorldViewInverse_id33 => Transformation.WorldViewInverse
@C    WorldViewProjection_id34 => Transformation.WorldViewProjection
@C    WorldScale_id35 => Transformation.WorldScale
@C    EyeMS_id36 => Transformation.EyeMS
@C    BlendMatrixArray_id37 => TransformationSkinning.BlendMatrixArray
cbuffer PerMaterial [Size: 48]
@C    constantColor_id184 => Material.DiffuseValue
@C    scale_id189 => Material.TextureScale
@C    offset_id190 => Material.TextureOffset
@C    constantFloat_id195 => Material.GlossinessValue
@C    constantFloat_id198 => Material.MetalnessValue
cbuffer PerView [Size: 1040]
@C    View_id22 => Transformation.View
@C    ViewInverse_id23 => Transformation.ViewInverse
@C    Projection_id24 => Transformation.Projection
@C    ProjectionInverse_id25 => Transformation.ProjectionInverse
@C    ViewProjection_id26 => Transformation.ViewProjection
@C    ProjScreenRay_id27 => Transformation.ProjScreenRay
@C    Eye_id28 => Transformation.Eye
@C    NearClipPlane_id81 => Camera.NearClipPlane
@C    FarClipPlane_id82 => Camera.FarClipPlane
@C    ZProjection_id83 => Camera.ZProjection
@C    ViewSize_id84 => Camera.ViewSize
@C    AspectRatio_id85 => Camera.AspectRatio
@C    ClusterDepthScale_id91 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id92 => LightClustered.ClusterDepthBias
@C    LightCount_id98 => DirectLightGroupPerView.LightCount.directLightGroups[2]
@C    Lights_id100 => LightDirectionalGroup.Lights.directLightGroups[2]
@C    ShadowMapTextureSize_id102 => ShadowMap.TextureSize.directLightGroups[2]
@C    ShadowMapTextureTexelSize_id103 => ShadowMap.TextureTexelSize.directLightGroups[2]
@C    WorldToShadowCascadeUV_id164 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[2]
@C    DepthBiases_id165 => ShadowMapReceiverBase.DepthBiases.directLightGroups[2]
@C    OffsetScales_id166 => ShadowMapReceiverBase.OffsetScales.directLightGroups[2]
@C    CascadeDepthSplits_id172 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[2]
@C    Bias_id174 => ShadowMapFilterPcf.Bias.directLightGroups[2]
@C    AmbientLight_id175 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id177 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id178 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id180 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id181 => LightSkyboxShader.Intensity.environmentLights[1]
***************************
******  Resources    ******
***************************
@R    Texture_id186 => Material.NormalMap [Stage: None, Slot: (-1--1)]
@R    Texture_id186 => Material.NormalMap [Stage: None, Slot: (-1--1)]
@R    Sampler_id187 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Sampler_id187 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    LightClusters_id89 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id89 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id90 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id90 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id94 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id94 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id97 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id97 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id101 => ShadowMap.Texture.directLightGroups[2] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id101 => ShadowMap.Texture.directLightGroups[2] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id179 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id179 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id134 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id136 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    Sampler_id187 => Material.Sampler.i0 [Stage: Pixel, Slot: (2-2)]
@R    Texture_id186 => Material.NormalMap [Stage: Pixel, Slot: (0-0)]
@R    LightClusters_id89 => LightClustered.LightClusters [Stage: Pixel, Slot: (1-1)]
@R    LightIndices_id90 => LightClustered.LightIndices [Stage: Pixel, Slot: (2-2)]
@R    PointLights_id94 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (3-3)]
@R    SpotLights_id97 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (4-4)]
@R    ShadowMapTexture_id101 => ShadowMap.Texture.directLightGroups[2] [Stage: Pixel, Slot: (5-5)]
@R    CubeMap_id179 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (6-6)]
@R    PerMaterial => PerMaterial [Stage: Pixel, Slot: (0-0)]
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 5c3160ccbf936c5e102bd9315f0f946a
@S    ShaderBaseStream => f699080594ac63c1f38140de57ce1a7b
@S    ShadingBase => a4b46f7608ab80e77c938f475834f962
@S    ComputeColor => 6e3e8655257003c26480195de33cbbc1
@S    TransformationBase => f1386ed2f0e8db4eb9e79a63ee23e05c
@S    NormalStream => 5d295e278c920e30e310e1979bc14a19
@S    TransformationWAndVP => 1ad0d61ab4ab5bf92b87169f094b8b17
@S    PositionStream4 => 87a2d7a46c028c1479a982866d88d067
@S    PositionHStream4 => f5c4e6d128281ef2d40fba86959205d5
@S    Transformation => 8b044dd67dc836d93d27ce6bee5b1db8
@S    NormalFromNormalMapping => facb7d217f791465ba2cb80b1ad8bc3b
@S    NormalBase => b70fd93cea3e78cb7e35bf33c5bc761d
@S    TransformationSkinning => e7bd10d31973ce3c7a50eb430b6e2748
@S    NormalMeshSkinning => 886f2c848d2cc3a8d790a16ff0e2e6c6
@S    NormalVSSkinningNormalMapping => c81e429c4006078243e2dc8f21dc5a78
@S    MaterialSurfacePixelStageCompositor => 1d6419ba7ac2d0f180564d21a0d3f8c0
@S    PositionStream => 664ed5997626578c1dfdc74402cd23f6
@S    MaterialPixelShadingStream => 28de6f1960d9c29f165f916c0adfe5a5
@S    MaterialPixelStream => 17c22a7a37d239e0ee9e8d2779c03c80
@S    MaterialStream => 83fd257dadb68d92b2e57a11122265d4
@S    IStreamInitializer => 8be0404675b438bff2babfd297fb96df
@S    LightStream => 81d82a322111295057787d950e438228
@S    DirectLightGroupArray => 9addcff5b7cb7364a8a5d87d4de45742
@S    DirectLightGroup => 92eb9d726b1937533c27d57ff97f8da5
@S    ShadowGroup => 545ec47456ee7f4472536d8a7316d02f
@S    ShadowStream => 4abbfb30b4b85e71b0f683b420977101
@S    EnvironmentLightArray => 92f59b0813153de143701e01f1da89e0
@S    EnvironmentLight => 461117f7455b162e23645a86e89f749d
@S    IMaterialSurface => 14b3d59b9c516893bd7730aaa3dc225a
@S    LightClusteredPointGroup => 60ed7b620bc6eabb3ad2330302bc367e
@S    LightPoint => 2044aa0ce4ba04060728e554f889fe5c
@S    LightUtil => d77cfcfacea55ef4e06d9f585be27420
@S    LightClustered => e0cc7997bb88b676801a857b727faf2b
@S    Camera => ec417735d81c9ad1d80ca0e6d87138b0
@S    LightClusteredSpotGroup => 7beef740595052a48885ae9f619304ca
@S    LightSpot => 0bcf1b3e89e9a247545b91358ea8a1a5
@S    LightDirectionalGroup => 7bb2cc43889ab80004ab02a83bbd02d2
@S    DirectLightGroupPerView => f728a5a7f613dcd26bc20d54908ca1b8
@S    LightDirectional => 8f8fc60cae27222c84186af6eec74080
@S    ShadowMapReceiverDirectional => 95d60505c10a89c26292fb44b5445492
@S    ShadowMapReceiverBase => b8e884a10ba47c78372ae2ee6b0eada5
@S    ShadowMapGroup => 9fa1018d7f62b9d4719202422d304c06
@S    ShadowMapCommon => f7f2751f116d20510441e8bbc4c1bea6
@S    ShadowMapFilterBase => 4f39c8431637ddf01ca0702bbf3fa5d8
@S    Texturing => a9d9ee1fb9a68af7ce6b12291686faea
@S    ShadowMapFilterPcf => cac13ffd50e214b4ab513eead5113b25
@S    LightSimpleAmbient => 6d68fc78fb5b5ad232c5ec44f6d90e31
@S    LightSkyboxShader => 346d0cba52d046c17e99ecff0bfe9ba4
@S    IComputeEnvironmentColor => 9e5e0467c0fccc46f26afa70c63aed71
@S    SphericalHarmonicsEnvironmentColor => da5f7069400fbe0cfd86d1dff821ca1a
@S    RoughnessCubeMapEnvironmentColor => c519c7467719a806c6407c9256543142
@S    MaterialSurfaceArray => ccbac4b49ee1e91b6f7d11a29c26a658
@S    MaterialSurfaceDiffuse => 4572009ce562fa4c388af46aacc800f7
@S    IMaterialSurfacePixel => c2baefbc3fb7ad1466cc087909a23051
@S    ComputeColorConstantColorLink => a4f7de8d03608ceba6b4f128ada2b3ed
@S    MaterialSurfaceNormalMap => 9d09de7bfdbcadbc973dbfcc57934c02
@S    ComputeColorTextureScaledOffsetDynamicSampler => 36853d1a7bd080d8e9e9c5137a104b79
@S    DynamicTexture => 74e692ca9cc93b6cc6965bc380e07efe
@S    DynamicSampler => 0e1b689d1f965f3f34ae76abdf34dea7
@S    DynamicTextureStream => 546b0c40a42b4fe0e5613396b0ed4d66
@S    MaterialSurfaceGlossinessMap => fb8774941dd1a7b0ced77715861382a4
@S    ComputeColorConstantFloatLink => a459500fd7f6c5988997e81bf766f988
@S    MaterialSurfaceMetalness => fa70dc6a8326fdbb39599023eff06cda
@S    MaterialSurfaceLightingAndShading => 4faacd53863c0b5c65d23ad20797d27c
@S    Math => 5bdf39e412cac464ebbce340da34bca1
@S    IMaterialSurfaceShading => 7aecb9db43b53094f40d49ae22406a18
@S    MaterialSurfaceShadingDiffuseLambert => 66ea94572ee9f10a2e305608a7d69dad
@S    MaterialSurfaceShadingSpecularMicrofacet => b7d013f1414d67d7f1a4afd4ac068c8e
@S    BRDFMicrofacet => 98c58221f1b61f0766453f0ce60edcb0
@S    IMaterialSpecularMicrofacetFresnelFunction => be6c16bab5a59713001b43d92cde1a5a
@S    IMaterialSpecularMicrofacetVisibilityFunction => 5872403d82d7dcdfdaaf64a9f924b8dd
@S    IMaterialSpecularMicrofacetNormalDistributionFunction => a8ee1e483f2e3d59a955262211e6f903
@S    MaterialSpecularMicrofacetFresnelSchlick => 31c4aa7c7fbef53ee309a102999a200c
@S    MaterialSpecularMicrofacetVisibilitySmithSchlickGGX => f3ca0542110ccc88e4ea25b477d2e6a0
@S    MaterialSpecularMicrofacetNormalDistributionGGX => c1f51806b6ccb80ce3f85c0d2c550f6b
***************************
*****     Stages      *****
***************************
@G    Vertex => 00b755f21e51f2d85d46db323ac5689a
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id29;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id30;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id32;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id33;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id34; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id35;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id36;                 // Offset:  400 Size:    16 [unused]
//   float4x4 BlendMatrixArray_id37[56];// Offset:  416 Size:  3584
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id22;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id23;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id24;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id25;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id26;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id27;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id28;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id81;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id82;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id83;           // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id84;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id85;            // Offset:  376 Size:     4 [unused]
//   float ClusterDepthScale_id91;      // Offset:  380 Size:     4 [unused]
//   float ClusterDepthBias_id92;       // Offset:  384 Size:     4 [unused]
//   int LightCount_id98;               // Offset:  388 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  400
//       float3 Color;                  // Offset:  416
//
//   } Lights_id100;                    // Offset:  400 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id102; // Offset:  432 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id103;// Offset:  440 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id164[4];// Offset:  448 Size:   256 [unused]
//   float DepthBiases_id165;           // Offset:  704 Size:     4 [unused]
//   float OffsetScales_id166;          // Offset:  720 Size:     4 [unused]
//   float CascadeDepthSplits_id172[4]; // Offset:  736 Size:    52 [unused]
//   float Bias_id174;                  // Offset:  788 Size:     4 [unused]
//   float3 AmbientLight_id175;         // Offset:  800 Size:    12 [unused]
//   float3 SphericalColors_id177[9];   // Offset:  816 Size:   140 [unused]
//   float MipCount_id178;              // Offset:  956 Size:     4 [unused]
//   float4x4 SkyMatrix_id180;          // Offset:  960 Size:    64 [unused]
//   float Intensity_id181;             // Offset: 1024 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// PerDraw                           cbuffer      NA          NA    0        1
// PerView                           cbuffer      NA          NA    1        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyz 
// BLENDINDICES             0   xyzw        1     NONE    uint   xyzw
// BLENDWEIGHT              0   xyzw        2     NONE   float   xyzw
// NORMAL                   0   xyz         3     NONE   float   xyz 
// TANGENT                  0   xyzw        4     NONE   float   xyzw
// TEXCOORD                 0   xy          5     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyz         1     NONE   float   xyz 
// DEPTH_VS                 0      w        1     NONE   float      w
// SV_Position              0   xyzw        2      POS   float   xyzw
// TANGENT                  0   xyzw        3     NONE   float   xyzw
// TEXCOORD                 0   xy          4     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[250], dynamicIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyz
dcl_input v1.xyzw
dcl_input v2.xyzw
dcl_input v3.xyz
dcl_input v4.xyzw
dcl_input v5.xy
dcl_output o0.xyzw
dcl_output o1.xyz
dcl_output o1.w
dcl_output_siv o2.xyzw, position
dcl_output o3.xyzw
dcl_output o4.xy
dcl_temps 5
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.BlendIndices_id39.x; v1.y <- __input__.BlendIndices_id39.y; v1.z <- __input__.BlendIndices_id39.z; v1.w <- __input__.BlendIndices_id39.w; 
//   v2.x <- __input__.BlendWeights_id38.x; v2.y <- __input__.BlendWeights_id38.y; v2.z <- __input__.BlendWeights_id38.z; v2.w <- __input__.BlendWeights_id38.w; 
//   v3.x <- __input__.meshNormal_id14.x; v3.y <- __input__.meshNormal_id14.y; v3.z <- __input__.meshNormal_id14.z; 
//   v4.x <- __input__.meshTangent_id15.x; v4.y <- __input__.meshTangent_id15.y; v4.z <- __input__.meshTangent_id15.z; v4.w <- __input__.meshTangent_id15.w; 
//   v5.x <- __input__.TexCoord_id152.x; v5.y <- __input__.TexCoord_id152.y; 
//   o4.x <- <VSMain return value>.TexCoord_id152.x; o4.y <- <VSMain return value>.TexCoord_id152.y; 
//   o3.x <- <VSMain return value>.meshTangent_id15.x; o3.y <- <VSMain return value>.meshTangent_id15.y; o3.z <- <VSMain return value>.meshTangent_id15.z; o3.w <- <VSMain return value>.meshTangent_id15.w; 
//   o2.x <- <VSMain return value>.ShadingPosition_id0.x; o2.y <- <VSMain return value>.ShadingPosition_id0.y; o2.z <- <VSMain return value>.ShadingPosition_id0.z; o2.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o1.x <- <VSMain return value>.meshNormal_id14.x; o1.y <- <VSMain return value>.meshNormal_id14.y; o1.z <- <VSMain return value>.meshNormal_id14.z; o1.w <- <VSMain return value>.DepthVS_id20; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 852 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_318454af478753b76605baa1aef8cb72.hlsl"
mov r0.xyz, v0.xyzx
mov r0.w, l(1.000000)

#line 679
ishl r1.xyzw, v1.xyzw, l(2, 2, 2, 2)

#line 851
mul r2.xyzw, v2.yyyy, cb0[r1.y + 29].xyzw
mad r2.xyzw, cb0[r1.x + 29].xyzw, v2.xxxx, r2.xyzw
mad r2.xyzw, cb0[r1.z + 29].xyzw, v2.zzzz, r2.xyzw
mad r2.xyzw, cb0[r1.w + 29].xyzw, v2.wwww, r2.xyzw  // r2.x <- streams.skinningBlendMatrix_id40._m03; r2.y <- streams.skinningBlendMatrix_id40._m13; r2.z <- streams.skinningBlendMatrix_id40._m23; r2.w <- streams.skinningBlendMatrix_id40._m33
dp4 r2.w, r0.xyzw, r2.xyzw  // r2.w <- blendPos.w
mul r3.xyzw, v2.yyyy, cb0[r1.y + 26].xyzw
mad r3.xyzw, cb0[r1.x + 26].xyzw, v2.xxxx, r3.xyzw
mad r3.xyzw, cb0[r1.z + 26].xyzw, v2.zzzz, r3.xyzw
mad r3.xyzw, cb0[r1.w + 26].xyzw, v2.wwww, r3.xyzw  // r3.x <- streams.skinningBlendMatrix_id40._m00; r3.y <- streams.skinningBlendMatrix_id40._m10; r3.z <- streams.skinningBlendMatrix_id40._m20; r3.w <- streams.skinningBlendMatrix_id40._m30
dp4 r2.x, r0.xyzw, r3.xyzw  // r2.x <- blendPos.x

#line 910
dp3 r3.x, v3.xyzx, r3.xyzx

#line 851
mul r4.xyzw, v2.yyyy, cb0[r1.y + 27].xyzw
mad r4.xyzw, cb0[r1.x + 27].xyzw, v2.xxxx, r4.xyzw
mad r4.xyzw, cb0[r1.z + 27].xyzw, v2.zzzz, r4.xyzw
mad r4.xyzw, cb0[r1.w + 27].xyzw, v2.wwww, r4.xyzw  // r4.x <- streams.skinningBlendMatrix_id40._m01; r4.y <- streams.skinningBlendMatrix_id40._m11; r4.z <- streams.skinningBlendMatrix_id40._m21; r4.w <- streams.skinningBlendMatrix_id40._m31
dp4 r2.y, r0.xyzw, r4.xyzw  // r2.y <- blendPos.y

#line 910
dp3 r3.y, v3.xyzx, r4.xyzx

#line 851
mul r4.xyzw, v2.yyyy, cb0[r1.y + 28].xyzw
mad r4.xyzw, cb0[r1.x + 28].xyzw, v2.xxxx, r4.xyzw
mad r4.xyzw, cb0[r1.z + 28].xyzw, v2.zzzz, r4.xyzw
mad r1.xyzw, cb0[r1.w + 28].xyzw, v2.wwww, r4.xyzw  // r1.x <- streams.skinningBlendMatrix_id40._m02; r1.y <- streams.skinningBlendMatrix_id40._m12; r1.z <- streams.skinningBlendMatrix_id40._m22; r1.w <- streams.skinningBlendMatrix_id40._m32
dp4 r2.z, r0.xyzw, r1.xyzw  // r2.z <- blendPos.z

#line 910
dp3 r3.z, v3.xyzx, r1.xyzx

#line 853
div r0.xyzw, r2.xyzw, r2.wwww  // r0.x <- blendPos.x; r0.y <- blendPos.y; r0.z <- blendPos.z; r0.w <- blendPos.w

#line 993
mov o0.xyzw, r0.xyzw

#line 910
dp3 r1.x, r3.xyzx, r3.xyzx
rsq r1.x, r1.x
mul o1.xyz, r1.xxxx, r3.xyzx

#line 900
dp4 r1.x, r0.xyzw, cb1[19].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 993
mov o1.w, r1.x
mov o2.w, r1.x

#line 900
dp4 o2.x, r0.xyzw, cb1[16].xyzw
dp4 o2.y, r0.xyzw, cb1[17].xyzw
dp4 o2.z, r0.xyzw, cb1[18].xyzw

#line 993
mov o3.xyzw, v4.xyzw
mov o4.xy, v5.xyxx
ret 
// Approximately 40 instruction slots used
@G    Pixel => b42449be96a2e16c721ed7ba4c2d6eb8
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id184;        // Offset:    0 Size:    16
//   float2 scale_id189;                // Offset:   16 Size:     8
//   float2 offset_id190;               // Offset:   24 Size:     8
//   float constantFloat_id195;         // Offset:   32 Size:     4
//   float constantFloat_id198;         // Offset:   36 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id22;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id23;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id24;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id25;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id26;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id27;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id28;                   // Offset:  336 Size:    16
//   float NearClipPlane_id81;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id82;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id83;           // Offset:  360 Size:     8
//   float2 ViewSize_id84;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id85;            // Offset:  376 Size:     4 [unused]
//   float ClusterDepthScale_id91;      // Offset:  380 Size:     4
//   float ClusterDepthBias_id92;       // Offset:  384 Size:     4
//   int LightCount_id98;               // Offset:  388 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  400
//       float3 Color;                  // Offset:  416
//
//   } Lights_id100;                    // Offset:  400 Size:    28
//   float2 ShadowMapTextureSize_id102; // Offset:  432 Size:     8
//   float2 ShadowMapTextureTexelSize_id103;// Offset:  440 Size:     8
//   float4x4 WorldToShadowCascadeUV_id164[4];// Offset:  448 Size:   256
//   float DepthBiases_id165;           // Offset:  704 Size:     4
//   float OffsetScales_id166;          // Offset:  720 Size:     4
//   float CascadeDepthSplits_id172[4]; // Offset:  736 Size:    52
//   float Bias_id174;                  // Offset:  788 Size:     4 [unused]
//   float3 AmbientLight_id175;         // Offset:  800 Size:    12
//   float3 SphericalColors_id177[9];   // Offset:  816 Size:   140
//   float MipCount_id178;              // Offset:  956 Size:     4
//   float4x4 SkyMatrix_id180;          // Offset:  960 Size:    64
//   float Intensity_id181;             // Offset: 1024 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// LinearSampler_id134               sampler      NA          NA    0        1
// LinearClampCompareLessEqualSampler_id136  sampler_c      NA          NA    1        1
// Sampler_id187                     sampler      NA          NA    2        1
// Texture_id186                     texture  float4          2d    0        1
// LightClusters_id89                texture   uint2          3d    1        1
// LightIndices_id90                 texture    uint         buf    2        1
// PointLights_id94                  texture  float4         buf    3        1
// SpotLights_id97                   texture  float4         buf    4        1
// ShadowMapTexture_id101            texture  float4          2d    5        1
// CubeMap_id179                     texture  float4        cube    6        1
// PerMaterial                       cbuffer      NA          NA    0        1
// PerView                           cbuffer      NA          NA    1        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyz 
// NORMAL                   0   xyz         1     NONE   float   xyz 
// DEPTH_VS                 0      w        1     NONE   float      w
// SV_Position              0   xyzw        2      POS   float   xyz 
// TANGENT                  0   xyzw        3     NONE   float   xyzw
// TEXCOORD                 0   xy          4     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[3], immediateIndexed
dcl_constantbuffer cb1[65], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture3d (uint,uint,uint,uint) t1
dcl_resource_buffer (uint,uint,uint,uint) t2
dcl_resource_buffer (float,float,float,float) t3
dcl_resource_buffer (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_texturecube (float,float,float,float) t6
dcl_input_ps linear v0.xyz
dcl_input_ps linear v1.xyz
dcl_input_ps linear v1.w
dcl_input_ps_siv linear noperspective v2.xyz, position
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xy
dcl_output o0.xyzw
dcl_temps 20
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.meshNormal_id14.x; v1.y <- __input__.meshNormal_id14.y; v1.z <- __input__.meshNormal_id14.z; 
//   v2.x <- __input__.ShadingPosition_id0.x; v2.y <- __input__.ShadingPosition_id0.y; v2.z <- __input__.ShadingPosition_id0.z; v2.w <- __input__.ShadingPosition_id0.w; 
//   v1.w <- __input__.DepthVS_id20; 
//   v3.x <- __input__.meshTangent_id15.x; v3.y <- __input__.meshTangent_id15.y; v3.z <- __input__.meshTangent_id15.z; v3.w <- __input__.meshTangent_id15.w; 
//   v4.x <- __input__.TexCoord_id152.x; v4.y <- __input__.TexCoord_id152.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 891 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_318454af478753b76605baa1aef8cb72.hlsl"
dp3 r0.x, v1.xyzx, v1.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v1.xyzx  // r0.x <- streams.meshNormal_id14.x; r0.y <- streams.meshNormal_id14.y; r0.z <- streams.meshNormal_id14.z
dp3 r0.w, v3.xyzx, v3.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v3.yzxy  // r1.x <- tangent.y; r1.y <- tangent.z; r1.z <- tangent.x
mul r2.xyz, r0.zxyz, r1.xyzx
mad r2.xyz, r0.yzxy, r1.yzxy, -r2.xyzx
mul r2.xyz, r2.xyzx, v3.wwww  // r2.x <- bitangent.x; r2.y <- bitangent.y; r2.z <- bitangent.z

#line 914
add r3.xyz, -v0.xyzx, cb1[21].xyzx
dp3 r0.w, r3.xyzx, r3.xyzx
rsq r0.w, r0.w
mul r3.xyz, r0.wwww, r3.xyzx  // r3.x <- streams.viewWS_id65.x; r3.y <- streams.viewWS_id65.y; r3.z <- streams.viewWS_id65.z

#line 666
mad r4.xy, v4.xyxx, cb0[1].xyxx, cb0[1].zwzz
sample_indexable(texture2d)(float,float,float,float) r4.xy, r4.xyxx, t0.xyzw, s2  // r4.x <- <Compute_id273 return value>.x; r4.y <- <Compute_id273 return value>.y

#line 808
mad r4.xy, r4.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r4.x <- normal.x; r4.y <- normal.y

#line 812
dp2 r0.w, r4.xyxx, r4.xyxx
add r0.w, -r0.w, l(1.000000)
max r0.w, r0.w, l(0.000000)
sqrt r4.z, r0.w  // r4.z <- normal.z

#line 795
add r5.xyz, cb0[0].xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r5.xyz, cb0[2].yyyy, r5.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r5.x <- streams.matSpecular_id53.x; r5.y <- streams.matSpecular_id53.y; r5.z <- streams.matSpecular_id53.z
mad r6.xyz, cb0[2].yyyy, -cb0[0].xyzx, cb0[0].xyzx  // r6.x <- streams.matDiffuse_id51.x; r6.y <- streams.matDiffuse_id51.y; r6.z <- streams.matDiffuse_id51.z

#line 654
mov r7.x, r1.z
mov r7.y, r2.x
mov r7.z, r0.x
dp3 r7.x, r4.xyzx, r7.xyzx
mov r8.x, r1.x
mov r8.y, r2.y
mov r8.z, r0.y
dp3 r7.y, r4.xyzx, r8.xyzx
mov r0.x, r1.y
mov r0.y, r2.z
dp3 r7.z, r4.xyzx, r0.xyzx
dp3 r0.x, r7.xyzx, r7.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, r7.xyzx  // r0.x <- streams.normalWS_id16.x; r0.y <- streams.normalWS_id16.y; r0.z <- streams.normalWS_id16.z

#line 637
dp3 r0.w, r0.xyzx, r3.xyzx
max r0.w, r0.w, l(0.000100)  // r0.w <- streams.NdotV_id69
add r1.x, -cb0[2].x, l(1.000000)  // r1.x <- roughness

#line 517
dp3 r1.y, r4.xyzx, r4.xyzx
sqrt r1.z, r1.y  // r1.z <- r
lt r1.w, r1.z, l(1.000000)
add r2.x, -r1.y, l(1.000000)
mul r2.x, r2.x, l(0.500000)
mul r1.y, r1.z, r1.y
mad r1.y, r1.z, l(3.000000), -r1.y
div r1.y, r2.x, r1.y  // r1.y <- roughnessAdjust
and r1.y, r1.y, r1.w

#line 640
mad r1.x, r1.x, r1.x, r1.y

#line 509
add r1.y, v2.z, -cb1[22].z
div r1.y, cb1[22].w, r1.y  // r1.y <- depth
ftoi r1.zw, v2.xxxy  // r1.z <- shadingPosition.x; r1.w <- shadingPosition.y
mad r1.y, r1.y, cb1[23].w, cb1[24].x
log r1.y, r1.y

#line 640
max r1.xy, r1.xyxx, l(0.001000, 0.000000, 0.000000, 0.000000)  // r1.x <- streams.alphaRoughness_id67

#line 511
ftoi r2.z, r1.y  // r2.z <- slice
ushr r2.xy, r1.zwzz, l(6, 6, 0, 0)
mov r2.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r1.yz, r2.xyzw, t1.zxyw  // r1.y <- streams.lightData_id87.x; r1.z <- streams.lightData_id87.y

#line 626
and r1.w, r1.z, l(0x0000ffff)  // r1.w <- <GetMaxLightCount_id231 return value>

#line 698
mov r2.xyz, v0.xyzx  // r2.x <- streams.PositionWS_id19.x; r2.y <- streams.PositionWS_id19.y; r2.z <- streams.PositionWS_id19.z
mov r4.xyz, r3.xyzx  // r4.x <- streams.viewWS_id65.x; r4.y <- streams.viewWS_id65.y; r4.z <- streams.viewWS_id65.z
mov r7.x, r6.x  // r7.x <- streams.matDiffuseVisible_id66.x
mov r8.xy, r6.yzyy  // r8.x <- streams.matDiffuseVisible_id66.y; r8.y <- streams.matDiffuseVisible_id66.z
mov r8.zw, r5.xxxy  // r8.z <- streams.matSpecularVisible_id68.x; r8.w <- streams.matSpecularVisible_id68.y
mov r9.x, r5.z  // r9.x <- streams.matSpecularVisible_id68.z
mov r9.y, r1.x  // r9.y <- streams.alphaRoughness_id67
mov r10.xyz, r0.xyzx  // r10.x <- streams.normalWS_id16.x; r10.y <- streams.normalWS_id16.y; r10.z <- streams.normalWS_id16.z
mov r11.z, r0.w  // r11.z <- streams.NdotV_id69
mov r11.x, r1.y  // r11.x <- streams.lightIndex_id88
mov r12.xyz, l(0,0,0,0)  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r1.w
  breakc_nz r3.w
  if_nz r3.w
    break 
  endif 

#line 496
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r11.xxxx, t2.yzwx  // r3.w <- realLightIndex
  iadd r11.x, r11.x, l(1)  // r11.x <- streams.lightIndex_id88
  ishl r4.w, r3.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r4.wwww, t3.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w
  bfi r3.w, l(31), l(1), r3.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r3.wwww, t3.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 349
  add r13.xyz, -r2.xyzx, r13.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z
  dp3 r3.w, r13.xyzx, r13.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength
  div r13.xyz, r13.xyzx, r4.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 299
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 231
  mul r3.w, r13.w, r3.w  // r3.w <- factor
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id83 return value>

#line 300
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 355
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColor_id43.x; r14.y <- streams.lightColor_id43.y; r14.z <- streams.lightColor_id43.z

#line 616
  dp3 r3.w, r10.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id47
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id44.x; r14.y <- streams.lightColorNdotL_id44.y; r14.z <- streams.lightColorNdotL_id44.z

#line 608
  add r15.xyz, r4.xyzx, r13.xyzx
  dp3 r4.w, r15.xyzx, r15.xyzx
  rsq r4.w, r4.w
  mul r15.xyz, r4.wwww, r15.xyzx  // r15.x <- streams.H_id72.x; r15.y <- streams.H_id72.y; r15.z <- streams.H_id72.z
  dp3 r4.w, r10.xyzx, r15.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotH_id73
  dp3 r5.w, r13.xyzx, r15.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.LdotH_id74

#line 604
  mov r7.yz, r8.xxyx
  mul r7.yzw, r14.xxyz, r7.xxyz

#line 708
  mad r7.yzw, r7.yyzw, l(0.000000, 0.318310, 0.318310, 0.318310), r12.xxyz  // r7.y <- directLightingContribution.x; r7.z <- directLightingContribution.y; r7.w <- directLightingContribution.z

#line 294
  mov r13.xy, r8.zwzz
  mov r13.z, r9.x
  add r15.xyz, -r13.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r6.w, r5.w, r5.w
  mul r6.w, r6.w, r6.w
  mul r5.w, r5.w, r6.w
  mad r13.xyz, r15.xyzx, r5.wwww, r13.xyzx  // r13.x <- <FresnelSchlick_id179 return value>.x; r13.y <- <FresnelSchlick_id179 return value>.y; r13.z <- <FresnelSchlick_id179 return value>.z

#line 289
  mul r5.w, r9.y, l(0.500000)  // r5.w <- k
  mad r6.w, -r9.y, l(0.500000), l(1.000000)
  mad r9.z, r3.w, r6.w, r5.w
  div r9.z, r3.w, r9.z  // r9.z <- <VisibilityhSchlickGGX_id197 return value>
  mad r5.w, r11.z, r6.w, r5.w
  div r5.w, r11.z, r5.w  // r5.w <- <VisibilityhSchlickGGX_id197 return value>

#line 341
  mul r5.w, r5.w, r9.z
  mul r3.w, r11.z, r3.w
  div r3.w, r5.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id199 return value>

#line 336
  mul r5.w, r9.y, r9.y  // r5.w <- alphaR2
  mul r4.w, r4.w, r4.w
  mad r6.w, r9.y, r9.y, l(-1.000000)
  mad r4.w, r4.w, r6.w, l(1.000000)
  max r4.w, r4.w, l(0.000100)
  mul r4.w, r4.w, r4.w
  mul r4.w, r4.w, l(3.141593)
  div r4.w, r5.w, r4.w  // r4.w <- <NormalDistributionGGX_id213 return value>

#line 598
  mul r13.xyz, r3.wwww, r13.xyzx
  mul r13.xyz, r4.wwww, r13.xyzx
  mul r13.xyz, r14.xyzx, r13.xyzx

#line 712
  mad r12.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r7.yzwy  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 698
  iadd r2.w, r2.w, l(1)

#line 714
endloop   // r11.x <- streams.lightIndex_id88

#line 587
ushr r1.y, r1.z, l(16)  // r1.y <- <GetMaxLightCount_id240 return value>

#line 722
mov r2.xyz, v0.xyzx
mov r4.xyz, r3.xyzx
mov r7.xyz, r6.xyzx  // r7.y <- streams.matDiffuseVisible_id66.y; r7.z <- streams.matDiffuseVisible_id66.z
mov r8.xyz, r5.xyzx  // r8.x <- streams.matSpecularVisible_id68.x; r8.y <- streams.matSpecularVisible_id68.y; r8.z <- streams.matSpecularVisible_id68.z
mov r9.x, r1.x  // r9.x <- streams.alphaRoughness_id67
mov r9.z, r0.w  // r9.z <- streams.NdotV_id69
mov r10.xyz, r0.xyzx
mov r11.yzw, r12.xxyz  // r11.y <- directLightingContribution.x; r11.z <- directLightingContribution.y; r11.w <- directLightingContribution.z
mov r1.z, r11.x  // r1.z <- streams.lightIndex_id88
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r1.y
  breakc_nz r2.w
  if_nz r2.w
    break 
  endif 

#line 465
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r1.zzzz, t2.yzwx  // r2.w <- realLightIndex
  iadd r1.z, r1.z, l(1)  // r1.z <- streams.lightIndex_id88
  ishl r3.w, r2.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r13.xyz, r3.wwww, t4.xyzw  // r13.x <- spotLight1.x; r13.y <- spotLight1.y; r13.z <- spotLight1.z

#line 471
  bfi r14.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r2.wwww, l(1, 2, 3, 0)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r14.xxxx, t4.xyzw  // r15.x <- spotLight2.x; r15.y <- spotLight2.y; r15.z <- spotLight2.z
  ld_indexable(buffer)(float,float,float,float) r14.xyw, r14.yyyy, t4.xywz  // r14.x <- spotLight3.x; r14.y <- spotLight3.y; r14.w <- spotLight3.z
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r14.zzzz, t4.xyzw  // r16.x <- spotLight4.x; r16.y <- spotLight4.y; r16.z <- spotLight4.z

#line 321
  add r13.xyz, -r2.xyzx, r13.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 283
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 225
  mul r2.w, r14.w, r2.w  // r2.w <- factor
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id91 return value>

#line 284
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 275
  dp3 r3.w, -r15.xyzx, r13.xyzx  // r3.w <- cd
  mad_sat r3.w, r3.w, r14.x, r14.y  // r3.w <- attenuation
  mul r3.w, r3.w, r3.w

#line 330
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation
  mul r14.xyz, r2.wwww, r16.xyzx  // r14.x <- streams.lightColor_id43.x; r14.y <- streams.lightColor_id43.y; r14.z <- streams.lightColor_id43.z

#line 577
  dp3 r2.w, r10.xyzx, r13.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id47
  mul r14.xyz, r2.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id44.x; r14.y <- streams.lightColorNdotL_id44.y; r14.z <- streams.lightColorNdotL_id44.z

#line 608
  add r15.xyz, r4.xyzx, r13.xyzx
  dp3 r3.w, r15.xyzx, r15.xyzx
  rsq r3.w, r3.w
  mul r15.xyz, r3.wwww, r15.xyzx  // r15.x <- streams.H_id72.x; r15.y <- streams.H_id72.y; r15.z <- streams.H_id72.z
  dp3 r3.w, r10.xyzx, r15.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotH_id73
  dp3 r4.w, r13.xyzx, r15.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.LdotH_id74

#line 604
  mul r13.xyz, r7.xyzx, r14.xyzx

#line 732
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.yzwy  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 294
  add r15.xyz, -r8.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r5.w, r4.w, r4.w
  mul r5.w, r5.w, r5.w
  mul r4.w, r4.w, r5.w
  mad r15.xyz, r15.xyzx, r4.wwww, r8.xyzx  // r15.x <- <FresnelSchlick_id179 return value>.x; r15.y <- <FresnelSchlick_id179 return value>.y; r15.z <- <FresnelSchlick_id179 return value>.z

#line 289
  mul r4.w, r9.x, l(0.500000)  // r4.w <- k
  mad r5.w, -r9.x, l(0.500000), l(1.000000)
  mad r6.w, r2.w, r5.w, r4.w
  div r6.w, r2.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id197 return value>
  mad r4.w, r9.z, r5.w, r4.w
  div r4.w, r9.z, r4.w  // r4.w <- <VisibilityhSchlickGGX_id197 return value>

#line 341
  mul r4.w, r4.w, r6.w
  mul r2.w, r9.z, r2.w
  div r2.w, r4.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id199 return value>

#line 336
  mul r4.w, r9.x, r9.x  // r4.w <- alphaR2
  mul r3.w, r3.w, r3.w
  mad r5.w, r9.x, r9.x, l(-1.000000)
  mad r3.w, r3.w, r5.w, l(1.000000)
  max r3.w, r3.w, l(0.000100)
  mul r3.w, r3.w, r3.w
  mul r3.w, r3.w, l(3.141593)
  div r3.w, r4.w, r3.w  // r3.w <- <NormalDistributionGGX_id213 return value>

#line 598
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r15.xyz, r3.wwww, r15.xyzx
  mul r14.xyz, r14.xyzx, r15.xyzx

#line 736
  mad r11.yzw, r14.xxyz, l(0.000000, 0.250000, 0.250000, 0.250000), r13.xxyz  // r11.y <- directLightingContribution.x; r11.z <- directLightingContribution.y; r11.w <- directLightingContribution.z

#line 722
  iadd r1.w, r1.w, l(1)

#line 738
endloop   // r1.z <- streams.lightIndex_id88

#line 313
dp2 r1.y, cb1[45].xxxx, cb1[27].zzzz

#line 305
mov r2.w, l(1.000000)

#line 746
mov r4.xyz, v0.xyzx  // r4.x <- streams.PositionWS_id19.x; r4.y <- streams.PositionWS_id19.y; r4.z <- streams.PositionWS_id19.z
mov r4.w, v1.w  // r4.w <- streams.DepthVS_id20
mov r7.xyz, r3.xyzx  // r7.x <- streams.viewWS_id65.x; r7.y <- streams.viewWS_id65.y; r7.z <- streams.viewWS_id65.z
mov r8.xyz, r6.xyzx  // r8.x <- streams.matDiffuseVisible_id66.x; r8.y <- streams.matDiffuseVisible_id66.y; r8.z <- streams.matDiffuseVisible_id66.z
mov r9.xyz, r5.xyzx  // r9.x <- streams.matSpecularVisible_id68.x; r9.y <- streams.matSpecularVisible_id68.y; r9.z <- streams.matSpecularVisible_id68.z
mov r10.x, r1.x  // r10.x <- streams.alphaRoughness_id67
mov r10.z, r0.w  // r10.z <- streams.NdotV_id69
mov r12.xyz, r0.xyzx  // r12.x <- streams.normalWS_id16.x; r12.y <- streams.normalWS_id16.y; r12.z <- streams.normalWS_id16.z
mov r13.xyz, r11.yzwy  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r1.z, l(0)  // r1.z <- i
loop 
  ige r1.w, r1.z, l(1)
  breakc_nz r1.w
  ige r1.w, r1.z, cb1[24].y
  if_nz r1.w
    break 
  endif 

#line 559
  dp3 r1.w, r12.xyzx, -cb1[25].xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id47

#line 415
  ishl r3.w, r1.z, l(2)  // r3.w <- cascadeIndexBase

#line 422
  lt r5.w, cb1[r3.w + 46].x, r4.w

#line 425
  and r5.w, r5.w, l(1)  // r5.w <- cascadeIndex

#line 422
  bfi r10.yw, l(0, 30, 0, 30), l(0, 2, 0, 2), r1.zzzz, l(0, 1, 0, 2)
  lt r6.w, cb1[r10.y + 46].x, r4.w

#line 425
  movc r5.w, r6.w, l(2), r5.w

#line 422
  lt r6.w, cb1[r10.w + 46].x, r4.w

#line 425
  movc r5.w, r6.w, l(3), r5.w

#line 312
  add r7.w, -r1.w, l(1.000000)
  max r7.w, r7.w, l(0.000000)  // r7.w <- normalOffsetScale
  mul r7.w, r1.y, r7.w

#line 429
  mad r2.xyz, r7.wwww, r12.xyzx, r4.xyzx  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 305
  bfi r7.w, l(30), l(2), r1.z, r5.w
  ishl r8.w, r5.w, l(2)
  bfi r8.w, l(30), l(4), r1.z, r8.w
  dp4 r14.x, r2.xyzw, cb1[r8.w + 28].xyzw  // r14.x <- shadowPosition.x
  dp4 r14.y, r2.xyzw, cb1[r8.w + 29].xyzw  // r14.y <- shadowPosition.y
  dp4 r9.w, r2.xyzw, cb1[r8.w + 30].xyzw  // r9.w <- shadowPosition.z
  dp4 r8.w, r2.xyzw, cb1[r8.w + 31].xyzw  // r8.w <- shadowPosition.w
  add r14.z, r9.w, -cb1[44].x  // r14.z <- shadowPosition.z
  div r14.xyz, r14.xyzx, r8.wwww

#line 241
  mad r10.yw, r14.xxxy, cb1[27].xxxy, l(0.000000, 0.500000, 0.000000, 0.500000)
  round_ni r14.xy, r10.ywyy  // r14.x <- base_uv.x; r14.y <- base_uv.y
  add r10.yw, r10.yyyw, -r14.xxxy  // r10.y <- s; r10.w <- t
  add r14.xy, r14.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r14.xy, r14.xyxx, cb1[27].zwzz

#line 254
  mad r15.xy, -r10.wyww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r15.y <- uw0; r15.x <- vw0
  mad r15.zw, r10.yyyw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r15.z <- uw2; r15.w <- vw2
  mad r16.xy, -r10.ywyy, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r16.xy, r16.xyxx, r15.yxyy
  add r16.zw, r10.yyyw, l(0.000000, 0.000000, 3.000000, 3.000000)
  div r10.yw, r10.yyyw, r15.zzzw
  add r17.xw, r16.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r17.x <- u0; r17.w <- v0
  mul r17.yz, r16.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r17.z <- u1; r17.y <- v1
  add r16.xy, r10.ywyy, l(2.000000, 2.000000, 0.000000, 0.000000)  // r16.x <- u2; r16.y <- v2
  mul r8.w, r15.x, r15.y
  mad r18.xyzw, r17.xwzw, cb1[27].zwzw, r14.xyxy

#line 221
  sample_c_indexable(texture2d)(float,float,float,float) r9.w, r18.xyxx, t5.xxxx, s1, r14.z  // r9.w <- <SampleTextureAndCompare_id107 return value>

#line 263
  mul r10.yw, r15.xxxy, l(0.000000, 7.000000, 0.000000, 7.000000)

#line 221
  sample_c_indexable(texture2d)(float,float,float,float) r11.x, r18.zwzz, t5.xxxx, s1, r14.z  // r11.x <- <SampleTextureAndCompare_id107 return value>

#line 261
  mul r10.y, r10.y, r11.x
  mad r8.w, r8.w, r9.w, r10.y  // r8.w <- shadow

#line 266
  mul r15.xy, r15.xyxx, r15.zwzz
  mov r16.zw, r17.wwwy
  mad r18.xyzw, r16.xzxw, cb1[27].zwzw, r14.xyxy

#line 221
  sample_c_indexable(texture2d)(float,float,float,float) r9.w, r18.xyxx, t5.xxxx, s1, r14.z  // r9.w <- <SampleTextureAndCompare_id107 return value>

#line 262
  mad r8.w, r15.x, r9.w, r8.w
  mad r19.xyzw, r17.xyzy, cb1[27].zwzw, r14.xyxy

#line 221
  sample_c_indexable(texture2d)(float,float,float,float) r9.w, r19.xyxx, t5.xxxx, s1, r14.z

#line 263
  mad r8.w, r10.w, r9.w, r8.w

#line 221
  sample_c_indexable(texture2d)(float,float,float,float) r9.w, r19.zwzz, t5.xxxx, s1, r14.z

#line 264
  mad r8.w, r9.w, l(49.000000), r8.w

#line 267
  mul r10.yw, r15.zzzw, l(0.000000, 7.000000, 0.000000, 7.000000)

#line 221
  sample_c_indexable(texture2d)(float,float,float,float) r9.w, r18.zwzz, t5.xxxx, s1, r14.z

#line 265
  mad r8.w, r10.y, r9.w, r8.w
  mov r17.y, r16.y
  mad r17.xyzw, r17.xyzy, cb1[27].zwzw, r14.xyxy

#line 221
  sample_c_indexable(texture2d)(float,float,float,float) r9.w, r17.xyxx, t5.xxxx, s1, r14.z

#line 266
  mad r8.w, r15.y, r9.w, r8.w

#line 221
  sample_c_indexable(texture2d)(float,float,float,float) r9.w, r17.zwzz, t5.xxxx, s1, r14.z

#line 267
  mad r8.w, r10.w, r9.w, r8.w
  mul r9.w, r15.w, r15.z
  mad r10.yw, r16.xxxy, cb1[27].zzzw, r14.xxxy

#line 221
  sample_c_indexable(texture2d)(float,float,float,float) r10.y, r10.ywyy, t5.xxxx, s1, r14.z  // r10.y <- <SampleTextureAndCompare_id107 return value>

#line 268
  mad r8.w, r9.w, r10.y, r8.w
  mul r9.w, r8.w, l(0.006944)  // r9.w <- shadow

#line 434
  iadd r10.y, r7.w, l(-1)
  add r10.y, -cb1[r10.y + 46].x, cb1[r7.w + 46].x
  movc r10.y, r5.w, r10.y, cb1[r7.w + 46].x  // r10.y <- splitSize
  add r7.w, -r4.w, cb1[r7.w + 46].x
  div r7.w, r7.w, r10.y  // r7.w <- splitDist
  lt r10.y, r7.w, l(0.200000)

#line 305
  ishl r3.w, r3.w, l(2)
  imad r3.w, r5.w, l(4), r3.w
  iadd r3.w, r3.w, l(4)
  dp4 r14.x, r2.xyzw, cb1[r3.w + 28].xyzw  // r14.x <- shadowPosition.x
  dp4 r14.y, r2.xyzw, cb1[r3.w + 29].xyzw  // r14.y <- shadowPosition.y
  dp4 r5.w, r2.xyzw, cb1[r3.w + 30].xyzw  // r5.w <- shadowPosition.z
  dp4 r2.x, r2.xyzw, cb1[r3.w + 31].xyzw  // r2.x <- shadowPosition.w
  add r14.z, r5.w, -cb1[44].x  // r14.z <- shadowPosition.z
  div r2.xyz, r14.xyzx, r2.xxxx  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 241
  mad r2.xy, r2.xyxx, cb1[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r14.xy, r2.xyxx  // r14.x <- base_uv.x; r14.y <- base_uv.y
  add r2.xy, r2.xyxx, -r14.xyxx  // r2.x <- s; r2.y <- t
  add r14.xy, r14.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r14.xy, r14.xyxx, cb1[27].zwzz

#line 254
  mad r14.zw, -r2.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r14.w <- uw0; r14.z <- vw0
  mad r15.xy, r2.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r15.x <- uw2; r15.y <- vw2
  mad r15.zw, -r2.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r15.zw, r15.zzzw, r14.wwwz
  add r16.xy, r2.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r2.xy, r2.xyxx, r15.xyxx
  add r17.xw, r15.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r17.x <- u0; r17.w <- v0
  mul r17.yz, r16.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r17.z <- u1; r17.y <- v1
  add r16.xy, r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r16.x <- u2; r16.y <- v2
  mad r18.xyzw, r17.xwzw, cb1[27].zwzw, r14.xyxy

#line 221
  sample_c_indexable(texture2d)(float,float,float,float) r2.x, r18.xyxx, t5.xxxx, s1, r2.z  // r2.x <- <SampleTextureAndCompare_id107 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r2.y, r18.zwzz, t5.xxxx, s1, r2.z  // r2.y <- <SampleTextureAndCompare_id107 return value>

#line 265
  mov r16.zw, r17.wwwy
  mad r18.xyzw, r16.xzxw, cb1[27].zwzw, r14.xyxy

#line 221
  sample_c_indexable(texture2d)(float,float,float,float) r3.w, r18.xyxx, t5.xxxx, s1, r2.z  // r3.w <- <SampleTextureAndCompare_id107 return value>

#line 264
  mad r19.xyzw, r17.xyzy, cb1[27].zwzw, r14.xyxy

#line 221
  sample_c_indexable(texture2d)(float,float,float,float) r5.w, r19.xyxx, t5.xxxx, s1, r2.z  // r5.w <- <SampleTextureAndCompare_id107 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r10.w, r19.zwzz, t5.xxxx, s1, r2.z  // r10.w <- <SampleTextureAndCompare_id107 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r11.x, r18.zwzz, t5.xxxx, s1, r2.z  // r11.x <- <SampleTextureAndCompare_id107 return value>

#line 266
  mov r17.y, r16.y
  mad r17.xyzw, r17.xyzy, cb1[27].zwzw, r14.xyxy

#line 221
  sample_c_indexable(texture2d)(float,float,float,float) r12.w, r17.xyxx, t5.xxxx, s1, r2.z  // r12.w <- <SampleTextureAndCompare_id107 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r13.w, r17.zwzz, t5.xxxx, s1, r2.z  // r13.w <- <SampleTextureAndCompare_id107 return value>

#line 268
  mad r14.xy, r16.xyxx, cb1[27].zwzz, r14.xyxx

#line 221
  sample_c_indexable(texture2d)(float,float,float,float) r2.z, r14.xyxx, t5.xxxx, s1, r2.z  // r2.z <- <SampleTextureAndCompare_id107 return value>

#line 436
  if_nz r10.y

#line 439
    if_z r6.w
      mul_sat r6.w, r7.w, l(5.000000)
      mad r7.w, r6.w, l(-2.000000), l(3.000000)
      mul r6.w, r6.w, r6.w
      mul r6.w, r6.w, r7.w  // r6.w <- lerpAmt

#line 260
      mul r7.w, r14.z, r14.w
      mul r2.y, r14.z, r2.y
      mul r2.y, r2.y, l(7.000000)
      mad r2.x, r7.w, r2.x, r2.y  // r2.x <- shadow

#line 266
      mul r14.xy, r14.zwzz, r15.xyxx

#line 262
      mad r2.x, r14.x, r3.w, r2.x
      mul r2.y, r5.w, r14.w
      mad r2.x, r2.y, l(7.000000), r2.x
      mad r2.x, r10.w, l(49.000000), r2.x
      mul r2.y, r11.x, r15.x
      mad r2.x, r2.y, l(7.000000), r2.x
      mad r2.x, r14.y, r12.w, r2.x
      mul r2.y, r15.y, r13.w
      mad r2.x, r2.y, l(7.000000), r2.x
      mul r2.y, r15.y, r15.x
      mad r2.x, r2.y, r2.z, r2.x
      mul r2.x, r2.x, l(0.006944)

#line 445
      mad r2.y, r8.w, l(0.006944), -r2.x
      mad r9.w, r6.w, r2.y, r2.x
    endif 
  endif   // r9.w <- shadow

#line 561
  mul r2.xyz, r9.wwww, cb1[26].xyzx
  mul r2.xyz, r1.wwww, r2.xyzx  // r2.x <- streams.lightColorNdotL_id44.x; r2.y <- streams.lightColorNdotL_id44.y; r2.z <- streams.lightColorNdotL_id44.z

#line 608
  add r14.xyz, r7.xyzx, -cb1[25].xyzx
  dp3 r3.w, r14.xyzx, r14.xyzx
  rsq r3.w, r3.w
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.H_id72.x; r14.y <- streams.H_id72.y; r14.z <- streams.H_id72.z
  dp3 r3.w, r12.xyzx, r14.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotH_id73
  dp3 r5.w, -cb1[25].xyzx, r14.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.LdotH_id74

#line 604
  mul r14.xyz, r2.xyzx, r8.xyzx

#line 756
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r13.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 294
  add r15.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r6.w, r5.w, r5.w
  mul r6.w, r6.w, r6.w
  mul r5.w, r5.w, r6.w
  mad r15.xyz, r15.xyzx, r5.wwww, r9.xyzx  // r15.x <- <FresnelSchlick_id179 return value>.x; r15.y <- <FresnelSchlick_id179 return value>.y; r15.z <- <FresnelSchlick_id179 return value>.z

#line 289
  mul r5.w, r10.x, l(0.500000)  // r5.w <- k
  mad r6.w, -r10.x, l(0.500000), l(1.000000)
  mad r7.w, r1.w, r6.w, r5.w
  div r7.w, r1.w, r7.w  // r7.w <- <VisibilityhSchlickGGX_id197 return value>
  mad r5.w, r10.z, r6.w, r5.w
  div r5.w, r10.z, r5.w  // r5.w <- <VisibilityhSchlickGGX_id197 return value>

#line 341
  mul r5.w, r5.w, r7.w
  mul r1.w, r10.z, r1.w
  div r1.w, r5.w, r1.w  // r1.w <- <VisibilitySmithSchlickGGX_id199 return value>

#line 336
  mul r5.w, r10.x, r10.x  // r5.w <- alphaR2
  mul r3.w, r3.w, r3.w
  mad r6.w, r10.x, r10.x, l(-1.000000)
  mad r3.w, r3.w, r6.w, l(1.000000)
  max r3.w, r3.w, l(0.000100)
  mul r3.w, r3.w, r3.w
  mul r3.w, r3.w, l(3.141593)
  div r3.w, r5.w, r3.w  // r3.w <- <NormalDistributionGGX_id213 return value>

#line 598
  mul r15.xyz, r1.wwww, r15.xyzx
  mul r15.xyz, r3.wwww, r15.xyzx
  mul r2.xyz, r2.xyzx, r15.xyzx

#line 760
  mad r13.xyz, r2.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 746
  iadd r1.z, r1.z, l(1)

#line 762
endloop 

#line 391
add r1.y, -r1.x, l(1.000000)  // r1.y <- x

#line 399
mul r1.z, r1.y, r1.y

#line 407
mul r1.w, r1.z, l(1.895000)

#line 399
mad r1.w, r1.y, l(-0.168800), r1.w
mad r2.x, r0.w, l(-4.853000), l(0.990300)
mul r2.y, r0.w, r0.w
mad r2.x, r2.y, l(8.404000), r2.x
mul r2.z, r0.w, r2.y
mad r2.x, r2.z, l(-5.069000), r2.x
min_sat r1.w, r1.w, r2.x  // r1.w <- bias

#line 407
mad r2.x, r1.y, l(1.699000), l(0.604500)
mad r2.x, r0.w, l(-0.522800), r2.x
mad r2.x, r1.z, l(-3.603000), r2.x
mul r0.w, r0.w, r1.y
mad r0.w, r0.w, l(1.404000), r2.x
mad r0.w, r2.y, l(0.193900), r0.w
mul r1.y, r1.y, r1.z
mad_sat r0.w, r1.y, l(2.661000), r0.w  // r0.w <- delta
add r0.w, -r1.w, r0.w  // r0.w <- scale
mul_sat r1.y, r5.y, l(50.000000)
mul r1.y, r1.y, r1.w  // r1.y <- bias
mad r1.yzw, r5.xxyz, r0.wwww, r1.yyyy  // r1.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id214 return value>.x; r1.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id214 return value>.y; r1.w <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id214 return value>.z

#line 543
mul r2.xyz, r1.yzwy, cb1[50].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id416 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id416 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id416 return value>.z

#line 774
mad r2.xyz, r6.xyzx, cb1[50].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 532
dp3 r0.w, r0.xyzx, cb1[60].xyzx  // r0.w <- sampleDirection.x
dp3 r2.w, r0.xyzx, cb1[61].xyzx  // r2.w <- sampleDirection.y
dp3 r3.w, r0.xyzx, cb1[62].xyzx  // r3.w <- sampleDirection.z

#line 370
mul r4.x, r2.w, r2.w  // r4.x <- y2
mul r4.y, r3.w, r3.w  // r4.y <- z2

#line 375
mad r5.xyz, cb1[52].xyzx, r2.wwww, cb1[51].xyzx  // r5.x <- color.x; r5.y <- color.y; r5.z <- color.z
mad r5.xyz, cb1[53].xyzx, -r3.wwww, r5.xyzx
mad r5.xyz, cb1[54].xyzx, r0.wwww, r5.xyzx

#line 380
mul r7.xyz, r2.wwww, cb1[55].xyzx
mad r5.xyz, r7.xyzx, r0.wwww, r5.xyzx
mul r7.xyz, r2.wwww, cb1[56].xyzx
mad r5.xyz, r7.xyzx, -r3.wwww, r5.xyzx
mad r2.w, r4.y, l(3.000000), l(-1.000000)
mad r4.yzw, cb1[57].xxyz, r2.wwww, r5.xxyz  // r4.y <- color.x; r4.z <- color.y; r4.w <- color.z
mul r5.xyz, r0.wwww, cb1[58].xyzx
mad r4.yzw, r5.xxyz, -r3.wwww, r4.yyzw
mad r0.w, r0.w, r0.w, -r4.x
mad r4.xyz, cb1[59].xyzx, r0.wwww, r4.yzwy  // r4.x <- color.x; r4.y <- color.y; r4.z <- color.z

#line 534
mul r4.xyz, r4.xyzx, cb1[64].xxxx  // r4.x <- streams.envLightDiffuseColor_id45.x; r4.y <- streams.envLightDiffuseColor_id45.y; r4.z <- streams.envLightDiffuseColor_id45.z
dp3 r0.w, -r3.xyzx, r0.xyzx
add r0.w, r0.w, r0.w
mad r0.xyz, r0.xyzx, -r0.wwww, -r3.xyzx  // r0.x <- sampleDirection.x; r0.y <- sampleDirection.y; r0.z <- sampleDirection.z
dp3 r3.x, r0.xyzx, cb1[60].xyzx  // r3.x <- sampleDirection.x
dp3 r3.y, r0.xyzx, cb1[61].xyzx  // r3.y <- sampleDirection.y
dp3 r0.x, r0.xyzx, cb1[62].xyzx  // r0.x <- sampleDirection.z
mov r3.z, -r0.x  // r3.z <- sampleDirection.z

#line 361
sqrt r0.x, r1.x
mul r0.x, r0.x, cb1[59].w  // r0.x <- mipLevel
sample_l_indexable(texturecube)(float,float,float,float) r0.xyz, r3.xyzx, t6.xyzw, s0, r0.x  // r0.x <- <Compute_id258 return value>.x; r0.y <- <Compute_id258 return value>.y; r0.z <- <Compute_id258 return value>.z

#line 538
mul r0.xyz, r0.xyzx, cb1[64].xxxx  // r0.x <- streams.envLightSpecularColor_id46.x; r0.y <- streams.envLightSpecularColor_id46.y; r0.z <- streams.envLightSpecularColor_id46.z

#line 782
mad r2.xyz, r6.xyzx, r4.xyzx, r2.xyzx

#line 786
mad r0.xyz, r1.yzwy, r0.xyzx, r2.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 789
mad o0.xyz, r13.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 973
mov o0.w, cb0[0].w
ret 
// Approximately 484 instruction slots used
***************************
*************************/
const static uint ClusterSize2_id86 = 64;
const static int TMaxLightCount_id99 = 1;
const static int TCascadeCountBase_id162 = 4;
const static int TLightCountBase_id163 = 1;
const static int TCascadeCount_id167 = 4;
const static int TLightCount_id168 = 1;
const static bool TBlendCascades_id169 = true;
const static bool TDepthRangeAuto_id170 = true;
const static bool TCascadeDebug_id171 = false;
const static int TFilterSize_id173 = 5;
const static int TOrder_id176 = 3;
const static bool TIsNormalXY1_id191 = true;
const static bool TScaleAndBias_id192 = true;
const static bool TInvertY_id193 = false;
const static bool TInvert_id196 = false;
const static bool TIsEnergyConservative_id202 = false;
static const float PI_id204 = 3.14159265358979323846;
SamplerState LinearSampler_id134 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id136 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
Texture2D Texture_id186;
SamplerState Sampler_id187;
Texture3D<uint2> LightClusters_id89;
Buffer<uint> LightIndices_id90;
Buffer<float4> PointLights_id94;
Buffer<float4> SpotLights_id97;
Texture2D ShadowMapTexture_id101;
TextureCube CubeMap_id179;
struct PS_STREAMS 
{
    float3 meshNormal_id14;
    float4 meshTangent_id15;
    float4 PositionWS_id19;
    float2 TexCoord_id152;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
    float3x3 tangentToWorld_id17;
    float3 viewWS_id65;
    float3 shadingColor_id70;
    float matBlend_id41;
    float3 matNormal_id49;
    float4 matColorBase_id50;
    float4 matDiffuse_id51;
    float3 matDiffuseVisible_id66;
    float3 matSpecular_id53;
    float3 matSpecularVisible_id68;
    float matSpecularIntensity_id54;
    float matGlossiness_id52;
    float alphaRoughness_id67;
    float matAmbientOcclusion_id55;
    float matAmbientOcclusionDirectLightingFactor_id56;
    float matCavity_id57;
    float matCavityDiffuse_id58;
    float matCavitySpecular_id59;
    float4 matEmissive_id60;
    float matEmissiveIntensity_id61;
    float2 matDiffuseSpecularAlphaBlend_id62;
    float3 matAlphaBlendColor_id63;
    float matAlphaDiscard_id64;
    float shadingColorAlpha_id71;
    float3 normalWS_id16;
    float3 lightDirectionWS_id42;
    float3 lightColor_id43;
    float3 lightColorNdotL_id44;
    float3 envLightDiffuseColor_id45;
    float3 envLightSpecularColor_id46;
    float lightDirectAmbientOcclusion_id48;
    float NdotL_id47;
    float NdotV_id69;
    uint2 lightData_id87;
    int lightIndex_id88;
    float3 shadowColor_id80;
    float3 H_id72;
    float NdotH_id73;
    float LdotH_id74;
    float VdotH_id75;
    float4 ColorTarget_id1;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id1 : SV_Target0;
};
struct VS_STREAMS 
{
    float4 Position_id18;
    uint4 BlendIndices_id39;
    float4 BlendWeights_id38;
    float3 meshNormal_id14;
    float4 meshTangent_id15;
    float2 TexCoord_id152;
    float4x4 skinningBlendMatrix_id40;
    float4 PositionH_id21;
    float3 normalWS_id16;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id19 : POSITION_WS;
    float3 meshNormal_id14 : NORMAL;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id20 : DEPTH_VS;
    float4 meshTangent_id15 : TANGENT;
    float2 TexCoord_id152 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    uint4 BlendIndices_id39 : BLENDINDICES;
    float4 BlendWeights_id38 : BLENDWEIGHT;
    float3 meshNormal_id14 : NORMAL;
    float4 meshTangent_id15 : TANGENT;
    float2 TexCoord_id152 : TEXCOORD0;
};
struct PointLightData 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct PointLightDataInternal 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct SpotLightData 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
struct SpotLightDataInternal 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
struct DirectionalLightData 
{
    float3 DirectionWS;
    float3 Color;
};
cbuffer PerDraw 
{
    float4x4 World_id29;
    float4x4 WorldInverse_id30;
    float4x4 WorldInverseTranspose_id31;
    float4x4 WorldView_id32;
    float4x4 WorldViewInverse_id33;
    float4x4 WorldViewProjection_id34;
    float3 WorldScale_id35;
    float4 EyeMS_id36;
    float4x4 BlendMatrixArray_id37[56];
};
cbuffer PerMaterial 
{
    float4 constantColor_id184;
    float2 scale_id189;
    float2 offset_id190;
    float constantFloat_id195;
    float constantFloat_id198;
};
cbuffer PerView 
{
    float4x4 View_id22;
    float4x4 ViewInverse_id23;
    float4x4 Projection_id24;
    float4x4 ProjectionInverse_id25;
    float4x4 ViewProjection_id26;
    float2 ProjScreenRay_id27;
    float4 Eye_id28;
    float NearClipPlane_id81 = 1.0f;
    float FarClipPlane_id82 = 100.0f;
    float2 ZProjection_id83;
    float2 ViewSize_id84;
    float AspectRatio_id85;
    float ClusterDepthScale_id91;
    float ClusterDepthBias_id92;
    int LightCount_id98;
    DirectionalLightData Lights_id100[TMaxLightCount_id99];
    float2 ShadowMapTextureSize_id102;
    float2 ShadowMapTextureTexelSize_id103;
    float4x4 WorldToShadowCascadeUV_id164[TCascadeCountBase_id162 * TLightCountBase_id163];
    float DepthBiases_id165[TLightCountBase_id163];
    float OffsetScales_id166[TLightCountBase_id163];
    float CascadeDepthSplits_id172[TCascadeCount_id167 * TLightCount_id168];
    float Bias_id174;
    float3 AmbientLight_id175;
    float3 SphericalColors_id177[TOrder_id176 * TOrder_id176];
    float MipCount_id178;
    float4x4 SkyMatrix_id180;
    float Intensity_id181;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id105;
    float2 Texture1TexelSize_id107;
    float2 Texture2TexelSize_id109;
    float2 Texture3TexelSize_id111;
    float2 Texture4TexelSize_id113;
    float2 Texture5TexelSize_id115;
    float2 Texture6TexelSize_id117;
    float2 Texture7TexelSize_id119;
    float2 Texture8TexelSize_id121;
    float2 Texture9TexelSize_id123;
};
float SampleTextureAndCompare_id107(float2 position, float positionDepth)
{
    return ShadowMapTexture_id101.SampleCmp(LinearClampCompareLessEqualSampler_id136, position, positionDepth);
}
float SmoothDistanceAttenuation_id91(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id83(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float FilterShadow_id103(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 uv = position * ShadowMapTextureSize_id102;
    float2 base_uv;
    base_uv.x = floor(uv.x + 0.5);
    base_uv.y = floor(uv.y + 0.5);
    float s = (uv.x + 0.5 - base_uv.x);
    float t = (uv.y + 0.5 - base_uv.y);
    base_uv -= float2(0.5, 0.5);
    base_uv *= ShadowMapTextureTexelSize_id103;

    {
        float uw0 = (4 - 3 * s);
        float uw1 = 7;
        float uw2 = (1 + 3 * s);
        float u0 = (3 - 2 * s) / uw0 - 2;
        float u1 = (3 + s) / uw1;
        float u2 = s / uw2 + 2;
        float vw0 = (4 - 3 * t);
        float vw1 = 7;
        float vw2 = (1 + 3 * t);
        float v0 = (3 - 2 * t) / vw0 - 2;
        float v1 = (3 + t) / vw1;
        float v2 = t / vw2 + 2;
        shadow += uw0 * vw0 * SampleTextureAndCompare_id107(base_uv + float2(u0, v0) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow += uw1 * vw0 * SampleTextureAndCompare_id107(base_uv + float2(u1, v0) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow += uw2 * vw0 * SampleTextureAndCompare_id107(base_uv + float2(u2, v0) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow += uw0 * vw1 * SampleTextureAndCompare_id107(base_uv + float2(u0, v1) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow += uw1 * vw1 * SampleTextureAndCompare_id107(base_uv + float2(u1, v1) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow += uw2 * vw1 * SampleTextureAndCompare_id107(base_uv + float2(u2, v1) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow += uw0 * vw2 * SampleTextureAndCompare_id107(base_uv + float2(u0, v2) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow += uw1 * vw2 * SampleTextureAndCompare_id107(base_uv + float2(u1, v2) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow += uw2 * vw2 * SampleTextureAndCompare_id107(base_uv + float2(u2, v2) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow /= 144.0f;
    }
    return shadow;
}
float GetAngleAttenuation_id93(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id92(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id91(d2, lightInvSquareRadius);
    return attenuation;
}
float VisibilityhSchlickGGX_id197(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id179(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float GetDistanceAttenuation_id84(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id83(d2, lightInvSquareRadius);
    return attenuation;
}
float ComputeShadowFromCascade_id106(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1), WorldToShadowCascadeUV_id164[cascadeIndex + lightIndex * TCascadeCountBase_id162]);
    shadowPosition.z -= DepthBiases_id165[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id103(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id105(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id103.x * offsetScale * normalOffsetScale * normal;
}
void ComputeShadow_id104(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id80 = 1.0f;
}
void ProcessLight_id94(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = light.AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -light.DirectionWS;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id92(lightVector, lightInvSquareRadius);
    attenuation *= GetAngleAttenuation_id93(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    streams.lightColor_id43 = light.Color * attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float NormalDistributionGGX_id213(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    return alphaR2 / (PI_id204 * pow(max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001), 2.0f));
}
float VisibilitySmithSchlickGGX_id199(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id197(alphaR, nDotL) * VisibilityhSchlickGGX_id197(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id185(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id179(f0, 1.0f, lOrVDotH);
}
void ProcessLight_id86(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id84(lightVector, lightInvSquareRadius);
    streams.lightColor_id43 = light.Color * attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float4 Compute_id258(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id67;
    float mipLevel = sqrt(alpha) * MipCount_id178;
    return CubeMap_id179.SampleLevel(LinearSampler_id134, direction, mipLevel);
}
float4 Compute_id253(float3 direction)
{
    float x = direction.x;
    float y = direction.y;
    float z = direction.z;
    float x2 = x * x;
    float y2 = y * y;
    float z2 = z * z;
    float3 color = SphericalColors_id177[0];

    {
        color += SphericalColors_id177[1] * y;
        color += SphericalColors_id177[2] * z;
        color += SphericalColors_id177[3] * x;

        {
            color += SphericalColors_id177[4] * y * x;
            color += SphericalColors_id177[5] * y * z;
            color += SphericalColors_id177[6] * (3.0 * z2 - 1.0);
            color += SphericalColors_id177[7] * x * z;
            color += SphericalColors_id177[8] * (x2 - y2);
        }
    }
    return float4(color, 1);
}
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id214(float3 specularColor, float alphaR, float nDotV)
{
    float x = 1 - alphaR;
    float y = nDotV;
    float b1 = -0.1688;
    float b2 = 1.895;
    float b3 = 0.9903;
    float b4 = -4.853;
    float b5 = 8.404;
    float b6 = -5.069;
    float bias = saturate(min(b1 * x + b2 * x * x, b3 + b4 * y + b5 * y * y + b6 * y * y * y));
    float d0 = 0.6045;
    float d1 = 1.699;
    float d2 = -0.5228;
    float d3 = -3.603;
    float d4 = 1.404;
    float d5 = 0.1939;
    float d6 = 2.661;
    float delta = saturate(d0 + d1 * x + d2 * y + d3 * x * x + d4 * x * y + d5 * y * y + d6 * x * x * x);
    float scale = delta - bias;
    bias *= saturate(50.0 * specularColor.y);
    return specularColor * scale + bias;
}
void ComputeShadow_id98(inout PS_STREAMS streams, int lightIndex)
{
    ComputeShadow_id104(streams, lightIndex);
    int cascadeIndexBase = lightIndex * TCascadeCount_id167;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id167 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id20 > CascadeDepthSplits_id172[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float shadow = 1.0;
    float3 shadowPosition = streams.PositionWS_id19.xyz;
    shadowPosition += GetShadowPositionOffset_id105(OffsetScales_id166[lightIndex], streams.NdotL_id47, streams.normalWS_id16);
    if (cascadeIndex < TCascadeCount_id167)
    {
        shadow = ComputeShadowFromCascade_id106(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id172[cascadeIndexBase + cascadeIndex];
        float splitSize = cascadeIndex == 0 ? nextSplit : nextSplit - CascadeDepthSplits_id172[cascadeIndexBase + cascadeIndex - 1];
        float splitDist = (nextSplit - streams.DepthVS_id20) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id167 - 1)
            {
            }
            else if (TBlendCascades_id169)
            {
                float nextShadow = ComputeShadowFromCascade_id106(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }

    {
        streams.shadowColor_id80 = shadow;
    }
}
void PrepareDirectLightCore_id97(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id43 = Lights_id100[lightIndex].Color;
    streams.lightDirectionWS_id42 = -Lights_id100[lightIndex].DirectionWS;
}
void ComputeShadow_id90(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id80 = 1.0f;
}
void PrepareDirectLightCore_id89(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id90.Load(streams.lightIndex_id88);
    streams.lightIndex_id88++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id97.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id97.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id97.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id97.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id94(streams, spotLight);
}
float Compute_id337(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id213(streams.alphaRoughness_id67, streams.NdotH_id73);
}
float Compute_id308(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id199(streams.alphaRoughness_id67, streams.NdotL_id47, streams.NdotV_id69);
}
float3 Compute_id279(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id185(f0, streams.LdotH_id74);
}
void ComputeShadow_id82(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id80 = 1.0f;
}
void PrepareDirectLightCore_id81(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id90.Load(streams.lightIndex_id88);
    streams.lightIndex_id88++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id94.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id94.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id86(streams, pointLight);
}
void PrepareLightData_id85(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id83.y / (projectedDepth - ZProjection_id83.x);
    int2 shadingPosition = int2(streams.ShadingPosition_id0.xy);
    int slice = int(max(log2(depth * ClusterDepthScale_id91 + ClusterDepthBias_id92), 0));
    streams.lightData_id87 = LightClusters_id89.Load(int4(shadingPosition / ClusterSize2_id86, slice, 0));
    streams.lightIndex_id88 = streams.lightData_id87.x;
}
float GetFilterSquareRoughnessAdjustment_id151(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id49);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id217()
{
}
void PreTransformPosition_id4()
{
}
void PrepareEnvironmentLight_id270(inout PS_STREAMS streams)
{
    float ambientAccessibility = streams.matAmbientOcclusion_id55;
    float3 sampleDirection = mul(streams.normalWS_id16, (float3x3)SkyMatrix_id180);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id45 = Compute_id253(sampleDirection).rgb * Intensity_id181 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id62.x;
    sampleDirection = reflect(-streams.viewWS_id65, streams.normalWS_id16);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id180);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id46 = Compute_id258(streams, sampleDirection).rgb * Intensity_id181 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id62.y;
}
float3 ComputeEnvironmentLightContribution_id416(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id68;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id214(specularColor, streams.alphaRoughness_id67, streams.NdotV_id69) * streams.envLightSpecularColor_id46;
}
float3 ComputeEnvironmentLightContribution_id367(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id66;
    return diffuseColor * streams.envLightDiffuseColor_id45;
}
void PrepareEnvironmentLight_id264(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id175 * streams.matAmbientOcclusion_id55;
    streams.envLightDiffuseColor_id45 = lightColor;
    streams.envLightSpecularColor_id46 = lightColor;
}
void PrepareDirectLight_id247(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id97(streams, lightIndex);
    streams.NdotL_id47 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id42), 0.0001f);
    ComputeShadow_id98(streams, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.shadowColor_id80 * streams.NdotL_id47 * streams.lightDirectAmbientOcclusion_id48;
}
int GetLightCount_id248()
{
    return LightCount_id98;
}
int GetMaxLightCount_id249()
{
    return TMaxLightCount_id99;
}
void PrepareDirectLights_id245()
{
}
void PrepareDirectLight_id238(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id89(streams, lightIndex);
    streams.NdotL_id47 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id42), 0.0001f);
    ComputeShadow_id90(streams, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.shadowColor_id80 * streams.NdotL_id47 * streams.lightDirectAmbientOcclusion_id48;
}
int GetLightCount_id241(inout PS_STREAMS streams)
{
    return streams.lightData_id87.y >> 16;
}
int GetMaxLightCount_id240(inout PS_STREAMS streams)
{
    return streams.lightData_id87.y >> 16;
}
void PrepareDirectLights_id236()
{
}
float3 ComputeDirectLightContribution_id415(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id68;
    float3 fresnel = Compute_id279(streams, specularColor);
    float geometricShadowing = Compute_id308(streams);
    float normalDistribution = Compute_id337(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id62.y;
}
float3 ComputeDirectLightContribution_id366(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id66;
    return diffuseColor / PI_id204 * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id62.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id72 = normalize(streams.viewWS_id65 + streams.lightDirectionWS_id42);
    streams.NdotH_id73 = max(dot(streams.normalWS_id16, streams.H_id72), 0.0001f);
    streams.LdotH_id74 = max(dot(streams.lightDirectionWS_id42, streams.H_id72), 0.0001f);
    streams.VdotH_id75 = streams.LdotH_id74;
}
void PrepareDirectLight_id228(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id81(streams, lightIndex);
    streams.NdotL_id47 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id42), 0.0001f);
    ComputeShadow_id82(streams, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.shadowColor_id80 * streams.NdotL_id47 * streams.lightDirectAmbientOcclusion_id48;
}
int GetLightCount_id232(inout PS_STREAMS streams)
{
    return streams.lightData_id87.y & 0xFFFF;
}
int GetMaxLightCount_id231(inout PS_STREAMS streams)
{
    return streams.lightData_id87.y & 0xFFFF;
}
void PrepareDirectLights_id230(inout PS_STREAMS streams)
{
    PrepareLightData_id85(streams);
}
void PrepareMaterialForLightingAndShading_id216(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id48 = lerp(1.0, streams.matAmbientOcclusion_id55, streams.matAmbientOcclusionDirectLightingFactor_id56);
    streams.matDiffuseVisible_id66 = streams.matDiffuse_id51.rgb * lerp(1.0f, streams.matCavity_id57, streams.matCavityDiffuse_id58) * streams.matDiffuseSpecularAlphaBlend_id62.r * streams.matAlphaBlendColor_id63;
    streams.matSpecularVisible_id68 = streams.matSpecular_id53.rgb * streams.matSpecularIntensity_id54 * lerp(1.0f, streams.matCavity_id57, streams.matCavitySpecular_id59) * streams.matDiffuseSpecularAlphaBlend_id62.g * streams.matAlphaBlendColor_id63;
    streams.NdotV_id69 = max(dot(streams.normalWS_id16, streams.viewWS_id65), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id52;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id151(streams, streams.matNormal_id49);
    streams.alphaRoughness_id67 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id215(inout PS_STREAMS streams)
{
    streams.lightDirectionWS_id42 = 0;
    streams.lightColor_id43 = 0;
    streams.lightColorNdotL_id44 = 0;
    streams.envLightDiffuseColor_id45 = 0;
    streams.envLightSpecularColor_id46 = 0;
    streams.lightDirectAmbientOcclusion_id48 = 1.0f;
    streams.NdotL_id47 = 0;
}
void UpdateNormalFromTangentSpace_id12(inout PS_STREAMS streams, float3 normalInTangentSpace)
{
    streams.normalWS_id16 = normalize(mul(normalInTangentSpace, streams.tangentToWorld_id17));
}
float4 Compute_id277()
{
    return float4(constantFloat_id198, constantFloat_id198, constantFloat_id198, constantFloat_id198);
}
float4 Compute_id275()
{
    return float4(constantFloat_id195, constantFloat_id195, constantFloat_id195, constantFloat_id195);
}
float4 Compute_id273(inout PS_STREAMS streams)
{
    return Texture_id186.Sample(Sampler_id187, streams.TexCoord_id152 * scale_id189 + offset_id190).rgba;
}
float4 Compute_id271()
{
    return constantColor_id184;
}
void ResetStream_id220(inout PS_STREAMS streams)
{
    ResetStream_id217();
    streams.matBlend_id41 = 0.0f;
}
float4x4 GetBlendMatrix_id19(int index)
{
    return BlendMatrixArray_id37[index];
}
void PreTransformPosition_id13(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id19 = mul(streams.Position_id18, World_id29);
}
void Compute_id451(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id12(streams, streams.matNormal_id49);
    ResetLightStream_id215(streams);
    PrepareMaterialForLightingAndShading_id216(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id230(streams);
        const int maxLightCount = GetMaxLightCount_id231(streams);
        int count = GetLightCount_id232(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id228(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id366(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id415(streams);
            }
        }
    }

    {
        PrepareDirectLights_id236();
        const int maxLightCount = GetMaxLightCount_id240(streams);
        int count = GetLightCount_id241(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id238(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id366(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id415(streams);
            }
        }
    }

    {
        PrepareDirectLights_id245();
        const int maxLightCount = GetMaxLightCount_id249();
        int count = GetLightCount_id248();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id247(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id366(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id415(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id264(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id367(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id416(streams);
        }
    }

    {
        PrepareEnvironmentLight_id270(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id367(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id416(streams);
        }
    }
    streams.shadingColor_id70 += directLightingContribution * PI_id204 + environmentLightingContribution;
    streams.shadingColorAlpha_id71 = streams.matDiffuse_id51.a;
}
void Compute_id436(inout PS_STREAMS streams)
{
    float metalness = Compute_id277().r;
    streams.matSpecular_id53 = lerp(0.02, streams.matDiffuse_id51.rgb, metalness);
    streams.matDiffuse_id51.rgb = lerp(streams.matDiffuse_id51.rgb, 0, metalness);
}
void Compute_id431(inout PS_STREAMS streams)
{
    float glossiness = Compute_id275().r;
    streams.matGlossiness_id52 = glossiness;
}
void Compute_id426(inout PS_STREAMS streams)
{
    float4 normal = Compute_id273(streams);

    {
        normal = (2.0f * normal) - 1.0f;
    }

    {
        normal.z = sqrt(max(0, 1.0f - (normal.x * normal.x + normal.y * normal.y)));
    }
    streams.matNormal_id49 = normal.xyz;
}
void Compute_id421(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id271();
    streams.matDiffuse_id51 = colorBase;
    streams.matColorBase_id50 = colorBase;
}
void ResetStream_id222(inout PS_STREAMS streams)
{
    ResetStream_id220(streams);
    streams.matNormal_id49 = float3(0, 0, 1);
    streams.matColorBase_id50 = 0.0f;
    streams.matDiffuse_id51 = 0.0f;
    streams.matDiffuseVisible_id66 = 0.0f;
    streams.matSpecular_id53 = 0.0f;
    streams.matSpecularVisible_id68 = 0.0f;
    streams.matSpecularIntensity_id54 = 1.0f;
    streams.matGlossiness_id52 = 0.0f;
    streams.alphaRoughness_id67 = 1.0f;
    streams.matAmbientOcclusion_id55 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id56 = 0.0f;
    streams.matCavity_id57 = 1.0f;
    streams.matCavityDiffuse_id58 = 0.0f;
    streams.matCavitySpecular_id59 = 0.0f;
    streams.matEmissive_id60 = 0.0f;
    streams.matEmissiveIntensity_id61 = 0.0f;
    streams.matDiffuseSpecularAlphaBlend_id62 = 1.0f;
    streams.matAlphaBlendColor_id63 = 1.0f;
    streams.matAlphaDiscard_id64 = 0.0f;
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id20(inout VS_STREAMS streams)
{
    PreTransformPosition_id13(streams);
    streams.skinningBlendMatrix_id40 = GetBlendMatrix_id19(streams.BlendIndices_id39[0]) * streams.BlendWeights_id38[0] + GetBlendMatrix_id19(streams.BlendIndices_id39[1]) * streams.BlendWeights_id38[1] + GetBlendMatrix_id19(streams.BlendIndices_id39[2]) * streams.BlendWeights_id38[2] + GetBlendMatrix_id19(streams.BlendIndices_id39[3]) * streams.BlendWeights_id38[3];
    float4 blendPos = mul(float4(streams.Position_id18.xyz, 1.0f), streams.skinningBlendMatrix_id40);
    blendPos /= blendPos.w;
    streams.PositionWS_id19 = blendPos;
}
void Compute_id78(inout PS_STREAMS streams)
{

    {
        Compute_id421(streams);
    }

    {
        Compute_id426(streams);
    }

    {
        Compute_id431(streams);
    }

    {
        Compute_id436(streams);
    }

    {
        Compute_id451(streams);
    }
}
void ResetStream_id77(inout PS_STREAMS streams)
{
    ResetStream_id222(streams);
    streams.shadingColorAlpha_id71 = 1.0f;
}
float3x3 GetTangentWorldTransform_id22()
{
    return float3x3(1, 0, 0, 0, 1, 0, 0, 0, 1);
}
float3x3 GetTangentMatrix_id9(inout PS_STREAMS streams)
{
    float3x3 tangentMatrix;
    streams.meshNormal_id14 = normalize(streams.meshNormal_id14);
    float3 tangent = normalize(streams.meshTangent_id15.xyz);
    float3 bitangent = streams.meshTangent_id15.w * cross(streams.meshNormal_id14, tangent);
    tangentMatrix = float3x3(tangent, bitangent, streams.meshNormal_id14);
    return tangentMatrix;
}
void PostTransformPosition_id14(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = mul(streams.PositionWS_id19, ViewProjection_id26);
    streams.PositionH_id21 = streams.ShadingPosition_id0;
    streams.DepthVS_id20 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id21(inout VS_STREAMS streams)
{
    PreTransformPosition_id20(streams);
    streams.meshNormal_id14 = normalize(mul(streams.meshNormal_id14, (float3x3)streams.skinningBlendMatrix_id40));
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id65 = normalize(Eye_id28.xyz - streams.PositionWS_id19.xyz);
    streams.shadingColor_id70 = 0;
    ResetStream_id77(streams);
    Compute_id78(streams);
    return float4(streams.shadingColor_id70, streams.shadingColorAlpha_id71);
}
void PSMain_id1()
{
}
void UpdateTangentToWorld_id11(inout PS_STREAMS streams)
{
    float3x3 tangentMatrix = GetTangentMatrix_id9(streams);
    float3x3 tangentWorldTransform = GetTangentWorldTransform_id22();
    streams.tangentToWorld_id17 = mul(tangentMatrix, tangentWorldTransform);
}
void GenerateNormal_PS_id16()
{
}
void BaseTransformVS_id7(inout VS_STREAMS streams)
{
    PreTransformPosition_id21(streams);
    TransformPosition_id5();
    PostTransformPosition_id14(streams);
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id1 = Shading_id31(streams);
}
void GenerateNormal_PS_id17(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id16();
    UpdateTangentToWorld_id11(streams);
}
void GenerateNormal_VS_id15(inout VS_STREAMS streams)
{
    streams.normalWS_id16 = 0.0f;
}
void VSMain_id8(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id7(streams);
}
PS_OUTPUT PSMain(VS_OUTPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id19 = __input__.PositionWS_id19;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id20 = __input__.DepthVS_id20;
    streams.meshTangent_id15 = __input__.meshTangent_id15;
    streams.TexCoord_id152 = __input__.TexCoord_id152;
    GenerateNormal_PS_id17(streams);
    PSMain_id3(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id1 = streams.ColorTarget_id1;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id18 = __input__.Position_id18;
    streams.BlendIndices_id39 = __input__.BlendIndices_id39;
    streams.BlendWeights_id38 = __input__.BlendWeights_id38;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    streams.meshTangent_id15 = __input__.meshTangent_id15;
    streams.TexCoord_id152 = __input__.TexCoord_id152;
    VSMain_id8(streams);
    GenerateNormal_VS_id15(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.meshNormal_id14 = streams.meshNormal_id14;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id20 = streams.DepthVS_id20;
    __output__.meshTangent_id15 = streams.meshTangent_id15;
    __output__.TexCoord_id152 = streams.TexCoord_id152;
    return __output__;
}
