/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoEditorForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin ComputeColorAdd3ds [{color1 = ComputeColorTextureScaledOffsetDynamicSampler<Material.DiffuseMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}, {color2 = ComputeColorConstantColorLink<Material.DiffuseValue>}]}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = ComputeColorConstantFloatLink<Material.GlossinessValue>}], mixin MaterialSurfaceMetalness [{metalnessMap = ComputeColorConstantFloatLink<Material.MetalnessValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
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
@C    scale_id186 => Material.TextureScale
@C    offset_id187 => Material.TextureOffset
@C    constantColor_id188 => Material.DiffuseValue
@C    constantFloat_id192 => Material.GlossinessValue
@C    constantFloat_id195 => Material.MetalnessValue
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
@R    Texture_id183 => Material.DiffuseMap [Stage: None, Slot: (-1--1)]
@R    Texture_id183 => Material.DiffuseMap [Stage: None, Slot: (-1--1)]
@R    Sampler_id184 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Sampler_id184 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
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
@R    Sampler_id184 => Material.Sampler.i0 [Stage: Pixel, Slot: (2-2)]
@R    Texture_id183 => Material.DiffuseMap [Stage: Pixel, Slot: (0-0)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: Pixel, Slot: (1-1)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: Pixel, Slot: (2-2)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (3-3)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (4-4)]
@R    ShadowMapTexture_id100 => ShadowMap.Texture.directLightGroups[3] [Stage: Pixel, Slot: (5-5)]
@R    CubeMap_id178 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (6-6)]
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
@S    ComputeColorAdd3ds => 0d65d2008f4e34b23415e745fe4a26e5
@S    BlendUtils => 15eb19bd390134e12d394f2ac18f8d02
@S    ComputeColorTextureScaledOffsetDynamicSampler => 36853d1a7bd080d8e9e9c5137a104b79
@S    DynamicTexture => 74e692ca9cc93b6cc6965bc380e07efe
@S    DynamicSampler => 0e1b689d1f965f3f34ae76abdf34dea7
@S    DynamicTextureStream => 546b0c40a42b4fe0e5613396b0ed4d66
@S    ComputeColorConstantColorLink => a4f7de8d03608ceba6b4f128ada2b3ed
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
@G    Vertex => a0b0ea3be44db87c63ce37ff5ec62144
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
// TEXCOORD                 0   xy          2     NONE   float   xy  
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
// TEXCOORD                 0   xy          3     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[11], immediateIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input v2.xy
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.x
dcl_output o2.yzw
dcl_output o3.xy
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.meshNormal_id14.x; v1.y <- __input__.meshNormal_id14.y; v1.z <- __input__.meshNormal_id14.z; 
//   v2.x <- __input__.TexCoord_id151.x; v2.y <- __input__.TexCoord_id151.y; 
//   o3.x <- <VSMain return value>.TexCoord_id151.x; o3.y <- <VSMain return value>.TexCoord_id151.y; 
//   o2.x <- <VSMain return value>.DepthVS_id20; o2.y <- <VSMain return value>.normalWS_id16.x; o2.z <- <VSMain return value>.normalWS_id16.y; o2.w <- <VSMain return value>.normalWS_id16.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 912 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\RapporterV2.Windows\log\shader_XenkoEditorForwardShadingEffect_5fc9d067628ce3c20efd419d04e298a4.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 980
mov o0.xyzw, r0.xyzw

#line 902
dp4 r1.x, r0.xyzw, cb1[19].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 980
mov o1.w, r1.x
mov o2.x, r1.x

#line 902
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw

#line 945
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 980
mov o3.xy, v2.xyxx
ret 
// Approximately 16 instruction slots used
@G    Pixel => ac4afd702469e4b6764e6c0c8bbb8876
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float2 scale_id186;                // Offset:    0 Size:     8
//   float2 offset_id187;               // Offset:    8 Size:     8
//   float4 constantColor_id188;        // Offset:   16 Size:    16
//   float constantFloat_id192;         // Offset:   32 Size:     4
//   float constantFloat_id195;         // Offset:   36 Size:     4
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
// Sampler_id184                     sampler      NA          NA    2        1
// Texture_id183                     texture  float4          2d    0        1
// LightClusters_id85                texture   uint2          3d    1        1
// LightIndices_id86                 texture    uint         buf    2        1
// PointLights_id90                  texture  float4         buf    3        1
// SpotLights_id93                   texture  float4         buf    4        1
// ShadowMapTexture_id100            texture  float4          2d    5        1
// CubeMap_id178                     texture  float4        cube    6        1
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
// TEXCOORD                 0   xy          3     NONE   float   xy  
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
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture3d (uint,uint,uint,uint) t1
dcl_resource_buffer (uint,uint,uint,uint) t2
dcl_resource_buffer (float,float,float,float) t3
dcl_resource_buffer (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_texturecube (float,float,float,float) t6
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.xyz, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xy
dcl_output o0.xyzw
dcl_temps 20
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id20; v2.y <- __input__.normalWS_id16.x; v2.z <- __input__.normalWS_id16.y; v2.w <- __input__.normalWS_id16.z; 
//   v3.x <- __input__.TexCoord_id151.x; v3.y <- __input__.TexCoord_id151.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 941 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\RapporterV2.Windows\log\shader_XenkoEditorForwardShadingEffect_5fc9d067628ce3c20efd419d04e298a4.hlsl"
dp3 r0.x, v2.yzwy, v2.yzwy
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.yzwy  // r0.x <- streams.normalWS_id16.x; r0.y <- streams.normalWS_id16.y; r0.z <- streams.normalWS_id16.z

#line 916
add r1.xyz, -v0.xyzx, cb1[21].xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, r1.xyzx  // r1.x <- streams.viewWS_id61.x; r1.y <- streams.viewWS_id61.y; r1.z <- streams.viewWS_id61.z

#line 530
mad r2.xy, v3.xyxx, cb0[0].xyxx, cb0[0].zwzz
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.xyxx, t0.xyzw, s2  // r2.x <- <Compute_id275 return value>.x; r2.y <- <Compute_id275 return value>.y; r2.z <- <Compute_id275 return value>.z; r2.w <- <Compute_id275 return value>.w

#line 691
add r3.xyz, r2.xyzx, cb0[1].xyzx  // r3.x <- interColor.x; r3.y <- interColor.y; r3.z <- interColor.z

#line 522
mul r0.w, r2.w, cb0[1].w
add r1.w, -r2.w, l(1.000000)
mul r1.w, r1.w, cb0[1].w
mul r4.xyz, r1.wwww, cb0[1].xyzx
mad r3.xyz, r0.wwww, r3.xyzx, r4.xyzx
add r0.w, -cb0[1].w, l(1.000000)
mul r1.w, r2.w, r0.w
mad r2.xyz, r1.wwww, r2.xyzx, r3.xyzx  // r2.x <- <BasicBlend_id457 return value>.x; r2.y <- <BasicBlend_id457 return value>.y; r2.z <- <BasicBlend_id457 return value>.z
mad o0.w, r0.w, r2.w, cb0[1].w

#line 832
add r3.xyz, r2.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r3.xyz, cb0[2].yyyy, r3.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r3.x <- streams.matSpecular_id49.x; r3.y <- streams.matSpecular_id49.y; r3.z <- streams.matSpecular_id49.z
mad r2.xyz, cb0[2].yyyy, -r2.xyzx, r2.xyzx  // r2.x <- streams.matDiffuse_id47.x; r2.y <- streams.matDiffuse_id47.y; r2.z <- streams.matDiffuse_id47.z

#line 661
dp3 r0.w, r0.xyzx, r1.xyzx
max r0.w, r0.w, l(0.000100)  // r0.w <- streams.NdotV_id65
add r1.w, -cb0[2].x, l(1.000000)  // r1.w <- roughness
mul r1.w, r1.w, r1.w
max r1.w, r1.w, l(0.001000)  // r1.w <- streams.alphaRoughness_id63

#line 506
add r2.w, v1.z, -cb1[22].z
div r2.w, cb1[22].w, r2.w  // r2.w <- depth
ftoi r4.xy, v1.xyxx  // r4.x <- shadingPosition.x; r4.y <- shadingPosition.y
mad r2.w, r2.w, cb1[23].w, cb1[24].x
log r2.w, r2.w
max r2.w, r2.w, l(0.000000)
ftoi r5.z, r2.w  // r5.z <- slice
ushr r5.xy, r4.xyxx, l(6, 6, 0, 0)
mov r5.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r4.xy, r5.xyzw, t1.xyzw  // r4.x <- streams.lightData_id83.x; r4.y <- streams.lightData_id83.y

#line 650
and r2.w, r4.y, l(0x0000ffff)  // r2.w <- <GetMaxLightCount_id227 return value>

#line 711
mov r5.xyz, r0.xyzx  // r5.x <- streams.normalWS_id16.x; r5.y <- streams.normalWS_id16.y; r5.z <- streams.normalWS_id16.z
mov r5.w, v0.x  // r5.w <- streams.PositionWS_id19.x
mov r6.yz, v0.yyzy  // r6.y <- streams.PositionWS_id19.y; r6.z <- streams.PositionWS_id19.z
mov r6.w, r1.x  // r6.w <- streams.viewWS_id61.x
mov r7.yz, r1.yyzy  // r7.y <- streams.viewWS_id61.y; r7.z <- streams.viewWS_id61.z
mov r8.xy, r2.xyxx  // r8.x <- streams.matDiffuseVisible_id62.x; r8.y <- streams.matDiffuseVisible_id62.y
mov r9.x, r2.z  // r9.x <- streams.matDiffuseVisible_id62.z
mov r9.yzw, r3.xxyz  // r9.y <- streams.matSpecularVisible_id64.x; r9.z <- streams.matSpecularVisible_id64.y; r9.w <- streams.matSpecularVisible_id64.z
mov r3.w, r1.w  // r3.w <- streams.alphaRoughness_id63
mov r10.z, r0.w  // r10.z <- streams.NdotV_id65
mov r10.x, r4.x  // r10.x <- streams.lightIndex_id84
mov r11.xyz, l(0,0,0,0)  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r4.z, l(0)  // r4.z <- i
loop 
  ige r4.w, r4.z, r2.w
  breakc_nz r4.w
  if_nz r4.w
    break 
  endif 

#line 493
  ld_indexable(buffer)(uint,uint,uint,uint) r4.w, r10.xxxx, t2.yzwx  // r4.w <- realLightIndex
  iadd r10.x, r10.x, l(1)  // r10.x <- streams.lightIndex_id84
  ishl r7.w, r4.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r12.xyzw, r7.wwww, t3.xyzw  // r12.x <- pointLight1.x; r12.y <- pointLight1.y; r12.z <- pointLight1.z; r12.w <- pointLight1.w
  bfi r4.w, l(31), l(1), r4.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyz, r4.wwww, t3.xyzw  // r13.x <- pointLight2.x; r13.y <- pointLight2.y; r13.z <- pointLight2.z

#line 337
  mov r6.x, r5.w
  add r12.xyz, -r6.xyzx, r12.xyzx  // r12.x <- lightVector.x; r12.y <- lightVector.y; r12.z <- lightVector.z
  dp3 r4.w, r12.xyzx, r12.xyzx
  sqrt r6.x, r4.w  // r6.x <- lightVectorLength
  div r12.xyz, r12.xyzx, r6.xxxx  // r12.x <- lightVectorNorm.x; r12.y <- lightVectorNorm.y; r12.z <- lightVectorNorm.z

#line 287
  max r6.x, r4.w, l(0.000100)
  div r6.x, l(1.000000, 1.000000, 1.000000, 1.000000), r6.x  // r6.x <- attenuation

#line 219
  mul r4.w, r12.w, r4.w  // r4.w <- factor
  mad r4.w, -r4.w, r4.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- smoothFactor
  mul r4.w, r4.w, r4.w  // r4.w <- <SmoothDistanceAttenuation_id80 return value>

#line 288
  mul r4.w, r4.w, r6.x  // r4.w <- attenuation

#line 343
  mul r13.xyz, r4.wwww, r13.xyzx  // r13.x <- streams.lightColor_id39.x; r13.y <- streams.lightColor_id39.y; r13.z <- streams.lightColor_id39.z

#line 640
  dp3 r4.w, r5.xyzx, r12.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id43
  mul r13.xyz, r4.wwww, r13.xyzx  // r13.x <- streams.lightColorNdotL_id40.x; r13.y <- streams.lightColorNdotL_id40.y; r13.z <- streams.lightColorNdotL_id40.z

#line 632
  mov r7.x, r6.w
  add r14.xyz, r12.xyzx, r7.xyzx
  dp3 r6.x, r14.xyzx, r14.xyzx
  rsq r6.x, r6.x
  mul r14.xyz, r6.xxxx, r14.xyzx  // r14.x <- streams.H_id68.x; r14.y <- streams.H_id68.y; r14.z <- streams.H_id68.z
  dp3 r6.x, r5.xyzx, r14.xyzx
  max r6.x, r6.x, l(0.000100)  // r6.x <- streams.NdotH_id69
  dp3 r7.x, r12.xyzx, r14.xyzx
  max r7.x, r7.x, l(0.000100)  // r7.x <- streams.LdotH_id70

#line 628
  mov r8.z, r9.x
  mul r12.xyz, r13.xyzx, r8.xyzx

#line 721
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 282
  add r14.xyz, -r9.yzwy, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r7.x, -r7.x, l(1.000000)
  mul r7.w, r7.x, r7.x
  mul r7.w, r7.w, r7.w
  mul r7.x, r7.w, r7.x
  mad r14.xyz, r14.xyzx, r7.xxxx, r9.yzwy  // r14.x <- <FresnelSchlick_id175 return value>.x; r14.y <- <FresnelSchlick_id175 return value>.y; r14.z <- <FresnelSchlick_id175 return value>.z

#line 277
  mul r7.x, r3.w, l(0.500000)  // r7.x <- k
  mad r7.w, -r3.w, l(0.500000), l(1.000000)
  mad r8.z, r4.w, r7.w, r7.x
  div r8.z, r4.w, r8.z  // r8.z <- <VisibilityhSchlickGGX_id193 return value>
  mad r7.x, r10.z, r7.w, r7.x
  div r7.x, r10.z, r7.x  // r7.x <- <VisibilityhSchlickGGX_id193 return value>

#line 329
  mul r7.x, r7.x, r8.z
  mul r4.w, r10.z, r4.w
  div r4.w, r7.x, r4.w  // r4.w <- <VisibilitySmithSchlickGGX_id195 return value>

#line 324
  mul r7.x, r3.w, r3.w  // r7.x <- alphaR2
  mul r6.x, r6.x, r6.x
  mad r7.w, r3.w, r3.w, l(-1.000000)
  mad r6.x, r6.x, r7.w, l(1.000000)
  max r6.x, r6.x, l(0.000100)
  mul r6.x, r6.x, r6.x
  mul r6.x, r6.x, l(3.141593)
  div r6.x, r7.x, r6.x  // r6.x <- <NormalDistributionGGX_id209 return value>

#line 622
  mul r14.xyz, r4.wwww, r14.xyzx
  mul r14.xyz, r6.xxxx, r14.xyzx
  mul r13.xyz, r13.xyzx, r14.xyzx

#line 725
  mad r11.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 711
  iadd r4.z, r4.z, l(1)

#line 727
endloop   // r10.x <- streams.lightIndex_id84

#line 611
ushr r2.w, r4.y, l(16)  // r2.w <- <GetMaxLightCount_id236 return value>

#line 735
mov r4.xyz, v0.xyzx  // r4.x <- streams.PositionWS_id19.x; r4.y <- streams.PositionWS_id19.y; r4.z <- streams.PositionWS_id19.z
mov r5.xyz, r0.xyzx
mov r6.xyz, r1.xyzx  // r6.x <- streams.viewWS_id61.x; r6.y <- streams.viewWS_id61.y; r6.z <- streams.viewWS_id61.z
mov r7.xyz, r2.xyzx  // r7.x <- streams.matDiffuseVisible_id62.x; r7.y <- streams.matDiffuseVisible_id62.y; r7.z <- streams.matDiffuseVisible_id62.z
mov r8.xyz, r3.xyzx  // r8.x <- streams.matSpecularVisible_id64.x; r8.y <- streams.matSpecularVisible_id64.y; r8.z <- streams.matSpecularVisible_id64.z
mov r9.x, r1.w  // r9.x <- streams.alphaRoughness_id63
mov r9.z, r0.w  // r9.z <- streams.NdotV_id65
mov r10.yzw, r11.xxyz  // r10.y <- directLightingContribution.x; r10.z <- directLightingContribution.y; r10.w <- directLightingContribution.z
mov r3.w, r10.x  // r3.w <- streams.lightIndex_id84
mov r4.w, l(0)  // r4.w <- i
loop 
  ige r5.w, r4.w, r2.w
  breakc_nz r5.w
  if_nz r5.w
    break 
  endif 

#line 462
  ld_indexable(buffer)(uint,uint,uint,uint) r5.w, r3.wwww, t2.yzwx  // r5.w <- realLightIndex
  iadd r3.w, r3.w, l(1)  // r3.w <- streams.lightIndex_id84
  ishl r6.w, r5.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r12.xyz, r6.wwww, t4.xyzw  // r12.x <- spotLight1.x; r12.y <- spotLight1.y; r12.z <- spotLight1.z

#line 468
  bfi r13.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r5.wwww, l(1, 2, 3, 0)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r13.xxxx, t4.xyzw  // r14.x <- spotLight2.x; r14.y <- spotLight2.y; r14.z <- spotLight2.z
  ld_indexable(buffer)(float,float,float,float) r13.xyw, r13.yyyy, t4.xywz  // r13.x <- spotLight3.x; r13.y <- spotLight3.y; r13.w <- spotLight3.z
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r13.zzzz, t4.xyzw  // r15.x <- spotLight4.x; r15.y <- spotLight4.y; r15.z <- spotLight4.z

#line 309
  add r12.xyz, -r4.xyzx, r12.xyzx  // r12.x <- lightVector.x; r12.y <- lightVector.y; r12.z <- lightVector.z
  dp3 r5.w, r12.xyzx, r12.xyzx
  sqrt r6.w, r5.w  // r6.w <- lightVectorLength
  div r12.xyz, r12.xyzx, r6.wwww  // r12.x <- lightVectorNorm.x; r12.y <- lightVectorNorm.y; r12.z <- lightVectorNorm.z

#line 271
  max r6.w, r5.w, l(0.000100)
  div r6.w, l(1.000000, 1.000000, 1.000000, 1.000000), r6.w  // r6.w <- attenuation

#line 213
  mul r5.w, r13.w, r5.w  // r5.w <- factor
  mad r5.w, -r5.w, r5.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)  // r5.w <- smoothFactor
  mul r5.w, r5.w, r5.w  // r5.w <- <SmoothDistanceAttenuation_id88 return value>

#line 272
  mul r5.w, r5.w, r6.w  // r5.w <- attenuation

#line 263
  dp3 r6.w, -r14.xyzx, r12.xyzx  // r6.w <- cd
  mad_sat r6.w, r6.w, r13.x, r13.y  // r6.w <- attenuation
  mul r6.w, r6.w, r6.w

#line 318
  mul r5.w, r5.w, r6.w  // r5.w <- attenuation
  mul r12.xyz, r5.wwww, r15.xyzx  // r12.x <- streams.lightColor_id39.x; r12.y <- streams.lightColor_id39.y; r12.z <- streams.lightColor_id39.z

#line 601
  dp3 r5.w, r5.xyzx, -r14.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id43
  mul r12.xyz, r5.wwww, r12.xyzx  // r12.x <- streams.lightColorNdotL_id40.x; r12.y <- streams.lightColorNdotL_id40.y; r12.z <- streams.lightColorNdotL_id40.z

#line 632
  add r13.xyz, r6.xyzx, -r14.xyzx
  dp3 r6.w, r13.xyzx, r13.xyzx
  rsq r6.w, r6.w
  mul r13.xyz, r6.wwww, r13.xyzx  // r13.x <- streams.H_id68.x; r13.y <- streams.H_id68.y; r13.z <- streams.H_id68.z
  dp3 r6.w, r5.xyzx, r13.xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.NdotH_id69
  dp3 r7.w, -r14.xyzx, r13.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.LdotH_id70

#line 628
  mul r13.xyz, r7.xyzx, r12.xyzx

#line 745
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.yzwy  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 282
  add r14.xyz, -r8.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r7.w, -r7.w, l(1.000000)
  mul r8.w, r7.w, r7.w
  mul r8.w, r8.w, r8.w
  mul r7.w, r7.w, r8.w
  mad r14.xyz, r14.xyzx, r7.wwww, r8.xyzx  // r14.x <- <FresnelSchlick_id175 return value>.x; r14.y <- <FresnelSchlick_id175 return value>.y; r14.z <- <FresnelSchlick_id175 return value>.z

#line 277
  mul r7.w, r9.x, l(0.500000)  // r7.w <- k
  mad r8.w, -r9.x, l(0.500000), l(1.000000)
  mad r9.y, r5.w, r8.w, r7.w
  div r9.y, r5.w, r9.y  // r9.y <- <VisibilityhSchlickGGX_id193 return value>
  mad r7.w, r9.z, r8.w, r7.w
  div r7.w, r9.z, r7.w  // r7.w <- <VisibilityhSchlickGGX_id193 return value>

#line 329
  mul r7.w, r7.w, r9.y
  mul r5.w, r9.z, r5.w
  div r5.w, r7.w, r5.w  // r5.w <- <VisibilitySmithSchlickGGX_id195 return value>

#line 324
  mul r7.w, r9.x, r9.x  // r7.w <- alphaR2
  mul r6.w, r6.w, r6.w
  mad r8.w, r9.x, r9.x, l(-1.000000)
  mad r6.w, r6.w, r8.w, l(1.000000)
  max r6.w, r6.w, l(0.000100)
  mul r6.w, r6.w, r6.w
  mul r6.w, r6.w, l(3.141593)
  div r6.w, r7.w, r6.w  // r6.w <- <NormalDistributionGGX_id209 return value>

#line 622
  mul r14.xyz, r5.wwww, r14.xyzx
  mul r14.xyz, r6.wwww, r14.xyzx
  mul r12.xyz, r12.xyzx, r14.xyzx

#line 749
  mad r10.yzw, r12.xxyz, l(0.000000, 0.250000, 0.250000, 0.250000), r13.xxyz  // r10.y <- directLightingContribution.x; r10.z <- directLightingContribution.y; r10.w <- directLightingContribution.z

#line 735
  iadd r4.w, r4.w, l(1)

#line 751
endloop   // r3.w <- streams.lightIndex_id84

#line 759
mov r4.xyz, r0.xyzx  // r4.x <- streams.normalWS_id16.x; r4.y <- streams.normalWS_id16.y; r4.z <- streams.normalWS_id16.z
mov r5.xyz, r1.xyzx  // r5.x <- streams.viewWS_id61.x; r5.y <- streams.viewWS_id61.y; r5.z <- streams.viewWS_id61.z
mov r6.xyz, r2.xyzx  // r6.x <- streams.matDiffuseVisible_id62.x; r6.y <- streams.matDiffuseVisible_id62.y; r6.z <- streams.matDiffuseVisible_id62.z
mov r7.xyz, r3.xyzx  // r7.x <- streams.matSpecularVisible_id64.x; r7.y <- streams.matSpecularVisible_id64.y; r7.z <- streams.matSpecularVisible_id64.z
mov r8.x, r1.w  // r8.x <- streams.alphaRoughness_id63
mov r8.z, r0.w  // r8.z <- streams.NdotV_id65
mov r9.xyz, r10.yzwy  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.z <- directLightingContribution.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, l(8)
  breakc_nz r3.w
  ige r3.w, r2.w, cb1[24].y
  if_nz r3.w
    break 
  endif 

#line 453
  ishl r3.w, r2.w, l(1)

#line 583
  dp3 r4.w, r4.xyzx, -cb1[r3.w + 25].xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id43
  mul r11.xyz, r4.wwww, cb1[r3.w + 26].xyzx  // r11.x <- streams.lightColorNdotL_id40.x; r11.y <- streams.lightColorNdotL_id40.y; r11.z <- streams.lightColorNdotL_id40.z

#line 632
  add r12.xyz, r5.xyzx, -cb1[r3.w + 25].xyzx
  dp3 r5.w, r12.xyzx, r12.xyzx
  rsq r5.w, r5.w
  mul r12.xyz, r5.wwww, r12.xyzx  // r12.x <- streams.H_id68.x; r12.y <- streams.H_id68.y; r12.z <- streams.H_id68.z
  dp3 r5.w, r4.xyzx, r12.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotH_id69
  dp3 r3.w, -cb1[r3.w + 25].xyzx, r12.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.LdotH_id70

#line 628
  mul r12.xyz, r6.xyzx, r11.xyzx

#line 769
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r9.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 282
  add r13.xyz, -r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r6.w, r3.w, r3.w
  mul r6.w, r6.w, r6.w
  mul r3.w, r3.w, r6.w
  mad r13.xyz, r13.xyzx, r3.wwww, r7.xyzx  // r13.x <- <FresnelSchlick_id175 return value>.x; r13.y <- <FresnelSchlick_id175 return value>.y; r13.z <- <FresnelSchlick_id175 return value>.z

#line 277
  mul r3.w, r8.x, l(0.500000)  // r3.w <- k
  mad r6.w, -r8.x, l(0.500000), l(1.000000)
  mad r7.w, r4.w, r6.w, r3.w
  div r7.w, r4.w, r7.w  // r7.w <- <VisibilityhSchlickGGX_id193 return value>
  mad r3.w, r8.z, r6.w, r3.w
  div r3.w, r8.z, r3.w  // r3.w <- <VisibilityhSchlickGGX_id193 return value>

#line 329
  mul r3.w, r3.w, r7.w
  mul r4.w, r8.z, r4.w
  div r3.w, r3.w, r4.w  // r3.w <- <VisibilitySmithSchlickGGX_id195 return value>

#line 324
  mul r4.w, r8.x, r8.x  // r4.w <- alphaR2
  mul r5.w, r5.w, r5.w
  mad r6.w, r8.x, r8.x, l(-1.000000)
  mad r5.w, r5.w, r6.w, l(1.000000)
  max r5.w, r5.w, l(0.000100)
  mul r5.w, r5.w, r5.w
  mul r5.w, r5.w, l(3.141593)
  div r4.w, r4.w, r5.w  // r4.w <- <NormalDistributionGGX_id209 return value>

#line 622
  mul r13.xyz, r3.wwww, r13.xyzx
  mul r13.xyz, r4.wwww, r13.xyzx
  mul r11.xyz, r11.xyzx, r13.xyzx

#line 773
  mad r9.xyz, r11.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.z <- directLightingContribution.z

#line 759
  iadd r2.w, r2.w, l(1)

#line 775
endloop 

#line 301
dp2 r2.w, cb1[61].xxxx, cb1[43].zzzz

#line 293
mov r4.w, l(1.000000)

#line 783
mov r5.xyz, v0.xyzx  // r5.x <- streams.PositionWS_id19.x; r5.y <- streams.PositionWS_id19.y; r5.z <- streams.PositionWS_id19.z
mov r5.w, v2.x  // r5.w <- streams.DepthVS_id20
mov r6.xyz, r0.xyzx  // r6.x <- streams.normalWS_id16.x; r6.y <- streams.normalWS_id16.y; r6.z <- streams.normalWS_id16.z
mov r7.xyz, r1.xyzx  // r7.y <- streams.viewWS_id61.y; r7.z <- streams.viewWS_id61.z; r7.x <- streams.viewWS_id61.x
mov r8.xyz, r2.xyzx  // r8.x <- streams.matDiffuseVisible_id62.x; r8.y <- streams.matDiffuseVisible_id62.y; r8.z <- streams.matDiffuseVisible_id62.z
mov r10.xyz, r3.xyzx  // r10.x <- streams.matSpecularVisible_id64.x; r10.y <- streams.matSpecularVisible_id64.y; r10.z <- streams.matSpecularVisible_id64.z
mov r11.x, r1.w  // r11.x <- streams.alphaRoughness_id63
mov r11.z, r0.w  // r11.z <- streams.NdotV_id65
mov r12.xyz, r9.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r6.w, r3.w, l(1)
  breakc_nz r6.w
  ige r6.w, r3.w, cb1[40].w
  if_nz r6.w
    break 
  endif 

#line 565
  dp3 r6.w, r6.xyzx, -cb1[41].xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.NdotL_id43

#line 403
  ishl r7.w, r3.w, l(2)  // r7.w <- cascadeIndexBase

#line 410
  lt r8.w, cb1[r7.w + 62].x, r5.w

#line 413
  and r8.w, r8.w, l(1)  // r8.w <- cascadeIndex

#line 410
  bfi r11.yw, l(0, 30, 0, 30), l(0, 2, 0, 2), r3.wwww, l(0, 1, 0, 2)
  lt r9.w, cb1[r11.y + 62].x, r5.w

#line 413
  movc r8.w, r9.w, l(2), r8.w

#line 410
  lt r9.w, cb1[r11.w + 62].x, r5.w

#line 413
  movc r8.w, r9.w, l(3), r8.w

#line 300
  add r10.w, -r6.w, l(1.000000)
  max r10.w, r10.w, l(0.000000)  // r10.w <- normalOffsetScale
  mul r10.w, r2.w, r10.w

#line 417
  mad r4.xyz, r10.wwww, r6.xyzx, r5.xyzx  // r4.x <- shadowPosition.x; r4.y <- shadowPosition.y; r4.z <- shadowPosition.z

#line 293
  bfi r10.w, l(30), l(2), r3.w, r8.w
  ishl r11.y, r8.w, l(2)
  bfi r11.y, l(30), l(4), r3.w, r11.y
  dp4 r13.x, r4.xyzw, cb1[r11.y + 44].xyzw  // r13.x <- shadowPosition.x
  dp4 r13.y, r4.xyzw, cb1[r11.y + 45].xyzw  // r13.y <- shadowPosition.y
  dp4 r11.w, r4.xyzw, cb1[r11.y + 46].xyzw  // r11.w <- shadowPosition.z
  dp4 r11.y, r4.xyzw, cb1[r11.y + 47].xyzw  // r11.y <- shadowPosition.w
  add r13.z, r11.w, -cb1[60].x  // r13.z <- shadowPosition.z
  div r13.xyz, r13.xyzx, r11.yyyy

#line 229
  mad r11.yw, r13.xxxy, cb1[43].xxxy, l(0.000000, 0.500000, 0.000000, 0.500000)
  round_ni r13.xy, r11.ywyy  // r13.x <- base_uv.x; r13.y <- base_uv.y
  add r11.yw, r11.yyyw, -r13.xxxy  // r11.y <- s; r11.w <- t
  add r13.xy, r13.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r13.xy, r13.xyxx, cb1[43].zwzz

#line 242
  mad r14.xy, -r11.wyww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r14.y <- uw0; r14.x <- vw0
  mad r14.zw, r11.yyyw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r14.z <- uw2; r14.w <- vw2
  mad r15.xy, -r11.ywyy, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r15.xy, r15.xyxx, r14.yxyy
  add r15.zw, r11.yyyw, l(0.000000, 0.000000, 3.000000, 3.000000)
  div r11.yw, r11.yyyw, r14.zzzw
  add r16.xw, r15.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r16.x <- u0; r16.w <- v0
  mul r16.yz, r15.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r16.z <- u1; r16.y <- v1
  add r15.xy, r11.ywyy, l(2.000000, 2.000000, 0.000000, 0.000000)  // r15.x <- u2; r15.y <- v2
  mul r11.y, r14.x, r14.y
  mad r17.xyzw, r16.xwzw, cb1[43].zwzw, r13.xyxy

#line 209
  sample_c_indexable(texture2d)(float,float,float,float) r11.w, r17.xyxx, t5.xxxx, s1, r13.z  // r11.w <- <SampleTextureAndCompare_id108 return value>

#line 251
  mul r17.xy, r14.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 209
  sample_c_indexable(texture2d)(float,float,float,float) r12.w, r17.zwzz, t5.xxxx, s1, r13.z  // r12.w <- <SampleTextureAndCompare_id108 return value>

#line 249
  mul r12.w, r12.w, r17.x
  mad r11.y, r11.y, r11.w, r12.w  // r11.y <- shadow

#line 254
  mul r14.xy, r14.xyxx, r14.zwzz
  mov r15.zw, r16.wwwy
  mad r18.xyzw, r15.xzxw, cb1[43].zwzw, r13.xyxy

#line 209
  sample_c_indexable(texture2d)(float,float,float,float) r11.w, r18.xyxx, t5.xxxx, s1, r13.z  // r11.w <- <SampleTextureAndCompare_id108 return value>

#line 250
  mad r11.y, r14.x, r11.w, r11.y
  mad r19.xyzw, r16.xyzy, cb1[43].zwzw, r13.xyxy

#line 209
  sample_c_indexable(texture2d)(float,float,float,float) r11.w, r19.xyxx, t5.xxxx, s1, r13.z

#line 251
  mad r11.y, r17.y, r11.w, r11.y

#line 209
  sample_c_indexable(texture2d)(float,float,float,float) r11.w, r19.zwzz, t5.xxxx, s1, r13.z

#line 252
  mad r11.y, r11.w, l(49.000000), r11.y

#line 255
  mul r15.zw, r14.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 209
  sample_c_indexable(texture2d)(float,float,float,float) r11.w, r18.zwzz, t5.xxxx, s1, r13.z

#line 253
  mad r11.y, r15.z, r11.w, r11.y
  mov r16.y, r15.y
  mad r16.xyzw, r16.xyzy, cb1[43].zwzw, r13.xyxy

#line 209
  sample_c_indexable(texture2d)(float,float,float,float) r11.w, r16.xyxx, t5.xxxx, s1, r13.z

#line 254
  mad r11.y, r14.y, r11.w, r11.y

#line 209
  sample_c_indexable(texture2d)(float,float,float,float) r11.w, r16.zwzz, t5.xxxx, s1, r13.z

#line 255
  mad r11.y, r15.w, r11.w, r11.y
  mul r11.w, r14.w, r14.z
  mad r13.xy, r15.xyxx, cb1[43].zwzz, r13.xyxx

#line 209
  sample_c_indexable(texture2d)(float,float,float,float) r12.w, r13.xyxx, t5.xxxx, s1, r13.z  // r12.w <- <SampleTextureAndCompare_id108 return value>

#line 256
  mad r11.y, r11.w, r12.w, r11.y
  mul r11.w, r11.y, l(0.006944)  // r11.w <- shadow

#line 422
  iadd r12.w, r10.w, l(-1)
  add r12.w, -cb1[r12.w + 62].x, cb1[r10.w + 62].x
  movc r12.w, r8.w, r12.w, cb1[r10.w + 62].x  // r12.w <- splitSize
  add r10.w, -r5.w, cb1[r10.w + 62].x
  div r10.w, r10.w, r12.w  // r10.w <- splitDist
  lt r12.w, r10.w, l(0.200000)

#line 293
  ishl r7.w, r7.w, l(2)
  imad r7.w, r8.w, l(4), r7.w
  iadd r7.w, r7.w, l(4)
  dp4 r13.x, r4.xyzw, cb1[r7.w + 44].xyzw  // r13.x <- shadowPosition.x
  dp4 r13.y, r4.xyzw, cb1[r7.w + 45].xyzw  // r13.y <- shadowPosition.y
  dp4 r8.w, r4.xyzw, cb1[r7.w + 46].xyzw  // r8.w <- shadowPosition.z
  dp4 r4.x, r4.xyzw, cb1[r7.w + 47].xyzw  // r4.x <- shadowPosition.w
  add r13.z, r8.w, -cb1[60].x  // r13.z <- shadowPosition.z
  div r4.xyz, r13.xyzx, r4.xxxx  // r4.x <- shadowPosition.x; r4.y <- shadowPosition.y; r4.z <- shadowPosition.z

#line 229
  mad r4.xy, r4.xyxx, cb1[43].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r13.xy, r4.xyxx  // r13.x <- base_uv.x; r13.y <- base_uv.y
  add r4.xy, r4.xyxx, -r13.xyxx  // r4.x <- s; r4.y <- t
  add r13.xy, r13.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r13.xy, r13.xyxx, cb1[43].zwzz

#line 242
  mad r13.zw, -r4.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r13.w <- uw0; r13.z <- vw0
  mad r14.xy, r4.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r14.x <- uw2; r14.y <- vw2
  mad r14.zw, -r4.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r14.zw, r14.zzzw, r13.wwwz
  add r15.xy, r4.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r4.xy, r4.xyxx, r14.xyxx
  add r16.xw, r14.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r16.x <- u0; r16.w <- v0
  mul r16.yz, r15.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r16.z <- u1; r16.y <- v1
  add r15.xy, r4.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r15.x <- u2; r15.y <- v2
  mad r17.xyzw, r16.xwzw, cb1[43].zwzw, r13.xyxy

#line 209
  sample_c_indexable(texture2d)(float,float,float,float) r4.x, r17.xyxx, t5.xxxx, s1, r4.z  // r4.x <- <SampleTextureAndCompare_id108 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r4.y, r17.zwzz, t5.xxxx, s1, r4.z  // r4.y <- <SampleTextureAndCompare_id108 return value>

#line 253
  mov r15.zw, r16.wwwy
  mad r17.xyzw, r15.xzxw, cb1[43].zwzw, r13.xyxy

#line 209
  sample_c_indexable(texture2d)(float,float,float,float) r7.w, r17.xyxx, t5.xxxx, s1, r4.z  // r7.w <- <SampleTextureAndCompare_id108 return value>

#line 252
  mad r18.xyzw, r16.xyzy, cb1[43].zwzw, r13.xyxy

#line 209
  sample_c_indexable(texture2d)(float,float,float,float) r8.w, r18.xyxx, t5.xxxx, s1, r4.z  // r8.w <- <SampleTextureAndCompare_id108 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r14.z, r18.zwzz, t5.xxxx, s1, r4.z  // r14.z <- <SampleTextureAndCompare_id108 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r14.w, r17.zwzz, t5.xxxx, s1, r4.z  // r14.w <- <SampleTextureAndCompare_id108 return value>

#line 254
  mov r16.y, r15.y
  mad r16.xyzw, r16.xyzy, cb1[43].zwzw, r13.xyxy

#line 209
  sample_c_indexable(texture2d)(float,float,float,float) r15.z, r16.xyxx, t5.xxxx, s1, r4.z  // r15.z <- <SampleTextureAndCompare_id108 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r15.w, r16.zwzz, t5.xxxx, s1, r4.z  // r15.w <- <SampleTextureAndCompare_id108 return value>

#line 256
  mad r13.xy, r15.xyxx, cb1[43].zwzz, r13.xyxx

#line 209
  sample_c_indexable(texture2d)(float,float,float,float) r4.z, r13.xyxx, t5.xxxx, s1, r4.z  // r4.z <- <SampleTextureAndCompare_id108 return value>

#line 424
  if_nz r12.w

#line 427
    if_z r9.w
      mul_sat r9.w, r10.w, l(5.000000)
      mad r10.w, r9.w, l(-2.000000), l(3.000000)
      mul r9.w, r9.w, r9.w
      mul r9.w, r9.w, r10.w  // r9.w <- lerpAmt

#line 248
      mul r10.w, r13.z, r13.w
      mul r4.y, r13.z, r4.y
      mul r4.y, r4.y, l(7.000000)
      mad r4.x, r10.w, r4.x, r4.y  // r4.x <- shadow

#line 254
      mul r13.xy, r13.zwzz, r14.xyxx

#line 250
      mad r4.x, r13.x, r7.w, r4.x
      mul r4.y, r8.w, r13.w
      mad r4.x, r4.y, l(7.000000), r4.x
      mad r4.x, r14.z, l(49.000000), r4.x
      mul r4.y, r14.w, r14.x
      mad r4.x, r4.y, l(7.000000), r4.x
      mad r4.x, r13.y, r15.z, r4.x
      mul r4.y, r14.y, r15.w
      mad r4.x, r4.y, l(7.000000), r4.x
      mul r4.y, r14.y, r14.x
      mad r4.x, r4.y, r4.z, r4.x
      mul r4.x, r4.x, l(0.006944)

#line 433
      mad r4.y, r11.y, l(0.006944), -r4.x
      mad r11.w, r9.w, r4.y, r4.x
    endif 
  endif   // r11.w <- shadow

#line 567
  mul r4.xyz, r11.wwww, cb1[42].xyzx
  mul r4.xyz, r6.wwww, r4.xyzx  // r4.x <- streams.lightColorNdotL_id40.x; r4.y <- streams.lightColorNdotL_id40.y; r4.z <- streams.lightColorNdotL_id40.z

#line 632
  add r13.xyz, r7.xyzx, -cb1[41].xyzx
  dp3 r7.w, r13.xyzx, r13.xyzx
  rsq r7.w, r7.w
  mul r13.xyz, r7.wwww, r13.xyzx  // r13.x <- streams.H_id68.x; r13.y <- streams.H_id68.y; r13.z <- streams.H_id68.z
  dp3 r7.w, r6.xyzx, r13.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotH_id69
  dp3 r8.w, -cb1[41].xyzx, r13.xyzx
  max r8.w, r8.w, l(0.000100)  // r8.w <- streams.LdotH_id70

#line 628
  mul r13.xyz, r4.xyzx, r8.xyzx

#line 793
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 282
  add r14.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r8.w, -r8.w, l(1.000000)
  mul r9.w, r8.w, r8.w
  mul r9.w, r9.w, r9.w
  mul r8.w, r8.w, r9.w
  mad r14.xyz, r14.xyzx, r8.wwww, r10.xyzx  // r14.x <- <FresnelSchlick_id175 return value>.x; r14.y <- <FresnelSchlick_id175 return value>.y; r14.z <- <FresnelSchlick_id175 return value>.z

#line 277
  mul r8.w, r11.x, l(0.500000)  // r8.w <- k
  mad r9.w, -r11.x, l(0.500000), l(1.000000)
  mad r10.w, r6.w, r9.w, r8.w
  div r10.w, r6.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id193 return value>
  mad r8.w, r11.z, r9.w, r8.w
  div r8.w, r11.z, r8.w  // r8.w <- <VisibilityhSchlickGGX_id193 return value>

#line 329
  mul r8.w, r8.w, r10.w
  mul r6.w, r11.z, r6.w
  div r6.w, r8.w, r6.w  // r6.w <- <VisibilitySmithSchlickGGX_id195 return value>

#line 324
  mul r8.w, r11.x, r11.x  // r8.w <- alphaR2
  mul r7.w, r7.w, r7.w
  mad r9.w, r11.x, r11.x, l(-1.000000)
  mad r7.w, r7.w, r9.w, l(1.000000)
  max r7.w, r7.w, l(0.000100)
  mul r7.w, r7.w, r7.w
  mul r7.w, r7.w, l(3.141593)
  div r7.w, r8.w, r7.w  // r7.w <- <NormalDistributionGGX_id209 return value>

#line 622
  mul r14.xyz, r6.wwww, r14.xyzx
  mul r14.xyz, r7.wwww, r14.xyzx
  mul r4.xyz, r4.xyzx, r14.xyzx

#line 797
  mad r12.xyz, r4.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 783
  iadd r3.w, r3.w, l(1)

#line 799
endloop 

#line 379
add r2.w, -r1.w, l(1.000000)  // r2.w <- x

#line 387
mul r3.w, r2.w, r2.w

#line 395
mul r4.x, r3.w, l(1.895000)

#line 387
mad r4.x, r2.w, l(-0.168800), r4.x
mad r4.y, r0.w, l(-4.853000), l(0.990300)
mul r4.z, r0.w, r0.w
mad r4.y, r4.z, l(8.404000), r4.y
mul r4.w, r0.w, r4.z
mad r4.y, r4.w, l(-5.069000), r4.y
min_sat r4.x, r4.y, r4.x  // r4.x <- bias

#line 395
mad r4.y, r2.w, l(1.699000), l(0.604500)
mad r4.y, r0.w, l(-0.522800), r4.y
mad r4.y, r3.w, l(-3.603000), r4.y
mul r0.w, r0.w, r2.w
mad r0.w, r0.w, l(1.404000), r4.y
mad r0.w, r4.z, l(0.193900), r0.w
mul r2.w, r2.w, r3.w
mad_sat r0.w, r2.w, l(2.661000), r0.w  // r0.w <- delta
add r0.w, -r4.x, r0.w  // r0.w <- scale
mul_sat r2.w, r3.y, l(50.000000)
mul r2.w, r2.w, r4.x  // r2.w <- bias
mad r3.xyz, r3.xyzx, r0.wwww, r2.wwww  // r3.x <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id210 return value>.x; r3.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id210 return value>.y; r3.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id210 return value>.z

#line 549
mul r4.xyz, r3.xyzx, cb1[66].xyzx  // r4.x <- <ComputeEnvironmentLightContribution_id422 return value>.x; r4.y <- <ComputeEnvironmentLightContribution_id422 return value>.y; r4.z <- <ComputeEnvironmentLightContribution_id422 return value>.z

#line 811
mad r4.xyz, r2.xyzx, cb1[66].xyzx, r4.xyzx  // r4.x <- environmentLightingContribution.x; r4.y <- environmentLightingContribution.y; r4.z <- environmentLightingContribution.z

#line 538
dp3 r0.w, r0.xyzx, cb1[76].xyzx  // r0.w <- sampleDirection.x
dp3 r2.w, r0.xyzx, cb1[77].xyzx  // r2.w <- sampleDirection.y
dp3 r3.w, r0.xyzx, cb1[78].xyzx  // r3.w <- sampleDirection.z

#line 358
mul r4.w, r2.w, r2.w  // r4.w <- y2
mul r5.x, r3.w, r3.w  // r5.x <- z2

#line 363
mad r5.yzw, cb1[68].xxyz, r2.wwww, cb1[67].xxyz  // r5.y <- color.x; r5.z <- color.y; r5.w <- color.z
mad r5.yzw, cb1[69].xxyz, -r3.wwww, r5.yyzw
mad r5.yzw, cb1[70].xxyz, r0.wwww, r5.yyzw

#line 368
mul r6.xyz, r2.wwww, cb1[71].xyzx
mad r5.yzw, r6.xxyz, r0.wwww, r5.yyzw
mul r6.xyz, r2.wwww, cb1[72].xyzx
mad r5.yzw, r6.xxyz, -r3.wwww, r5.yyzw
mad r2.w, r5.x, l(3.000000), l(-1.000000)
mad r5.xyz, cb1[73].xyzx, r2.wwww, r5.yzwy  // r5.x <- color.x; r5.y <- color.y; r5.z <- color.z
mul r6.xyz, r0.wwww, cb1[74].xyzx
mad r5.xyz, r6.xyzx, -r3.wwww, r5.xyzx
mad r0.w, r0.w, r0.w, -r4.w
mad r5.xyz, cb1[75].xyzx, r0.wwww, r5.xyzx

#line 540
mul r5.xyz, r5.xyzx, cb1[80].xxxx  // r5.x <- streams.envLightDiffuseColor_id41.x; r5.y <- streams.envLightDiffuseColor_id41.y; r5.z <- streams.envLightDiffuseColor_id41.z
dp3 r0.w, -r1.xyzx, r0.xyzx
add r0.w, r0.w, r0.w
mad r0.xyz, r0.xyzx, -r0.wwww, -r1.xyzx  // r0.x <- sampleDirection.x; r0.y <- sampleDirection.y; r0.z <- sampleDirection.z
dp3 r1.x, r0.xyzx, cb1[76].xyzx  // r1.x <- sampleDirection.x
dp3 r1.y, r0.xyzx, cb1[77].xyzx  // r1.y <- sampleDirection.y
dp3 r0.x, r0.xyzx, cb1[78].xyzx  // r0.x <- sampleDirection.z
mov r1.z, -r0.x  // r1.z <- sampleDirection.z

#line 349
sqrt r0.x, r1.w
mul r0.x, r0.x, cb1[75].w  // r0.x <- mipLevel
sample_l_indexable(texturecube)(float,float,float,float) r0.xyz, r1.xyzx, t6.xyzw, s0, r0.x  // r0.x <- <Compute_id262 return value>.x; r0.y <- <Compute_id262 return value>.y; r0.z <- <Compute_id262 return value>.z

#line 544
mul r0.xyz, r0.xyzx, cb1[80].xxxx  // r0.x <- streams.envLightSpecularColor_id42.x; r0.y <- streams.envLightSpecularColor_id42.y; r0.z <- streams.envLightSpecularColor_id42.z

#line 819
mad r1.xyz, r2.xyzx, r5.xyzx, r4.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 823
mad r0.xyz, r3.xyzx, r0.xyzx, r1.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 826
mad o0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 964
ret 
// Approximately 519 instruction slots used
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
const static bool TInvert_id193 = false;
const static bool TIsEnergyConservative_id199 = false;
static const float PI_id201 = 3.14159265358979323846;
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
Texture2D Texture_id183;
SamplerState Sampler_id184;
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
    float2 TexCoord_id151;
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
    float2 TexCoord_id151;
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
    float2 TexCoord_id151 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    float3 meshNormal_id14 : NORMAL;
    float2 TexCoord_id151 : TEXCOORD0;
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
    float2 scale_id186;
    float2 offset_id187;
    float4 constantColor_id188;
    float constantFloat_id192;
    float constantFloat_id195;
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
float VisibilityhSchlickGGX_id193(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id175(float3 f0, float3 f90, float lOrVDotH)
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
float NormalDistributionGGX_id209(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    return alphaR2 / (PI_id201 * pow(max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001), 2.0f));
}
float VisibilitySmithSchlickGGX_id195(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id193(alphaR, nDotL) * VisibilityhSchlickGGX_id193(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id181(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id175(f0, 1.0f, lOrVDotH);
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
float4 Compute_id262(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id63;
    float mipLevel = sqrt(alpha) * MipCount_id177;
    return CubeMap_id178.SampleLevel(LinearSampler_id133, direction, mipLevel);
}
float4 Compute_id257(float3 direction)
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
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id210(float3 specularColor, float alphaR, float nDotV)
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
    return NormalDistributionGGX_id209(streams.alphaRoughness_id63, streams.NdotH_id69);
}
float Compute_id314(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id195(streams.alphaRoughness_id63, streams.NdotL_id43, streams.NdotV_id65);
}
float3 Compute_id285(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id181(f0, streams.LdotH_id70);
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
float GetFilterSquareRoughnessAdjustment_id147(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
float4 BasicBlend_id457(float4 backColor, float4 frontColor, float3 interColor)
{
    return float4(frontColor.a * backColor.a * interColor + frontColor.a * (1.0f - backColor.a) * frontColor.rgb + (1.0f - frontColor.a) * backColor.a * backColor.rgb, lerp(frontColor.a, 1.0f, backColor.a));
}
float4 Compute_id277()
{
    return constantColor_id188;
}
float4 Compute_id275(inout PS_STREAMS streams)
{
    return Texture_id183.Sample(Sampler_id184, streams.TexCoord_id151 * scale_id186 + offset_id187).rgba;
}
void ResetStream_id213()
{
}
void PrepareEnvironmentLight_id274(inout PS_STREAMS streams)
{
    float ambientAccessibility = streams.matAmbientOcclusion_id51;
    float3 sampleDirection = mul(streams.normalWS_id16, (float3x3)SkyMatrix_id179);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id41 = Compute_id257(sampleDirection).rgb * Intensity_id180 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id58.x;
    sampleDirection = reflect(-streams.viewWS_id61, streams.normalWS_id16);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id179);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id42 = Compute_id262(streams, sampleDirection).rgb * Intensity_id180 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeEnvironmentLightContribution_id422(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id210(specularColor, streams.alphaRoughness_id63, streams.NdotV_id65) * streams.envLightSpecularColor_id42;
}
float3 ComputeEnvironmentLightContribution_id373(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id268(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id174 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareDirectLight_id251(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id98(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id99(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id252()
{
    return LightCount_id97;
}
int GetMaxLightCount_id253()
{
    return TMaxLightCount_id98;
}
void PrepareDirectLights_id249()
{
}
void PrepareDirectLight_id243(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id94(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id95(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id244()
{
    return LightCount_id94;
}
int GetMaxLightCount_id245()
{
    return TMaxLightCount_id95;
}
void PrepareDirectLights_id241()
{
}
void PrepareDirectLight_id234(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id86(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id87(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id237(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
int GetMaxLightCount_id236(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
void PrepareDirectLights_id232()
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
    return diffuseColor / PI_id201 * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.x;
}
void PrepareMaterialPerDirectLight_id27(inout PS_STREAMS streams)
{
    streams.H_id68 = normalize(streams.viewWS_id61 + streams.lightDirectionWS_id38);
    streams.NdotH_id69 = max(dot(streams.normalWS_id16, streams.H_id68), 0.0001f);
    streams.LdotH_id70 = max(dot(streams.lightDirectionWS_id38, streams.H_id68), 0.0001f);
    streams.VdotH_id71 = streams.LdotH_id70;
}
void PrepareDirectLight_id224(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id78(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id79(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id228(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
int GetMaxLightCount_id227(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
void PrepareDirectLights_id226(inout PS_STREAMS streams)
{
    PrepareLightData_id82(streams);
}
void PrepareMaterialForLightingAndShading_id212(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id147(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id211(inout PS_STREAMS streams)
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
    return float4(constantFloat_id195, constantFloat_id195, constantFloat_id195, constantFloat_id195);
}
float4 Compute_id281()
{
    return float4(constantFloat_id192, constantFloat_id192, constantFloat_id192, constantFloat_id192);
}
float4 Compute_id280(inout PS_STREAMS streams)
{
    float4 backColor = Compute_id275(streams);
    float4 frontColor = Compute_id277();
    float3 interColor = frontColor.rgb + backColor.rgb;
    return BasicBlend_id457(backColor, frontColor, interColor);
}
void ResetStream_id216(inout PS_STREAMS streams)
{
    ResetStream_id213();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id452(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id19(streams.matNormal_id45);
    ResetLightStream_id211(streams);
    PrepareMaterialForLightingAndShading_id212(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id226(streams);
        const int maxLightCount = GetMaxLightCount_id227(streams);
        int count = GetLightCount_id228(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id224(streams, i);
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
        PrepareDirectLights_id232();
        const int maxLightCount = GetMaxLightCount_id236(streams);
        int count = GetLightCount_id237(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id234(streams, i);
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
        PrepareDirectLights_id241();
        const int maxLightCount = GetMaxLightCount_id245();
        int count = GetLightCount_id244();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id243(streams, i);
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
        PrepareDirectLights_id249();
        const int maxLightCount = GetMaxLightCount_id253();
        int count = GetLightCount_id252();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id251(streams, i);
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
        PrepareEnvironmentLight_id268(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id373(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id422(streams);
        }
    }

    {
        PrepareEnvironmentLight_id274(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id373(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id422(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id201 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id437(inout PS_STREAMS streams)
{
    float metalness = Compute_id283().r;
    streams.matSpecular_id49 = lerp(0.02, streams.matDiffuse_id47.rgb, metalness);
    streams.matDiffuse_id47.rgb = lerp(streams.matDiffuse_id47.rgb, 0, metalness);
}
void Compute_id432(inout PS_STREAMS streams)
{
    float glossiness = Compute_id281().r;
    streams.matGlossiness_id48 = glossiness;
}
void Compute_id427(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id280(streams);
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id218(inout PS_STREAMS streams)
{
    ResetStream_id216(streams);
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
    ResetStream_id218(streams);
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
    streams.TexCoord_id151 = __input__.TexCoord_id151;
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
    streams.TexCoord_id151 = __input__.TexCoord_id151;
    VSMain_id8(streams);
    GenerateNormal_VS_id17(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id20 = streams.DepthVS_id20;
    __output__.normalWS_id16 = streams.normalWS_id16;
    __output__.TexCoord_id151 = streams.TexCoord_id151;
    return __output__;
}
