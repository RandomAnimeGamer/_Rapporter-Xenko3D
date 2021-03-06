/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoEditorForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecular,rgb> [{computeColorSource = ComputeColorConstantColorLink<Material.SpecularValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecularIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.SpecularIntensityValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: LightClusteredPointGroup<64>, LightClusteredSpotGroup<64>, mixin LightDirectionalGroup<8>, mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false>, ShadowMapFilterPcf<PerView.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient, xkfx LightSkyboxEffect
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id29 => Transformation.World
@C    WorldInverse_id30 => Transformation.WorldInverse
@C    WorldInverseTranspose_id31 => Transformation.WorldInverseTranspose
@C    WorldView_id32 => Transformation.WorldView
@C    WorldViewInverse_id33 => Transformation.WorldViewInverse
@C    WorldViewProjection_id34 => Transformation.WorldViewProjection
@C    WorldScale_id35 => Transformation.WorldScale
@C    EyeMS_id36 => Transformation.EyeMS
cbuffer PerMaterial [Size: 48]
@C    constantColor_id183 => Material.DiffuseValue
@C    constantColor_id188 => Material.SpecularValue
@C    constantFloat_id190 => Material.SpecularIntensityValue
cbuffer PerView [Size: 1296]
@C    View_id22 => Transformation.View
@C    ViewInverse_id23 => Transformation.ViewInverse
@C    Projection_id24 => Transformation.Projection
@C    ProjectionInverse_id25 => Transformation.ProjectionInverse
@C    ViewProjection_id26 => Transformation.ViewProjection
@C    ProjScreenRay_id27 => Transformation.ProjScreenRay
@C    Eye_id28 => Transformation.Eye
@C    NearClipPlane_id77 => Camera.NearClipPlane
@C    FarClipPlane_id78 => Camera.FarClipPlane
@C    ZProjection_id79 => Camera.ZProjection
@C    ViewSize_id80 => Camera.ViewSize
@C    AspectRatio_id81 => Camera.AspectRatio
@C    ClusterDepthScale_id87 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id88 => LightClustered.ClusterDepthBias
@C    LightCount_id94 => DirectLightGroupPerView.LightCount.directLightGroups[2]
@C    Lights_id96 => LightDirectionalGroup.Lights.directLightGroups[2]
@C    LightCount_id97 => DirectLightGroupPerView.LightCount.directLightGroups[3]
@C    Lights_id99 => LightDirectionalGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id101 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id102 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadowCascadeUV_id163 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[3]
@C    DepthBiases_id164 => ShadowMapReceiverBase.DepthBiases.directLightGroups[3]
@C    OffsetScales_id165 => ShadowMapReceiverBase.OffsetScales.directLightGroups[3]
@C    CascadeDepthSplits_id171 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[3]
@C    Bias_id173 => ShadowMapFilterPcf.Bias.directLightGroups[3]
@C    AmbientLight_id174 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id176 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id177 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id179 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id180 => LightSkyboxShader.Intensity.environmentLights[1]
***************************
******  Resources    ******
***************************
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id100 => ShadowMap.Texture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id100 => ShadowMap.Texture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id178 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id178 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id133 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id135 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: Pixel, Slot: (0-0)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: Pixel, Slot: (1-1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (2-2)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (3-3)]
@R    ShadowMapTexture_id100 => ShadowMap.Texture.directLightGroups[3] [Stage: Pixel, Slot: (4-4)]
@R    CubeMap_id178 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (5-5)]
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
@S    NormalFromMesh => cac9ac354def411344b0994c9fd56e66
@S    NormalBase => b70fd93cea3e78cb7e35bf33c5bc761d
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
@S    LightSpot => 79cce87c7d61f0fcb32b260513b6f8c2
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
@S    MaterialSurfaceSetStreamFromComputeColor => 1d00f7d823647b307a55871a0b3eba09
@S    IMaterialSurfaceVertex => 8e13e0524d4025cb811c673aeb77f45b
@S    MaterialVertexStream => fe2d4e2abe57231a93785fe59684b199
@S    MaterialDisplacementStream => 5112948b0773a844410cc7c3df78184a
@S    IMaterialSurfaceDomain => a787b7e989be07714532cd1ffc35ef2a
@S    MaterialDomainStream => 8be905888c6f3153139bc1fa900fdf5f
@S    MaterialTessellationStream => 87652904dbe93d91999520c7e41f52a1
@S    ComputeColorConstantFloatLink => a459500fd7f6c5988997e81bf766f988
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
@G    Vertex => f910411f39935729d6e97e9480f6b9de
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id29;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id30;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64
//   float4x4 WorldView_id32;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id33;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id34; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id35;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id36;                 // Offset:  400 Size:    16 [unused]
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
//   float NearClipPlane_id77;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id78;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id79;           // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id80;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id81;            // Offset:  376 Size:     4 [unused]
//   float ClusterDepthScale_id87;      // Offset:  380 Size:     4 [unused]
//   float ClusterDepthBias_id88;       // Offset:  384 Size:     4 [unused]
//   int LightCount_id94;               // Offset:  388 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  400
//       float3 Color;                  // Offset:  416
//
//   } Lights_id96[8];                  // Offset:  400 Size:   252 [unused]
//   int LightCount_id97;               // Offset:  652 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  656
//       float3 Color;                  // Offset:  672
//
//   } Lights_id99;                     // Offset:  656 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id101; // Offset:  688 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id102;// Offset:  696 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id163[4];// Offset:  704 Size:   256 [unused]
//   float DepthBiases_id164;           // Offset:  960 Size:     4 [unused]
//   float OffsetScales_id165;          // Offset:  976 Size:     4 [unused]
//   float CascadeDepthSplits_id171[4]; // Offset:  992 Size:    52 [unused]
//   float Bias_id173;                  // Offset: 1044 Size:     4 [unused]
//   float3 AmbientLight_id174;         // Offset: 1056 Size:    12 [unused]
//   float3 SphericalColors_id176[9];   // Offset: 1072 Size:   140 [unused]
//   float MipCount_id177;              // Offset: 1212 Size:     4 [unused]
//   float4x4 SkyMatrix_id179;          // Offset: 1216 Size:    64 [unused]
//   float Intensity_id180;             // Offset: 1280 Size:     4 [unused]
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
// POSITION                 0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyz         1     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMALWS                 0    yzw        2     NONE   float    yzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[11], immediateIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.x
dcl_output o2.yzw
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.meshNormal_id14.x; v1.y <- __input__.meshNormal_id14.y; v1.z <- __input__.meshNormal_id14.z; 
//   o2.x <- <VSMain return value>.DepthVS_id20; o2.y <- <VSMain return value>.normalWS_id16.x; o2.z <- <VSMain return value>.normalWS_id16.y; o2.w <- <VSMain return value>.normalWS_id16.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 885 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\RapporterV2.Windows\log\shader_XenkoEditorForwardShadingEffect_3e1108afbbb72ad2d8a28e6e143df466.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 950
mov o0.xyzw, r0.xyzw

#line 875
dp4 r1.x, r0.xyzw, cb1[19].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 950
mov o1.w, r1.x
mov o2.x, r1.x

#line 875
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw

#line 918
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 950
ret 
// Approximately 15 instruction slots used
@G    Pixel => c713012fdc17b5fa6415383cbbae1022
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id183;        // Offset:    0 Size:    16
//   float4 constantColor_id188;        // Offset:   16 Size:    16
//   float constantFloat_id190;         // Offset:   32 Size:     4
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
//   float NearClipPlane_id77;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id78;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id79;           // Offset:  360 Size:     8
//   float2 ViewSize_id80;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id81;            // Offset:  376 Size:     4 [unused]
//   float ClusterDepthScale_id87;      // Offset:  380 Size:     4
//   float ClusterDepthBias_id88;       // Offset:  384 Size:     4
//   int LightCount_id94;               // Offset:  388 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  400
//       float3 Color;                  // Offset:  416
//
//   } Lights_id96[8];                  // Offset:  400 Size:   252
//   int LightCount_id97;               // Offset:  652 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  656
//       float3 Color;                  // Offset:  672
//
//   } Lights_id99;                     // Offset:  656 Size:    28
//   float2 ShadowMapTextureSize_id101; // Offset:  688 Size:     8
//   float2 ShadowMapTextureTexelSize_id102;// Offset:  696 Size:     8
//   float4x4 WorldToShadowCascadeUV_id163[4];// Offset:  704 Size:   256
//   float DepthBiases_id164;           // Offset:  960 Size:     4
//   float OffsetScales_id165;          // Offset:  976 Size:     4
//   float CascadeDepthSplits_id171[4]; // Offset:  992 Size:    52
//   float Bias_id173;                  // Offset: 1044 Size:     4 [unused]
//   float3 AmbientLight_id174;         // Offset: 1056 Size:    12
//   float3 SphericalColors_id176[9];   // Offset: 1072 Size:   140
//   float MipCount_id177;              // Offset: 1212 Size:     4
//   float4x4 SkyMatrix_id179;          // Offset: 1216 Size:    64
//   float Intensity_id180;             // Offset: 1280 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// LinearSampler_id133               sampler      NA          NA    0        1
// LinearClampCompareLessEqualSampler_id135  sampler_c      NA          NA    1        1
// LightClusters_id85                texture   uint2          3d    0        1
// LightIndices_id86                 texture    uint         buf    1        1
// PointLights_id90                  texture  float4         buf    2        1
// SpotLights_id93                   texture  float4         buf    3        1
// ShadowMapTexture_id100            texture  float4          2d    4        1
// CubeMap_id178                     texture  float4        cube    5        1
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
// SV_Position              0   xyzw        1      POS   float   xyz 
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMALWS                 0    yzw        2     NONE   float    yzw
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
dcl_constantbuffer cb1[81], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_resource_texture3d (uint,uint,uint,uint) t0
dcl_resource_buffer (uint,uint,uint,uint) t1
dcl_resource_buffer (float,float,float,float) t2
dcl_resource_buffer (float,float,float,float) t3
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texturecube (float,float,float,float) t5
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.xyz, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_output o0.xyzw
dcl_temps 18
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id20; v2.y <- __input__.normalWS_id16.x; v2.z <- __input__.normalWS_id16.y; v2.w <- __input__.normalWS_id16.z; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 914 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\RapporterV2.Windows\log\shader_XenkoEditorForwardShadingEffect_3e1108afbbb72ad2d8a28e6e143df466.hlsl"
dp3 r0.x, v2.yzwy, v2.yzwy
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.yzwy  // r0.x <- streams.normalWS_id16.x; r0.y <- streams.normalWS_id16.y; r0.z <- streams.normalWS_id16.z

#line 889
add r1.xyz, -v0.xyzx, cb1[21].xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, r1.xyzx  // r1.x <- streams.viewWS_id61.x; r1.y <- streams.viewWS_id61.y; r1.z <- streams.viewWS_id61.z

#line 639
mul r2.xyz, cb0[1].xyzx, cb0[2].xxxx  // r2.x <- streams.matSpecularVisible_id64.x; r2.y <- streams.matSpecularVisible_id64.y; r2.z <- streams.matSpecularVisible_id64.z
dp3 r0.w, r0.xyzx, r1.xyzx
max r0.w, r0.w, l(0.000100)  // r0.w <- streams.NdotV_id65

#line 497
add r1.w, v1.z, -cb1[22].z
div r1.w, cb1[22].w, r1.w  // r1.w <- depth
ftoi r3.xy, v1.xyxx  // r3.x <- shadingPosition.x; r3.y <- shadingPosition.y
mad r1.w, r1.w, cb1[23].w, cb1[24].x
log r1.w, r1.w
max r1.w, r1.w, l(0.000000)
ftoi r4.z, r1.w  // r4.z <- slice
ushr r4.xy, r3.xyxx, l(6, 6, 0, 0)
mov r4.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r3.xy, r4.xyzw, t0.xyzw  // r3.x <- streams.lightData_id83.x; r3.y <- streams.lightData_id83.y

#line 629
and r1.w, r3.y, l(0x0000ffff)  // r1.w <- <GetMaxLightCount_id231 return value>

#line 687
mov r4.xyz, r0.xyzx  // r4.x <- streams.normalWS_id16.x; r4.y <- streams.normalWS_id16.y; r4.z <- streams.normalWS_id16.z
mov r4.w, v0.x  // r4.w <- streams.PositionWS_id19.x
mov r5.yz, v0.yyzy  // r5.y <- streams.PositionWS_id19.y; r5.z <- streams.PositionWS_id19.z
mov r5.w, r1.x  // r5.w <- streams.viewWS_id61.x
mov r6.yz, r1.yyzy  // r6.y <- streams.viewWS_id61.y; r6.z <- streams.viewWS_id61.z
mov r7.xy, cb0[0].xyxx  // r7.x <- streams.matDiffuseVisible_id62.x; r7.y <- streams.matDiffuseVisible_id62.y
mov r8.x, cb0[0].z  // r8.x <- streams.matDiffuseVisible_id62.z
mov r8.yzw, r2.xxyz  // r8.y <- streams.matSpecularVisible_id64.x; r8.z <- streams.matSpecularVisible_id64.y; r8.w <- streams.matSpecularVisible_id64.z
mov r9.z, r0.w  // r9.z <- streams.NdotV_id65
mov r9.x, r3.x  // r9.x <- streams.lightIndex_id84
mov r10.xyz, l(0,0,0,0)  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.z, r2.w, r1.w
  breakc_nz r3.z
  if_nz r3.z
    break 
  endif 

#line 484
  ld_indexable(buffer)(uint,uint,uint,uint) r3.z, r9.xxxx, t1.yzxw  // r3.z <- realLightIndex
  iadd r9.x, r9.x, l(1)  // r9.x <- streams.lightIndex_id84
  ishl r3.w, r3.z, l(1)
  ld_indexable(buffer)(float,float,float,float) r11.xyzw, r3.wwww, t2.xyzw  // r11.x <- pointLight1.x; r11.y <- pointLight1.y; r11.z <- pointLight1.z; r11.w <- pointLight1.w
  bfi r3.z, l(31), l(1), r3.z, l(1)
  ld_indexable(buffer)(float,float,float,float) r12.xyz, r3.zzzz, t2.xyzw  // r12.x <- pointLight2.x; r12.y <- pointLight2.y; r12.z <- pointLight2.z

#line 328
  mov r5.x, r4.w
  add r11.xyz, -r5.xyzx, r11.xyzx  // r11.x <- lightVector.x; r11.y <- lightVector.y; r11.z <- lightVector.z
  dp3 r3.z, r11.xyzx, r11.xyzx
  sqrt r3.w, r3.z  // r3.w <- lightVectorLength
  div r11.xyz, r11.xyzx, r3.wwww  // r11.x <- lightVectorNorm.x; r11.y <- lightVectorNorm.y; r11.z <- lightVectorNorm.z

#line 278
  max r3.w, r3.z, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 210
  mul r3.z, r11.w, r3.z  // r3.z <- factor
  mad r3.z, -r3.z, r3.z, l(1.000000)
  max r3.z, r3.z, l(0.000000)  // r3.z <- smoothFactor
  mul r3.z, r3.z, r3.z  // r3.z <- <SmoothDistanceAttenuation_id80 return value>

#line 279
  mul r3.z, r3.z, r3.w  // r3.z <- attenuation

#line 334
  mul r12.xyz, r3.zzzz, r12.xyzx  // r12.x <- streams.lightColor_id39.x; r12.y <- streams.lightColor_id39.y; r12.z <- streams.lightColor_id39.z

#line 619
  dp3 r3.z, r4.xyzx, r11.xyzx
  max r3.z, r3.z, l(0.000100)  // r3.z <- streams.NdotL_id43
  mul r12.xyz, r3.zzzz, r12.xyzx  // r12.x <- streams.lightColorNdotL_id40.x; r12.y <- streams.lightColorNdotL_id40.y; r12.z <- streams.lightColorNdotL_id40.z

#line 611
  mov r6.x, r5.w
  add r13.xyz, r11.xyzx, r6.xyzx
  dp3 r3.w, r13.xyzx, r13.xyzx
  rsq r3.w, r3.w
  mul r13.xyz, r3.wwww, r13.xyzx  // r13.x <- streams.H_id68.x; r13.y <- streams.H_id68.y; r13.z <- streams.H_id68.z
  dp3 r3.w, r11.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.LdotH_id70

#line 607
  mov r7.z, r8.x
  mul r11.xyz, r12.xyzx, r7.xyzx

#line 697
  mad r11.xyz, r11.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 273
  add r13.xyz, -r8.yzwy, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r5.x, r3.w, r3.w
  mul r5.x, r5.x, r5.x
  mul r3.w, r3.w, r5.x
  mad r13.xyz, r13.xyzx, r3.wwww, r8.yzwy  // r13.x <- <FresnelSchlick_id179 return value>.x; r13.y <- <FresnelSchlick_id179 return value>.y; r13.z <- <FresnelSchlick_id179 return value>.z

#line 269
  mad r3.w, r3.z, l(0.500000), l(0.500000)
  div r3.w, r3.z, r3.w  // r3.w <- <VisibilityhSchlickGGX_id197 return value>
  mad r5.x, r9.z, l(0.500000), l(0.500000)
  div r5.x, r9.z, r5.x  // r5.x <- <VisibilityhSchlickGGX_id197 return value>

#line 320
  mul r3.w, r3.w, r5.x
  mul r3.z, r9.z, r3.z
  div r3.z, r3.w, r3.z  // r3.z <- <VisibilitySmithSchlickGGX_id199 return value>

#line 601
  mul r13.xyz, r3.zzzz, r13.xyzx
  mul r12.xyz, r12.xyzx, r13.xyzx

#line 701
  mad r10.xyz, r12.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r11.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 687
  iadd r2.w, r2.w, l(1)

#line 703
endloop   // r9.x <- streams.lightIndex_id84

#line 590
ushr r1.w, r3.y, l(16)  // r1.w <- <GetMaxLightCount_id240 return value>

#line 711
mov r3.xyz, v0.xyzx  // r3.x <- streams.PositionWS_id19.x; r3.y <- streams.PositionWS_id19.y; r3.z <- streams.PositionWS_id19.z
mov r4.xyz, r0.xyzx
mov r5.xyz, r1.xyzx  // r5.x <- streams.viewWS_id61.x; r5.y <- streams.viewWS_id61.y; r5.z <- streams.viewWS_id61.z
mov r6.xyz, cb0[0].xyzx  // r6.x <- streams.matDiffuseVisible_id62.x; r6.y <- streams.matDiffuseVisible_id62.y; r6.z <- streams.matDiffuseVisible_id62.z
mov r7.xyz, r2.xyzx  // r7.x <- streams.matSpecularVisible_id64.x; r7.y <- streams.matSpecularVisible_id64.y; r7.z <- streams.matSpecularVisible_id64.z
mov r2.w, r0.w  // r2.w <- streams.NdotV_id65
mov r8.xyz, r10.xyzx  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z
mov r3.w, r9.x  // r3.w <- streams.lightIndex_id84
mov r4.w, l(0)  // r4.w <- i
loop 
  ige r5.w, r4.w, r1.w
  breakc_nz r5.w
  if_nz r5.w
    break 
  endif 

#line 453
  ld_indexable(buffer)(uint,uint,uint,uint) r5.w, r3.wwww, t1.yzwx  // r5.w <- realLightIndex
  iadd r3.w, r3.w, l(1)  // r3.w <- streams.lightIndex_id84
  ishl r6.w, r5.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r9.yzw, r6.wwww, t3.wxyz  // r9.y <- spotLight1.x; r9.z <- spotLight1.y; r9.w <- spotLight1.z

#line 459
  bfi r11.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r5.wwww, l(1, 2, 3, 0)
  ld_indexable(buffer)(float,float,float,float) r12.xyz, r11.xxxx, t3.xyzw  // r12.x <- spotLight2.x; r12.y <- spotLight2.y; r12.z <- spotLight2.z
  ld_indexable(buffer)(float,float,float,float) r11.xyw, r11.yyyy, t3.xywz  // r11.x <- spotLight3.x; r11.y <- spotLight3.y; r11.w <- spotLight3.z
  ld_indexable(buffer)(float,float,float,float) r13.xyz, r11.zzzz, t3.xyzw  // r13.x <- spotLight4.x; r13.y <- spotLight4.y; r13.z <- spotLight4.z

#line 300
  add r9.yzw, -r3.xxyz, r9.yyzw  // r9.y <- lightVector.x; r9.z <- lightVector.y; r9.w <- lightVector.z
  dp3 r5.w, r9.yzwy, r9.yzwy
  sqrt r6.w, r5.w  // r6.w <- lightVectorLength
  div r9.yzw, r9.yyzw, r6.wwww  // r9.y <- lightVectorNorm.x; r9.z <- lightVectorNorm.y; r9.w <- lightVectorNorm.z

#line 262
  max r6.w, r5.w, l(0.000100)
  div r6.w, l(1.000000, 1.000000, 1.000000, 1.000000), r6.w  // r6.w <- attenuation

#line 204
  mul r5.w, r11.w, r5.w  // r5.w <- factor
  mad r5.w, -r5.w, r5.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)  // r5.w <- smoothFactor
  mul r5.w, r5.w, r5.w  // r5.w <- <SmoothDistanceAttenuation_id88 return value>

