/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceNormalMap<true,true,false> [{normalMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.NormalMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = ComputeColorConstantFloatLink<Material.GlossinessValue>}], mixin MaterialSurfaceMetalness [{metalnessMap = ComputeColorConstantFloatLink<Material.MetalnessValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAmbientOcclusion,r> [{computeColorSource = ComputeColorTextureScaledOffsetDynamicSampler<Material.AmbientOcclusionMap,TEXCOORD0,Material.Sampler.i0,r,Material.TextureScale.i1,Material.TextureOffset.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAmbientOcclusionDirectLightingFactor,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.AmbientOcclusionDirectLightingFactorValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavityValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavityDiffuse,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavityDiffuseValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavitySpecular,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavitySpecularValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Material.HasNormalMap: True
@P Lighting.DirectLightGroups: LightClusteredPointGroup<64>, LightClusteredSpotGroup<64>, mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false>, ShadowMapFilterPcf<PerView.Lighting,5>
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
cbuffer PerMaterial [Size: 80]
@C    constantColor_id180 => Material.DiffuseValue
@C    scale_id185 => Material.TextureScale
@C    offset_id186 => Material.TextureOffset
@C    constantFloat_id191 => Material.GlossinessValue
@C    constantFloat_id194 => Material.MetalnessValue
@C    scale_id201 => Material.TextureScale.i1
@C    offset_id202 => Material.TextureOffset.i1
@C    constantFloat_id204 => Material.AmbientOcclusionDirectLightingFactorValue
@C    constantFloat_id206 => Material.CavityValue
@C    constantFloat_id208 => Material.CavityDiffuseValue
@C    constantFloat_id210 => Material.CavitySpecularValue
cbuffer PerView [Size: 1040]
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
@C    ShadowMapTextureSize_id98 => ShadowMap.TextureSize.directLightGroups[2]
@C    ShadowMapTextureTexelSize_id99 => ShadowMap.TextureTexelSize.directLightGroups[2]
@C    WorldToShadowCascadeUV_id160 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[2]
@C    DepthBiases_id161 => ShadowMapReceiverBase.DepthBiases.directLightGroups[2]
@C    OffsetScales_id162 => ShadowMapReceiverBase.OffsetScales.directLightGroups[2]
@C    CascadeDepthSplits_id168 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[2]
@C    Bias_id170 => ShadowMapFilterPcf.Bias.directLightGroups[2]
@C    AmbientLight_id171 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id173 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id174 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id176 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id177 => LightSkyboxShader.Intensity.environmentLights[1]
***************************
******  Resources    ******
***************************
@R    Texture_id182 => Material.NormalMap [Stage: None, Slot: (-1--1)]
@R    Texture_id182 => Material.NormalMap [Stage: None, Slot: (-1--1)]
@R    Sampler_id183 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Sampler_id183 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Texture_id199 => Material.AmbientOcclusionMap [Stage: None, Slot: (-1--1)]
@R    Texture_id199 => Material.AmbientOcclusionMap [Stage: None, Slot: (-1--1)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id97 => ShadowMap.Texture.directLightGroups[2] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id97 => ShadowMap.Texture.directLightGroups[2] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id175 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id175 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id130 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id132 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    Sampler_id183 => Material.Sampler.i0 [Stage: Pixel, Slot: (2-2)]
@R    Texture_id182 => Material.NormalMap [Stage: Pixel, Slot: (0-0)]
@R    Texture_id199 => Material.AmbientOcclusionMap [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: Pixel, Slot: (2-2)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: Pixel, Slot: (3-3)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (4-4)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (5-5)]
@R    ShadowMapTexture_id97 => ShadowMap.Texture.directLightGroups[2] [Stage: Pixel, Slot: (6-6)]
@R    CubeMap_id175 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (7-7)]
@R    PerDraw => PerDraw [Stage: Pixel, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Pixel, Slot: (1-1)]
@R    PerView => PerView [Stage: Pixel, Slot: (2-2)]
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
@S    MaterialSurfaceNormalMap => 9d09de7bfdbcadbc973dbfcc57934c02
@S    ComputeColorTextureScaledOffsetDynamicSampler => 36853d1a7bd080d8e9e9c5137a104b79
@S    DynamicTexture => 74e692ca9cc93b6cc6965bc380e07efe
@S    DynamicSampler => 0e1b689d1f965f3f34ae76abdf34dea7
@S    DynamicTextureStream => 546b0c40a42b4fe0e5613396b0ed4d66
@S    MaterialSurfaceGlossinessMap => fb8774941dd1a7b0ced77715861382a4
@S    ComputeColorConstantFloatLink => a459500fd7f6c5988997e81bf766f988
@S    MaterialSurfaceMetalness => fa70dc6a8326fdbb39599023eff06cda
@S    MaterialSurfaceSetStreamFromComputeColor => 1d00f7d823647b307a55871a0b3eba09
@S    IMaterialSurfaceVertex => 8e13e0524d4025cb811c673aeb77f45b
@S    MaterialVertexStream => fe2d4e2abe57231a93785fe59684b199
@S    MaterialDisplacementStream => 5112948b0773a844410cc7c3df78184a
@S    IMaterialSurfaceDomain => a787b7e989be07714532cd1ffc35ef2a
@S    MaterialDomainStream => 8be905888c6f3153139bc1fa900fdf5f
@S    MaterialTessellationStream => 87652904dbe93d91999520c7e41f52a1
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
@G    Vertex => f55d001d54add32a03e6345a046aebad
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
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64 [unused]
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
//   } Lights_id96;                     // Offset:  400 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id98;  // Offset:  432 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id99;// Offset:  440 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id160[4];// Offset:  448 Size:   256 [unused]
//   float DepthBiases_id161;           // Offset:  704 Size:     4 [unused]
//   float OffsetScales_id162;          // Offset:  720 Size:     4 [unused]
//   float CascadeDepthSplits_id168[4]; // Offset:  736 Size:    52 [unused]
//   float Bias_id170;                  // Offset:  788 Size:     4 [unused]
//   float3 AmbientLight_id171;         // Offset:  800 Size:    12 [unused]
//   float3 SphericalColors_id173[9];   // Offset:  816 Size:   140 [unused]
//   float MipCount_id174;              // Offset:  956 Size:     4 [unused]
//   float4x4 SkyMatrix_id176;          // Offset:  960 Size:    64 [unused]
//   float Intensity_id177;             // Offset: 1024 Size:     4 [unused]
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
// TANGENT                  0   xyzw        2     NONE   float   xyzw
// TEXCOORD                 0   xy          3     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMAL                   0    yzw        2     NONE   float    yzw
// TANGENT                  0   xyzw        3     NONE   float   xyzw
// TEXCOORD                 0   xy          4     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[4], immediateIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input v2.xyzw
dcl_input v3.xy
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.x
dcl_output o2.yzw
dcl_output o3.xyzw
dcl_output o4.xy
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.meshNormal_id14.x; v1.y <- __input__.meshNormal_id14.y; v1.z <- __input__.meshNormal_id14.z; 
//   v2.x <- __input__.meshTangent_id15.x; v2.y <- __input__.meshTangent_id15.y; v2.z <- __input__.meshTangent_id15.z; v2.w <- __input__.meshTangent_id15.w; 
//   v3.x <- __input__.TexCoord_id148.x; v3.y <- __input__.TexCoord_id148.y; 
//   o4.x <- <VSMain return value>.TexCoord_id148.x; o4.y <- <VSMain return value>.TexCoord_id148.y; 
//   o3.x <- <VSMain return value>.meshTangent_id15.x; o3.y <- <VSMain return value>.meshTangent_id15.y; o3.z <- <VSMain return value>.meshTangent_id15.z; o3.w <- <VSMain return value>.meshTangent_id15.w; 
//   o2.x <- <VSMain return value>.DepthVS_id20; o2.y <- <VSMain return value>.meshNormal_id14.x; o2.z <- <VSMain return value>.meshNormal_id14.y; o2.w <- <VSMain return value>.meshNormal_id14.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 954 "C:\_Rapporter-Xenko3D\Rapporter\Rapporter\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_1d06c3ef3da13643db172f648917496f.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 1035
mov o0.xyzw, r0.xyzw

#line 944
dp4 r1.x, r0.xyzw, cb1[19].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 1035
mov o1.w, r1.x
mov o2.x, r1.x

#line 944
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw

#line 1035
mov o2.yzw, v1.xxyz
mov o3.xyzw, v2.xyzw
mov o4.xy, v3.xyxx
ret 
// Approximately 15 instruction slots used
@G    Pixel => afbfed63510b720202cc92dc4d7fcb3b
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
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id32;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id33;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id34; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id35;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id36;                 // Offset:  400 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id180;        // Offset:    0 Size:    16
//   float2 scale_id185;                // Offset:   16 Size:     8
//   float2 offset_id186;               // Offset:   24 Size:     8
//   float constantFloat_id191;         // Offset:   32 Size:     4
//   float constantFloat_id194;         // Offset:   36 Size:     4
//   float2 scale_id201;                // Offset:   40 Size:     8
//   float2 offset_id202;               // Offset:   48 Size:     8
//   float constantFloat_id204;         // Offset:   56 Size:     4
//   float constantFloat_id206;         // Offset:   60 Size:     4
//   float constantFloat_id208;         // Offset:   64 Size:     4
//   float constantFloat_id210;         // Offset:   68 Size:     4
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
//   } Lights_id96;                     // Offset:  400 Size:    28
//   float2 ShadowMapTextureSize_id98;  // Offset:  432 Size:     8
//   float2 ShadowMapTextureTexelSize_id99;// Offset:  440 Size:     8
//   float4x4 WorldToShadowCascadeUV_id160[4];// Offset:  448 Size:   256
//   float DepthBiases_id161;           // Offset:  704 Size:     4
//   float OffsetScales_id162;          // Offset:  720 Size:     4
//   float CascadeDepthSplits_id168[4]; // Offset:  736 Size:    52
//   float Bias_id170;                  // Offset:  788 Size:     4 [unused]
//   float3 AmbientLight_id171;         // Offset:  800 Size:    12
//   float3 SphericalColors_id173[9];   // Offset:  816 Size:   140
//   float MipCount_id174;              // Offset:  956 Size:     4
//   float4x4 SkyMatrix_id176;          // Offset:  960 Size:    64
//   float Intensity_id177;             // Offset: 1024 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// LinearSampler_id130               sampler      NA          NA    0        1
// LinearClampCompareLessEqualSampler_id132  sampler_c      NA          NA    1        1
// Sampler_id183                     sampler      NA          NA    2        1
// Texture_id182                     texture  float4          2d    0        1
// Texture_id199                     texture  float4          2d    1        1
// LightClusters_id85                texture   uint2          3d    2        1
// LightIndices_id86                 texture    uint         buf    3        1
// PointLights_id90                  texture  float4         buf    4        1
// SpotLights_id93                   texture  float4         buf    5        1
// ShadowMapTexture_id97             texture  float4          2d    6        1
// CubeMap_id175                     texture  float4        cube    7        1
// PerDraw                           cbuffer      NA          NA    0        1
// PerMaterial                       cbuffer      NA          NA    1        1
// PerView                           cbuffer      NA          NA    2        1
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
// NORMAL                   0    yzw        2     NONE   float    yzw
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
dcl_constantbuffer cb1[5], immediateIndexed
dcl_constantbuffer cb2[65], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture3d (uint,uint,uint,uint) t2
dcl_resource_buffer (uint,uint,uint,uint) t3
dcl_resource_buffer (float,float,float,float) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texturecube (float,float,float,float) t7
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.xyz, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xy
dcl_output o0.xyzw
dcl_temps 21
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id20; v2.y <- __input__.meshNormal_id14.x; v2.z <- __input__.meshNormal_id14.y; v2.w <- __input__.meshNormal_id14.z; 
//   v3.x <- __input__.meshTangent_id15.x; v3.y <- __input__.meshTangent_id15.y; v3.z <- __input__.meshTangent_id15.z; v3.w <- __input__.meshTangent_id15.w; 
//   v4.x <- __input__.TexCoord_id148.x; v4.y <- __input__.TexCoord_id148.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 935 "C:\_Rapporter-Xenko3D\Rapporter\Rapporter\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_1d06c3ef3da13643db172f648917496f.hlsl"
dp3 r0.x, v2.yzwy, v2.yzwy
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.yzwy  // r0.x <- streams.meshNormal_id14.x; r0.y <- streams.meshNormal_id14.y; r0.z <- streams.meshNormal_id14.z
dp3 r0.w, v3.xyzx, v3.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v3.xyzx  // r1.x <- tangent.x; r1.y <- tangent.y; r1.z <- tangent.z
mul r2.xyz, r0.zxyz, r1.yzxy
mad r2.xyz, r0.yzxy, r1.zxyz, -r2.xyzx
mul r2.xyz, r2.xyzx, v3.wwww  // r2.x <- bitangent.x; r2.y <- bitangent.y; r2.z <- bitangent.z

#line 971
dp3 r3.x, r1.xyzx, cb0[0].xyzx  // r3.x <- streams.tangentToWorld_id17._m00
dp3 r4.x, r1.xyzx, cb0[1].xyzx  // r4.x <- streams.tangentToWorld_id17._m01
dp3 r1.x, r1.xyzx, cb0[2].xyzx  // r1.x <- streams.tangentToWorld_id17._m02
dp3 r3.y, r2.xyzx, cb0[0].xyzx  // r3.y <- streams.tangentToWorld_id17._m10
dp3 r4.y, r2.xyzx, cb0[1].xyzx  // r4.y <- streams.tangentToWorld_id17._m11
dp3 r1.y, r2.xyzx, cb0[2].xyzx  // r1.y <- streams.tangentToWorld_id17._m12
dp3 r3.z, r0.xyzx, cb0[0].xyzx  // r3.z <- streams.tangentToWorld_id17._m20
dp3 r4.z, r0.xyzx, cb0[1].xyzx  // r4.z <- streams.tangentToWorld_id17._m21
dp3 r1.z, r0.xyzx, cb0[2].xyzx  // r1.z <- streams.tangentToWorld_id17._m22

#line 958
add r0.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx  // r0.x <- streams.viewWS_id61.x; r0.y <- streams.viewWS_id61.y; r0.z <- streams.viewWS_id61.z

#line 684
mad r2.xy, v4.xyxx, cb1[1].xyxx, cb1[1].zwzz
sample_indexable(texture2d)(float,float,float,float) r2.xy, r2.xyxx, t0.xyzw, s2  // r2.x <- <Compute_id314 return value>.x; r2.y <- <Compute_id314 return value>.y

#line 837
mad r2.xy, r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r2.x <- normal.x; r2.y <- normal.y

#line 841
dp2 r0.w, r2.xyxx, r2.xyxx
add r0.w, -r0.w, l(1.000000)
max r0.w, r0.w, l(0.000000)
sqrt r2.z, r0.w  // r2.z <- normal.z

#line 824
add r5.xyz, cb1[0].xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r5.xyz, cb1[2].yyyy, r5.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r5.x <- streams.matSpecular_id49.x; r5.y <- streams.matSpecular_id49.y; r5.z <- streams.matSpecular_id49.z
mad r6.xyz, cb1[2].yyyy, -cb1[0].xyzx, cb1[0].xyzx  // r6.x <- streams.matDiffuse_id47.x; r6.y <- streams.matDiffuse_id47.y; r6.z <- streams.matDiffuse_id47.z

#line 672
mad r7.xy, v4.xyxx, cb1[2].zwzz, cb1[3].xyxx
sample_indexable(texture2d)(float,float,float,float) r0.w, r7.xyxx, t1.yzwx, s2  // r0.w <- <Compute_id320 return value>.x

#line 652
dp3 r3.x, r2.xyzx, r3.xyzx
dp3 r3.y, r2.xyzx, r4.xyzx
dp3 r3.z, r2.xyzx, r1.xyzx
dp3 r1.x, r3.xyzx, r3.xyzx
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, r3.xyzx  // r1.x <- streams.normalWS_id16.x; r1.y <- streams.normalWS_id16.y; r1.z <- streams.normalWS_id16.z

#line 632
add r1.w, r0.w, l(-1.000000)
mad r1.w, cb1[3].z, r1.w, l(1.000000)  // r1.w <- streams.lightDirectAmbientOcclusion_id44
add r2.w, cb1[3].w, l(-1.000000)
mad r3.xy, cb1[4].xyxx, r2.wwww, l(1.000000, 1.000000, 0.000000, 0.000000)
mul r3.xzw, r3.xxxx, r6.xxyz  // r3.x <- streams.matDiffuseVisible_id62.x; r3.z <- streams.matDiffuseVisible_id62.y; r3.w <- streams.matDiffuseVisible_id62.z
mul r4.xyz, r3.yyyy, r5.xyzx  // r4.x <- streams.matSpecularVisible_id64.x; r4.y <- streams.matSpecularVisible_id64.y; r4.z <- streams.matSpecularVisible_id64.z
dp3 r2.w, r1.xyzx, r0.xyzx
add r3.y, -cb1[2].x, l(1.000000)  // r3.y <- roughness

#line 518
dp3 r2.x, r2.xyzx, r2.xyzx
sqrt r2.y, r2.x  // r2.y <- r
lt r2.z, r2.y, l(1.000000)
add r4.w, -r2.x, l(1.000000)
mul r4.w, r4.w, l(0.500000)
mul r2.x, r2.y, r2.x
mad r2.x, r2.y, l(3.000000), -r2.x
div r2.x, r4.w, r2.x  // r2.x <- roughnessAdjust
and r2.x, r2.x, r2.z

#line 638
mad r2.x, r3.y, r3.y, r2.x

#line 510
add r2.y, v1.z, -cb2[22].z
div r2.y, cb2[22].w, r2.y  // r2.y <- depth
ftoi r5.xy, v1.xyxx  // r5.x <- shadingPosition.x; r5.y <- shadingPosition.y
mad r2.y, r2.y, cb2[23].w, cb2[24].x
log r2.y, r2.y

#line 635
max r2.xyw, r2.xyxw, l(0.001000, 0.000000, 0.000000, 0.000100)  // r2.x <- streams.alphaRoughness_id63; r2.w <- streams.NdotV_id65

#line 512
ftoi r6.z, r2.y  // r6.z <- slice
ushr r6.xy, r5.xyxx, l(6, 6, 0, 0)
mov r6.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r2.yz, r6.xyzw, t2.zxyw  // r2.y <- streams.lightData_id83.x; r2.z <- streams.lightData_id83.y

#line 624
and r3.y, r2.z, l(0x0000ffff)  // r3.y <- <GetMaxLightCount_id272 return value>

#line 707
mov r5.xyz, v0.xyzx  // r5.x <- streams.PositionWS_id19.x; r5.y <- streams.PositionWS_id19.y; r5.z <- streams.PositionWS_id19.z
mov r6.xyz, r0.xyzx  // r6.x <- streams.viewWS_id61.x; r6.y <- streams.viewWS_id61.y; r6.z <- streams.viewWS_id61.z
mov r7.x, r3.x  // r7.x <- streams.matDiffuseVisible_id62.x
mov r8.xy, r3.zwzz  // r8.x <- streams.matDiffuseVisible_id62.y; r8.y <- streams.matDiffuseVisible_id62.z
mov r8.zw, r4.xxxy  // r8.z <- streams.matSpecularVisible_id64.x; r8.w <- streams.matSpecularVisible_id64.y
mov r9.x, r4.z  // r9.x <- streams.matSpecularVisible_id64.z
mov r9.y, r2.x  // r9.y <- streams.alphaRoughness_id63
mov r10.xyz, r1.xyzx  // r10.x <- streams.normalWS_id16.x; r10.y <- streams.normalWS_id16.y; r10.z <- streams.normalWS_id16.z
mov r11.y, r1.w  // r11.y <- streams.lightDirectAmbientOcclusion_id44
mov r11.xz, r2.yywy  // r11.x <- streams.lightIndex_id84; r11.z <- streams.NdotV_id65
mov r12.xyz, l(0,0,0,0)  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r4.w, l(0)  // r4.w <- i
loop 
  ige r5.w, r4.w, r3.y
  breakc_nz r5.w
  if_nz r5.w
    break 
  endif 

#line 497
  ld_indexable(buffer)(uint,uint,uint,uint) r5.w, r11.xxxx, t3.yzwx  // r5.w <- realLightIndex
  iadd r11.x, r11.x, l(1)  // r11.x <- streams.lightIndex_id84
  ishl r6.w, r5.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r6.wwww, t4.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w
  bfi r5.w, l(31), l(1), r5.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r5.wwww, t4.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 350
  add r13.xyz, -r5.xyzx, r13.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z
  dp3 r5.w, r13.xyzx, r13.xyzx
  sqrt r6.w, r5.w  // r6.w <- lightVectorLength
  div r13.xyz, r13.xyzx, r6.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 300
  max r6.w, r5.w, l(0.000100)
  div r6.w, l(1.000000, 1.000000, 1.000000, 1.000000), r6.w  // r6.w <- attenuation

#line 232
  mul r5.w, r13.w, r5.w  // r5.w <- factor
  mad r5.w, -r5.w, r5.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)  // r5.w <- smoothFactor
  mul r5.w, r5.w, r5.w  // r5.w <- <SmoothDistanceAttenuation_id89 return value>

#line 301
  mul r5.w, r5.w, r6.w  // r5.w <- attenuation

#line 356
  mul r14.xyz, r5.wwww, r14.xyzx  // r14.x <- streams.lightColor_id39.x; r14.y <- streams.lightColor_id39.y; r14.z <- streams.lightColor_id39.z

#line 614
  dp3 r5.w, r10.xyzx, r13.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id43
  mul r14.xyz, r5.wwww, r14.xyzx
  mul r14.xyz, r11.yyyy, r14.xyzx  // r14.x <- streams.lightColorNdotL_id40.x; r14.y <- streams.lightColorNdotL_id40.y; r14.z <- streams.lightColorNdotL_id40.z

#line 606
  add r15.xyz, r6.xyzx, r13.xyzx
  dp3 r6.w, r15.xyzx, r15.xyzx
  rsq r6.w, r6.w
  mul r15.xyz, r6.wwww, r15.xyzx  // r15.x <- streams.H_id68.x; r15.y <- streams.H_id68.y; r15.z <- streams.H_id68.z
  dp3 r6.w, r10.xyzx, r15.xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.NdotH_id69
  dp3 r7.w, r13.xyzx, r15.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.LdotH_id70

#line 602
  mov r7.yz, r8.xxyx
  mul r13.xyz, r14.xyzx, r7.xyzx

#line 717
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 295
  mov r15.xy, r8.zwzz
  mov r15.z, r9.x
  add r16.xyz, -r15.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r7.y, -r7.w, l(1.000000)
  mul r7.z, r7.y, r7.y
  mul r7.z, r7.z, r7.z
  mul r7.y, r7.z, r7.y
  mad r7.yzw, r16.xxyz, r7.yyyy, r15.xxyz  // r7.y <- <FresnelSchlick_id220 return value>.x; r7.z <- <FresnelSchlick_id220 return value>.y; r7.w <- <FresnelSchlick_id220 return value>.z

#line 290
  mul r9.z, r9.y, l(0.500000)  // r9.z <- k
  mad r9.w, -r9.y, l(0.500000), l(1.000000)
  mad r10.w, r5.w, r9.w, r9.z
  div r10.w, r5.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id238 return value>
  mad r9.z, r11.z, r9.w, r9.z
  div r9.z, r11.z, r9.z  // r9.z <- <VisibilityhSchlickGGX_id238 return value>

#line 342
  mul r9.z, r9.z, r10.w
  mul r5.w, r11.z, r5.w
  div r5.w, r9.z, r5.w  // r5.w <- <VisibilitySmithSchlickGGX_id240 return value>

#line 337
  mul r9.z, r9.y, r9.y  // r9.z <- alphaR2
  mul r6.w, r6.w, r6.w
  mad r9.w, r9.y, r9.y, l(-1.000000)
  mad r6.w, r6.w, r9.w, l(1.000000)
  max r6.w, r6.w, l(0.000100)
  mul r6.w, r6.w, r6.w
  mul r6.w, r6.w, l(3.141593)
  div r6.w, r9.z, r6.w  // r6.w <- <NormalDistributionGGX_id254 return value>

#line 596
  mul r7.yzw, r5.wwww, r7.yyzw
  mul r7.yzw, r6.wwww, r7.yyzw
  mul r7.yzw, r14.xxyz, r7.yyzw

#line 721
  mad r12.xyz, r7.yzwy, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 707
  iadd r4.w, r4.w, l(1)

#line 723
endloop   // r11.x <- streams.lightIndex_id84

#line 585
ushr r2.y, r2.z, l(16)  // r2.y <- <GetMaxLightCount_id281 return value>

#line 731
mov r5.xyz, v0.xyzx
mov r6.xyz, r0.xyzx
mov r7.xyz, r3.xzwx  // r7.y <- streams.matDiffuseVisible_id62.y; r7.z <- streams.matDiffuseVisible_id62.z
mov r8.xyz, r4.xyzx  // r8.x <- streams.matSpecularVisible_id64.x; r8.y <- streams.matSpecularVisible_id64.y; r8.z <- streams.matSpecularVisible_id64.z
mov r9.xz, r2.xxwx  // r9.x <- streams.alphaRoughness_id63; r9.z <- streams.NdotV_id65
mov r10.xyz, r1.xyzx
mov r11.yzw, r12.xxyz  // r11.y <- directLightingContribution.x; r11.z <- directLightingContribution.y; r11.w <- directLightingContribution.z
mov r2.z, r1.w  // r2.z <- streams.lightDirectAmbientOcclusion_id44
mov r3.y, r11.x  // r3.y <- streams.lightIndex_id84
mov r4.w, l(0)  // r4.w <- i
loop 
  ige r5.w, r4.w, r2.y
  breakc_nz r5.w
  if_nz r5.w
    break 
  endif 

#line 466
  ld_indexable(buffer)(uint,uint,uint,uint) r5.w, r3.yyyy, t3.yzwx  // r5.w <- realLightIndex
  iadd r3.y, r3.y, l(1)  // r3.y <- streams.lightIndex_id84
  ishl r6.w, r5.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r13.xyz, r6.wwww, t5.xyzw  // r13.x <- spotLight1.x; r13.y <- spotLight1.y; r13.z <- spotLight1.z

#line 472
  bfi r14.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r5.wwww, l(1, 2, 3, 0)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r14.xxxx, t5.xyzw  // r15.x <- spotLight2.x; r15.y <- spotLight2.y; r15.z <- spotLight2.z
  ld_indexable(buffer)(float,float,float,float) r14.xyw, r14.yyyy, t5.xywz  // r14.x <- spotLight3.x; r14.y <- spotLight3.y; r14.w <- spotLight3.z
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r14.zzzz, t5.xyzw  // r16.x <- spotLight4.x; r16.y <- spotLight4.y; r16.z <- spotLight4.z

#line 322
  add r13.xyz, -r5.xyzx, r13.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z
  dp3 r5.w, r13.xyzx, r13.xyzx
  sqrt r6.w, r5.w  // r6.w <- lightVectorLength
  div r13.xyz, r13.xyzx, r6.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 284
  max r6.w, r5.w, l(0.000100)
  div r6.w, l(1.000000, 1.000000, 1.000000, 1.000000), r6.w  // r6.w <- attenuation

#line 226
  mul r5.w, r14.w, r5.w  // r5.w <- factor
  mad r5.w, -r5.w, r5.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)  // r5.w <- smoothFactor
  mul r5.w, r5.w, r5.w  // r5.w <- <SmoothDistanceAttenuation_id97 return value>

#line 285
  mul r5.w, r5.w, r6.w  // r5.w <- attenuation

#line 276
  dp3 r6.w, -r15.xyzx, r13.xyzx  // r6.w <- cd
  mad_sat r6.w, r6.w, r14.x, r14.y  // r6.w <- attenuation
  mul r6.w, r6.w, r6.w

#line 331
  mul r5.w, r5.w, r6.w  // r5.w <- attenuation
  mul r13.xyz, r5.wwww, r16.xyzx  // r13.x <- streams.lightColor_id39.x; r13.y <- streams.lightColor_id39.y; r13.z <- streams.lightColor_id39.z

#line 575
  dp3 r5.w, r10.xyzx, -r15.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id43
  mul r13.xyz, r5.wwww, r13.xyzx
  mul r13.xyz, r2.zzzz, r13.xyzx  // r13.x <- streams.lightColorNdotL_id40.x; r13.y <- streams.lightColorNdotL_id40.y; r13.z <- streams.lightColorNdotL_id40.z

#line 606
  add r14.xyz, r6.xyzx, -r15.xyzx
  dp3 r6.w, r14.xyzx, r14.xyzx
  rsq r6.w, r6.w
  mul r14.xyz, r6.wwww, r14.xyzx  // r14.x <- streams.H_id68.x; r14.y <- streams.H_id68.y; r14.z <- streams.H_id68.z
  dp3 r6.w, r10.xyzx, r14.xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.NdotH_id69
  dp3 r7.w, -r15.xyzx, r14.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.LdotH_id70

#line 602
  mul r14.xyz, r7.xyzx, r13.xyzx

#line 741
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.yzwy  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 295
  add r15.xyz, -r8.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r7.w, -r7.w, l(1.000000)
  mul r8.w, r7.w, r7.w
  mul r8.w, r8.w, r8.w
  mul r7.w, r7.w, r8.w
  mad r15.xyz, r15.xyzx, r7.wwww, r8.xyzx  // r15.x <- <FresnelSchlick_id220 return value>.x; r15.y <- <FresnelSchlick_id220 return value>.y; r15.z <- <FresnelSchlick_id220 return value>.z

#line 290
  mul r7.w, r9.x, l(0.500000)  // r7.w <- k
  mad r8.w, -r9.x, l(0.500000), l(1.000000)
  mad r9.y, r5.w, r8.w, r7.w
  div r9.y, r5.w, r9.y  // r9.y <- <VisibilityhSchlickGGX_id238 return value>
  mad r7.w, r9.z, r8.w, r7.w
  div r7.w, r9.z, r7.w  // r7.w <- <VisibilityhSchlickGGX_id238 return value>

#line 342
  mul r7.w, r7.w, r9.y
  mul r5.w, r9.z, r5.w
  div r5.w, r7.w, r5.w  // r5.w <- <VisibilitySmithSchlickGGX_id240 return value>

#line 337
  mul r7.w, r9.x, r9.x  // r7.w <- alphaR2
  mul r6.w, r6.w, r6.w
  mad r8.w, r9.x, r9.x, l(-1.000000)
  mad r6.w, r6.w, r8.w, l(1.000000)
  max r6.w, r6.w, l(0.000100)
  mul r6.w, r6.w, r6.w
  mul r6.w, r6.w, l(3.141593)
  div r6.w, r7.w, r6.w  // r6.w <- <NormalDistributionGGX_id254 return value>

#line 596
  mul r15.xyz, r5.wwww, r15.xyzx
  mul r15.xyz, r6.wwww, r15.xyzx
  mul r13.xyz, r13.xyzx, r15.xyzx

#line 745
  mad r11.yzw, r13.xxyz, l(0.000000, 0.250000, 0.250000, 0.250000), r14.xxyz  // r11.y <- directLightingContribution.x; r11.z <- directLightingContribution.y; r11.w <- directLightingContribution.z

#line 731
  iadd r4.w, r4.w, l(1)

#line 747
endloop   // r3.y <- streams.lightIndex_id84

#line 314
dp2 r2.y, cb2[45].xxxx, cb2[27].zzzz

#line 306
mov r5.w, l(1.000000)

#line 755
mov r6.xyz, v0.xyzx  // r6.x <- streams.PositionWS_id19.x; r6.y <- streams.PositionWS_id19.y; r6.z <- streams.PositionWS_id19.z
mov r6.w, v2.x  // r6.w <- streams.DepthVS_id20
mov r7.xyz, r0.xyzx  // r7.x <- streams.viewWS_id61.x; r7.y <- streams.viewWS_id61.y; r7.z <- streams.viewWS_id61.z
mov r8.xyz, r3.xzwx  // r8.x <- streams.matDiffuseVisible_id62.x; r8.y <- streams.matDiffuseVisible_id62.y; r8.z <- streams.matDiffuseVisible_id62.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.matSpecularVisible_id64.x; r9.y <- streams.matSpecularVisible_id64.y; r9.z <- streams.matSpecularVisible_id64.z
mov r10.xz, r2.xxwx  // r10.x <- streams.alphaRoughness_id63; r10.z <- streams.NdotV_id65
mov r12.xyz, r1.xyzx  // r12.x <- streams.normalWS_id16.x; r12.y <- streams.normalWS_id16.y; r12.z <- streams.normalWS_id16.z
mov r13.xyz, r11.yzwy  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r2.z, r1.w
mov r3.y, l(0)  // r3.y <- i
loop 
  ige r4.w, r3.y, l(1)
  breakc_nz r4.w
  ige r4.w, r3.y, cb2[24].y
  if_nz r4.w
    break 
  endif 

#line 557
  dp3 r4.w, r12.xyzx, -cb2[25].xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id43

#line 416
  ishl r7.w, r3.y, l(2)  // r7.w <- cascadeIndexBase

#line 423
  lt r8.w, cb2[r7.w + 46].x, r6.w

#line 426
  and r8.w, r8.w, l(1)  // r8.w <- cascadeIndex

#line 423
  bfi r10.yw, l(0, 30, 0, 30), l(0, 2, 0, 2), r3.yyyy, l(0, 1, 0, 2)
  lt r9.w, cb2[r10.y + 46].x, r6.w

#line 426
  movc r8.w, r9.w, l(2), r8.w

#line 423
  lt r9.w, cb2[r10.w + 46].x, r6.w

#line 426
  movc r8.w, r9.w, l(3), r8.w

#line 313
  add r10.y, -r4.w, l(1.000000)
  max r10.y, r10.y, l(0.000000)  // r10.y <- normalOffsetScale
  mul r10.y, r2.y, r10.y

#line 430
  mad r5.xyz, r10.yyyy, r12.xyzx, r6.xyzx  // r5.x <- shadowPosition.x; r5.y <- shadowPosition.y; r5.z <- shadowPosition.z

#line 306
  bfi r10.y, l(30), l(2), r3.y, r8.w
  ishl r10.w, r8.w, l(2)
  bfi r10.w, l(30), l(4), r3.y, r10.w
  dp4 r14.x, r5.xyzw, cb2[r10.w + 28].xyzw  // r14.x <- shadowPosition.x
  dp4 r14.y, r5.xyzw, cb2[r10.w + 29].xyzw  // r14.y <- shadowPosition.y
  dp4 r11.x, r5.xyzw, cb2[r10.w + 30].xyzw  // r11.x <- shadowPosition.z
  dp4 r10.w, r5.xyzw, cb2[r10.w + 31].xyzw  // r10.w <- shadowPosition.w
  add r14.z, r11.x, -cb2[44].x  // r14.z <- shadowPosition.z
  div r14.xyz, r14.xyzx, r10.wwww

#line 242
  mad r14.xy, r14.xyxx, cb2[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r15.xy, r14.xyxx  // r15.x <- base_uv.x; r15.y <- base_uv.y
  add r14.xy, r14.xyxx, -r15.xyxx  // r14.x <- s; r14.y <- t
  add r15.xy, r15.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r15.xy, r15.xyxx, cb2[27].zwzz

#line 255
  mad r15.zw, -r14.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r15.w <- uw0; r15.z <- vw0
  mad r16.xy, r14.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r16.x <- uw2; r16.y <- vw2
  mad r16.zw, -r14.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r16.zw, r16.zzzw, r15.wwwz
  add r17.xy, r14.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r14.xy, r14.xyxx, r16.xyxx
  add r18.xw, r16.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r18.x <- u0; r18.w <- v0
  mul r18.yz, r17.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r18.z <- u1; r18.y <- v1
  add r17.xy, r14.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r17.x <- u2; r17.y <- v2
  mul r10.w, r15.z, r15.w
  mad r19.xyzw, r18.xwzw, cb2[27].zwzw, r15.xyxy

#line 222
  sample_c_indexable(texture2d)(float,float,float,float) r11.x, r19.xyxx, t6.xxxx, s1, r14.z  // r11.x <- <SampleTextureAndCompare_id113 return value>

#line 264
  mul r14.xy, r15.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 222
  sample_c_indexable(texture2d)(float,float,float,float) r12.w, r19.zwzz, t6.xxxx, s1, r14.z  // r12.w <- <SampleTextureAndCompare_id113 return value>

#line 262
  mul r12.w, r12.w, r14.x
  mad r10.w, r10.w, r11.x, r12.w  // r10.w <- shadow

#line 267
  mul r14.xw, r15.zzzw, r16.xxxy
  mov r17.zw, r18.wwwy
  mad r19.xyzw, r17.xzxw, cb2[27].zwzw, r15.xyxy

#line 222
  sample_c_indexable(texture2d)(float,float,float,float) r11.x, r19.xyxx, t6.xxxx, s1, r14.z  // r11.x <- <SampleTextureAndCompare_id113 return value>

#line 263
  mad r10.w, r14.x, r11.x, r10.w
  mad r20.xyzw, r18.xyzy, cb2[27].zwzw, r15.xyxy

#line 222
  sample_c_indexable(texture2d)(float,float,float,float) r11.x, r20.xyxx, t6.xxxx, s1, r14.z

#line 264
  mad r10.w, r14.y, r11.x, r10.w

#line 222
  sample_c_indexable(texture2d)(float,float,float,float) r11.x, r20.zwzz, t6.xxxx, s1, r14.z

#line 265
  mad r10.w, r11.x, l(49.000000), r10.w

#line 268
  mul r14.xy, r16.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 222
  sample_c_indexable(texture2d)(float,float,float,float) r11.x, r19.zwzz, t6.xxxx, s1, r14.z

#line 266
  mad r10.w, r14.x, r11.x, r10.w
  mov r18.y, r17.y
  mad r18.xyzw, r18.xyzy, cb2[27].zwzw, r15.xyxy

#line 222
  sample_c_indexable(texture2d)(float,float,float,float) r11.x, r18.xyxx, t6.xxxx, s1, r14.z

#line 267
  mad r10.w, r14.w, r11.x, r10.w

#line 222
  sample_c_indexable(texture2d)(float,float,float,float) r11.x, r18.zwzz, t6.xxxx, s1, r14.z

#line 268
  mad r10.w, r14.y, r11.x, r10.w
  mul r11.x, r16.y, r16.x
  mad r14.xy, r17.xyxx, cb2[27].zwzz, r15.xyxx

#line 222
  sample_c_indexable(texture2d)(float,float,float,float) r12.w, r14.xyxx, t6.xxxx, s1, r14.z  // r12.w <- <SampleTextureAndCompare_id113 return value>

#line 269
  mad r10.w, r11.x, r12.w, r10.w
  mul r11.x, r10.w, l(0.006944)  // r11.x <- shadow

#line 435
  iadd r12.w, r10.y, l(-1)
  add r12.w, -cb2[r12.w + 46].x, cb2[r10.y + 46].x
  movc r12.w, r8.w, r12.w, cb2[r10.y + 46].x  // r12.w <- splitSize
  add r10.y, -r6.w, cb2[r10.y + 46].x
  div r10.y, r10.y, r12.w  // r10.y <- splitDist
  lt r12.w, r10.y, l(0.200000)

#line 306
  ishl r7.w, r7.w, l(2)
  imad r7.w, r8.w, l(4), r7.w
  iadd r7.w, r7.w, l(4)
  dp4 r14.x, r5.xyzw, cb2[r7.w + 28].xyzw  // r14.x <- shadowPosition.x
  dp4 r14.y, r5.xyzw, cb2[r7.w + 29].xyzw  // r14.y <- shadowPosition.y
  dp4 r8.w, r5.xyzw, cb2[r7.w + 30].xyzw  // r8.w <- shadowPosition.z
  dp4 r5.x, r5.xyzw, cb2[r7.w + 31].xyzw  // r5.x <- shadowPosition.w
  add r14.z, r8.w, -cb2[44].x  // r14.z <- shadowPosition.z
  div r5.xyz, r14.xyzx, r5.xxxx  // r5.x <- shadowPosition.x; r5.y <- shadowPosition.y; r5.z <- shadowPosition.z

#line 242
  mad r5.xy, r5.xyxx, cb2[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r14.xy, r5.xyxx  // r14.x <- base_uv.x; r14.y <- base_uv.y
  add r5.xy, r5.xyxx, -r14.xyxx  // r5.x <- s; r5.y <- t
  add r14.xy, r14.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r14.xy, r14.xyxx, cb2[27].zwzz

#line 255
  mad r14.zw, -r5.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r14.w <- uw0; r14.z <- vw0
  mad r15.xy, r5.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r15.x <- uw2; r15.y <- vw2
  mad r15.zw, -r5.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r15.zw, r15.zzzw, r14.wwwz
  add r16.xy, r5.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r5.xy, r5.xyxx, r15.xyxx
  add r17.xw, r15.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r17.x <- u0; r17.w <- v0
  mul r17.yz, r16.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r17.z <- u1; r17.y <- v1
  add r16.xy, r5.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r16.x <- u2; r16.y <- v2
  mad r18.xyzw, r17.xwzw, cb2[27].zwzw, r14.xyxy

#line 222
  sample_c_indexable(texture2d)(float,float,float,float) r5.x, r18.xyxx, t6.xxxx, s1, r5.z  // r5.x <- <SampleTextureAndCompare_id113 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r5.y, r18.zwzz, t6.xxxx, s1, r5.z  // r5.y <- <SampleTextureAndCompare_id113 return value>

#line 266
  mov r16.zw, r17.wwwy
  mad r18.xyzw, r16.xzxw, cb2[27].zwzw, r14.xyxy

#line 222
  sample_c_indexable(texture2d)(float,float,float,float) r7.w, r18.xyxx, t6.xxxx, s1, r5.z  // r7.w <- <SampleTextureAndCompare_id113 return value>

#line 265
  mad r19.xyzw, r17.xyzy, cb2[27].zwzw, r14.xyxy

#line 222
  sample_c_indexable(texture2d)(float,float,float,float) r8.w, r19.xyxx, t6.xxxx, s1, r5.z  // r8.w <- <SampleTextureAndCompare_id113 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r13.w, r19.zwzz, t6.xxxx, s1, r5.z  // r13.w <- <SampleTextureAndCompare_id113 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r15.z, r18.zwzz, t6.xxxx, s1, r5.z  // r15.z <- <SampleTextureAndCompare_id113 return value>

#line 267
  mov r17.y, r16.y
  mad r17.xyzw, r17.xyzy, cb2[27].zwzw, r14.xyxy

#line 222
  sample_c_indexable(texture2d)(float,float,float,float) r15.w, r17.xyxx, t6.xxxx, s1, r5.z  // r15.w <- <SampleTextureAndCompare_id113 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r16.z, r17.zwzz, t6.xxxx, s1, r5.z  // r16.z <- <SampleTextureAndCompare_id113 return value>

#line 269
  mad r14.xy, r16.xyxx, cb2[27].zwzz, r14.xyxx

#line 222
  sample_c_indexable(texture2d)(float,float,float,float) r5.z, r14.xyxx, t6.xxxx, s1, r5.z  // r5.z <- <SampleTextureAndCompare_id113 return value>

#line 437
  if_nz r12.w

#line 440
    if_z r9.w
      mul_sat r9.w, r10.y, l(5.000000)
      mad r10.y, r9.w, l(-2.000000), l(3.000000)
      mul r9.w, r9.w, r9.w
      mul r9.w, r9.w, r10.y  // r9.w <- lerpAmt

#line 261
      mul r10.y, r14.z, r14.w
      mul r5.y, r14.z, r5.y
      mul r5.y, r5.y, l(7.000000)
      mad r5.x, r10.y, r5.x, r5.y  // r5.x <- shadow

#line 267
      mul r14.xy, r14.zwzz, r15.xyxx

#line 263
      mad r5.x, r14.x, r7.w, r5.x
      mul r5.y, r8.w, r14.w
      mad r5.x, r5.y, l(7.000000), r5.x
      mad r5.x, r13.w, l(49.000000), r5.x
      mul r5.y, r15.z, r15.x
      mad r5.x, r5.y, l(7.000000), r5.x
      mad r5.x, r14.y, r15.w, r5.x
      mul r5.y, r15.y, r16.z
      mad r5.x, r5.y, l(7.000000), r5.x
      mul r5.y, r15.y, r15.x
      mad r5.x, r5.y, r5.z, r5.x
      mul r5.x, r5.x, l(0.006944)

#line 446
      mad r5.y, r10.w, l(0.006944), -r5.x
      mad r11.x, r9.w, r5.y, r5.x
    endif 
  endif   // r11.x <- shadow

#line 559
  mul r5.xyz, r11.xxxx, cb2[26].xyzx
  mul r5.xyz, r4.wwww, r5.xyzx
  mul r5.xyz, r2.zzzz, r5.xyzx  // r5.x <- streams.lightColorNdotL_id40.x; r5.y <- streams.lightColorNdotL_id40.y; r5.z <- streams.lightColorNdotL_id40.z

#line 606
  add r14.xyz, r7.xyzx, -cb2[25].xyzx
  dp3 r7.w, r14.xyzx, r14.xyzx
  rsq r7.w, r7.w
  mul r14.xyz, r7.wwww, r14.xyzx  // r14.x <- streams.H_id68.x; r14.y <- streams.H_id68.y; r14.z <- streams.H_id68.z
  dp3 r7.w, r12.xyzx, r14.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotH_id69
  dp3 r8.w, -cb2[25].xyzx, r14.xyzx
  max r8.w, r8.w, l(0.000100)  // r8.w <- streams.LdotH_id70

#line 602
  mul r14.xyz, r5.xyzx, r8.xyzx

#line 765
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r13.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 295
  add r15.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r8.w, -r8.w, l(1.000000)
  mul r9.w, r8.w, r8.w
  mul r9.w, r9.w, r9.w
  mul r8.w, r8.w, r9.w
  mad r15.xyz, r15.xyzx, r8.wwww, r9.xyzx  // r15.x <- <FresnelSchlick_id220 return value>.x; r15.y <- <FresnelSchlick_id220 return value>.y; r15.z <- <FresnelSchlick_id220 return value>.z

#line 290
  mul r8.w, r10.x, l(0.500000)  // r8.w <- k
  mad r9.w, -r10.x, l(0.500000), l(1.000000)
  mad r10.y, r4.w, r9.w, r8.w
  div r10.y, r4.w, r10.y  // r10.y <- <VisibilityhSchlickGGX_id238 return value>
  mad r8.w, r10.z, r9.w, r8.w
  div r8.w, r10.z, r8.w  // r8.w <- <VisibilityhSchlickGGX_id238 return value>

#line 342
  mul r8.w, r8.w, r10.y
  mul r4.w, r10.z, r4.w
  div r4.w, r8.w, r4.w  // r4.w <- <VisibilitySmithSchlickGGX_id240 return value>

#line 337
  mul r8.w, r10.x, r10.x  // r8.w <- alphaR2
  mul r7.w, r7.w, r7.w
  mad r9.w, r10.x, r10.x, l(-1.000000)
  mad r7.w, r7.w, r9.w, l(1.000000)
  max r7.w, r7.w, l(0.000100)
  mul r7.w, r7.w, r7.w
  mul r7.w, r7.w, l(3.141593)
  div r7.w, r8.w, r7.w  // r7.w <- <NormalDistributionGGX_id254 return value>

#line 596
  mul r15.xyz, r4.wwww, r15.xyzx
  mul r15.xyz, r7.wwww, r15.xyzx
  mul r5.xyz, r5.xyzx, r15.xyzx

#line 769
  mad r13.xyz, r5.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 755
  iadd r3.y, r3.y, l(1)

#line 771
endloop 

#line 550
mul r5.xyz, r0.wwww, cb2[50].xyzx  // r5.x <- lightColor.x; r5.y <- lightColor.y; r5.z <- lightColor.z

#line 392
add r1.w, -r2.x, l(1.000000)  // r1.w <- x

#line 400
mul r2.y, r1.w, r1.w

#line 408
mul r2.z, r2.y, l(1.895000)

#line 400
mad r2.z, r1.w, l(-0.168800), r2.z
mad r3.y, r2.w, l(-4.853000), l(0.990300)
mul r4.w, r2.w, r2.w
mad r3.y, r4.w, l(8.404000), r3.y
mul r5.w, r2.w, r4.w
mad r3.y, r5.w, l(-5.069000), r3.y
min_sat r2.z, r2.z, r3.y  // r2.z <- bias

#line 408
mad r3.y, r1.w, l(1.699000), l(0.604500)
mad r3.y, r2.w, l(-0.522800), r3.y
mad r3.y, r2.y, l(-3.603000), r3.y
mul r2.w, r1.w, r2.w
mad r2.w, r2.w, l(1.404000), r3.y
mad r2.w, r4.w, l(0.193900), r2.w
mul r1.w, r1.w, r2.y
mad_sat r1.w, r1.w, l(2.661000), r2.w  // r1.w <- delta
add r1.w, -r2.z, r1.w  // r1.w <- scale
mul_sat r2.y, r4.y, l(50.000000)
mul r2.y, r2.y, r2.z  // r2.y <- bias
mad r2.yzw, r4.xxyz, r1.wwww, r2.yyyy  // r2.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id255 return value>.x; r2.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id255 return value>.y; r2.w <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id255 return value>.z

#line 541
mul r4.xyz, r5.xyzx, r2.yzwy  // r4.x <- <ComputeEnvironmentLightContribution_id467 return value>.x; r4.y <- <ComputeEnvironmentLightContribution_id467 return value>.y; r4.z <- <ComputeEnvironmentLightContribution_id467 return value>.z

#line 783
mad r4.xyz, r3.xzwx, r5.xyzx, r4.xyzx  // r4.x <- environmentLightingContribution.x; r4.y <- environmentLightingContribution.y; r4.z <- environmentLightingContribution.z

#line 530
dp3 r1.w, r1.xyzx, cb2[60].xyzx  // r1.w <- sampleDirection.x
dp3 r3.y, r1.xyzx, cb2[61].xyzx  // r3.y <- sampleDirection.y
dp3 r4.w, r1.xyzx, cb2[62].xyzx  // r4.w <- sampleDirection.z

#line 371
mul r5.x, r3.y, r3.y  // r5.x <- y2
mul r5.y, r4.w, r4.w  // r5.y <- z2

#line 376
mad r6.xyz, cb2[52].xyzx, r3.yyyy, cb2[51].xyzx  // r6.x <- color.x; r6.y <- color.y; r6.z <- color.z
mad r6.xyz, cb2[53].xyzx, -r4.wwww, r6.xyzx
mad r6.xyz, cb2[54].xyzx, r1.wwww, r6.xyzx

#line 381
mul r7.xyz, r3.yyyy, cb2[55].xyzx
mad r6.xyz, r7.xyzx, r1.wwww, r6.xyzx
mul r7.xyz, r3.yyyy, cb2[56].xyzx
mad r6.xyz, r7.xyzx, -r4.wwww, r6.xyzx
mad r3.y, r5.y, l(3.000000), l(-1.000000)
mad r5.yzw, cb2[57].xxyz, r3.yyyy, r6.xxyz  // r5.y <- color.x; r5.z <- color.y; r5.w <- color.z
mul r6.xyz, r1.wwww, cb2[58].xyzx
mad r5.yzw, r6.xxyz, -r4.wwww, r5.yyzw
mad r1.w, r1.w, r1.w, -r5.x
mad r5.xyz, cb2[59].xyzx, r1.wwww, r5.yzwy  // r5.x <- color.x; r5.y <- color.y; r5.z <- color.z

#line 532
mul r5.xyz, r5.xyzx, cb2[64].xxxx
mul r5.xyz, r0.wwww, r5.xyzx  // r5.x <- streams.envLightDiffuseColor_id41.x; r5.y <- streams.envLightDiffuseColor_id41.y; r5.z <- streams.envLightDiffuseColor_id41.z
dp3 r1.w, -r0.xyzx, r1.xyzx
add r1.w, r1.w, r1.w
mad r0.xyz, r1.xyzx, -r1.wwww, -r0.xyzx  // r0.x <- sampleDirection.x; r0.y <- sampleDirection.y; r0.z <- sampleDirection.z
dp3 r1.x, r0.xyzx, cb2[60].xyzx  // r1.x <- sampleDirection.x
dp3 r1.y, r0.xyzx, cb2[61].xyzx  // r1.y <- sampleDirection.y
dp3 r0.x, r0.xyzx, cb2[62].xyzx  // r0.x <- sampleDirection.z
mov r1.z, -r0.x  // r1.z <- sampleDirection.z

#line 362
sqrt r0.x, r2.x
mul r0.x, r0.x, cb2[59].w  // r0.x <- mipLevel
sample_l_indexable(texturecube)(float,float,float,float) r0.xyz, r1.xyzx, t7.xyzw, s0, r0.x  // r0.x <- <Compute_id299 return value>.x; r0.y <- <Compute_id299 return value>.y; r0.z <- <Compute_id299 return value>.z

#line 536
mul r0.xyz, r0.xyzx, cb2[64].xxxx
mul r0.xyz, r0.wwww, r0.xyzx  // r0.x <- streams.envLightSpecularColor_id42.x; r0.y <- streams.envLightSpecularColor_id42.y; r0.z <- streams.envLightSpecularColor_id42.z

#line 791
mad r1.xyz, r3.xzwx, r5.xyzx, r4.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 795
mad r0.xyz, r2.yzwy, r0.xyzx, r1.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 798
mad o0.xyz, r13.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1017
mov o0.w, cb1[0].w
ret 
// Approximately 498 instruction slots used
***************************
*************************/
const static uint ClusterSize2_id82 = 64;
const static int TMaxLightCount_id95 = 1;
const static int TCascadeCountBase_id158 = 4;
const static int TLightCountBase_id159 = 1;
const static int TCascadeCount_id163 = 4;
const static int TLightCount_id164 = 1;
const static bool TBlendCascades_id165 = true;
const static bool TDepthRangeAuto_id166 = true;
const static bool TCascadeDebug_id167 = false;
const static int TFilterSize_id169 = 5;
const static int TOrder_id172 = 3;
const static bool TIsNormalXY1_id187 = true;
const static bool TScaleAndBias_id188 = true;
const static bool TInvertY_id189 = false;
const static bool TInvert_id192 = false;
const static bool TIsEnergyConservative_id214 = false;
static const float PI_id216 = 3.14159265358979323846;
SamplerState LinearSampler_id130 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id132 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
Texture2D Texture_id182;
SamplerState Sampler_id183;
Texture2D Texture_id199;
Texture3D<uint2> LightClusters_id85;
Buffer<uint> LightIndices_id86;
Buffer<float4> PointLights_id90;
Buffer<float4> SpotLights_id93;
Texture2D ShadowMapTexture_id97;
TextureCube CubeMap_id175;
struct PS_STREAMS 
{
    float3 meshNormal_id14;
    float4 meshTangent_id15;
    float4 PositionWS_id19;
    float2 TexCoord_id148;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
    float3x3 tangentToWorld_id17;
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
    float3 normalWS_id16;
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
    float4 meshTangent_id15;
    float2 TexCoord_id148;
    float4 PositionH_id21;
    float3 normalWS_id16;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id19 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id20 : DEPTH_VS;
    float3 meshNormal_id14 : NORMAL;
    float4 meshTangent_id15 : TANGENT;
    float2 TexCoord_id148 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    float3 meshNormal_id14 : NORMAL;
    float4 meshTangent_id15 : TANGENT;
    float2 TexCoord_id148 : TEXCOORD0;
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
    float4 constantColor_id180;
    float2 scale_id185;
    float2 offset_id186;
    float constantFloat_id191;
    float constantFloat_id194;
    float2 scale_id201;
    float2 offset_id202;
    float constantFloat_id204;
    float constantFloat_id206;
    float constantFloat_id208;
    float constantFloat_id210;
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
    float2 ShadowMapTextureSize_id98;
    float2 ShadowMapTextureTexelSize_id99;
    float4x4 WorldToShadowCascadeUV_id160[TCascadeCountBase_id158 * TLightCountBase_id159];
    float DepthBiases_id161[TLightCountBase_id159];
    float OffsetScales_id162[TLightCountBase_id159];
    float CascadeDepthSplits_id168[TCascadeCount_id163 * TLightCount_id164];
    float Bias_id170;
    float3 AmbientLight_id171;
    float3 SphericalColors_id173[TOrder_id172 * TOrder_id172];
    float MipCount_id174;
    float4x4 SkyMatrix_id176;
    float Intensity_id177;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id101;
    float2 Texture1TexelSize_id103;
    float2 Texture2TexelSize_id105;
    float2 Texture3TexelSize_id107;
    float2 Texture4TexelSize_id109;
    float2 Texture5TexelSize_id111;
    float2 Texture6TexelSize_id113;
    float2 Texture7TexelSize_id115;
    float2 Texture8TexelSize_id117;
    float2 Texture9TexelSize_id119;
};
float SampleTextureAndCompare_id113(float2 position, float positionDepth)
{
    return ShadowMapTexture_id97.SampleCmp(LinearClampCompareLessEqualSampler_id132, position, positionDepth);
}
float SmoothDistanceAttenuation_id97(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id89(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float FilterShadow_id109(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 uv = position * ShadowMapTextureSize_id98;
    float2 base_uv;
    base_uv.x = floor(uv.x + 0.5);
    base_uv.y = floor(uv.y + 0.5);
    float s = (uv.x + 0.5 - base_uv.x);
    float t = (uv.y + 0.5 - base_uv.y);
    base_uv -= float2(0.5, 0.5);
    base_uv *= ShadowMapTextureTexelSize_id99;

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
        shadow += uw0 * vw0 * SampleTextureAndCompare_id113(base_uv + float2(u0, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw0 * SampleTextureAndCompare_id113(base_uv + float2(u1, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw0 * SampleTextureAndCompare_id113(base_uv + float2(u2, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw0 * vw1 * SampleTextureAndCompare_id113(base_uv + float2(u0, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw1 * SampleTextureAndCompare_id113(base_uv + float2(u1, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw1 * SampleTextureAndCompare_id113(base_uv + float2(u2, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw0 * vw2 * SampleTextureAndCompare_id113(base_uv + float2(u0, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw2 * SampleTextureAndCompare_id113(base_uv + float2(u1, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw2 * SampleTextureAndCompare_id113(base_uv + float2(u2, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow /= 144.0f;
    }
    return shadow;
}
float GetAngleAttenuation_id99(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id98(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id97(d2, lightInvSquareRadius);
    return attenuation;
}
float VisibilityhSchlickGGX_id238(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id220(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float GetDistanceAttenuation_id90(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id89(d2, lightInvSquareRadius);
    return attenuation;
}
float ComputeShadowFromCascade_id112(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1), WorldToShadowCascadeUV_id160[cascadeIndex + lightIndex * TCascadeCountBase_id158]);
    shadowPosition.z -= DepthBiases_id161[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id109(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id111(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id99.x * offsetScale * normalOffsetScale * normal;
}
void ComputeShadow_id110(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void ProcessLight_id100(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = light.AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -light.DirectionWS;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id98(lightVector, lightInvSquareRadius);
    attenuation *= GetAngleAttenuation_id99(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightDirection;
}
float NormalDistributionGGX_id254(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    return alphaR2 / (PI_id216 * pow(max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001), 2.0f));
}
float VisibilitySmithSchlickGGX_id240(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id238(alphaR, nDotL) * VisibilityhSchlickGGX_id238(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id226(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id220(f0, 1.0f, lOrVDotH);
}
void ProcessLight_id92(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id90(lightVector, lightInvSquareRadius);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
float4 Compute_id299(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id63;
    float mipLevel = sqrt(alpha) * MipCount_id174;
    return CubeMap_id175.SampleLevel(LinearSampler_id130, direction, mipLevel);
}
float4 Compute_id294(float3 direction)
{
    float x = direction.x;
    float y = direction.y;
    float z = direction.z;
    float x2 = x * x;
    float y2 = y * y;
    float z2 = z * z;
    float3 color = SphericalColors_id173[0];

    {
        color += SphericalColors_id173[1] * y;
        color += SphericalColors_id173[2] * z;
        color += SphericalColors_id173[3] * x;

        {
            color += SphericalColors_id173[4] * y * x;
            color += SphericalColors_id173[5] * y * z;
            color += SphericalColors_id173[6] * (3.0 * z2 - 1.0);
            color += SphericalColors_id173[7] * x * z;
            color += SphericalColors_id173[8] * (x2 - y2);
        }
    }
    return float4(color, 1);
}
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id255(float3 specularColor, float alphaR, float nDotV)
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
void ComputeShadow_id104(inout PS_STREAMS streams, int lightIndex)
{
    ComputeShadow_id110(streams, lightIndex);
    int cascadeIndexBase = lightIndex * TCascadeCount_id163;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id163 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id20 > CascadeDepthSplits_id168[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float shadow = 1.0;
    float3 shadowPosition = streams.PositionWS_id19.xyz;
    shadowPosition += GetShadowPositionOffset_id111(OffsetScales_id162[lightIndex], streams.NdotL_id43, streams.normalWS_id16);
    if (cascadeIndex < TCascadeCount_id163)
    {
        shadow = ComputeShadowFromCascade_id112(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id168[cascadeIndexBase + cascadeIndex];
        float splitSize = cascadeIndex == 0 ? nextSplit : nextSplit - CascadeDepthSplits_id168[cascadeIndexBase + cascadeIndex - 1];
        float splitDist = (nextSplit - streams.DepthVS_id20) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id163 - 1)
            {
            }
            else if (TBlendCascades_id165)
            {
                float nextShadow = ComputeShadowFromCascade_id112(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }

    {
        streams.shadowColor_id76 = shadow;
    }
}
void PrepareDirectLightCore_id103(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id39 = Lights_id96[lightIndex].Color;
    streams.lightDirectionWS_id38 = -Lights_id96[lightIndex].DirectionWS;
}
void ComputeShadow_id96(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id95(inout PS_STREAMS streams, int lightIndexIgnored)
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
    ProcessLight_id100(streams, spotLight);
}
float Compute_id388(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id254(streams.alphaRoughness_id63, streams.NdotH_id69);
}
float Compute_id359(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id240(streams.alphaRoughness_id63, streams.NdotL_id43, streams.NdotV_id65);
}
float3 Compute_id330(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id226(f0, streams.LdotH_id70);
}
void ComputeShadow_id88(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id87(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id86.Load(streams.lightIndex_id84);
    streams.lightIndex_id84++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id90.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id90.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id92(streams, pointLight);
}
void PrepareLightData_id91(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id79.y / (projectedDepth - ZProjection_id79.x);
    int2 shadingPosition = int2(streams.ShadingPosition_id0.xy);
    int slice = int(max(log2(depth * ClusterDepthScale_id87 + ClusterDepthBias_id88), 0));
    streams.lightData_id83 = LightClusters_id85.Load(int4(shadingPosition / ClusterSize2_id82, slice, 0));
    streams.lightIndex_id84 = streams.lightData_id83.x;
}
float GetFilterSquareRoughnessAdjustment_id192(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id258()
{
}
void PrepareEnvironmentLight_id311(inout PS_STREAMS streams)
{
    float ambientAccessibility = streams.matAmbientOcclusion_id51;
    float3 sampleDirection = mul(streams.normalWS_id16, (float3x3)SkyMatrix_id176);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id41 = Compute_id294(sampleDirection).rgb * Intensity_id177 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id58.x;
    sampleDirection = reflect(-streams.viewWS_id61, streams.normalWS_id16);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id176);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id42 = Compute_id299(streams, sampleDirection).rgb * Intensity_id177 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeEnvironmentLightContribution_id467(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id255(specularColor, streams.alphaRoughness_id63, streams.NdotV_id65) * streams.envLightSpecularColor_id42;
}
float3 ComputeEnvironmentLightContribution_id418(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id305(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id171 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareDirectLight_id288(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id103(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id104(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id289()
{
    return LightCount_id94;
}
int GetMaxLightCount_id290()
{
    return TMaxLightCount_id95;
}
void PrepareDirectLights_id286()
{
}
void PrepareDirectLight_id279(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id95(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id96(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id282(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
int GetMaxLightCount_id281(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
void PrepareDirectLights_id277()
{
}
float3 ComputeDirectLightContribution_id466(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    float3 fresnel = Compute_id330(streams, specularColor);
    float geometricShadowing = Compute_id359(streams);
    float normalDistribution = Compute_id388(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeDirectLightContribution_id417(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor / PI_id216 * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.x;
}
void PrepareMaterialPerDirectLight_id26(inout PS_STREAMS streams)
{
    streams.H_id68 = normalize(streams.viewWS_id61 + streams.lightDirectionWS_id38);
    streams.NdotH_id69 = max(dot(streams.normalWS_id16, streams.H_id68), 0.0001f);
    streams.LdotH_id70 = max(dot(streams.lightDirectionWS_id38, streams.H_id68), 0.0001f);
    streams.VdotH_id71 = streams.LdotH_id70;
}
void PrepareDirectLight_id269(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id87(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id88(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id273(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
int GetMaxLightCount_id272(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
void PrepareDirectLights_id271(inout PS_STREAMS streams)
{
    PrepareLightData_id91(streams);
}
void PrepareMaterialForLightingAndShading_id257(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id192(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id256(inout PS_STREAMS streams)
{
    streams.lightDirectionWS_id38 = 0;
    streams.lightColor_id39 = 0;
    streams.lightColorNdotL_id40 = 0;
    streams.envLightDiffuseColor_id41 = 0;
    streams.envLightSpecularColor_id42 = 0;
    streams.lightDirectAmbientOcclusion_id44 = 1.0f;
    streams.NdotL_id43 = 0;
}
void UpdateNormalFromTangentSpace_id12(inout PS_STREAMS streams, float3 normalInTangentSpace)
{
    streams.normalWS_id16 = normalize(mul(normalInTangentSpace, streams.tangentToWorld_id17));
}
float4 Compute_id328()
{
    return float4(constantFloat_id210, constantFloat_id210, constantFloat_id210, constantFloat_id210);
}
float4 Compute_id326()
{
    return float4(constantFloat_id208, constantFloat_id208, constantFloat_id208, constantFloat_id208);
}
float4 Compute_id324()
{
    return float4(constantFloat_id206, constantFloat_id206, constantFloat_id206, constantFloat_id206);
}
float4 Compute_id322()
{
    return float4(constantFloat_id204, constantFloat_id204, constantFloat_id204, constantFloat_id204);
}
float4 Compute_id320(inout PS_STREAMS streams)
{
    return Texture_id199.Sample(Sampler_id183, streams.TexCoord_id148 * scale_id201 + offset_id202).r;
}
float4 Compute_id318()
{
    return float4(constantFloat_id194, constantFloat_id194, constantFloat_id194, constantFloat_id194);
}
float4 Compute_id316()
{
    return float4(constantFloat_id191, constantFloat_id191, constantFloat_id191, constantFloat_id191);
}
float4 Compute_id314(inout PS_STREAMS streams)
{
    return Texture_id182.Sample(Sampler_id183, streams.TexCoord_id148 * scale_id185 + offset_id186).rgba;
}
float4 Compute_id312()
{
    return constantColor_id180;
}
void ResetStream_id261(inout PS_STREAMS streams)
{
    ResetStream_id258();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id527(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id12(streams, streams.matNormal_id45);
    ResetLightStream_id256(streams);
    PrepareMaterialForLightingAndShading_id257(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id271(streams);
        const int maxLightCount = GetMaxLightCount_id272(streams);
        int count = GetLightCount_id273(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id269(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id417(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id466(streams);
            }
        }
    }

    {
        PrepareDirectLights_id277();
        const int maxLightCount = GetMaxLightCount_id281(streams);
        int count = GetLightCount_id282(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id279(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id417(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id466(streams);
            }
        }
    }

    {
        PrepareDirectLights_id286();
        const int maxLightCount = GetMaxLightCount_id290();
        int count = GetLightCount_id289();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id288(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id417(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id466(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id305(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id418(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id467(streams);
        }
    }

    {
        PrepareEnvironmentLight_id311(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id418(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id467(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id216 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id512(inout PS_STREAMS streams)
{
    streams.matCavitySpecular_id55 = Compute_id328().r;
}
void Compute_id507(inout PS_STREAMS streams)
{
    streams.matCavityDiffuse_id54 = Compute_id326().r;
}
void Compute_id502(inout PS_STREAMS streams)
{
    streams.matCavity_id53 = Compute_id324().r;
}
void Compute_id497(inout PS_STREAMS streams)
{
    streams.matAmbientOcclusionDirectLightingFactor_id52 = Compute_id322().r;
}
void Compute_id492(inout PS_STREAMS streams)
{
    streams.matAmbientOcclusion_id51 = Compute_id320(streams).r;
}
void Compute_id487(inout PS_STREAMS streams)
{
    float metalness = Compute_id318().r;
    streams.matSpecular_id49 = lerp(0.02, streams.matDiffuse_id47.rgb, metalness);
    streams.matDiffuse_id47.rgb = lerp(streams.matDiffuse_id47.rgb, 0, metalness);
}
void Compute_id482(inout PS_STREAMS streams)
{
    float glossiness = Compute_id316().r;
    streams.matGlossiness_id48 = glossiness;
}
void Compute_id477(inout PS_STREAMS streams)
{
    float4 normal = Compute_id314(streams);

    {
        normal = (2.0f * normal) - 1.0f;
    }

    {
        normal.z = sqrt(max(0, 1.0f - (normal.x * normal.x + normal.y * normal.y)));
    }
    streams.matNormal_id45 = normal.xyz;
}
void Compute_id472(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id312();
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id263(inout PS_STREAMS streams)
{
    ResetStream_id261(streams);
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
void Compute_id84(inout PS_STREAMS streams)
{

    {
        Compute_id472(streams);
    }

    {
        Compute_id477(streams);
    }

    {
        Compute_id482(streams);
    }

    {
        Compute_id487(streams);
    }

    {
        Compute_id492(streams);
    }

    {
        Compute_id497(streams);
    }

    {
        Compute_id502(streams);
    }

    {
        Compute_id507(streams);
    }

    {
        Compute_id512(streams);
    }

    {
        Compute_id527(streams);
    }
}
void ResetStream_id83(inout PS_STREAMS streams)
{
    ResetStream_id263(streams);
    streams.shadingColorAlpha_id67 = 1.0f;
}
float3x3 GetTangentWorldTransform_id18()
{
    return (float3x3)World_id29;
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
void PreTransformPosition_id13(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id19 = mul(streams.Position_id18, World_id29);
}
float4 Shading_id27(inout PS_STREAMS streams)
{
    streams.viewWS_id61 = normalize(Eye_id28.xyz - streams.PositionWS_id19.xyz);
    streams.shadingColor_id66 = 0;
    ResetStream_id83(streams);
    Compute_id84(streams);
    return float4(streams.shadingColor_id66, streams.shadingColorAlpha_id67);
}
void PSMain_id1()
{
}
void UpdateTangentToWorld_id11(inout PS_STREAMS streams)
{
    float3x3 tangentMatrix = GetTangentMatrix_id9(streams);
    float3x3 tangentWorldTransform = GetTangentWorldTransform_id18();
    streams.tangentToWorld_id17 = mul(tangentMatrix, tangentWorldTransform);
}
void GenerateNormal_PS_id16()
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
    streams.ColorTarget_id1 = Shading_id27(streams);
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
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id20 = __input__.DepthVS_id20;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    streams.meshTangent_id15 = __input__.meshTangent_id15;
    streams.TexCoord_id148 = __input__.TexCoord_id148;
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
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    streams.meshTangent_id15 = __input__.meshTangent_id15;
    streams.TexCoord_id148 = __input__.TexCoord_id148;
    VSMain_id8(streams);
    GenerateNormal_VS_id15(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id20 = streams.DepthVS_id20;
    __output__.meshNormal_id14 = streams.meshNormal_id14;
    __output__.meshTangent_id15 = streams.meshTangent_id15;
    __output__.TexCoord_id148 = streams.TexCoord_id148;
    return __output__;
}
