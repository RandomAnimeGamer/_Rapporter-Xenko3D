/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = ComputeColorConstantFloatLink<Material.GlossinessValue>}], mixin MaterialSurfaceMetalness [{metalnessMap = ComputeColorConstantFloatLink<Material.MetalnessValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAmbientOcclusion,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.AmbientOcclusionValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAmbientOcclusionDirectLightingFactor,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.AmbientOcclusionDirectLightingFactorValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavityValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavityDiffuse,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavityDiffuseValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavitySpecular,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavitySpecularValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
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
cbuffer PerMaterial [Size: 48]
@C    constantColor_id180 => Material.DiffuseValue
@C    constantFloat_id182 => Material.GlossinessValue
@C    constantFloat_id185 => Material.MetalnessValue
@C    constantFloat_id190 => Material.AmbientOcclusionValue
@C    constantFloat_id192 => Material.AmbientOcclusionDirectLightingFactorValue
@C    constantFloat_id194 => Material.CavityValue
@C    constantFloat_id196 => Material.CavityDiffuseValue
@C    constantFloat_id198 => Material.CavitySpecularValue
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
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: Pixel, Slot: (0-0)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: Pixel, Slot: (1-1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (2-2)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (3-3)]
@R    ShadowMapTexture_id97 => ShadowMap.Texture.directLightGroups[2] [Stage: Pixel, Slot: (4-4)]
@R    CubeMap_id175 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (5-5)]
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
@G    Vertex => d6a0409f78779f2bf44908689434043d
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
//   struct
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
vs_4_0
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
#line 900 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_972ee97f9ab71ab9521bfa04f55d7b8a.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 965
mov o0.xyzw, r0.xyzw

#line 890
dp4 r1.x, r0.xyzw, cb1[19].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 965
mov o1.w, r1.x
mov o2.x, r1.x

#line 890
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw

#line 933
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 965
ret 
// Approximately 15 instruction slots used
@G    Pixel => 22c5e79f727f1f99671786ecefc0924e
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id180;        // Offset:    0 Size:    16
//   float constantFloat_id182;         // Offset:   16 Size:     4
//   float constantFloat_id185;         // Offset:   20 Size:     4
//   float constantFloat_id190;         // Offset:   24 Size:     4
//   float constantFloat_id192;         // Offset:   28 Size:     4
//   float constantFloat_id194;         // Offset:   32 Size:     4
//   float constantFloat_id196;         // Offset:   36 Size:     4
//   float constantFloat_id198;         // Offset:   40 Size:     4
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
//   struct
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
// LightClusters_id85                texture   uint2          3d    0        1
// LightIndices_id86                 texture    uint         buf    1        1
// PointLights_id90                  texture  float4         buf    2        1
// SpotLights_id93                   texture  float4         buf    3        1
// ShadowMapTexture_id97             texture  float4          2d    4        1
// CubeMap_id175                     texture  float4        cube    5        1
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
ps_4_0
dcl_constantbuffer cb0[3], immediateIndexed
dcl_constantbuffer cb1[65], dynamicIndexed
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
dcl_temps 20
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id20; v2.y <- __input__.normalWS_id16.x; v2.z <- __input__.normalWS_id16.y; v2.w <- __input__.normalWS_id16.z; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 929 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_972ee97f9ab71ab9521bfa04f55d7b8a.hlsl"
dp3 r0.x, v2.yzwy, v2.yzwy
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.yzwy  // r0.x <- streams.normalWS_id16.x; r0.y <- streams.normalWS_id16.y; r0.z <- streams.normalWS_id16.z

#line 904
add r1.xyz, -v0.xyzx, cb1[21].xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, r1.xyzx  // r1.x <- streams.viewWS_id61.x; r1.y <- streams.viewWS_id61.y; r1.z <- streams.viewWS_id61.z

#line 800
add r2.xyz, cb0[0].xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r2.xyz, cb0[1].yyyy, r2.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r2.x <- streams.matSpecular_id49.x; r2.y <- streams.matSpecular_id49.y; r2.z <- streams.matSpecular_id49.z
mad r3.xyz, cb0[1].yyyy, -cb0[0].xyzx, cb0[0].xyzx  // r3.x <- streams.matDiffuse_id47.x; r3.y <- streams.matDiffuse_id47.y; r3.z <- streams.matDiffuse_id47.z

#line 613
add r0.w, cb0[1].z, l(-1.000000)
mad r0.w, cb0[1].w, r0.w, l(1.000000)  // r0.w <- streams.lightDirectAmbientOcclusion_id44
add r1.w, cb0[2].x, l(-1.000000)
mad r4.xy, cb0[2].yzyy, r1.wwww, l(1.000000, 1.000000, 0.000000, 0.000000)
mul r3.xyz, r3.xyzx, r4.xxxx  // r3.x <- streams.matDiffuseVisible_id62.x; r3.y <- streams.matDiffuseVisible_id62.y; r3.z <- streams.matDiffuseVisible_id62.z
mul r2.xyz, r2.xyzx, r4.yyyy  // r2.x <- streams.matSpecularVisible_id64.x; r2.y <- streams.matSpecularVisible_id64.y; r2.z <- streams.matSpecularVisible_id64.z
dp3 r1.w, r0.xyzx, r1.xyzx
max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotV_id65
add r2.w, -cb0[1].x, l(1.000000)  // r2.w <- roughness
mul r2.w, r2.w, r2.w
max r2.w, r2.w, l(0.001000)  // r2.w <- streams.alphaRoughness_id63

#line 491
add r3.w, v1.z, -cb1[22].z
div r3.w, cb1[22].w, r3.w  // r3.w <- depth
ftoi r4.xy, v1.xyxx  // r4.x <- shadingPosition.x; r4.y <- shadingPosition.y
mad r3.w, r3.w, cb1[23].w, cb1[24].x
log r3.w, r3.w
max r3.w, r3.w, l(0.000000)
ftoi r5.z, r3.w  // r5.z <- slice
ushr r5.xy, r4.xyxx, l(6)
mov r5.w, l(0)
ld r4.xyzw, r5.xyzw, t0.xyzw  // r4.x <- streams.lightData_id83.x; r4.y <- streams.lightData_id83.y

#line 605
and r3.w, r4.y, l(0x0000ffff)  // r3.w <- <GetMaxLightCount_id266 return value>

#line 683
mov r5.xyz, r0.xyzx  // r5.x <- streams.normalWS_id16.x; r5.y <- streams.normalWS_id16.y; r5.z <- streams.normalWS_id16.z
mov r5.w, v0.x  // r5.w <- streams.PositionWS_id19.x
mov r6.yz, v0.yyzy  // r6.y <- streams.PositionWS_id19.y; r6.z <- streams.PositionWS_id19.z
mov r6.w, r1.x  // r6.w <- streams.viewWS_id61.x
mov r7.yz, r1.yyzy  // r7.y <- streams.viewWS_id61.y; r7.z <- streams.viewWS_id61.z
mov r8.xy, r3.xyxx  // r8.x <- streams.matDiffuseVisible_id62.x; r8.y <- streams.matDiffuseVisible_id62.y
mov r9.x, r3.z  // r9.x <- streams.matDiffuseVisible_id62.z
mov r9.yzw, r2.xxyz  // r9.y <- streams.matSpecularVisible_id64.x; r9.z <- streams.matSpecularVisible_id64.y; r9.w <- streams.matSpecularVisible_id64.z
mov r4.z, r2.w  // r4.z <- streams.alphaRoughness_id63
mov r10.y, r0.w  // r10.y <- streams.lightDirectAmbientOcclusion_id44
mov r10.z, r1.w  // r10.z <- streams.NdotV_id65
mov r10.x, r4.x  // r10.x <- streams.lightIndex_id84
mov r11.xyz, l(0,0,0,0)  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r4.w, l(0)  // r4.w <- i
loop 
  ige r7.w, r4.w, r3.w
  breakc_nz r7.w
  if_nz r7.w
    break 
  endif 

#line 478
  ld r12.xyzw, r10.xxxx, t1.xyzw  // r12.x <- realLightIndex
  iadd r10.x, r10.x, l(1)  // r10.x <- streams.lightIndex_id84
  ishl r7.w, r12.x, l(1)
  ld r12.xyzw, r7.wwww, t2.xyzw  // r12.x <- pointLight1.x; r12.y <- pointLight1.y; r12.z <- pointLight1.z; r12.w <- pointLight1.w
  iadd r7.w, r7.w, l(1)
  ld r13.xyzw, r7.wwww, t2.xyzw  // r13.x <- pointLight2.x; r13.y <- pointLight2.y; r13.z <- pointLight2.z

#line 331
  mov r6.x, r5.w
  add r12.xyz, -r6.xyzx, r12.xyzx  // r12.x <- lightVector.x; r12.y <- lightVector.y; r12.z <- lightVector.z
  dp3 r6.x, r12.xyzx, r12.xyzx
  sqrt r7.w, r6.x  // r7.w <- lightVectorLength
  div r12.xyz, r12.xyzx, r7.wwww  // r12.x <- lightVectorNorm.x; r12.y <- lightVectorNorm.y; r12.z <- lightVectorNorm.z

#line 281
  max r7.w, r6.x, l(0.000100)
  div r7.w, l(1.000000, 1.000000, 1.000000, 1.000000), r7.w  // r7.w <- attenuation

#line 213
  mul r6.x, r12.w, r6.x  // r6.x <- factor
  mad r6.x, -r6.x, r6.x, l(1.000000)
  max r6.x, r6.x, l(0.000000)  // r6.x <- smoothFactor
  mul r6.x, r6.x, r6.x  // r6.x <- <SmoothDistanceAttenuation_id88 return value>

#line 282
  mul r6.x, r6.x, r7.w  // r6.x <- attenuation

#line 337
  mul r13.xyz, r6.xxxx, r13.xyzx  // r13.x <- streams.lightColor_id39.x; r13.y <- streams.lightColor_id39.y; r13.z <- streams.lightColor_id39.z

#line 595
  dp3 r6.x, r5.xyzx, r12.xyzx
  max r6.x, r6.x, l(0.000100)  // r6.x <- streams.NdotL_id43
  mul r13.xyz, r6.xxxx, r13.xyzx
  mul r13.xyz, r10.yyyy, r13.xyzx  // r13.x <- streams.lightColorNdotL_id40.x; r13.y <- streams.lightColorNdotL_id40.y; r13.z <- streams.lightColorNdotL_id40.z

#line 587
  mov r7.x, r6.w
  add r14.xyz, r12.xyzx, r7.xyzx
  dp3 r7.x, r14.xyzx, r14.xyzx
  rsq r7.x, r7.x
  mul r14.xyz, r7.xxxx, r14.xyzx  // r14.x <- streams.H_id68.x; r14.y <- streams.H_id68.y; r14.z <- streams.H_id68.z
  dp3 r7.x, r5.xyzx, r14.xyzx
  dp3 r7.w, r12.xyzx, r14.xyzx
  max r7.xw, r7.xxxw, l(0.000100, 0.000000, 0.000000, 0.000100)  // r7.x <- streams.NdotH_id69; r7.w <- streams.LdotH_id70

#line 583
  mov r8.z, r9.x
  mul r12.xyz, r13.xyzx, r8.xyzx

#line 693
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 276
  add r14.xyz, -r9.yzwy, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r7.w, -r7.w, l(1.000000)
  mul r8.z, r7.w, r7.w
  mul r8.z, r8.z, r8.z
  mul r7.w, r7.w, r8.z
  mad r14.xyz, r14.xyzx, r7.wwww, r9.yzwy  // r14.x <- <FresnelSchlick_id214 return value>.x; r14.y <- <FresnelSchlick_id214 return value>.y; r14.z <- <FresnelSchlick_id214 return value>.z

#line 271
  mul r7.w, r4.z, l(0.500000)  // r7.w <- k
  mad r8.z, -r4.z, l(0.500000), l(1.000000)
  mad r8.w, r6.x, r8.z, r7.w
  div r8.w, r6.x, r8.w  // r8.w <- <VisibilityhSchlickGGX_id232 return value>
  mad r7.w, r10.z, r8.z, r7.w
  div r7.w, r10.z, r7.w  // r7.w <- <VisibilityhSchlickGGX_id232 return value>

#line 323
  mul r7.w, r7.w, r8.w
  mul r6.x, r10.z, r6.x
  div r6.x, r7.w, r6.x  // r6.x <- <VisibilitySmithSchlickGGX_id234 return value>

#line 318
  mul r7.w, r4.z, r4.z  // r7.w <- alphaR2
  mul r7.x, r7.x, r7.x
  mad r8.z, r4.z, r4.z, l(-1.000000)
  mad r7.x, r7.x, r8.z, l(1.000000)
  max r7.x, r7.x, l(0.000100)
  mul r7.x, r7.x, r7.x
  mul r7.x, r7.x, l(3.141593)
  div r7.x, r7.w, r7.x  // r7.x <- <NormalDistributionGGX_id248 return value>

#line 577
  mul r14.xyz, r6.xxxx, r14.xyzx
  mul r14.xyz, r7.xxxx, r14.xyzx
  mul r13.xyz, r13.xyzx, r14.xyzx

#line 697
  mad r11.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 683
  iadd r4.w, r4.w, l(1)

#line 699
endloop   // r10.x <- streams.lightIndex_id84

#line 566
ushr r3.w, r4.y, l(16)  // r3.w <- <GetMaxLightCount_id275 return value>

#line 707
mov r4.xyz, v0.xyzx  // r4.x <- streams.PositionWS_id19.x; r4.y <- streams.PositionWS_id19.y; r4.z <- streams.PositionWS_id19.z
mov r5.xyz, r0.xyzx
mov r6.xyz, r1.xyzx  // r6.x <- streams.viewWS_id61.x; r6.y <- streams.viewWS_id61.y; r6.z <- streams.viewWS_id61.z
mov r7.xyz, r3.xyzx  // r7.x <- streams.matDiffuseVisible_id62.x; r7.y <- streams.matDiffuseVisible_id62.y; r7.z <- streams.matDiffuseVisible_id62.z
mov r8.xyz, r2.xyzx  // r8.x <- streams.matSpecularVisible_id64.x; r8.y <- streams.matSpecularVisible_id64.y; r8.z <- streams.matSpecularVisible_id64.z
mov r9.x, r2.w  // r9.x <- streams.alphaRoughness_id63
mov r9.z, r1.w  // r9.z <- streams.NdotV_id65
mov r10.yzw, r11.xxyz  // r10.y <- directLightingContribution.x; r10.z <- directLightingContribution.y; r10.w <- directLightingContribution.z
mov r4.w, r0.w  // r4.w <- streams.lightDirectAmbientOcclusion_id44
mov r5.w, r10.x  // r5.w <- streams.lightIndex_id84
mov r6.w, l(0)  // r6.w <- i
loop 
  ige r7.w, r6.w, r3.w
  breakc_nz r7.w
  if_nz r7.w
    break 
  endif 

#line 447
  ld r12.xyzw, r5.wwww, t1.xyzw  // r12.x <- realLightIndex
  iadd r5.w, r5.w, l(1)  // r5.w <- streams.lightIndex_id84
  ishl r7.w, r12.x, l(2)
  ld r12.xyzw, r7.wwww, t3.xyzw  // r12.x <- spotLight1.x; r12.y <- spotLight1.y; r12.z <- spotLight1.z

#line 453
  iadd r13.xyz, r7.wwww, l(1, 2, 3, 0)
  ld r14.xyzw, r13.xxxx, t3.xyzw  // r14.x <- spotLight2.x; r14.y <- spotLight2.y; r14.z <- spotLight2.z
  ld r15.xyzw, r13.yyyy, t3.xyzw  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.z <- spotLight3.z
  ld r13.xyzw, r13.zzzz, t3.xyzw  // r13.x <- spotLight4.x; r13.y <- spotLight4.y; r13.z <- spotLight4.z

#line 303
  add r12.xyz, -r4.xyzx, r12.xyzx  // r12.x <- lightVector.x; r12.y <- lightVector.y; r12.z <- lightVector.z
  dp3 r7.w, r12.xyzx, r12.xyzx
  sqrt r8.w, r7.w  // r8.w <- lightVectorLength
  div r12.xyz, r12.xyzx, r8.wwww  // r12.x <- lightVectorNorm.x; r12.y <- lightVectorNorm.y; r12.z <- lightVectorNorm.z

#line 265
  max r8.w, r7.w, l(0.000100)
  div r8.w, l(1.000000, 1.000000, 1.000000, 1.000000), r8.w  // r8.w <- attenuation

#line 207
  mul r7.w, r15.z, r7.w  // r7.w <- factor
  mad r7.w, -r7.w, r7.w, l(1.000000)
  max r7.w, r7.w, l(0.000000)  // r7.w <- smoothFactor
  mul r7.w, r7.w, r7.w  // r7.w <- <SmoothDistanceAttenuation_id96 return value>

#line 266
  mul r7.w, r7.w, r8.w  // r7.w <- attenuation

#line 257
  dp3 r8.w, -r14.xyzx, r12.xyzx  // r8.w <- cd
  mad_sat r8.w, r8.w, r15.x, r15.y  // r8.w <- attenuation
  mul r8.w, r8.w, r8.w

#line 312
  mul r7.w, r7.w, r8.w  // r7.w <- attenuation
  mul r13.xyz, r7.wwww, r13.xyzx  // r13.x <- streams.lightColor_id39.x; r13.y <- streams.lightColor_id39.y; r13.z <- streams.lightColor_id39.z

#line 556
  dp3 r7.w, r5.xyzx, r12.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotL_id43
  mul r13.xyz, r7.wwww, r13.xyzx
  mul r13.xyz, r4.wwww, r13.xyzx  // r13.x <- streams.lightColorNdotL_id40.x; r13.y <- streams.lightColorNdotL_id40.y; r13.z <- streams.lightColorNdotL_id40.z

#line 587
  add r14.xyz, r6.xyzx, r12.xyzx
  dp3 r8.w, r14.xyzx, r14.xyzx
  rsq r8.w, r8.w
  mul r14.xyz, r8.wwww, r14.xyzx  // r14.x <- streams.H_id68.x; r14.y <- streams.H_id68.y; r14.z <- streams.H_id68.z
  dp3 r8.w, r5.xyzx, r14.xyzx
  max r8.w, r8.w, l(0.000100)  // r8.w <- streams.NdotH_id69
  dp3 r9.y, r12.xyzx, r14.xyzx
  max r9.y, r9.y, l(0.000100)  // r9.y <- streams.LdotH_id70

#line 583
  mul r12.xyz, r7.xyzx, r13.xyzx

#line 717
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.yzwy  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 276
  add r14.xyz, -r8.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r9.y, -r9.y, l(1.000000)
  mul r9.w, r9.y, r9.y
  mul r9.w, r9.w, r9.w
  mul r9.y, r9.w, r9.y
  mad r14.xyz, r14.xyzx, r9.yyyy, r8.xyzx  // r14.x <- <FresnelSchlick_id214 return value>.x; r14.y <- <FresnelSchlick_id214 return value>.y; r14.z <- <FresnelSchlick_id214 return value>.z

#line 271
  mul r9.y, r9.x, l(0.500000)  // r9.y <- k
  mad r9.w, -r9.x, l(0.500000), l(1.000000)
  mad r11.w, r7.w, r9.w, r9.y
  div r11.w, r7.w, r11.w  // r11.w <- <VisibilityhSchlickGGX_id232 return value>
  mad r9.y, r9.z, r9.w, r9.y
  div r9.y, r9.z, r9.y  // r9.y <- <VisibilityhSchlickGGX_id232 return value>

#line 323
  mul r9.y, r9.y, r11.w
  mul r7.w, r9.z, r7.w
  div r7.w, r9.y, r7.w  // r7.w <- <VisibilitySmithSchlickGGX_id234 return value>

#line 318
  mul r9.y, r9.x, r9.x  // r9.y <- alphaR2
  mul r8.w, r8.w, r8.w
  mad r9.w, r9.x, r9.x, l(-1.000000)
  mad r8.w, r8.w, r9.w, l(1.000000)
  max r8.w, r8.w, l(0.000100)
  mul r8.w, r8.w, r8.w
  mul r8.w, r8.w, l(3.141593)
  div r8.w, r9.y, r8.w  // r8.w <- <NormalDistributionGGX_id248 return value>

#line 577
  mul r14.xyz, r7.wwww, r14.xyzx
  mul r14.xyz, r8.wwww, r14.xyzx
  mul r13.xyz, r13.xyzx, r14.xyzx

#line 721
  mad r10.yzw, r13.xxyz, l(0.000000, 0.250000, 0.250000, 0.250000), r12.xxyz  // r10.y <- directLightingContribution.x; r10.z <- directLightingContribution.y; r10.w <- directLightingContribution.z

#line 707
  iadd r6.w, r6.w, l(1)

#line 723
endloop   // r5.w <- streams.lightIndex_id84

#line 295
dp2 r3.w, cb1[45].xxxx, cb1[27].zzzz

#line 287
mov r4.w, l(1.000000)

#line 731
mov r5.xyz, v0.xyzx  // r5.x <- streams.PositionWS_id19.x; r5.y <- streams.PositionWS_id19.y; r5.z <- streams.PositionWS_id19.z
mov r5.w, v2.x  // r5.w <- streams.DepthVS_id20
mov r7.xyz, r1.xyzx  // r7.y <- streams.viewWS_id61.y; r7.z <- streams.viewWS_id61.z; r7.x <- streams.viewWS_id61.x
mov r8.xyz, r3.xyzx  // r8.x <- streams.matDiffuseVisible_id62.x; r8.y <- streams.matDiffuseVisible_id62.y; r8.z <- streams.matDiffuseVisible_id62.z
mov r9.xyz, r2.xyzx  // r9.x <- streams.matSpecularVisible_id64.x; r9.y <- streams.matSpecularVisible_id64.y; r9.z <- streams.matSpecularVisible_id64.z
mov r11.x, r2.w  // r11.x <- streams.alphaRoughness_id63
mov r11.z, r1.w  // r11.z <- streams.NdotV_id65
mov r12.xyz, r10.yzwy  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r6.xyzw, r0.xyzw  // r6.x <- streams.normalWS_id16.x; r6.y <- streams.normalWS_id16.y; r6.z <- streams.normalWS_id16.z; r6.w <- streams.lightDirectAmbientOcclusion_id44
mov r7.w, l(0)  // r7.w <- i
loop 
  ige r8.w, r7.w, l(1)
  breakc_nz r8.w
  ige r8.w, r7.w, cb1[24].y
  if_nz r8.w
    break 
  endif 

#line 538
  dp3 r8.w, r6.xyzx, -cb1[25].xyzx
  max r8.w, r8.w, l(0.000100)  // r8.w <- streams.NdotL_id43

#line 397
  ishl r9.w, r7.w, l(2)  // r9.w <- cascadeIndexBase

#line 404
  lt r10.x, cb1[r9.w + 46].x, r5.w

#line 407
  and r10.x, r10.x, l(1)  // r10.x <- cascadeIndex

#line 404
  iadd r11.yw, r9.wwww, l(0, 1, 0, 2)
  lt r11.y, cb1[r11.y + 46].x, r5.w

#line 407
  movc r10.x, r11.y, l(2), r10.x

#line 404
  lt r11.y, cb1[r11.w + 46].x, r5.w

#line 407
  movc r10.x, r11.y, l(3), r10.x

#line 294
  add r11.w, -r8.w, l(1.000000)
  max r11.w, r11.w, l(0.000000)  // r11.w <- normalOffsetScale
  mul r11.w, r3.w, r11.w

#line 411
  mad r4.xyz, r11.wwww, r6.xyzx, r5.xyzx  // r4.x <- shadowPosition.x; r4.y <- shadowPosition.y; r4.z <- shadowPosition.z

#line 287
  iadd r9.w, r9.w, r10.x
  ishl r11.w, r9.w, l(2)
  dp4 r13.x, r4.xyzw, cb1[r11.w + 28].xyzw  // r13.x <- shadowPosition.x
  dp4 r13.y, r4.xyzw, cb1[r11.w + 29].xyzw  // r13.y <- shadowPosition.y
  dp4 r12.w, r4.xyzw, cb1[r11.w + 30].xyzw  // r12.w <- shadowPosition.z
  dp4 r13.w, r4.xyzw, cb1[r11.w + 31].xyzw  // r13.w <- shadowPosition.w
  add r13.z, r12.w, -cb1[44].x  // r13.z <- shadowPosition.z
  div r13.xyz, r13.xyzx, r13.wwww

#line 223
  mad r13.xy, r13.xyxx, cb1[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r14.xy, r13.xyxx  // r14.x <- base_uv.x; r14.y <- base_uv.y
  add r13.xy, r13.xyxx, -r14.xyxx  // r13.x <- s; r13.y <- t
  add r14.xy, r14.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r14.xy, r14.xyxx, cb1[27].zwzz

#line 236
  mad r14.zw, -r13.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r14.w <- uw0; r14.z <- vw0
  mad r15.xy, r13.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r15.x <- uw2; r15.y <- vw2
  mad r15.zw, -r13.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r15.zw, r15.zzzw, r14.wwwz
  add r16.xy, r13.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r13.xy, r13.xyxx, r15.xyxx
  add r17.xw, r15.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r17.x <- u0; r17.w <- v0
  mul r17.yz, r16.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r17.z <- u1; r17.y <- v1
  add r16.xy, r13.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r16.x <- u2; r16.y <- v2
  mul r12.w, r14.z, r14.w
  mad r18.xyzw, r17.xwzw, cb1[27].zwzw, r14.xyxy

#line 203
  sample_c r13.x, r18.xyxx, t4.xxxx, s1, r13.z  // r13.x <- <SampleTextureAndCompare_id112 return value>

#line 245
  mul r13.yw, r14.zzzw, l(0.000000, 7.000000, 0.000000, 7.000000)

#line 203
  sample_c r15.z, r18.zwzz, t4.xxxx, s1, r13.z  // r15.z <- <SampleTextureAndCompare_id112 return value>

#line 243
  mul r13.y, r13.y, r15.z
  mad r12.w, r12.w, r13.x, r13.y  // r12.w <- shadow

#line 248
  mul r13.xy, r14.zwzz, r15.xyxx
  mov r16.zw, r17.wwwy
  mad r18.xyzw, r16.xzxw, cb1[27].zwzw, r14.xyxy

#line 203
  sample_c r14.z, r18.xyxx, t4.xxxx, s1, r13.z  // r14.z <- <SampleTextureAndCompare_id112 return value>

#line 244
  mad r12.w, r13.x, r14.z, r12.w
  mad r19.xyzw, r17.xyzy, cb1[27].zwzw, r14.xyxy

#line 203
  sample_c r13.x, r19.xyxx, t4.xxxx, s1, r13.z  // r13.x <- <SampleTextureAndCompare_id112 return value>

#line 245
  mad r12.w, r13.w, r13.x, r12.w

#line 203
  sample_c r13.x, r19.zwzz, t4.xxxx, s1, r13.z

#line 246
  mad r12.w, r13.x, l(49.000000), r12.w

#line 249
  mul r13.xw, r15.xxxy, l(7.000000, 0.000000, 0.000000, 7.000000)

#line 203
  sample_c r14.z, r18.zwzz, t4.xxxx, s1, r13.z  // r14.z <- <SampleTextureAndCompare_id112 return value>

#line 247
  mad r12.w, r13.x, r14.z, r12.w
  mov r17.y, r16.y
  mad r17.xyzw, r17.xyzy, cb1[27].zwzw, r14.xyxy

#line 203
  sample_c r13.x, r17.xyxx, t4.xxxx, s1, r13.z  // r13.x <- <SampleTextureAndCompare_id112 return value>

#line 248
  mad r12.w, r13.y, r13.x, r12.w

#line 203
  sample_c r13.x, r17.zwzz, t4.xxxx, s1, r13.z

#line 249
  mad r12.w, r13.w, r13.x, r12.w
  mul r13.x, r15.y, r15.x
  mad r13.yw, r16.xxxy, cb1[27].zzzw, r14.xxxy

#line 203
  sample_c r13.y, r13.ywyy, t4.xxxx, s1, r13.z  // r13.y <- <SampleTextureAndCompare_id112 return value>

#line 250
  mad r12.w, r13.x, r13.y, r12.w
  mul r13.x, r12.w, l(0.006944)  // r13.x <- shadow

#line 416
  iadd r13.y, r9.w, l(-1)
  add r13.y, -cb1[r13.y + 46].x, cb1[r9.w + 46].x
  movc r10.x, r10.x, r13.y, cb1[r9.w + 46].x  // r10.x <- splitSize
  add r9.w, -r5.w, cb1[r9.w + 46].x
  div r9.w, r9.w, r10.x  // r9.w <- splitDist
  lt r10.x, r9.w, l(0.200000)

#line 287
  iadd r11.w, r11.w, l(4)
  dp4 r14.x, r4.xyzw, cb1[r11.w + 28].xyzw  // r14.x <- shadowPosition.x
  dp4 r14.y, r4.xyzw, cb1[r11.w + 29].xyzw  // r14.y <- shadowPosition.y
  dp4 r13.y, r4.xyzw, cb1[r11.w + 30].xyzw  // r13.y <- shadowPosition.z
  dp4 r4.x, r4.xyzw, cb1[r11.w + 31].xyzw  // r4.x <- shadowPosition.w
  add r14.z, r13.y, -cb1[44].x  // r14.z <- shadowPosition.z
  div r4.xyz, r14.xyzx, r4.xxxx  // r4.x <- shadowPosition.x; r4.y <- shadowPosition.y; r4.z <- shadowPosition.z

#line 223
  mad r4.xy, r4.xyxx, cb1[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r13.yz, r4.xxyx  // r13.y <- base_uv.x; r13.z <- base_uv.y
  add r4.xy, r4.xyxx, -r13.yzyy  // r4.x <- s; r4.y <- t
  add r13.yz, r13.yyzy, l(0.000000, -0.500000, -0.500000, 0.000000)
  mul r13.yz, r13.yyzy, cb1[27].zzwz

#line 236
  mad r14.xy, -r4.yxyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r14.y <- uw0; r14.x <- vw0
  mad r14.zw, r4.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r14.z <- uw2; r14.w <- vw2
  mad r15.xy, -r4.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r15.xy, r15.xyxx, r14.yxyy
  add r15.zw, r4.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000)
  div r4.xy, r4.xyxx, r14.zwzz
  add r16.xw, r15.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r16.x <- u0; r16.w <- v0
  mul r16.yz, r15.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r16.z <- u1; r16.y <- v1
  add r15.xy, r4.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r15.x <- u2; r15.y <- v2
  mad r17.xyzw, r16.xwzw, cb1[27].zwzw, r13.yzyz

#line 203
  sample_c r4.x, r17.xyxx, t4.xxxx, s1, r4.z  // r4.x <- <SampleTextureAndCompare_id112 return value>
  sample_c r4.y, r17.zwzz, t4.xxxx, s1, r4.z  // r4.y <- <SampleTextureAndCompare_id112 return value>

#line 247
  mov r15.zw, r16.wwwy
  mad r17.xyzw, r15.xzxw, cb1[27].zwzw, r13.yzyz

#line 203
  sample_c r11.w, r17.xyxx, t4.xxxx, s1, r4.z  // r11.w <- <SampleTextureAndCompare_id112 return value>

#line 246
  mad r18.xyzw, r16.xyzy, cb1[27].zwzw, r13.yzyz

#line 203
  sample_c r13.w, r18.xyxx, t4.xxxx, s1, r4.z  // r13.w <- <SampleTextureAndCompare_id112 return value>
  sample_c r15.z, r18.zwzz, t4.xxxx, s1, r4.z  // r15.z <- <SampleTextureAndCompare_id112 return value>
  sample_c r15.w, r17.zwzz, t4.xxxx, s1, r4.z  // r15.w <- <SampleTextureAndCompare_id112 return value>

#line 248
  mov r16.y, r15.y
  mad r16.xyzw, r16.xyzy, cb1[27].zwzw, r13.yzyz

#line 203
  sample_c r16.x, r16.xyxx, t4.xxxx, s1, r4.z  // r16.x <- <SampleTextureAndCompare_id112 return value>
  sample_c r16.y, r16.zwzz, t4.xxxx, s1, r4.z  // r16.y <- <SampleTextureAndCompare_id112 return value>

#line 250
  mad r13.yz, r15.xxyx, cb1[27].zzwz, r13.yyzy

#line 203
  sample_c r4.z, r13.yzyy, t4.xxxx, s1, r4.z  // r4.z <- <SampleTextureAndCompare_id112 return value>

#line 418
  if_nz r10.x

#line 421
    if_z r11.y
      mul_sat r9.w, r9.w, l(5.000000)
      mad r10.x, r9.w, l(-2.000000), l(3.000000)
      mul r9.w, r9.w, r9.w
      mul r9.w, r9.w, r10.x  // r9.w <- lerpAmt

#line 242
      mul r10.x, r14.x, r14.y
      mul r4.y, r14.x, r4.y
      mul r4.y, r4.y, l(7.000000)
      mad r4.x, r10.x, r4.x, r4.y  // r4.x <- shadow

#line 248
      mul r13.yz, r14.xxyx, r14.zzwz

#line 244
      mad r4.x, r13.y, r11.w, r4.x
      mul r4.y, r13.w, r14.y
      mad r4.x, r4.y, l(7.000000), r4.x
      mad r4.x, r15.z, l(49.000000), r4.x
      mul r4.y, r14.z, r15.w
      mad r4.x, r4.y, l(7.000000), r4.x
      mad r4.x, r13.z, r16.x, r4.x
      mul r4.y, r14.w, r16.y
      mad r4.x, r4.y, l(7.000000), r4.x
      mul r4.y, r14.w, r14.z
      mad r4.x, r4.y, r4.z, r4.x
      mul r4.x, r4.x, l(0.006944)

#line 427
      mad r4.y, r12.w, l(0.006944), -r4.x
      mad r13.x, r9.w, r4.y, r4.x
    endif 
  endif   // r13.x <- shadow

#line 540
  mul r4.xyz, r13.xxxx, cb1[26].xyzx
  mul r4.xyz, r8.wwww, r4.xyzx
  mul r4.xyz, r6.wwww, r4.xyzx  // r4.x <- streams.lightColorNdotL_id40.x; r4.y <- streams.lightColorNdotL_id40.y; r4.z <- streams.lightColorNdotL_id40.z

#line 587
  add r13.xyz, r7.xyzx, -cb1[25].xyzx
  dp3 r9.w, r13.xyzx, r13.xyzx
  rsq r9.w, r9.w
  mul r13.xyz, r9.wwww, r13.xyzx  // r13.x <- streams.H_id68.x; r13.y <- streams.H_id68.y; r13.z <- streams.H_id68.z
  dp3 r9.w, r6.xyzx, r13.xyzx
  max r9.w, r9.w, l(0.000100)  // r9.w <- streams.NdotH_id69
  dp3 r10.x, -cb1[25].xyzx, r13.xyzx
  max r10.x, r10.x, l(0.000100)  // r10.x <- streams.LdotH_id70

#line 583
  mul r13.xyz, r4.xyzx, r8.xyzx

#line 741
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 276
  add r14.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r10.x, -r10.x, l(1.000000)
  mul r11.y, r10.x, r10.x
  mul r11.y, r11.y, r11.y
  mul r10.x, r10.x, r11.y
  mad r14.xyz, r14.xyzx, r10.xxxx, r9.xyzx  // r14.x <- <FresnelSchlick_id214 return value>.x; r14.y <- <FresnelSchlick_id214 return value>.y; r14.z <- <FresnelSchlick_id214 return value>.z

#line 271
  mul r10.x, r11.x, l(0.500000)  // r10.x <- k
  mad r11.y, -r11.x, l(0.500000), l(1.000000)
  mad r11.w, r8.w, r11.y, r10.x
  div r11.w, r8.w, r11.w  // r11.w <- <VisibilityhSchlickGGX_id232 return value>
  mad r10.x, r11.z, r11.y, r10.x
  div r10.x, r11.z, r10.x  // r10.x <- <VisibilityhSchlickGGX_id232 return value>

#line 323
  mul r10.x, r10.x, r11.w
  mul r8.w, r11.z, r8.w
  div r8.w, r10.x, r8.w  // r8.w <- <VisibilitySmithSchlickGGX_id234 return value>

#line 318
  mul r10.x, r11.x, r11.x  // r10.x <- alphaR2
  mul r9.w, r9.w, r9.w
  mad r11.y, r11.x, r11.x, l(-1.000000)
  mad r9.w, r9.w, r11.y, l(1.000000)
  max r9.w, r9.w, l(0.000100)
  mul r9.w, r9.w, r9.w
  mul r9.w, r9.w, l(3.141593)
  div r9.w, r10.x, r9.w  // r9.w <- <NormalDistributionGGX_id248 return value>

#line 577
  mul r14.xyz, r8.wwww, r14.xyzx
  mul r14.xyz, r9.wwww, r14.xyzx
  mul r4.xyz, r4.xyzx, r14.xyzx

#line 745
  mad r12.xyz, r4.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 731
  iadd r7.w, r7.w, l(1)

#line 747
endloop 

#line 531
mul r4.xyz, cb0[1].zzzz, cb1[50].xyzx  // r4.x <- lightColor.x; r4.y <- lightColor.y; r4.z <- lightColor.z

#line 373
add r0.w, -r2.w, l(1.000000)  // r0.w <- x

#line 381
mul r3.w, r0.w, r0.w

#line 389
mul r4.w, r3.w, l(1.895000)

#line 381
mad r4.w, r0.w, l(-0.168800), r4.w
mad r5.x, r1.w, l(-4.853000), l(0.990300)
mul r5.y, r1.w, r1.w
mad r5.x, r5.y, l(8.404000), r5.x
mul r5.z, r1.w, r5.y
mad r5.x, r5.z, l(-5.069000), r5.x
min_sat r4.w, r4.w, r5.x  // r4.w <- bias

#line 389
mad r5.x, r0.w, l(1.699000), l(0.604500)
mad r5.x, r1.w, l(-0.522800), r5.x
mad r5.x, r3.w, l(-3.603000), r5.x
mul r1.w, r0.w, r1.w
mad r1.w, r1.w, l(1.404000), r5.x
mad r1.w, r5.y, l(0.193900), r1.w
mul r0.w, r0.w, r3.w
mad_sat r0.w, r0.w, l(2.661000), r1.w  // r0.w <- delta
add r0.w, -r4.w, r0.w  // r0.w <- scale
mul_sat r1.w, r2.y, l(50.000000)
mul r1.w, r1.w, r4.w  // r1.w <- bias
mad r2.xyz, r2.xyzx, r0.wwww, r1.wwww  // r2.x <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id249 return value>.x; r2.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id249 return value>.y; r2.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id249 return value>.z

#line 522
mul r5.xyz, r4.xyzx, r2.xyzx  // r5.x <- <ComputeEnvironmentLightContribution_id459 return value>.x; r5.y <- <ComputeEnvironmentLightContribution_id459 return value>.y; r5.z <- <ComputeEnvironmentLightContribution_id459 return value>.z

#line 759
mad r4.xyz, r3.xyzx, r4.xyzx, r5.xyzx  // r4.x <- environmentLightingContribution.x; r4.y <- environmentLightingContribution.y; r4.z <- environmentLightingContribution.z

#line 511
dp3 r0.w, r0.xyzx, cb1[60].xyzx  // r0.w <- sampleDirection.x
dp3 r1.w, r0.xyzx, cb1[61].xyzx  // r1.w <- sampleDirection.y
dp3 r3.w, r0.xyzx, cb1[62].xyzx  // r3.w <- sampleDirection.z

#line 352
mul r4.w, r1.w, r1.w  // r4.w <- y2
mul r5.x, r3.w, r3.w  // r5.x <- z2

#line 357
mad r5.yzw, cb1[52].xxyz, r1.wwww, cb1[51].xxyz  // r5.y <- color.x; r5.z <- color.y; r5.w <- color.z
mad r5.yzw, cb1[53].xxyz, -r3.wwww, r5.yyzw
mad r5.yzw, cb1[54].xxyz, r0.wwww, r5.yyzw

#line 362
mul r6.xyz, r1.wwww, cb1[55].xyzx
mad r5.yzw, r6.xxyz, r0.wwww, r5.yyzw
mul r6.xyz, r1.wwww, cb1[56].xyzx
mad r5.yzw, r6.xxyz, -r3.wwww, r5.yyzw
mad r1.w, r5.x, l(3.000000), l(-1.000000)
mad r5.xyz, cb1[57].xyzx, r1.wwww, r5.yzwy  // r5.x <- color.x; r5.y <- color.y; r5.z <- color.z
mul r6.xyz, r0.wwww, cb1[58].xyzx
mad r5.xyz, r6.xyzx, -r3.wwww, r5.xyzx
mad r0.w, r0.w, r0.w, -r4.w
mad r5.xyz, cb1[59].xyzx, r0.wwww, r5.xyzx

#line 513
mul r5.xyz, r5.xyzx, cb1[64].xxxx
mul r5.xyz, r5.xyzx, cb0[1].zzzz  // r5.x <- streams.envLightDiffuseColor_id41.x; r5.y <- streams.envLightDiffuseColor_id41.y; r5.z <- streams.envLightDiffuseColor_id41.z
dp3 r0.w, -r1.xyzx, r0.xyzx
add r0.w, r0.w, r0.w
mad r0.xyz, r0.xyzx, -r0.wwww, -r1.xyzx  // r0.x <- sampleDirection.x; r0.y <- sampleDirection.y; r0.z <- sampleDirection.z
dp3 r1.x, r0.xyzx, cb1[60].xyzx  // r1.x <- sampleDirection.x
dp3 r1.y, r0.xyzx, cb1[61].xyzx  // r1.y <- sampleDirection.y
dp3 r0.x, r0.xyzx, cb1[62].xyzx  // r0.x <- sampleDirection.z
mov r1.z, -r0.x  // r1.z <- sampleDirection.z

#line 343
sqrt r0.x, r2.w
mul r0.x, r0.x, cb1[59].w  // r0.x <- mipLevel
sample_l r0.xyzw, r1.xyzx, t5.xyzw, s0, r0.x  // r0.x <- <Compute_id293 return value>.x; r0.y <- <Compute_id293 return value>.y; r0.z <- <Compute_id293 return value>.z

#line 517
mul r0.xyz, r0.xyzx, cb1[64].xxxx
mul r0.xyz, r0.xyzx, cb0[1].zzzz  // r0.x <- streams.envLightSpecularColor_id42.x; r0.y <- streams.envLightSpecularColor_id42.y; r0.z <- streams.envLightSpecularColor_id42.z

#line 767
mad r1.xyz, r3.xyzx, r5.xyzx, r4.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 771
mad r0.xyz, r2.xyzx, r0.xyzx, r1.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 774
mad o0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 951
mov o0.w, cb0[0].w
ret 
// Approximately 460 instruction slots used
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
const static bool TInvert_id183 = false;
const static bool TIsEnergyConservative_id202 = false;
static const float PI_id204 = 3.14159265358979323846;
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
Texture3D<uint2> LightClusters_id85;
Buffer<uint> LightIndices_id86;
Buffer<float4> PointLights_id90;
Buffer<float4> SpotLights_id93;
Texture2D ShadowMapTexture_id97;
TextureCube CubeMap_id175;
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
    float4 constantColor_id180;
    float constantFloat_id182;
    float constantFloat_id185;
    float constantFloat_id190;
    float constantFloat_id192;
    float constantFloat_id194;
    float constantFloat_id196;
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
float SampleTextureAndCompare_id112(float2 position, float positionDepth)
{
    return ShadowMapTexture_id97.SampleCmp(LinearClampCompareLessEqualSampler_id132, position, positionDepth);
}
float SmoothDistanceAttenuation_id96(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id88(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float FilterShadow_id108(float2 position, float positionDepth)
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
        shadow += uw0 * vw0 * SampleTextureAndCompare_id112(base_uv + float2(u0, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw0 * SampleTextureAndCompare_id112(base_uv + float2(u1, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw0 * SampleTextureAndCompare_id112(base_uv + float2(u2, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw0 * vw1 * SampleTextureAndCompare_id112(base_uv + float2(u0, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw1 * SampleTextureAndCompare_id112(base_uv + float2(u1, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw1 * SampleTextureAndCompare_id112(base_uv + float2(u2, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw0 * vw2 * SampleTextureAndCompare_id112(base_uv + float2(u0, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw2 * SampleTextureAndCompare_id112(base_uv + float2(u1, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw2 * SampleTextureAndCompare_id112(base_uv + float2(u2, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow /= 144.0f;
    }
    return shadow;
}
float GetAngleAttenuation_id98(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id97(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id96(d2, lightInvSquareRadius);
    return attenuation;
}
float VisibilityhSchlickGGX_id232(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id214(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float GetDistanceAttenuation_id89(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id88(d2, lightInvSquareRadius);
    return attenuation;
}
float ComputeShadowFromCascade_id111(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1), WorldToShadowCascadeUV_id160[cascadeIndex + lightIndex * TCascadeCountBase_id158]);
    shadowPosition.z -= DepthBiases_id161[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id108(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id110(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id99.x * offsetScale * normalOffsetScale * normal;
}
void ComputeShadow_id109(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void ProcessLight_id99(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = light.AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -light.DirectionWS;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id97(lightVector, lightInvSquareRadius);
    attenuation *= GetAngleAttenuation_id98(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
float NormalDistributionGGX_id248(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    return alphaR2 / (PI_id204 * pow(max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001), 2.0f));
}
float VisibilitySmithSchlickGGX_id234(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id232(alphaR, nDotL) * VisibilityhSchlickGGX_id232(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id220(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id214(f0, 1.0f, lOrVDotH);
}
void ProcessLight_id91(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id89(lightVector, lightInvSquareRadius);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
float4 Compute_id293(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id63;
    float mipLevel = sqrt(alpha) * MipCount_id174;
    return CubeMap_id175.SampleLevel(LinearSampler_id130, direction, mipLevel);
}
float4 Compute_id288(float3 direction)
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
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id249(float3 specularColor, float alphaR, float nDotV)
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
void ComputeShadow_id103(inout PS_STREAMS streams, int lightIndex)
{
    ComputeShadow_id109(streams, lightIndex);
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
    shadowPosition += GetShadowPositionOffset_id110(OffsetScales_id162[lightIndex], streams.NdotL_id43, streams.normalWS_id16);
    if (cascadeIndex < TCascadeCount_id163)
    {
        shadow = ComputeShadowFromCascade_id111(shadowPosition, cascadeIndex, lightIndex);
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
                float nextShadow = ComputeShadowFromCascade_id111(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }

    {
        streams.shadowColor_id76 = shadow;
    }
}
void PrepareDirectLightCore_id102(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id39 = Lights_id96[lightIndex].Color;
    streams.lightDirectionWS_id38 = -Lights_id96[lightIndex].DirectionWS;
}
void ComputeShadow_id95(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id94(inout PS_STREAMS streams, int lightIndexIgnored)
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
    ProcessLight_id99(streams, spotLight);
}
float Compute_id380(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id248(streams.alphaRoughness_id63, streams.NdotH_id69);
}
float Compute_id351(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id234(streams.alphaRoughness_id63, streams.NdotL_id43, streams.NdotV_id65);
}
float3 Compute_id322(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id220(f0, streams.LdotH_id70);
}
void ComputeShadow_id87(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id86(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id86.Load(streams.lightIndex_id84);
    streams.lightIndex_id84++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id90.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id90.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id91(streams, pointLight);
}
void PrepareLightData_id90(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id79.y / (projectedDepth - ZProjection_id79.x);
    int2 shadingPosition = int2(streams.ShadingPosition_id0.xy);
    int slice = int(max(log2(depth * ClusterDepthScale_id87 + ClusterDepthBias_id88), 0));
    streams.lightData_id83 = LightClusters_id85.Load(int4(shadingPosition / ClusterSize2_id82, slice, 0));
    streams.lightIndex_id84 = streams.lightData_id83.x;
}
float GetFilterSquareRoughnessAdjustment_id186(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id252()
{
}
void PrepareEnvironmentLight_id305(inout PS_STREAMS streams)
{
    float ambientAccessibility = streams.matAmbientOcclusion_id51;
    float3 sampleDirection = mul(streams.normalWS_id16, (float3x3)SkyMatrix_id176);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id41 = Compute_id288(sampleDirection).rgb * Intensity_id177 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id58.x;
    sampleDirection = reflect(-streams.viewWS_id61, streams.normalWS_id16);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id176);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id42 = Compute_id293(streams, sampleDirection).rgb * Intensity_id177 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeEnvironmentLightContribution_id459(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id249(specularColor, streams.alphaRoughness_id63, streams.NdotV_id65) * streams.envLightSpecularColor_id42;
}
float3 ComputeEnvironmentLightContribution_id410(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id299(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id171 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareDirectLight_id282(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id102(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id103(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id283()
{
    return LightCount_id94;
}
int GetMaxLightCount_id284()
{
    return TMaxLightCount_id95;
}
void PrepareDirectLights_id280()
{
}
void PrepareDirectLight_id273(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id94(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id95(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id276(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
int GetMaxLightCount_id275(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
void PrepareDirectLights_id271()
{
}
float3 ComputeDirectLightContribution_id458(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    float3 fresnel = Compute_id322(streams, specularColor);
    float geometricShadowing = Compute_id351(streams);
    float normalDistribution = Compute_id380(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeDirectLightContribution_id409(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor / PI_id204 * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.x;
}
void PrepareMaterialPerDirectLight_id27(inout PS_STREAMS streams)
{
    streams.H_id68 = normalize(streams.viewWS_id61 + streams.lightDirectionWS_id38);
    streams.NdotH_id69 = max(dot(streams.normalWS_id16, streams.H_id68), 0.0001f);
    streams.LdotH_id70 = max(dot(streams.lightDirectionWS_id38, streams.H_id68), 0.0001f);
    streams.VdotH_id71 = streams.LdotH_id70;
}
void PrepareDirectLight_id263(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id86(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id87(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id267(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
int GetMaxLightCount_id266(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
void PrepareDirectLights_id265(inout PS_STREAMS streams)
{
    PrepareLightData_id90(streams);
}
void PrepareMaterialForLightingAndShading_id251(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id186(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id250(inout PS_STREAMS streams)
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
float4 Compute_id320()
{
    return float4(constantFloat_id198, constantFloat_id198, constantFloat_id198, constantFloat_id198);
}
float4 Compute_id318()
{
    return float4(constantFloat_id196, constantFloat_id196, constantFloat_id196, constantFloat_id196);
}
float4 Compute_id316()
{
    return float4(constantFloat_id194, constantFloat_id194, constantFloat_id194, constantFloat_id194);
}
float4 Compute_id314()
{
    return float4(constantFloat_id192, constantFloat_id192, constantFloat_id192, constantFloat_id192);
}
float4 Compute_id312()
{
    return float4(constantFloat_id190, constantFloat_id190, constantFloat_id190, constantFloat_id190);
}
float4 Compute_id310()
{
    return float4(constantFloat_id185, constantFloat_id185, constantFloat_id185, constantFloat_id185);
}
float4 Compute_id308()
{
    return float4(constantFloat_id182, constantFloat_id182, constantFloat_id182, constantFloat_id182);
}
float4 Compute_id306()
{
    return constantColor_id180;
}
void ResetStream_id255(inout PS_STREAMS streams)
{
    ResetStream_id252();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id514(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id19(streams.matNormal_id45);
    ResetLightStream_id250(streams);
    PrepareMaterialForLightingAndShading_id251(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id265(streams);
        const int maxLightCount = GetMaxLightCount_id266(streams);
        int count = GetLightCount_id267(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id263(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id409(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id458(streams);
            }
        }
    }

    {
        PrepareDirectLights_id271();
        const int maxLightCount = GetMaxLightCount_id275(streams);
        int count = GetLightCount_id276(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id273(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id409(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id458(streams);
            }
        }
    }

    {
        PrepareDirectLights_id280();
        const int maxLightCount = GetMaxLightCount_id284();
        int count = GetLightCount_id283();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id282(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id409(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id458(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id299(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id410(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id459(streams);
        }
    }

    {
        PrepareEnvironmentLight_id305(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id410(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id459(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id204 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id499(inout PS_STREAMS streams)
{
    streams.matCavitySpecular_id55 = Compute_id320().r;
}
void Compute_id494(inout PS_STREAMS streams)
{
    streams.matCavityDiffuse_id54 = Compute_id318().r;
}
void Compute_id489(inout PS_STREAMS streams)
{
    streams.matCavity_id53 = Compute_id316().r;
}
void Compute_id484(inout PS_STREAMS streams)
{
    streams.matAmbientOcclusionDirectLightingFactor_id52 = Compute_id314().r;
}
void Compute_id479(inout PS_STREAMS streams)
{
    streams.matAmbientOcclusion_id51 = Compute_id312().r;
}
void Compute_id474(inout PS_STREAMS streams)
{
    float metalness = Compute_id310().r;
    streams.matSpecular_id49 = lerp(0.02, streams.matDiffuse_id47.rgb, metalness);
    streams.matDiffuse_id47.rgb = lerp(streams.matDiffuse_id47.rgb, 0, metalness);
}
void Compute_id469(inout PS_STREAMS streams)
{
    float glossiness = Compute_id308().r;
    streams.matGlossiness_id48 = glossiness;
}
void Compute_id464(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id306();
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id257(inout PS_STREAMS streams)
{
    ResetStream_id255(streams);
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
void Compute_id83(inout PS_STREAMS streams)
{

    {
        Compute_id464(streams);
    }

    {
        Compute_id469(streams);
    }

    {
        Compute_id474(streams);
    }

    {
        Compute_id479(streams);
    }

    {
        Compute_id484(streams);
    }

    {
        Compute_id489(streams);
    }

    {
        Compute_id494(streams);
    }

    {
        Compute_id499(streams);
    }

    {
        Compute_id514(streams);
    }
}
void ResetStream_id82(inout PS_STREAMS streams)
{
    ResetStream_id257(streams);
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
    ResetStream_id82(streams);
    Compute_id83(streams);
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