#line 263
  mul r5.w, r5.w, r6.w  // r5.w <- attenuation

#line 254
  dp3 r6.w, -r12.xyzx, r9.yzwy  // r6.w <- cd
  mad_sat r6.w, r6.w, r11.x, r11.y  // r6.w <- attenuation
  mul r6.w, r6.w, r6.w

#line 309
  mul r5.w, r5.w, r6.w  // r5.w <- attenuation
  mul r9.yzw, r5.wwww, r13.xxyz  // r9.y <- streams.lightColor_id39.x; r9.z <- streams.lightColor_id39.y; r9.w <- streams.lightColor_id39.z

#line 580
  dp3 r5.w, r4.xyzx, -r12.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id43
  mul r9.yzw, r5.wwww, r9.yyzw  // r9.y <- streams.lightColorNdotL_id40.x; r9.z <- streams.lightColorNdotL_id40.y; r9.w <- streams.lightColorNdotL_id40.z

#line 611
  add r11.xyz, r5.xyzx, -r12.xyzx
  dp3 r6.w, r11.xyzx, r11.xyzx
  rsq r6.w, r6.w
  mul r11.xyz, r6.wwww, r11.xyzx  // r11.x <- streams.H_id68.x; r11.y <- streams.H_id68.y; r11.z <- streams.H_id68.z
  dp3 r6.w, -r12.xyzx, r11.xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.LdotH_id70

#line 607
  mul r11.xyz, r6.xyzx, r9.yzwy

#line 721
  mad r11.xyz, r11.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r8.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 273
  add r12.xyz, -r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r6.w, -r6.w, l(1.000000)
  mul r7.w, r6.w, r6.w
  mul r7.w, r7.w, r7.w
  mul r6.w, r6.w, r7.w
  mad r12.xyz, r12.xyzx, r6.wwww, r7.xyzx  // r12.x <- <FresnelSchlick_id179 return value>.x; r12.y <- <FresnelSchlick_id179 return value>.y; r12.z <- <FresnelSchlick_id179 return value>.z

#line 269
  mad r6.w, r5.w, l(0.500000), l(0.500000)
  div r6.w, r5.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id197 return value>
  mad r7.w, r2.w, l(0.500000), l(0.500000)
  div r7.w, r2.w, r7.w  // r7.w <- <VisibilityhSchlickGGX_id197 return value>

#line 320
  mul r6.w, r6.w, r7.w
  mul r5.w, r2.w, r5.w
  div r5.w, r6.w, r5.w  // r5.w <- <VisibilitySmithSchlickGGX_id199 return value>

#line 601
  mul r12.xyz, r5.wwww, r12.xyzx
  mul r9.yzw, r9.yyzw, r12.xxyz

#line 725
  mad r8.xyz, r9.yzwy, l(0.079577, 0.079577, 0.079577, 0.000000), r11.xyzx  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z

#line 711
  iadd r4.w, r4.w, l(1)

#line 727
endloop   // r3.w <- streams.lightIndex_id84

#line 735
mov r3.xyz, r0.xyzx  // r3.x <- streams.normalWS_id16.x; r3.y <- streams.normalWS_id16.y; r3.z <- streams.normalWS_id16.z
mov r4.xyz, r1.xyzx  // r4.x <- streams.viewWS_id61.x; r4.y <- streams.viewWS_id61.y; r4.z <- streams.viewWS_id61.z
mov r5.xyz, cb0[0].xyzx  // r5.x <- streams.matDiffuseVisible_id62.x; r5.y <- streams.matDiffuseVisible_id62.y; r5.z <- streams.matDiffuseVisible_id62.z
mov r6.xyz, r2.xyzx  // r6.x <- streams.matSpecularVisible_id64.x; r6.y <- streams.matSpecularVisible_id64.y; r6.z <- streams.matSpecularVisible_id64.z
mov r1.w, r0.w  // r1.w <- streams.NdotV_id65
mov r7.xyz, r8.xyzx  // r7.x <- directLightingContribution.x; r7.y <- directLightingContribution.y; r7.z <- directLightingContribution.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, l(8)
  breakc_nz r3.w
  ige r3.w, r2.w, cb1[24].y
  if_nz r3.w
    break 
  endif 

#line 444
  ishl r3.w, r2.w, l(1)

#line 562
  dp3 r4.w, r3.xyzx, -cb1[r3.w + 25].xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id43
  mul r9.xyz, r4.wwww, cb1[r3.w + 26].xyzx  // r9.x <- streams.lightColorNdotL_id40.x; r9.y <- streams.lightColorNdotL_id40.y; r9.z <- streams.lightColorNdotL_id40.z

#line 611
  add r10.xyz, r4.xyzx, -cb1[r3.w + 25].xyzx
  dp3 r5.w, r10.xyzx, r10.xyzx
  rsq r5.w, r5.w
  mul r10.xyz, r5.wwww, r10.xyzx  // r10.x <- streams.H_id68.x; r10.y <- streams.H_id68.y; r10.z <- streams.H_id68.z
  dp3 r3.w, -cb1[r3.w + 25].xyzx, r10.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.LdotH_id70

#line 607
  mul r10.xyz, r5.xyzx, r9.xyzx

#line 745
  mad r10.xyz, r10.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r7.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 273
  add r11.xyz, -r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r5.w, r3.w, r3.w
  mul r5.w, r5.w, r5.w
  mul r3.w, r3.w, r5.w
  mad r11.xyz, r11.xyzx, r3.wwww, r6.xyzx  // r11.x <- <FresnelSchlick_id179 return value>.x; r11.y <- <FresnelSchlick_id179 return value>.y; r11.z <- <FresnelSchlick_id179 return value>.z

#line 269
  mad r3.w, r4.w, l(0.500000), l(0.500000)
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilityhSchlickGGX_id197 return value>
  mad r5.w, r1.w, l(0.500000), l(0.500000)
  div r5.w, r1.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id197 return value>

#line 320
  mul r3.w, r3.w, r5.w
  mul r4.w, r1.w, r4.w
  div r3.w, r3.w, r4.w  // r3.w <- <VisibilitySmithSchlickGGX_id199 return value>

#line 601
  mul r11.xyz, r3.wwww, r11.xyzx
  mul r9.xyz, r9.xyzx, r11.xyzx

#line 749
  mad r7.xyz, r9.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r10.xyzx  // r7.x <- directLightingContribution.x; r7.y <- directLightingContribution.y; r7.z <- directLightingContribution.z

#line 735
  iadd r2.w, r2.w, l(1)

#line 751
endloop 

#line 292
dp2 r1.w, cb1[61].xxxx, cb1[43].zzzz

#line 284
mov r3.w, l(1.000000)

#line 759
mov r4.xyz, v0.xyzx  // r4.x <- streams.PositionWS_id19.x; r4.y <- streams.PositionWS_id19.y; r4.z <- streams.PositionWS_id19.z
mov r4.w, v2.x  // r4.w <- streams.DepthVS_id20
mov r5.xyz, r0.xyzx  // r5.x <- streams.normalWS_id16.x; r5.y <- streams.normalWS_id16.y; r5.z <- streams.normalWS_id16.z
mov r6.xyz, r1.xyzx  // r6.y <- streams.viewWS_id61.y; r6.z <- streams.viewWS_id61.z; r6.x <- streams.viewWS_id61.x
mov r8.xyz, cb0[0].xyzx  // r8.x <- streams.matDiffuseVisible_id62.x; r8.y <- streams.matDiffuseVisible_id62.y; r8.z <- streams.matDiffuseVisible_id62.z
mov r9.xyz, r2.xyzx  // r9.x <- streams.matSpecularVisible_id64.x; r9.y <- streams.matSpecularVisible_id64.y; r9.z <- streams.matSpecularVisible_id64.z
mov r2.w, r0.w  // r2.w <- streams.NdotV_id65
mov r10.xyz, r7.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z
mov r5.w, l(0)  // r5.w <- i
loop 
  ige r6.w, r5.w, l(1)
  breakc_nz r6.w
  ige r6.w, r5.w, cb1[40].w
  if_nz r6.w
    break 
  endif 

#line 544
  dp3 r6.w, r5.xyzx, -cb1[41].xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.NdotL_id43

#line 394
  ishl r7.w, r5.w, l(2)  // r7.w <- cascadeIndexBase

#line 401
  lt r8.w, cb1[r7.w + 62].x, r4.w

#line 404
  and r8.w, r8.w, l(1)  // r8.w <- cascadeIndex

#line 401
  bfi r11.xy, l(30, 30, 0, 0), l(2, 2, 0, 0), r5.wwww, l(1, 2, 0, 0)
  lt r9.w, cb1[r11.x + 62].x, r4.w

#line 404
  movc r8.w, r9.w, l(2), r8.w

#line 401
  lt r9.w, cb1[r11.y + 62].x, r4.w

#line 404
  movc r8.w, r9.w, l(3), r8.w

#line 291
  add r10.w, -r6.w, l(1.000000)
  max r10.w, r10.w, l(0.000000)  // r10.w <- normalOffsetScale
  mul r10.w, r1.w, r10.w

#line 408
  mad r3.xyz, r10.wwww, r5.xyzx, r4.xyzx  // r3.x <- shadowPosition.x; r3.y <- shadowPosition.y; r3.z <- shadowPosition.z

#line 284
  bfi r10.w, l(30), l(2), r5.w, r8.w
  ishl r11.x, r8.w, l(2)
  bfi r11.x, l(30), l(4), r5.w, r11.x
  dp4 r12.x, r3.xyzw, cb1[r11.x + 44].xyzw  // r12.x <- shadowPosition.x
  dp4 r12.y, r3.xyzw, cb1[r11.x + 45].xyzw  // r12.y <- shadowPosition.y
  dp4 r11.y, r3.xyzw, cb1[r11.x + 46].xyzw  // r11.y <- shadowPosition.z
  dp4 r11.x, r3.xyzw, cb1[r11.x + 47].xyzw  // r11.x <- shadowPosition.w
  add r12.z, r11.y, -cb1[60].x  // r12.z <- shadowPosition.z
  div r11.xyz, r12.xyzx, r11.xxxx  // r11.x <- shadowPosition.x; r11.y <- shadowPosition.y; r11.z <- shadowPosition.z

#line 220
  mad r11.xy, r11.xyxx, cb1[43].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r12.xy, r11.xyxx  // r12.x <- base_uv.x; r12.y <- base_uv.y
  add r11.xy, r11.xyxx, -r12.xyxx  // r11.x <- s; r11.y <- t
  add r12.xy, r12.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r12.xy, r12.xyxx, cb1[43].zwzz

#line 233
  mad r12.zw, -r11.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r12.w <- uw0; r12.z <- vw0
  mad r13.xy, r11.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r13.x <- uw2; r13.y <- vw2
  mad r13.zw, -r11.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r13.zw, r13.zzzw, r12.wwwz
  add r14.xy, r11.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r11.xy, r11.xyxx, r13.xyxx
  add r15.xw, r13.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r15.x <- u0; r15.w <- v0
  mul r15.yz, r14.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r15.z <- u1; r15.y <- v1
  add r14.xy, r11.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r14.x <- u2; r14.y <- v2
  mul r11.x, r12.z, r12.w
  mad r16.xyzw, r15.xwzw, cb1[43].zwzw, r12.xyxy

#line 200
  sample_c_indexable(texture2d)(float,float,float,float) r11.y, r16.xyxx, t4.xxxx, s1, r11.z  // r11.y <- <SampleTextureAndCompare_id108 return value>

#line 242
  mul r13.zw, r12.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 200
  sample_c_indexable(texture2d)(float,float,float,float) r11.w, r16.zwzz, t4.xxxx, s1, r11.z  // r11.w <- <SampleTextureAndCompare_id108 return value>

#line 240
  mul r11.w, r11.w, r13.z
  mad r11.x, r11.x, r11.y, r11.w  // r11.x <- shadow

#line 245
  mul r11.yw, r12.zzzw, r13.xxxy
  mov r14.zw, r15.wwwy
  mad r16.xyzw, r14.xzxw, cb1[43].zwzw, r12.xyxy

#line 200
  sample_c_indexable(texture2d)(float,float,float,float) r12.z, r16.xyxx, t4.xxxx, s1, r11.z  // r12.z <- <SampleTextureAndCompare_id108 return value>

#line 241
  mad r11.x, r11.y, r12.z, r11.x
  mad r17.xyzw, r15.xyzy, cb1[43].zwzw, r12.xyxy

#line 200
  sample_c_indexable(texture2d)(float,float,float,float) r11.y, r17.xyxx, t4.xxxx, s1, r11.z  // r11.y <- <SampleTextureAndCompare_id108 return value>

#line 242
  mad r11.x, r13.w, r11.y, r11.x

#line 200
  sample_c_indexable(texture2d)(float,float,float,float) r11.y, r17.zwzz, t4.xxxx, s1, r11.z

#line 243
  mad r11.x, r11.y, l(49.000000), r11.x

#line 246
  mul r12.zw, r13.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 200
  sample_c_indexable(texture2d)(float,float,float,float) r11.y, r16.zwzz, t4.xxxx, s1, r11.z

#line 244
  mad r11.x, r12.z, r11.y, r11.x
  mov r15.y, r14.y
  mad r15.xyzw, r15.xyzy, cb1[43].zwzw, r12.xyxy

#line 200
  sample_c_indexable(texture2d)(float,float,float,float) r11.y, r15.xyxx, t4.xxxx, s1, r11.z

#line 245
  mad r11.x, r11.w, r11.y, r11.x

#line 200
  sample_c_indexable(texture2d)(float,float,float,float) r11.y, r15.zwzz, t4.xxxx, s1, r11.z

#line 246
  mad r11.x, r12.w, r11.y, r11.x
  mul r11.y, r13.y, r13.x
  mad r12.xy, r14.xyxx, cb1[43].zwzz, r12.xyxx

#line 200
  sample_c_indexable(texture2d)(float,float,float,float) r11.z, r12.xyxx, t4.xxxx, s1, r11.z  // r11.z <- <SampleTextureAndCompare_id108 return value>

#line 247
  mad r11.x, r11.y, r11.z, r11.x
  mul r11.y, r11.x, l(0.006944)  // r11.y <- shadow

#line 413
  iadd r11.z, r10.w, l(-1)
  add r11.z, -cb1[r11.z + 62].x, cb1[r10.w + 62].x
  movc r11.z, r8.w, r11.z, cb1[r10.w + 62].x  // r11.z <- splitSize
  add r10.w, -r4.w, cb1[r10.w + 62].x
  div r10.w, r10.w, r11.z  // r10.w <- splitDist
  lt r11.z, r10.w, l(0.200000)

#line 284
  ishl r7.w, r7.w, l(2)
  imad r7.w, r8.w, l(4), r7.w
  iadd r7.w, r7.w, l(4)
  dp4 r12.x, r3.xyzw, cb1[r7.w + 44].xyzw  // r12.x <- shadowPosition.x
  dp4 r12.y, r3.xyzw, cb1[r7.w + 45].xyzw  // r12.y <- shadowPosition.y
  dp4 r8.w, r3.xyzw, cb1[r7.w + 46].xyzw  // r8.w <- shadowPosition.z
  dp4 r3.x, r3.xyzw, cb1[r7.w + 47].xyzw  // r3.x <- shadowPosition.w
  add r12.z, r8.w, -cb1[60].x  // r12.z <- shadowPosition.z
  div r3.xyz, r12.xyzx, r3.xxxx  // r3.x <- shadowPosition.x; r3.y <- shadowPosition.y; r3.z <- shadowPosition.z

#line 220
  mad r3.xy, r3.xyxx, cb1[43].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r12.xy, r3.xyxx  // r12.x <- base_uv.x; r12.y <- base_uv.y
  add r3.xy, r3.xyxx, -r12.xyxx  // r3.x <- s; r3.y <- t
  add r12.xy, r12.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r12.xy, r12.xyxx, cb1[43].zwzz

#line 233
  mad r12.zw, -r3.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r12.w <- uw0; r12.z <- vw0
  mad r13.xy, r3.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
  mad r13.zw, -r3.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r13.zw, r13.zzzw, r12.wwwz
  add r14.xy, r3.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r3.xy, r3.xyxx, r13.xyxx
  add r15.xw, r13.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r15.x <- u0; r15.w <- v0
  mul r15.yz, r14.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r15.z <- u1; r15.y <- v1
  add r14.xy, r3.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r14.x <- u2; r14.y <- v2
  mad r16.xyzw, r15.xwzw, cb1[43].zwzw, r12.xyxy

#line 200
  sample_c_indexable(texture2d)(float,float,float,float) r3.x, r16.xyxx, t4.xxxx, s1, r3.z  // r3.x <- <SampleTextureAndCompare_id108 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r3.y, r16.zwzz, t4.xxxx, s1, r3.z  // r3.y <- <SampleTextureAndCompare_id108 return value>

#line 244
  mov r14.zw, r15.wwwy
  mad r16.xyzw, r14.xzxw, cb1[43].zwzw, r12.xyxy

#line 200
  sample_c_indexable(texture2d)(float,float,float,float) r7.w, r16.xyxx, t4.xxxx, s1, r3.z  // r7.w <- <SampleTextureAndCompare_id108 return value>

#line 243
  mad r17.xyzw, r15.xyzy, cb1[43].zwzw, r12.xyxy

#line 200
  sample_c_indexable(texture2d)(float,float,float,float) r8.w, r17.xyxx, t4.xxxx, s1, r3.z  // r8.w <- <SampleTextureAndCompare_id108 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r11.w, r17.zwzz, t4.xxxx, s1, r3.z  // r11.w <- <SampleTextureAndCompare_id108 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r13.z, r16.zwzz, t4.xxxx, s1, r3.z  // r13.z <- <SampleTextureAndCompare_id108 return value>

#line 245
  mov r15.y, r14.y
  mad r15.xyzw, r15.xyzy, cb1[43].zwzw, r12.xyxy

#line 200
  sample_c_indexable(texture2d)(float,float,float,float) r13.w, r15.xyxx, t4.xxxx, s1, r3.z  // r13.w <- <SampleTextureAndCompare_id108 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r14.z, r15.zwzz, t4.xxxx, s1, r3.z  // r14.z <- <SampleTextureAndCompare_id108 return value>

#line 247
  mad r12.xy, r14.xyxx, cb1[43].zwzz, r12.xyxx

#line 200
  sample_c_indexable(texture2d)(float,float,float,float) r3.z, r12.xyxx, t4.xxxx, s1, r3.z  // r3.z <- <SampleTextureAndCompare_id108 return value>

#line 415
  if_nz r11.z

#line 418
    if_z r9.w
      mul_sat r9.w, r10.w, l(5.000000)
      mad r10.w, r9.w, l(-2.000000), l(3.000000)
      mul r9.w, r9.w, r9.w
      mul r9.w, r9.w, r10.w  // r9.w <- lerpAmt

#line 239
      mul r10.w, r12.z, r12.w
      mul r3.y, r12.z, r3.y
      mul r3.y, r3.y, l(7.000000)
      mad r3.x, r10.w, r3.x, r3.y  // r3.x <- shadow

#line 245
      mul r12.xy, r12.zwzz, r13.xyxx

#line 241
      mad r3.x, r12.x, r7.w, r3.x
      mul r3.y, r8.w, r12.w
      mad r3.x, r3.y, l(7.000000), r3.x
      mad r3.x, r11.w, l(49.000000), r3.x
      mul r3.y, r13.z, r13.x
      mad r3.x, r3.y, l(7.000000), r3.x
      mad r3.x, r12.y, r13.w, r3.x
      mul r3.y, r13.y, r14.z
      mad r3.x, r3.y, l(7.000000), r3.x
      mul r3.y, r13.y, r13.x
      mad r3.x, r3.y, r3.z, r3.x
      mul r3.x, r3.x, l(0.006944)

#line 424
      mad r3.y, r11.x, l(0.006944), -r3.x
      mad r11.y, r9.w, r3.y, r3.x
    endif 
  endif   // r11.y <- shadow

#line 546
  mul r3.xyz, r11.yyyy, cb1[42].xyzx
  mul r3.xyz, r6.wwww, r3.xyzx  // r3.x <- streams.lightColorNdotL_id40.x; r3.y <- streams.lightColorNdotL_id40.y; r3.z <- streams.lightColorNdotL_id40.z

#line 611
  add r11.xyz, r6.xyzx, -cb1[41].xyzx
  dp3 r7.w, r11.xyzx, r11.xyzx
  rsq r7.w, r7.w
  mul r11.xyz, r7.wwww, r11.xyzx  // r11.x <- streams.H_id68.x; r11.y <- streams.H_id68.y; r11.z <- streams.H_id68.z
  dp3 r7.w, -cb1[41].xyzx, r11.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.LdotH_id70

#line 607
  mul r11.xyz, r3.xyzx, r8.xyzx

#line 769
  mad r11.xyz, r11.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 273
  add r12.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r7.w, -r7.w, l(1.000000)
  mul r8.w, r7.w, r7.w
  mul r8.w, r8.w, r8.w
  mul r7.w, r7.w, r8.w
  mad r12.xyz, r12.xyzx, r7.wwww, r9.xyzx  // r12.x <- <FresnelSchlick_id179 return value>.x; r12.y <- <FresnelSchlick_id179 return value>.y; r12.z <- <FresnelSchlick_id179 return value>.z

#line 269
  mad r7.w, r6.w, l(0.500000), l(0.500000)
  div r7.w, r6.w, r7.w  // r7.w <- <VisibilityhSchlickGGX_id197 return value>
  mad r8.w, r2.w, l(0.500000), l(0.500000)
  div r8.w, r2.w, r8.w  // r8.w <- <VisibilityhSchlickGGX_id197 return value>

#line 320
  mul r7.w, r7.w, r8.w
  mul r6.w, r2.w, r6.w
  div r6.w, r7.w, r6.w  // r6.w <- <VisibilitySmithSchlickGGX_id199 return value>

#line 601
  mul r12.xyz, r6.wwww, r12.xyzx
  mul r3.xyz, r3.xyzx, r12.xyzx

#line 773
  mad r10.xyz, r3.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r11.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 759
  iadd r5.w, r5.w, l(1)

#line 775
endloop 

#line 386
mad r1.w, r0.w, l(-0.522800), l(0.604500)
mul r0.w, r0.w, r0.w
mad_sat r0.w, r0.w, l(0.193900), r1.w  // r0.w <- delta

#line 389
mul r2.xyz, r0.wwww, r2.xyzx  // r2.x <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id214 return value>.x; r2.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id214 return value>.y; r2.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id214 return value>.z

#line 528
mul r3.xyz, r2.xyzx, cb1[66].xyzx  // r3.x <- <ComputeEnvironmentLightContribution_id422 return value>.x; r3.y <- <ComputeEnvironmentLightContribution_id422 return value>.y; r3.z <- <ComputeEnvironmentLightContribution_id422 return value>.z

#line 787
mad r3.xyz, cb0[0].xyzx, cb1[66].xyzx, r3.xyzx  // r3.x <- environmentLightingContribution.x; r3.y <- environmentLightingContribution.y; r3.z <- environmentLightingContribution.z

#line 517
dp3 r0.w, r0.xyzx, cb1[76].xyzx  // r0.w <- sampleDirection.x
dp3 r1.w, r0.xyzx, cb1[77].xyzx  // r1.w <- sampleDirection.y
dp3 r2.w, r0.xyzx, cb1[78].xyzx  // r2.w <- sampleDirection.z

#line 349
mul r3.w, r1.w, r1.w  // r3.w <- y2
mul r4.x, r2.w, r2.w  // r4.x <- z2

#line 354
mad r4.yzw, cb1[68].xxyz, r1.wwww, cb1[67].xxyz  // r4.y <- color.x; r4.z <- color.y; r4.w <- color.z
mad r4.yzw, cb1[69].xxyz, -r2.wwww, r4.yyzw
mad r4.yzw, cb1[70].xxyz, r0.wwww, r4.yyzw

#line 359
mul r5.xyz, r1.wwww, cb1[71].xyzx
mad r4.yzw, r5.xxyz, r0.wwww, r4.yyzw
mul r5.xyz, r1.wwww, cb1[72].xyzx
mad r4.yzw, r5.xxyz, -r2.wwww, r4.yyzw
mad r1.w, r4.x, l(3.000000), l(-1.000000)
mad r4.xyz, cb1[73].xyzx, r1.wwww, r4.yzwy  // r4.x <- color.x; r4.y <- color.y; r4.z <- color.z
mul r5.xyz, r0.wwww, cb1[74].xyzx
mad r4.xyz, r5.xyzx, -r2.wwww, r4.xyzx
mad r0.w, r0.w, r0.w, -r3.w
mad r4.xyz, cb1[75].xyzx, r0.wwww, r4.xyzx

#line 519
mul r4.xyz, r4.xyzx, cb1[80].xxxx  // r4.x <- streams.envLightDiffuseColor_id41.x; r4.y <- streams.envLightDiffuseColor_id41.y; r4.z <- streams.envLightDiffuseColor_id41.z
dp3 r0.w, -r1.xyzx, r0.xyzx
add r0.w, r0.w, r0.w
mad r0.xyz, r0.xyzx, -r0.wwww, -r1.xyzx  // r0.x <- sampleDirection.x; r0.y <- sampleDirection.y; r0.z <- sampleDirection.z
dp3 r1.x, r0.xyzx, cb1[76].xyzx  // r1.x <- sampleDirection.x
dp3 r1.y, r0.xyzx, cb1[77].xyzx  // r1.y <- sampleDirection.y
dp3 r0.x, r0.xyzx, cb1[78].xyzx  // r0.x <- sampleDirection.z
mov r1.z, -r0.x  // r1.z <- sampleDirection.z

#line 341
sample_l_indexable(texturecube)(float,float,float,float) r0.xyz, r1.xyzx, t5.xyzw, s0, cb1[75].w  // r0.x <- <Compute_id266 return value>.x; r0.y <- <Compute_id266 return value>.y; r0.z <- <Compute_id266 return value>.z

#line 523
mul r0.xyz, r0.xyzx, cb1[80].xxxx  // r0.x <- streams.envLightSpecularColor_id42.x; r0.y <- streams.envLightSpecularColor_id42.y; r0.z <- streams.envLightSpecularColor_id42.z

#line 795
mad r1.xyz, cb0[0].xyzx, r4.xyzx, r3.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 799
mad r0.xyz, r2.xyzx, r0.xyzx, r1.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 802
mad o0.xyz, r10.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 936
mov o0.w, cb0[0].w
ret 
// Approximately 427 instruction slots used
***************************
*************************/
const static uint ClusterSize2_id82 = 64;
const static int TMaxLightCount_id95 = 8;
const static int TMaxLightCount_id98 = 1;
const static int TCascadeCountBase_id161 = 4;
const static int TLightCountBase_id162 = 1;
const static int TCascadeCount_id166 = 4;
const static int TLightCount_id167 = 1;
const static bool TBlendCascades_id168 = true;
const static bool TDepthRangeAuto_id169 = true;
const static bool TCascadeDebug_id170 = false;
const static int TFilterSize_id172 = 5;
const static int TOrder_id175 = 3;
const static bool TIsEnergyConservative_id194 = false;
static const float PI_id196 = 3.14159265358979323846;
SamplerState LinearSampler_id133 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id135 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
Texture3D<uint2> LightClusters_id85;
Buffer<uint> LightIndices_id86;
Buffer<float4> PointLights_id90;
Buffer<float4> SpotLights_id93;
Texture2D ShadowMapTexture_id100;
TextureCube CubeMap_id178;
struct PS_STREAMS 
{
    float3 normalWS_id16;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
    float3 viewWS_id61;
    float3 shadingColor_id66;
    float matBlend_id37;
    float3 matNormal_id45;
    float4 matColorBase_id46;
    float4 matDiffuse_id47;
    float3 matDiffuseVisible_id62;
    float3 matSpecular_id49;
    float3 matSpecularVisible_id64;
    float matSpecularIntensity_id50;
    float matGlossiness_id48;
    float alphaRoughness_id63;
    float matAmbientOcclusion_id51;
    float matAmbientOcclusionDirectLightingFactor_id52;
    float matCavity_id53;
    float matCavityDiffuse_id54;
    float matCavitySpecular_id55;
    float4 matEmissive_id56;
    float matEmissiveIntensity_id57;
    float2 matDiffuseSpecularAlphaBlend_id58;
    float3 matAlphaBlendColor_id59;
    float matAlphaDiscard_id60;
    float shadingColorAlpha_id67;
    float3 lightDirectionWS_id38;
    float3 lightColor_id39;
    float3 lightColorNdotL_id40;
    float3 envLightDiffuseColor_id41;
    float3 envLightSpecularColor_id42;
    float lightDirectAmbientOcclusion_id44;
    float NdotL_id43;
    float NdotV_id65;
    uint2 lightData_id83;
    int lightIndex_id84;
    float3 shadowColor_id76;
    float3 H_id68;
    float NdotH_id69;
    float LdotH_id70;
    float VdotH_id71;
    float4 ColorTarget_id1;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id1 : SV_Target0;
};
struct VS_STREAMS 
{
    float4 Position_id18;
    float3 meshNormal_id14;
    float4 PositionH_id21;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
    float3 normalWS_id16;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id19 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id20 : DEPTH_VS;
    float3 normalWS_id16 : NORMALWS;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    float3 meshNormal_id14 : NORMAL;
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
};
cbuffer PerMaterial 
{
    float4 constantColor_id183;
    float4 constantColor_id188;
    float constantFloat_id190;
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
    float NearClipPlane_id77 = 1.0f;
    float FarClipPlane_id78 = 100.0f;
    float2 ZProjection_id79;
    float2 ViewSize_id80;
    float AspectRatio_id81;
    float ClusterDepthScale_id87;
    float ClusterDepthBias_id88;
    int LightCount_id94;
    DirectionalLightData Lights_id96[TMaxLightCount_id95];
    int LightCount_id97;
    DirectionalLightData Lights_id99[TMaxLightCount_id98];
    float2 ShadowMapTextureSize_id101;
    float2 ShadowMapTextureTexelSize_id102;
    float4x4 WorldToShadowCascadeUV_id163[TCascadeCountBase_id161 * TLightCountBase_id162];
    float DepthBiases_id164[TLightCountBase_id162];
    float OffsetScales_id165[TLightCountBase_id162];
    float CascadeDepthSplits_id171[TCascadeCount_id166 * TLightCount_id167];
    float Bias_id173;
    float3 AmbientLight_id174;
    float3 SphericalColors_id176[TOrder_id175 * TOrder_id175];
    float MipCount_id177;
    float4x4 SkyMatrix_id179;
    float Intensity_id180;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id104;
    float2 Texture1TexelSize_id106;
    float2 Texture2TexelSize_id108;
    float2 Texture3TexelSize_id110;
    float2 Texture4TexelSize_id112;
    float2 Texture5TexelSize_id114;
    float2 Texture6TexelSize_id116;
    float2 Texture7TexelSize_id118;
    float2 Texture8TexelSize_id120;
    float2 Texture9TexelSize_id122;
};
float SampleTextureAndCompare_id108(float2 position, float positionDepth)
{
    return ShadowMapTexture_id100.SampleCmp(LinearClampCompareLessEqualSampler_id135, position, positionDepth);
}
float SmoothDistanceAttenuation_id88(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id80(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float FilterShadow_id104(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 uv = position * ShadowMapTextureSize_id101;
    float2 base_uv;
    base_uv.x = floor(uv.x + 0.5);
    base_uv.y = floor(uv.y + 0.5);
    float s = (uv.x + 0.5 - base_uv.x);
    float t = (uv.y + 0.5 - base_uv.y);
    base_uv -= float2(0.5, 0.5);
    base_uv *= ShadowMapTextureTexelSize_id102;

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
        shadow += uw0 * vw0 * SampleTextureAndCompare_id108(base_uv + float2(u0, v0) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow += uw1 * vw0 * SampleTextureAndCompare_id108(base_uv + float2(u1, v0) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow += uw2 * vw0 * SampleTextureAndCompare_id108(base_uv + float2(u2, v0) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow += uw0 * vw1 * SampleTextureAndCompare_id108(base_uv + float2(u0, v1) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow += uw1 * vw1 * SampleTextureAndCompare_id108(base_uv + float2(u1, v1) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow += uw2 * vw1 * SampleTextureAndCompare_id108(base_uv + float2(u2, v1) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow += uw0 * vw2 * SampleTextureAndCompare_id108(base_uv + float2(u0, v2) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow += uw1 * vw2 * SampleTextureAndCompare_id108(base_uv + float2(u1, v2) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow += uw2 * vw2 * SampleTextureAndCompare_id108(base_uv + float2(u2, v2) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow /= 144.0f;
    }
    return shadow;
}
float GetAngleAttenuation_id90(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id89(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id88(d2, lightInvSquareRadius);
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
float GetDistanceAttenuation_id81(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id80(d2, lightInvSquareRadius);
    return attenuation;
}
float ComputeShadowFromCascade_id107(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1), WorldToShadowCascadeUV_id163[cascadeIndex + lightIndex * TCascadeCountBase_id161]);
    shadowPosition.z -= DepthBiases_id164[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id104(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id106(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id102.x * offsetScale * normalOffsetScale * normal;
}
void ComputeShadow_id105(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void ProcessLight_id91(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = light.AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -light.DirectionWS;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id89(lightVector, lightInvSquareRadius);
    attenuation *= GetAngleAttenuation_id90(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightDirection;
}
float NormalDistributionGGX_id213(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    return alphaR2 / (PI_id196 * pow(max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001), 2.0f));
}
float VisibilitySmithSchlickGGX_id199(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id197(alphaR, nDotL) * VisibilityhSchlickGGX_id197(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id185(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id179(f0, 1.0f, lOrVDotH);
}
void ProcessLight_id83(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id81(lightVector, lightInvSquareRadius);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
float4 Compute_id266(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id63;
    float mipLevel = sqrt(alpha) * MipCount_id177;
    return CubeMap_id178.SampleLevel(LinearSampler_id133, direction, mipLevel);
}
float4 Compute_id261(float3 direction)
{
    float x = direction.x;
    float y = direction.y;
    float z = direction.z;
    float x2 = x * x;
    float y2 = y * y;
    float z2 = z * z;
    float3 color = SphericalColors_id176[0];

    {
        color += SphericalColors_id176[1] * y;
        color += SphericalColors_id176[2] * z;
        color += SphericalColors_id176[3] * x;

        {
            color += SphericalColors_id176[4] * y * x;
            color += SphericalColors_id176[5] * y * z;
            color += SphericalColors_id176[6] * (3.0 * z2 - 1.0);
            color += SphericalColors_id176[7] * x * z;
            color += SphericalColors_id176[8] * (x2 - y2);
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
void ComputeShadow_id99(inout PS_STREAMS streams, int lightIndex)
{
    ComputeShadow_id105(streams, lightIndex);
    int cascadeIndexBase = lightIndex * TCascadeCount_id166;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id166 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id20 > CascadeDepthSplits_id171[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float shadow = 1.0;
    float3 shadowPosition = streams.PositionWS_id19.xyz;
    shadowPosition += GetShadowPositionOffset_id106(OffsetScales_id165[lightIndex], streams.NdotL_id43, streams.normalWS_id16);
    if (cascadeIndex < TCascadeCount_id166)
    {
        shadow = ComputeShadowFromCascade_id107(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id171[cascadeIndexBase + cascadeIndex];
        float splitSize = cascadeIndex == 0 ? nextSplit : nextSplit - CascadeDepthSplits_id171[cascadeIndexBase + cascadeIndex - 1];
        float splitDist = (nextSplit - streams.DepthVS_id20) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id166 - 1)
            {
            }
            else if (TBlendCascades_id168)
            {
                float nextShadow = ComputeShadowFromCascade_id107(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }

    {
        streams.shadowColor_id76 = shadow;
    }
}
void PrepareDirectLightCore_id98(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id39 = Lights_id99[lightIndex].Color;
    streams.lightDirectionWS_id38 = -Lights_id99[lightIndex].DirectionWS;
}
void ComputeShadow_id95(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id94(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id39 = Lights_id96[lightIndex].Color;
    streams.lightDirectionWS_id38 = -Lights_id96[lightIndex].DirectionWS;
}
void ComputeShadow_id87(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id86(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id86.Load(streams.lightIndex_id84);
    streams.lightIndex_id84++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id93.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id93.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id93.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id93.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id91(streams, spotLight);
}
float Compute_id343(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id213(streams.alphaRoughness_id63, streams.NdotH_id69);
}
float Compute_id314(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id199(streams.alphaRoughness_id63, streams.NdotL_id43, streams.NdotV_id65);
}
float3 Compute_id285(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id185(f0, streams.LdotH_id70);
}
void ComputeShadow_id79(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id78(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id86.Load(streams.lightIndex_id84);
    streams.lightIndex_id84++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id90.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id90.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id83(streams, pointLight);
}
void PrepareLightData_id82(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id79.y / (projectedDepth - ZProjection_id79.x);
    int2 shadingPosition = int2(streams.ShadingPosition_id0.xy);
    int slice = int(max(log2(depth * ClusterDepthScale_id87 + ClusterDepthBias_id88), 0));
    streams.lightData_id83 = LightClusters_id85.Load(int4(shadingPosition / ClusterSize2_id82, slice, 0));
    streams.lightIndex_id84 = streams.lightData_id83.x;
}
float GetFilterSquareRoughnessAdjustment_id151(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id217()
{
}
void PrepareEnvironmentLight_id278(inout PS_STREAMS streams)
{
    float ambientAccessibility = streams.matAmbientOcclusion_id51;
    float3 sampleDirection = mul(streams.normalWS_id16, (float3x3)SkyMatrix_id179);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id41 = Compute_id261(sampleDirection).rgb * Intensity_id180 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id58.x;
    sampleDirection = reflect(-streams.viewWS_id61, streams.normalWS_id16);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id179);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id42 = Compute_id266(streams, sampleDirection).rgb * Intensity_id180 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeEnvironmentLightContribution_id422(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id214(specularColor, streams.alphaRoughness_id63, streams.NdotV_id65) * streams.envLightSpecularColor_id42;
}
float3 ComputeEnvironmentLightContribution_id373(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id272(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id174 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareDirectLight_id255(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id98(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id99(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id256()
{
    return LightCount_id97;
}
int GetMaxLightCount_id257()
{
    return TMaxLightCount_id98;
}
void PrepareDirectLights_id253()
{
}
void PrepareDirectLight_id247(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id94(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id95(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id248()
{
    return LightCount_id94;
}
int GetMaxLightCount_id249()
{
    return TMaxLightCount_id95;
}
void PrepareDirectLights_id245()
{
}
void PrepareDirectLight_id238(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id86(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id87(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id241(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
int GetMaxLightCount_id240(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
void PrepareDirectLights_id236()
{
}
float3 ComputeDirectLightContribution_id421(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    float3 fresnel = Compute_id285(streams, specularColor);
    float geometricShadowing = Compute_id314(streams);
    float normalDistribution = Compute_id343(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeDirectLightContribution_id372(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor / PI_id196 * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.x;
}
void PrepareMaterialPerDirectLight_id27(inout PS_STREAMS streams)
{
    streams.H_id68 = normalize(streams.viewWS_id61 + streams.lightDirectionWS_id38);
    streams.NdotH_id69 = max(dot(streams.normalWS_id16, streams.H_id68), 0.0001f);
    streams.LdotH_id70 = max(dot(streams.lightDirectionWS_id38, streams.H_id68), 0.0001f);
    streams.VdotH_id71 = streams.LdotH_id70;
}
void PrepareDirectLight_id228(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id78(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id79(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id232(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
int GetMaxLightCount_id231(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
void PrepareDirectLights_id230(inout PS_STREAMS streams)
{
    PrepareLightData_id82(streams);
}
void PrepareMaterialForLightingAndShading_id216(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id151(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id215(inout PS_STREAMS streams)
{
    streams.lightDirectionWS_id38 = 0;
    streams.lightColor_id39 = 0;
    streams.lightColorNdotL_id40 = 0;
    streams.envLightDiffuseColor_id41 = 0;
    streams.envLightSpecularColor_id42 = 0;
    streams.lightDirectAmbientOcclusion_id44 = 1.0f;
    streams.NdotL_id43 = 0;
}
void UpdateNormalFromTangentSpace_id19(float3 normalInTangentSpace)
{
}
float4 Compute_id283()
{
    return float4(constantFloat_id190, constantFloat_id190, constantFloat_id190, constantFloat_id190);
}
float4 Compute_id281()
{
    return constantColor_id188;
}
float4 Compute_id279()
{
    return constantColor_id183;
}
void ResetStream_id220(inout PS_STREAMS streams)
{
    ResetStream_id217();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id452(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id19(streams.matNormal_id45);
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
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id372(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id421(streams);
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
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id372(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id421(streams);
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
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id372(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id421(streams);
            }
        }
    }

    {
        PrepareDirectLights_id253();
        const int maxLightCount = GetMaxLightCount_id257();
        int count = GetLightCount_id256();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id255(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id372(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id421(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id272(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id373(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id422(streams);
        }
    }

    {
        PrepareEnvironmentLight_id278(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id373(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id422(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id196 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id437(inout PS_STREAMS streams)
{
    streams.matSpecularIntensity_id50 = Compute_id283().r;
}
void Compute_id432(inout PS_STREAMS streams)
{
    streams.matSpecular_id49 = Compute_id281().rgb;
}
void Compute_id427(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id279();
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id222(inout PS_STREAMS streams)
{
    ResetStream_id220(streams);
    streams.matNormal_id45 = float3(0, 0, 1);
    streams.matColorBase_id46 = 0.0f;
    streams.matDiffuse_id47 = 0.0f;
    streams.matDiffuseVisible_id62 = 0.0f;
    streams.matSpecular_id49 = 0.0f;
    streams.matSpecularVisible_id64 = 0.0f;
    streams.matSpecularIntensity_id50 = 1.0f;
    streams.matGlossiness_id48 = 0.0f;
    streams.alphaRoughness_id63 = 1.0f;
    streams.matAmbientOcclusion_id51 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id52 = 0.0f;
    streams.matCavity_id53 = 1.0f;
    streams.matCavityDiffuse_id54 = 0.0f;
    streams.matCavitySpecular_id55 = 0.0f;
    streams.matEmissive_id56 = 0.0f;
    streams.matEmissiveIntensity_id57 = 0.0f;
    streams.matDiffuseSpecularAlphaBlend_id58 = 1.0f;
    streams.matAlphaBlendColor_id59 = 1.0f;
    streams.matAlphaDiscard_id60 = 0.0f;
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
void Compute_id75(inout PS_STREAMS streams)
{

    {
        Compute_id427(streams);
    }

    {
        Compute_id432(streams);
    }

    {
        Compute_id437(streams);
    }

    {
        Compute_id452(streams);
    }
}
void ResetStream_id74(inout PS_STREAMS streams)
{
    ResetStream_id222(streams);
    streams.shadingColorAlpha_id67 = 1.0f;
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
void PreTransformPosition_id13(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id19 = mul(streams.Position_id18, World_id29);
}
float4 Shading_id28(inout PS_STREAMS streams)
{
    streams.viewWS_id61 = normalize(Eye_id28.xyz - streams.PositionWS_id19.xyz);
    streams.shadingColor_id66 = 0;
    ResetStream_id74(streams);
    Compute_id75(streams);
    return float4(streams.shadingColor_id66, streams.shadingColorAlpha_id67);
}
void PSMain_id1()
{
}
void BaseTransformVS_id7(inout VS_STREAMS streams)
{
    PreTransformPosition_id13(streams);
    TransformPosition_id5();
    PostTransformPosition_id14(streams);
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id1 = Shading_id28(streams);
}
void GenerateNormal_PS_id18(inout PS_STREAMS streams)
{
    streams.normalWS_id16 = normalize(streams.normalWS_id16);
}
void GenerateNormal_VS_id17(inout VS_STREAMS streams)
{
    streams.normalWS_id16 = mul(streams.meshNormal_id14, (float3x3)WorldInverseTranspose_id31);
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
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id20 = __input__.DepthVS_id20;
    streams.normalWS_id16 = __input__.normalWS_id16;
    GenerateNormal_PS_id18(streams);
    PSMain_id3(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id1 = streams.ColorTarget_id1;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id18 = __input__.Position_id18;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    VSMain_id8(streams);
    GenerateNormal_VS_id17(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id20 = streams.DepthVS_id20;
    __output__.normalWS_id16 = streams.normalWS_id16;
    return __output__;
}
