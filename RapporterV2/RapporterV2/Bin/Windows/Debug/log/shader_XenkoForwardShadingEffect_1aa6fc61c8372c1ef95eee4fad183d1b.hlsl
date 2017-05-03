/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.DiffuseMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = ComputeColorConstantFloatLink<Material.GlossinessValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecular,rgb> [{computeColorSource = ComputeColorConstantColorLink<Material.SpecularValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecularIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.SpecularIntensityValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<8>, LightClusteredPointGroup, LightClusteredSpotGroup
@P Lighting.EnvironmentLights: LightSimpleAmbient, xkfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: IComputeEnvironmentColor
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: IComputeEnvironmentColor
@P XenkoEffectBase.RenderTargetExtensions: mixin
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
cbuffer PerMaterial [Size: 64]
@C    scale_id104 => Material.TextureScale
@C    offset_id105 => Material.TextureOffset
@C    constantFloat_id107 => Material.GlossinessValue
@C    constantColor_id171 => Material.SpecularValue
@C    constantFloat_id173 => Material.SpecularIntensityValue
cbuffer PerView [Size: 800]
@C    View_id22 => Transformation.View
@C    ViewInverse_id23 => Transformation.ViewInverse
@C    Projection_id24 => Transformation.Projection
@C    ProjectionInverse_id25 => Transformation.ProjectionInverse
@C    ViewProjection_id26 => Transformation.ViewProjection
@C    ProjScreenRay_id27 => Transformation.ProjScreenRay
@C    Eye_id28 => Transformation.Eye
@C    NearClipPlane_id82 => Camera.NearClipPlane
@C    FarClipPlane_id83 => Camera.FarClipPlane
@C    ZProjection_id84 => Camera.ZProjection
@C    ViewSize_id85 => Camera.ViewSize
@C    AspectRatio_id86 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id78 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id80 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ClusterDepthScale_id91 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id92 => LightClustered.ClusterDepthBias
@C    ClusterStride_id93 => LightClustered.ClusterStride
@C    AmbientLight_id96 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SkyMatrix_id97 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id98 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    Texture_id101 => Material.DiffuseMap [Stage: None, Slot: (-1--1)]
@R    Texture_id101 => Material.DiffuseMap [Stage: None, Slot: (-1--1)]
@R    Sampler_id102 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Sampler_id102 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    LightClusters_id89 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id89 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id90 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id90 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id94 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id94 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id95 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id95 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    Sampler_id102 => Material.Sampler.i0 [Stage: Pixel, Slot: (0-0)]
@R    Texture_id101 => Material.DiffuseMap [Stage: Pixel, Slot: (0-0)]
@R    LightClusters_id89 => LightClustered.LightClusters [Stage: Pixel, Slot: (1-1)]
@R    LightIndices_id90 => LightClustered.LightIndices [Stage: Pixel, Slot: (2-2)]
@R    PointLights_id94 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (3-3)]
@R    SpotLights_id95 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (4-4)]
@R    PerMaterial => PerMaterial [Stage: Pixel, Slot: (0-0)]
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 5c3160ccbf936c5e102bd9315f0f946a
@S    ShaderBaseStream => f699080594ac63c1f38140de57ce1a7b
@S    ShadingBase => b3b3b36d41adc869f767546576253178
@S    ComputeColor => 6e3e8655257003c26480195de33cbbc1
@S    TransformationBase => f1386ed2f0e8db4eb9e79a63ee23e05c
@S    NormalStream => 5d295e278c920e30e310e1979bc14a19
@S    TransformationWAndVP => 1ad0d61ab4ab5bf92b87169f094b8b17
@S    PositionStream4 => 87a2d7a46c028c1479a982866d88d067
@S    PositionHStream4 => f5c4e6d128281ef2d40fba86959205d5
@S    Transformation => 719ba8c043f4a58d7b2653b16b73f5e4
@S    NormalFromMesh => c487fad060f8b842a2903c8924c8da3e
@S    NormalBase => b70fd93cea3e78cb7e35bf33c5bc761d
@S    MaterialSurfacePixelStageCompositor => 1d6419ba7ac2d0f180564d21a0d3f8c0
@S    PositionStream => 664ed5997626578c1dfdc74402cd23f6
@S    MaterialPixelShadingStream => 28de6f1960d9c29f165f916c0adfe5a5
@S    MaterialPixelStream => 17c22a7a37d239e0ee9e8d2779c03c80
@S    MaterialStream => 83fd257dadb68d92b2e57a11122265d4
@S    IStreamInitializer => 8be0404675b438bff2babfd297fb96df
@S    LightStream => 0adb89aecbaf79fd10c51bd04847d34f
@S    DirectLightGroupArray => 9addcff5b7cb7364a8a5d87d4de45742
@S    DirectLightGroup => 92eb9d726b1937533c27d57ff97f8da5
@S    ShadowGroup => 545ec47456ee7f4472536d8a7316d02f
@S    ShadowStream => 4abbfb30b4b85e71b0f683b420977101
@S    EnvironmentLightArray => 92f59b0813153de143701e01f1da89e0
@S    EnvironmentLight => 2955a0089813452a7d835f3fa5c494a9
@S    IMaterialSurface => 14b3d59b9c516893bd7730aaa3dc225a
@S    LightDirectionalGroup => 7bb2cc43889ab80004ab02a83bbd02d2
@S    DirectLightGroupPerView => f728a5a7f613dcd26bc20d54908ca1b8
@S    LightDirectional => 8f8fc60cae27222c84186af6eec74080
@S    LightClusteredPointGroup => f9b1c664348f4eb9d5d38e9465e88238
@S    LightClustered => edc545d8eb90b3aab34e28252f44cfb7
@S    ScreenPositionBase => bbb64a5ce69c98293db8d516c717bec6
@S    Camera => ec417735d81c9ad1d80ca0e6d87138b0
@S    LightPoint => 9dfe0a0788419621449a7f8967281a2f
@S    LightUtil => d77cfcfacea55ef4e06d9f585be27420
@S    LightClusteredSpotGroup => 3c9c76b8cb64f527f37464f5833139b0
@S    LightSpot => 0bcf1b3e89e9a247545b91358ea8a1a5
@S    LightSimpleAmbient => e49f9babfd8d092cb681b1d8742ede93
@S    LightSkyboxShader => 8192a852735e164cbaa9a9512fa0a512
@S    IComputeEnvironmentColor => 9e5e0467c0fccc46f26afa70c63aed71
@S    MaterialSurfaceArray => ccbac4b49ee1e91b6f7d11a29c26a658
@S    MaterialSurfaceDiffuse => 4572009ce562fa4c388af46aacc800f7
@S    IMaterialSurfacePixel => c2baefbc3fb7ad1466cc087909a23051
@S    ComputeColorTextureScaledOffsetDynamicSampler => 36853d1a7bd080d8e9e9c5137a104b79
@S    DynamicTexture => 74e692ca9cc93b6cc6965bc380e07efe
@S    DynamicSampler => 0e1b689d1f965f3f34ae76abdf34dea7
@S    DynamicTextureStream => 546b0c40a42b4fe0e5613396b0ed4d66
@S    MaterialSurfaceGlossinessMap => fb8774941dd1a7b0ced77715861382a4
@S    ComputeColorConstantFloatLink => a459500fd7f6c5988997e81bf766f988
@S    MaterialSurfaceSetStreamFromComputeColor => 1d00f7d823647b307a55871a0b3eba09
@S    IMaterialSurfaceVertex => 8e13e0524d4025cb811c673aeb77f45b
@S    MaterialVertexStream => fe2d4e2abe57231a93785fe59684b199
@S    MaterialDisplacementStream => 5112948b0773a844410cc7c3df78184a
@S    IMaterialSurfaceDomain => a787b7e989be07714532cd1ffc35ef2a
@S    MaterialDomainStream => 8be905888c6f3153139bc1fa900fdf5f
@S    MaterialTessellationStream => 87652904dbe93d91999520c7e41f52a1
@S    Texturing => a9d9ee1fb9a68af7ce6b12291686faea
@S    ComputeColorConstantColorLink => a4f7de8d03608ceba6b4f128ada2b3ed
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
@G    Vertex => ac5a3e15bfb32845bc23798adf1671a4
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
//   float NearClipPlane_id82;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id83;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id84;           // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id85;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id86;            // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id78;               // Offset:  400 Size:     4 [unused]
//   
//   struct
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id80[8];                  // Offset:  416 Size:   252 [unused]
//   float ClusterDepthScale_id91;      // Offset:  668 Size:     4 [unused]
//   float ClusterDepthBias_id92;       // Offset:  672 Size:     4 [unused]
//   float2 ClusterStride_id93;         // Offset:  676 Size:     8 [unused]
//   float3 AmbientLight_id96;          // Offset:  688 Size:    12 [unused]
//   float4x4 SkyMatrix_id97;           // Offset:  704 Size:    64 [unused]
//   float Intensity_id98;              // Offset:  768 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset:  784 Size:    16 [unused]
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
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// SCREENPOSITION_ID81_SEM     0   xyzw        3     NONE   float   xyzw
// TEXCOORD                 0   xy          4     NONE   float   xy  
//
vs_4_0
dcl_constantbuffer cb0[11], immediateIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input v2.xy
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_output o4.xy
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.meshNormal_id14.x; v1.y <- __input__.meshNormal_id14.y; v1.z <- __input__.meshNormal_id14.z; 
//   v2.x <- __input__.TexCoord_id103.x; v2.y <- __input__.TexCoord_id103.y; 
//   o4.x <- <VSMain return value>.TexCoord_id103.x; o4.y <- <VSMain return value>.TexCoord_id103.y; 
//   o3.x <- <VSMain return value>.ScreenPosition_id81.x; o3.y <- <VSMain return value>.ScreenPosition_id81.y; o3.z <- <VSMain return value>.ScreenPosition_id81.z; o3.w <- <VSMain return value>.ScreenPosition_id81.w; 
//   o2.x <- <VSMain return value>.normalWS_id16.x; o2.y <- <VSMain return value>.normalWS_id16.y; o2.z <- <VSMain return value>.normalWS_id16.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 816 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_1aa6fc61c8372c1ef95eee4fad183d1b.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 895
mov o0.xyzw, r0.xyzw

#line 806
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- streams.ShadingPosition_id0.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- streams.ShadingPosition_id0.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- streams.ShadingPosition_id0.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- streams.ShadingPosition_id0.w

#line 895
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw

#line 850
dp3 o2.x, v1.xyzx, cb0[8].xyzx
dp3 o2.y, v1.xyzx, cb0[9].xyzx
dp3 o2.z, v1.xyzx, cb0[10].xyzx

#line 895
mov o4.xy, v2.xyxx
ret 
// Approximately 16 instruction slots used
@G    Pixel => 13163575f6fa65f5d1522d5a8cb4d0a9
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float2 scale_id104;                // Offset:    0 Size:     8
//   float2 offset_id105;               // Offset:    8 Size:     8
//   float constantFloat_id107;         // Offset:   16 Size:     4
//   float4 constantColor_id171;        // Offset:   32 Size:    16
//   float constantFloat_id173;         // Offset:   48 Size:     4
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
//   float NearClipPlane_id82;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id83;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id84;           // Offset:  360 Size:     8
//   float2 ViewSize_id85;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id86;            // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id78;               // Offset:  400 Size:     4
//   
//   struct
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id80[8];                  // Offset:  416 Size:   252
//   float ClusterDepthScale_id91;      // Offset:  668 Size:     4
//   float ClusterDepthBias_id92;       // Offset:  672 Size:     4
//   float2 ClusterStride_id93;         // Offset:  676 Size:     8
//   float3 AmbientLight_id96;          // Offset:  688 Size:    12
//   float4x4 SkyMatrix_id97;           // Offset:  704 Size:    64 [unused]
//   float Intensity_id98;              // Offset:  768 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset:  784 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// Sampler_id102                     sampler      NA          NA    0        1
// Texture_id101                     texture  float4          2d    0        1
// LightClusters_id89                texture   uint2          3d    1        1
// LightIndices_id90                 texture    uint         buf    2        1
// PointLights_id94                  texture  float4         buf    3        1
// SpotLights_id95                   texture  float4         buf    4        1
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
// SV_Position              0   xyzw        1      POS   float     z 
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// SCREENPOSITION_ID81_SEM     0   xyzw        3     NONE   float   xy w
// TEXCOORD                 0   xy          4     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_4_0
dcl_constantbuffer cb0[4], immediateIndexed
dcl_constantbuffer cb1[44], dynamicIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture3d (uint,uint,uint,uint) t1
dcl_resource_buffer (uint,uint,uint,uint) t2
dcl_resource_buffer (float,float,float,float) t3
dcl_resource_buffer (float,float,float,float) t4
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyw
dcl_input_ps linear v4.xy
dcl_output o0.xyzw
dcl_temps 18
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id16.x; v2.y <- __input__.normalWS_id16.y; v2.z <- __input__.normalWS_id16.z; 
//   v3.x <- __input__.ScreenPosition_id81.x; v3.y <- __input__.ScreenPosition_id81.y; v3.z <- __input__.ScreenPosition_id81.z; v3.w <- __input__.ScreenPosition_id81.w; 
//   v4.x <- __input__.TexCoord_id103.x; v4.y <- __input__.TexCoord_id103.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 875 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_1aa6fc61c8372c1ef95eee4fad183d1b.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id81.x; r0.y <- streams.ScreenPosition_id81.y

#line 845
dp3 r0.z, v2.xyzx, v2.xyzx
lt r0.w, l(0.000000), r0.z
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.xyzx  // r1.x <- streams.normalWS_id16.x; r1.y <- streams.normalWS_id16.y; r1.z <- streams.normalWS_id16.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.xyzx

#line 820
add r2.xyz, -v0.xyzx, cb1[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.viewWS_id62.x; r2.y <- streams.viewWS_id62.y; r2.z <- streams.viewWS_id62.z

#line 602
mad r0.zw, v4.xxxy, cb0[0].xxxy, cb0[0].zzzw
sample r3.xyzw, r0.zwzz, t0.xyzw, s0  // r3.x <- <Compute_id255 return value>.x; r3.y <- <Compute_id255 return value>.y; r3.z <- <Compute_id255 return value>.z; r3.w <- <Compute_id255 return value>.w

#line 568
mul r4.xyz, cb0[2].xyzx, cb0[3].xxxx  // r4.x <- streams.matSpecularVisible_id65.x; r4.y <- streams.matSpecularVisible_id65.y; r4.z <- streams.matSpecularVisible_id65.z
dp3 r0.z, r1.xyzx, r2.xyzx
add r0.w, -cb0[1].x, l(1.000000)  // r0.w <- roughness
mul r0.w, r0.w, r0.w

#line 569
max r0.zw, r0.zzzw, l(0.000000, 0.000000, 0.000100, 0.001000)  // r0.z <- streams.NdotV_id66; r0.w <- streams.alphaRoughness_id64

#line 621
mov r1.w, r0.z  // r1.w <- streams.NdotV_id66
mov r5.xyz, r1.xyzx  // r5.x <- streams.normalWS_id16.x; r5.y <- streams.normalWS_id16.y; r5.z <- streams.normalWS_id16.z
mov r6.xyz, r2.xyzx  // r6.x <- streams.viewWS_id62.x; r6.y <- streams.viewWS_id62.y; r6.z <- streams.viewWS_id62.z
mov r7.xyz, r3.xyzx  // r7.x <- streams.matDiffuseVisible_id63.x; r7.y <- streams.matDiffuseVisible_id63.y; r7.z <- streams.matDiffuseVisible_id63.z
mov r8.xyz, r4.xyzx  // r8.x <- streams.matSpecularVisible_id65.x; r8.y <- streams.matSpecularVisible_id65.y; r8.z <- streams.matSpecularVisible_id65.z
mov r8.w, r0.w  // r8.w <- streams.alphaRoughness_id64
mov r9.xyz, l(0,0,0,0)  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.z <- directLightingContribution.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r4.w, r2.w, l(8)
  breakc_nz r4.w
  ige r4.w, r2.w, cb1[25].x
  if_nz r4.w
    break 
  endif 

#line 440
  ishl r4.w, r2.w, l(1)

#line 549
  dp3 r5.w, r5.xyzx, -cb1[r4.w + 26].xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id44
  mul r10.xyz, r5.wwww, cb1[r4.w + 27].xyzx  // r10.x <- streams.lightColorNdotL_id41.x; r10.y <- streams.lightColorNdotL_id41.y; r10.z <- streams.lightColorNdotL_id41.z

#line 541
  add r11.xyz, r6.xyzx, -cb1[r4.w + 26].xyzx
  dp3 r6.w, r11.xyzx, r11.xyzx
  rsq r6.w, r6.w
  mul r11.xyz, r6.wwww, r11.xyzx  // r11.x <- streams.H_id69.x; r11.y <- streams.H_id69.y; r11.z <- streams.H_id69.z
  dp3 r6.w, r5.xyzx, r11.xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.NdotH_id70
  dp3 r4.w, -cb1[r4.w + 26].xyzx, r11.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.LdotH_id71

#line 537
  mul r11.xyz, r7.xyzx, r10.xyzx

#line 631
  mad r11.xyz, r11.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r9.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 295
  add r12.xyz, -r8.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r7.w, r4.w, r4.w
  mul r7.w, r7.w, r7.w
  mul r4.w, r4.w, r7.w
  mad r12.xyz, r12.xyzx, r4.wwww, r8.xyzx  // r12.x <- <FresnelSchlick_id169 return value>.x; r12.y <- <FresnelSchlick_id169 return value>.y; r12.z <- <FresnelSchlick_id169 return value>.z

#line 290
  mul r4.w, r8.w, l(0.500000)  // r4.w <- k
  mad r7.w, -r8.w, l(0.500000), l(1.000000)
  mad r9.w, r5.w, r7.w, r4.w
  div r9.w, r5.w, r9.w  // r9.w <- <VisibilityhSchlickGGX_id187 return value>
  mad r4.w, r1.w, r7.w, r4.w
  div r4.w, r1.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id187 return value>

#line 331
  mul r4.w, r4.w, r9.w
  mul r5.w, r1.w, r5.w
  div r4.w, r4.w, r5.w  // r4.w <- <VisibilitySmithSchlickGGX_id189 return value>

#line 326
  mul r5.w, r8.w, r8.w  // r5.w <- alphaR2
  mul r6.w, r6.w, r6.w
  mad r7.w, r8.w, r8.w, l(-1.000000)
  mad r6.w, r6.w, r7.w, l(1.000000)
  max r6.w, r6.w, l(0.000100)
  mul r6.w, r6.w, r6.w
  mul r6.w, r6.w, l(3.141593)
  div r5.w, r5.w, r6.w  // r5.w <- <NormalDistributionGGX_id203 return value>

#line 531
  mul r12.xyz, r4.wwww, r12.xyzx
  mul r12.xyz, r5.wwww, r12.xyzx
  mul r10.xyz, r10.xyzx, r12.xyzx

#line 635
  mad r9.xyz, r10.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r11.xyzx  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.z <- directLightingContribution.z

#line 621
  iadd r2.w, r2.w, l(1)

#line 637
endloop 

#line 416
add r1.w, v1.z, -cb1[22].z
div r1.w, cb1[22].w, r1.w  // r1.w <- depth
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb1[42].yzyy
mad r1.w, r1.w, cb1[41].w, cb1[42].x
log r1.w, r1.w
max r1.w, r1.w, l(0.000000)
ftoi r5.z, r1.w  // r5.z <- slice
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
ftoi r5.xy, r0.xyxx
mov r5.w, l(0)
ld r5.xyzw, r5.xyzw, t1.xyzw  // r5.x <- streams.lightData_id87.x; r5.y <- streams.lightData_id87.y

#line 519
and r0.x, r5.y, l(0x0000ffff)  // r0.x <- <GetMaxLightCount_id229 return value>

#line 645
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id16.x; r6.y <- streams.normalWS_id16.y; r6.z <- streams.normalWS_id16.z
mov r6.w, v0.x  // r6.w <- streams.PositionWS_id19.x
mov r7.xy, v0.yzyy  // r7.x <- streams.PositionWS_id19.y; r7.y <- streams.PositionWS_id19.z
mov r7.zw, r2.xxxy  // r7.z <- streams.viewWS_id62.x; r7.w <- streams.viewWS_id62.y
mov r8.z, r2.z  // r8.z <- streams.viewWS_id62.z
mov r10.xyz, r3.xyzx  // r10.x <- streams.matDiffuseVisible_id63.x; r10.y <- streams.matDiffuseVisible_id63.y; r10.z <- streams.matDiffuseVisible_id63.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matSpecularVisible_id65.x; r11.y <- streams.matSpecularVisible_id65.y; r11.z <- streams.matSpecularVisible_id65.z
mov r11.w, r0.w  // r11.w <- streams.alphaRoughness_id64
mov r5.w, r0.z  // r5.w <- streams.NdotV_id66
mov r5.z, r5.x  // r5.z <- streams.lightIndex_id88
mov r12.xyz, r9.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r0.y, l(0)  // r0.y <- i
loop 
  ige r1.w, r0.y, r0.x
  breakc_nz r1.w
  if_nz r1.w
    break 
  endif 

#line 403
  ld r13.xyzw, r5.zzzz, t2.xyzw  // r13.x <- realLightIndex
  iadd r5.z, r5.z, l(1)  // r5.z <- streams.lightIndex_id88
  ishl r1.w, r13.x, l(1)
  ld r13.xyzw, r1.wwww, t3.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w
  iadd r1.w, r1.w, l(1)
  ld r14.xyzw, r1.wwww, t3.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 314
  mov r15.x, r6.w
  mov r15.yz, r7.xxyx
  add r13.xyz, r13.xyzx, -r15.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z
  dp3 r1.w, r13.xyzx, r13.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength
  div r13.xyz, r13.xyzx, r2.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 284
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 263
  mul r1.w, r13.w, r1.w  // r1.w <- factor
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id84 return value>

#line 285
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 321
  mul r14.xyz, r1.wwww, r14.xyzx  // r14.x <- streams.lightColor_id40.x; r14.y <- streams.lightColor_id40.y; r14.z <- streams.lightColor_id40.z

#line 509
  dp3 r1.w, r6.xyzx, r13.xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id44
  mul r14.xyz, r1.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id41.x; r14.y <- streams.lightColorNdotL_id41.y; r14.z <- streams.lightColorNdotL_id41.z

#line 541
  mov r8.xy, r7.zwzz
  add r8.xyw, r13.xyxz, r8.xyxz
  dp3 r2.w, r8.xywx, r8.xywx
  rsq r2.w, r2.w
  mul r8.xyw, r2.wwww, r8.xyxw  // r8.x <- streams.H_id69.x; r8.y <- streams.H_id69.y; r8.w <- streams.H_id69.z
  dp3 r2.w, r6.xyzx, r8.xywx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotH_id70
  dp3 r4.w, r13.xyzx, r8.xywx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.LdotH_id71

#line 537
  mul r8.xyw, r10.xyxz, r14.xyxz

#line 655
  mad r8.xyw, r8.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r12.xyxz  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.w <- directLightingContribution.z

#line 295
  add r13.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r9.w, r4.w, r4.w
  mul r9.w, r9.w, r9.w
  mul r4.w, r4.w, r9.w
  mad r13.xyz, r13.xyzx, r4.wwww, r11.xyzx  // r13.x <- <FresnelSchlick_id169 return value>.x; r13.y <- <FresnelSchlick_id169 return value>.y; r13.z <- <FresnelSchlick_id169 return value>.z

#line 290
  mul r4.w, r11.w, l(0.500000)  // r4.w <- k
  mad r9.w, -r11.w, l(0.500000), l(1.000000)
  mad r10.w, r1.w, r9.w, r4.w
  div r10.w, r1.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id187 return value>
  mad r4.w, r5.w, r9.w, r4.w
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id187 return value>

#line 331
  mul r4.w, r4.w, r10.w
  mul r1.w, r5.w, r1.w
  div r1.w, r4.w, r1.w  // r1.w <- <VisibilitySmithSchlickGGX_id189 return value>

#line 326
  mul r4.w, r11.w, r11.w  // r4.w <- alphaR2
  mul r2.w, r2.w, r2.w
  mad r9.w, r11.w, r11.w, l(-1.000000)
  mad r2.w, r2.w, r9.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id203 return value>

#line 531
  mul r13.xyz, r1.wwww, r13.xyzx
  mul r13.xyz, r2.wwww, r13.xyzx
  mul r13.xyz, r14.xyzx, r13.xyzx

#line 659
  mad r12.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r8.xywx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 645
  iadd r0.y, r0.y, l(1)

#line 661
endloop   // r5.z <- streams.lightIndex_id88

#line 501
ushr r0.x, r5.y, l(16)  // r0.x <- <GetMaxLightCount_id238 return value>

#line 669
mov r6.xyz, r1.xyzx
mov r6.w, v0.x
mov r7.xy, v0.yzyy
mov r7.zw, r2.xxxy
mov r8.x, r2.z  // r8.x <- streams.viewWS_id62.z
mov r8.z, r5.z  // r8.z <- streams.lightIndex_id88
mov r5.xyw, r3.xyxz  // r5.x <- streams.matDiffuseVisible_id63.x; r5.y <- streams.matDiffuseVisible_id63.y; r5.w <- streams.matDiffuseVisible_id63.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.matSpecularVisible_id65.x; r9.y <- streams.matSpecularVisible_id65.y; r9.z <- streams.matSpecularVisible_id65.z
mov r10.xyz, r12.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z
mov r11.xy, r0.wzww  // r11.x <- streams.alphaRoughness_id64; r11.y <- streams.NdotV_id66
mov r0.y, l(0)  // r0.y <- i
loop 
  ige r1.w, r0.y, r0.x
  breakc_nz r1.w
  if_nz r1.w
    break 
  endif 

#line 384
  ld r13.xyzw, r8.zzzz, t2.xyzw  // r13.x <- realLightIndex
  iadd r8.z, r8.z, l(1)  // r8.z <- streams.lightIndex_id88
  ishl r1.w, r13.x, l(2)
  ld r13.xyzw, r1.wwww, t4.xyzw  // r13.x <- spotLight1.x; r13.y <- spotLight1.y; r13.z <- spotLight1.z

#line 390
  iadd r14.xyz, r1.wwww, l(1, 2, 3, 0)
  ld r15.xyzw, r14.xxxx, t4.xyzw  // r15.x <- spotLight2.x; r15.y <- spotLight2.y; r15.z <- spotLight2.z
  ld r16.xyzw, r14.yyyy, t4.xyzw  // r16.x <- spotLight3.x; r16.y <- spotLight3.y; r16.z <- spotLight3.z
  ld r14.xyzw, r14.zzzz, t4.xyzw  // r14.x <- spotLight4.x; r14.y <- spotLight4.y; r14.z <- spotLight4.z

#line 299
  mov r17.x, r6.w
  mov r17.yz, r7.xxyx
  add r13.xyz, r13.xyzx, -r17.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z
  dp3 r1.w, r13.xyzx, r13.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength
  div r13.xyz, r13.xyzx, r2.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 277
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 257
  mul r1.w, r16.z, r1.w  // r1.w <- factor
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id92 return value>

#line 278
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 269
  dp3 r2.w, -r15.xyzx, r13.xyzx  // r2.w <- cd
  mad_sat r2.w, r2.w, r16.x, r16.y  // r2.w <- attenuation
  mul r2.w, r2.w, r2.w

#line 308
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation
  mul r14.xyz, r1.wwww, r14.xyzx  // r14.x <- streams.lightColor_id40.x; r14.y <- streams.lightColor_id40.y; r14.z <- streams.lightColor_id40.z

#line 491
  dp3 r1.w, r6.xyzx, r13.xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id44
  mul r14.xyz, r1.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id41.x; r14.y <- streams.lightColorNdotL_id41.y; r14.z <- streams.lightColorNdotL_id41.z

#line 541
  mov r8.yw, r7.zzzw
  add r15.xyz, r13.xyzx, r8.ywxy
  dp3 r2.w, r15.xyzx, r15.xyzx
  rsq r2.w, r2.w
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.H_id69.x; r15.y <- streams.H_id69.y; r15.z <- streams.H_id69.z
  dp3 r2.w, r6.xyzx, r15.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotH_id70
  dp3 r4.w, r13.xyzx, r15.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.LdotH_id71

#line 537
  mul r13.xyz, r5.xywx, r14.xyzx

#line 679
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 295
  add r15.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r8.y, r4.w, r4.w
  mul r8.y, r8.y, r8.y
  mul r4.w, r4.w, r8.y
  mad r15.xyz, r15.xyzx, r4.wwww, r9.xyzx  // r15.x <- <FresnelSchlick_id169 return value>.x; r15.y <- <FresnelSchlick_id169 return value>.y; r15.z <- <FresnelSchlick_id169 return value>.z

#line 290
  mul r4.w, r11.x, l(0.500000)  // r4.w <- k
  mad r8.y, -r11.x, l(0.500000), l(1.000000)
  mad r8.w, r1.w, r8.y, r4.w
  div r8.w, r1.w, r8.w  // r8.w <- <VisibilityhSchlickGGX_id187 return value>
  mad r4.w, r11.y, r8.y, r4.w
  div r4.w, r11.y, r4.w  // r4.w <- <VisibilityhSchlickGGX_id187 return value>

#line 331
  mul r4.w, r4.w, r8.w
  mul r1.w, r11.y, r1.w
  div r1.w, r4.w, r1.w  // r1.w <- <VisibilitySmithSchlickGGX_id189 return value>

#line 326
  mul r4.w, r11.x, r11.x  // r4.w <- alphaR2
  mul r2.w, r2.w, r2.w
  mad r8.y, r11.x, r11.x, l(-1.000000)
  mad r2.w, r2.w, r8.y, l(1.000000)
  max r2.w, r2.w, l(0.000100)
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id203 return value>

#line 531
  mul r15.xyz, r1.wwww, r15.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r14.xyz, r14.xyzx, r15.xyzx

#line 683
  mad r10.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 669
  iadd r0.y, r0.y, l(1)

#line 685
endloop   // r8.z <- streams.lightIndex_id88

#line 352
add r0.x, -r0.w, l(1.000000)  // r0.x <- x

#line 360
mul r0.y, r0.x, r0.x

#line 368
mul r0.w, r0.y, l(1.895000)

#line 360
mad r0.w, r0.x, l(-0.168800), r0.w
mad r1.x, r0.z, l(-4.853000), l(0.990300)
mul r1.y, r0.z, r0.z
mad r1.x, r1.y, l(8.404000), r1.x
mul r1.z, r0.z, r1.y
mad r1.x, r1.z, l(-5.069000), r1.x
min_sat r0.w, r0.w, r1.x  // r0.w <- bias

#line 368
mad r1.x, r0.x, l(1.699000), l(0.604500)
mad r1.x, r0.z, l(-0.522800), r1.x
mad r1.x, r0.y, l(-3.603000), r1.x
mul r0.z, r0.x, r0.z
mad r0.z, r0.z, l(1.404000), r1.x
mad r0.z, r1.y, l(0.193900), r0.z
mul r0.x, r0.x, r0.y
mad_sat r0.x, r0.x, l(2.661000), r0.z  // r0.x <- delta
add r0.x, -r0.w, r0.x  // r0.x <- scale
mul_sat r0.y, r4.y, l(50.000000)
mul r0.y, r0.y, r0.w  // r0.y <- bias
mad r0.xyz, r4.xyzx, r0.xxxx, r0.yyyy  // r0.x <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id204 return value>.x; r0.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id204 return value>.y; r0.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id204 return value>.z

#line 474
mul r0.xyz, r0.xyzx, cb1[43].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id400 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id400 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id400 return value>.z

#line 697
mad r0.xyz, r3.xyzx, cb1[43].xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 724
mad o0.xyz, r10.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 879
mov o0.w, r3.w
ret 
// Approximately 283 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id79 = 8;
const static bool TInvert_id108 = false;
const static bool TIsEnergyConservative_id177 = false;
static const float PI_id179 = 3.14159265358979323846;
Texture2D Texture0_id113;
Texture2D Texture1_id115;
Texture2D Texture2_id117;
Texture2D Texture3_id119;
Texture2D Texture4_id121;
Texture2D Texture5_id123;
Texture2D Texture6_id125;
Texture2D Texture7_id127;
Texture2D Texture8_id129;
Texture2D Texture9_id131;
TextureCube TextureCube0_id133;
TextureCube TextureCube1_id134;
TextureCube TextureCube2_id135;
TextureCube TextureCube3_id136;
Texture3D Texture3D0_id137;
Texture3D Texture3D1_id138;
Texture3D Texture3D2_id139;
Texture3D Texture3D3_id140;
SamplerState Sampler_id141;
SamplerState PointSampler_id142 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id143 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id144 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id145 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id146 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id147 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id148 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id149 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id150 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id151;
SamplerState Sampler1_id152;
SamplerState Sampler2_id153;
SamplerState Sampler3_id154;
SamplerState Sampler4_id155;
SamplerState Sampler5_id156;
SamplerState Sampler6_id157;
SamplerState Sampler7_id158;
SamplerState Sampler8_id159;
SamplerState Sampler9_id160;
Texture2D Texture_id101;
SamplerState Sampler_id102;
Texture3D<uint2> LightClusters_id89;
Buffer<uint> LightIndices_id90;
Buffer<float4> PointLights_id94;
Buffer<float4> SpotLights_id95;
struct PS_STREAMS 
{
    float4 ScreenPosition_id81;
    float3 normalWS_id16;
    float4 PositionWS_id19;
    float2 TexCoord_id103;
    float4 ShadingPosition_id0;
    float3 viewWS_id62;
    float3 shadingColor_id67;
    float matBlend_id37;
    float3 matNormal_id46;
    float4 matColorBase_id47;
    float4 matDiffuse_id48;
    float3 matDiffuseVisible_id63;
    float3 matSpecular_id50;
    float3 matSpecularVisible_id65;
    float matSpecularIntensity_id51;
    float matGlossiness_id49;
    float alphaRoughness_id64;
    float matAmbientOcclusion_id52;
    float matAmbientOcclusionDirectLightingFactor_id53;
    float matCavity_id54;
    float matCavityDiffuse_id55;
    float matCavitySpecular_id56;
    float4 matEmissive_id57;
    float matEmissiveIntensity_id58;
    float2 matDiffuseSpecularAlphaBlend_id59;
    float3 matAlphaBlendColor_id60;
    float matAlphaDiscard_id61;
    float shadingColorAlpha_id68;
    float3 lightPositionWS_id38;
    float3 lightDirectionWS_id39;
    float3 lightColor_id40;
    float3 lightColorNdotL_id41;
    float3 envLightDiffuseColor_id42;
    float3 envLightSpecularColor_id43;
    float lightDirectAmbientOcclusion_id45;
    float NdotL_id44;
    float NdotV_id66;
    float3 shadowColor_id77;
    float3 H_id69;
    float NdotH_id70;
    float LdotH_id71;
    float VdotH_id72;
    uint2 lightData_id87;
    int lightIndex_id88;
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
    float2 TexCoord_id103;
    float4 PositionH_id21;
    float DepthVS_id20;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float3 normalWS_id16;
    float4 ScreenPosition_id81;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id19 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id16 : NORMALWS;
    float4 ScreenPosition_id81 : SCREENPOSITION_ID81_SEM;
    float2 TexCoord_id103 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    float3 meshNormal_id14 : NORMAL;
    float2 TexCoord_id103 : TEXCOORD0;
};
struct DirectionalLightData 
{
    float3 DirectionWS;
    float3 Color;
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
    float2 scale_id104;
    float2 offset_id105;
    float constantFloat_id107;
    float4 constantColor_id171;
    float constantFloat_id173;
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
    float NearClipPlane_id82 = 1.0f;
    float FarClipPlane_id83 = 100.0f;
    float2 ZProjection_id84;
    float2 ViewSize_id85;
    float AspectRatio_id86;
    float4 _padding_PerView_Default;
    int LightCount_id78;
    DirectionalLightData Lights_id80[TMaxLightCount_id79];
    float ClusterDepthScale_id91;
    float ClusterDepthBias_id92;
    float2 ClusterStride_id93;
    float3 AmbientLight_id96;
    float4x4 SkyMatrix_id97;
    float Intensity_id98;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id114;
    float2 Texture1TexelSize_id116;
    float2 Texture2TexelSize_id118;
    float2 Texture3TexelSize_id120;
    float2 Texture4TexelSize_id122;
    float2 Texture5TexelSize_id124;
    float2 Texture6TexelSize_id126;
    float2 Texture7TexelSize_id128;
    float2 Texture8TexelSize_id130;
    float2 Texture9TexelSize_id132;
};
float SmoothDistanceAttenuation_id92(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id84(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float GetAngleAttenuation_id94(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id93(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id92(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id85(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id84(d2, lightInvSquareRadius);
    return attenuation;
}
float VisibilityhSchlickGGX_id187(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id169(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
void ProcessLight_id95(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = light.AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -light.DirectionWS;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id93(lightVector, lightInvSquareRadius);
    attenuation *= GetAngleAttenuation_id94(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    streams.lightColor_id40 = light.Color * attenuation;
    streams.lightDirectionWS_id39 = lightVectorNorm;
}
void ProcessLight_id87(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id85(lightVector, lightInvSquareRadius);
    streams.lightPositionWS_id38 = light.PositionWS;
    streams.lightColor_id40 = light.Color * attenuation;
    streams.lightDirectionWS_id39 = lightVectorNorm;
}
float NormalDistributionGGX_id203(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    return alphaR2 / (PI_id179 * pow(max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001), 2.0f));
}
float VisibilitySmithSchlickGGX_id189(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id187(alphaR, nDotL) * VisibilityhSchlickGGX_id187(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id175(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id169(f0, 1.0f, lOrVDotH);
}
float4 Compute_id241(float3 direction)
{
    return 0;
}
float4 Compute_id240(float3 direction)
{
    return 0;
}
void PrepareEnvironmentLight_id109(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id42 = 0;
    streams.envLightSpecularColor_id43 = 0;
}
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id204(float3 specularColor, float alphaR, float nDotV)
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
void PrepareEnvironmentLight_id102(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id42 = 0;
    streams.envLightSpecularColor_id43 = 0;
}
void ComputeShadow_id91(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id77 = 1.0f;
}
void PrepareDirectLightCore_id90(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id90.Load(streams.lightIndex_id88);
    streams.lightIndex_id88++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id95.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id95.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id95.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id95.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id95(streams, spotLight);
}
void ComputeShadow_id83(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id77 = 1.0f;
}
void PrepareDirectLightCore_id82(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id90.Load(streams.lightIndex_id88);
    streams.lightIndex_id88++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id94.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id94.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id87(streams, pointLight);
}
void PrepareLightData_id86(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id84.y / (projectedDepth - ZProjection_id84.x);
    float2 texCoord = float2(streams.ScreenPosition_id81.x + 1, 1 - streams.ScreenPosition_id81.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id91 + ClusterDepthBias_id92), 0));
    streams.lightData_id87 = LightClusters_id89.Load(int4(texCoord * ClusterStride_id93, slice, 0));
    streams.lightIndex_id88 = streams.lightData_id87.x;
}
float Compute_id321(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id203(streams.alphaRoughness_id64, streams.NdotH_id70);
}
float Compute_id292(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id189(streams.alphaRoughness_id64, streams.NdotL_id44, streams.NdotV_id66);
}
float3 Compute_id263(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id175(f0, streams.LdotH_id71);
}
void ComputeShadow_id79(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id77 = 1.0f;
}
void PrepareDirectLightCore_id78(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id40 = Lights_id80[lightIndex].Color;
    streams.lightDirectionWS_id39 = -Lights_id80[lightIndex].DirectionWS;
}
float GetFilterSquareRoughnessAdjustment_id141(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id46);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id207()
{
}
void PrepareEnvironmentLight_id254(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id42 = 0;
    streams.envLightSpecularColor_id43 = 0;
}
void PrepareEnvironmentLight_id251(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id109(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id52;
    float3 sampleDirection = mul(streams.normalWS_id16, (float3x3)SkyMatrix_id97);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id42 = Compute_id240(sampleDirection).rgb * Intensity_id98 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id59.x;
    sampleDirection = reflect(-streams.viewWS_id62, streams.normalWS_id16);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id97);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id43 = Compute_id241(sampleDirection).rgb * Intensity_id98 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id59.y;
}
float3 ComputeEnvironmentLightContribution_id400(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id65;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id204(specularColor, streams.alphaRoughness_id64, streams.NdotV_id66) * streams.envLightSpecularColor_id43;
}
float3 ComputeEnvironmentLightContribution_id351(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id63;
    return diffuseColor * streams.envLightDiffuseColor_id42;
}
void PrepareEnvironmentLight_id246(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id102(streams);
    float3 lightColor = AmbientLight_id96 * streams.matAmbientOcclusion_id52;
    streams.envLightDiffuseColor_id42 = lightColor;
    streams.envLightSpecularColor_id43 = lightColor;
}
void PrepareDirectLight_id236(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id90(streams, lightIndex);
    streams.NdotL_id44 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id39), 0.0001f);
    ComputeShadow_id91(streams, lightIndex);
    streams.lightColorNdotL_id41 = streams.lightColor_id40 * streams.shadowColor_id77 * streams.NdotL_id44 * streams.lightDirectAmbientOcclusion_id45;
}
int GetLightCount_id239(inout PS_STREAMS streams)
{
    return streams.lightData_id87.y >> 16;
}
int GetMaxLightCount_id238(inout PS_STREAMS streams)
{
    return streams.lightData_id87.y >> 16;
}
void PrepareDirectLights_id234()
{
}
void PrepareDirectLight_id226(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id82(streams, lightIndex);
    streams.NdotL_id44 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id39), 0.0001f);
    ComputeShadow_id83(streams, lightIndex);
    streams.lightColorNdotL_id41 = streams.lightColor_id40 * streams.shadowColor_id77 * streams.NdotL_id44 * streams.lightDirectAmbientOcclusion_id45;
}
int GetLightCount_id230(inout PS_STREAMS streams)
{
    return streams.lightData_id87.y & 0xFFFF;
}
int GetMaxLightCount_id229(inout PS_STREAMS streams)
{
    return streams.lightData_id87.y & 0xFFFF;
}
void PrepareDirectLights_id228(inout PS_STREAMS streams)
{
    PrepareLightData_id86(streams);
}
float3 ComputeDirectLightContribution_id399(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id65;
    float3 fresnel = Compute_id263(streams, specularColor);
    float geometricShadowing = Compute_id292(streams);
    float normalDistribution = Compute_id321(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightColorNdotL_id41 * streams.matDiffuseSpecularAlphaBlend_id59.y;
}
float3 ComputeDirectLightContribution_id350(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id63;
    return diffuseColor / PI_id179 * streams.lightColorNdotL_id41 * streams.matDiffuseSpecularAlphaBlend_id59.x;
}
void PrepareMaterialPerDirectLight_id29(inout PS_STREAMS streams)
{
    streams.H_id69 = normalize(streams.viewWS_id62 + streams.lightDirectionWS_id39);
    streams.NdotH_id70 = max(dot(streams.normalWS_id16, streams.H_id69), 0.0001f);
    streams.LdotH_id71 = max(dot(streams.lightDirectionWS_id39, streams.H_id69), 0.0001f);
    streams.VdotH_id72 = streams.LdotH_id71;
}
void PrepareDirectLight_id218(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id78(streams, lightIndex);
    streams.NdotL_id44 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id39), 0.0001f);
    ComputeShadow_id79(streams, lightIndex);
    streams.lightColorNdotL_id41 = streams.lightColor_id40 * streams.shadowColor_id77 * streams.NdotL_id44 * streams.lightDirectAmbientOcclusion_id45;
}
int GetLightCount_id219()
{
    return LightCount_id78;
}
int GetMaxLightCount_id220()
{
    return TMaxLightCount_id79;
}
void PrepareDirectLights_id216()
{
}
void PrepareMaterialForLightingAndShading_id206(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id45 = lerp(1.0, streams.matAmbientOcclusion_id52, streams.matAmbientOcclusionDirectLightingFactor_id53);
    streams.matDiffuseVisible_id63 = streams.matDiffuse_id48.rgb * lerp(1.0f, streams.matCavity_id54, streams.matCavityDiffuse_id55) * streams.matDiffuseSpecularAlphaBlend_id59.r * streams.matAlphaBlendColor_id60;
    streams.matSpecularVisible_id65 = streams.matSpecular_id50.rgb * streams.matSpecularIntensity_id51 * lerp(1.0f, streams.matCavity_id54, streams.matCavitySpecular_id56) * streams.matDiffuseSpecularAlphaBlend_id59.g * streams.matAlphaBlendColor_id60;
    streams.NdotV_id66 = max(dot(streams.normalWS_id16, streams.viewWS_id62), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id49;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id141(streams, streams.matNormal_id46);
    streams.alphaRoughness_id64 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id205(inout PS_STREAMS streams)
{
    streams.lightPositionWS_id38 = 0;
    streams.lightDirectionWS_id39 = 0;
    streams.lightColor_id40 = 0;
    streams.lightColorNdotL_id41 = 0;
    streams.envLightDiffuseColor_id42 = 0;
    streams.envLightSpecularColor_id43 = 0;
    streams.lightDirectAmbientOcclusion_id45 = 1.0f;
    streams.NdotL_id44 = 0;
}
void UpdateNormalFromTangentSpace_id21(float3 normalInTangentSpace)
{
}
float4 Compute_id261()
{
    return float4(constantFloat_id173, constantFloat_id173, constantFloat_id173, constantFloat_id173);
}
float4 Compute_id259()
{
    return constantColor_id171;
}
float4 Compute_id257()
{
    return float4(constantFloat_id107, constantFloat_id107, constantFloat_id107, constantFloat_id107);
}
float4 Compute_id255(inout PS_STREAMS streams)
{
    return Texture_id101.Sample(Sampler_id102, streams.TexCoord_id103 * scale_id104 + offset_id105).rgba;
}
void ResetStream_id210(inout PS_STREAMS streams)
{
    ResetStream_id207();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id435(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id21(streams.matNormal_id46);
    ResetLightStream_id205(streams);
    PrepareMaterialForLightingAndShading_id206(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id216();
        const int maxLightCount = GetMaxLightCount_id220();
        int count = GetLightCount_id219();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id218(streams, i);
            PrepareMaterialPerDirectLight_id29(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id350(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id399(streams);
            }
        }
    }

    {
        PrepareDirectLights_id228(streams);
        const int maxLightCount = GetMaxLightCount_id229(streams);
        int count = GetLightCount_id230(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id226(streams, i);
            PrepareMaterialPerDirectLight_id29(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id350(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id399(streams);
            }
        }
    }

    {
        PrepareDirectLights_id234();
        const int maxLightCount = GetMaxLightCount_id238(streams);
        int count = GetLightCount_id239(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id236(streams, i);
            PrepareMaterialPerDirectLight_id29(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id350(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id399(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id246(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id351(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id400(streams);
        }
    }

    {
        PrepareEnvironmentLight_id251(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id351(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id400(streams);
        }
    }

    {
        PrepareEnvironmentLight_id254(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id351(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id400(streams);
        }
    }
    streams.shadingColor_id67 += directLightingContribution * PI_id179 + environmentLightingContribution;
    streams.shadingColorAlpha_id68 = streams.matDiffuse_id48.a;
}
void Compute_id420(inout PS_STREAMS streams)
{
    streams.matSpecularIntensity_id51 = Compute_id261().r;
}
void Compute_id415(inout PS_STREAMS streams)
{
    streams.matSpecular_id50 = Compute_id259().rgb;
}
void Compute_id410(inout PS_STREAMS streams)
{
    float glossiness = Compute_id257().r;
    streams.matGlossiness_id49 = glossiness;
}
void Compute_id405(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id255(streams);
    streams.matDiffuse_id48 = colorBase;
    streams.matColorBase_id47 = colorBase;
}
void ResetStream_id212(inout PS_STREAMS streams)
{
    ResetStream_id210(streams);
    streams.matNormal_id46 = float3(0, 0, 1);
    streams.matColorBase_id47 = 0.0f;
    streams.matDiffuse_id48 = 0.0f;
    streams.matDiffuseVisible_id63 = 0.0f;
    streams.matSpecular_id50 = 0.0f;
    streams.matSpecularVisible_id65 = 0.0f;
    streams.matSpecularIntensity_id51 = 1.0f;
    streams.matGlossiness_id49 = 0.0f;
    streams.alphaRoughness_id64 = 1.0f;
    streams.matAmbientOcclusion_id52 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id53 = 0.0f;
    streams.matCavity_id54 = 1.0f;
    streams.matCavityDiffuse_id55 = 0.0f;
    streams.matCavitySpecular_id56 = 0.0f;
    streams.matEmissive_id57 = 0.0f;
    streams.matEmissiveIntensity_id58 = 0.0f;
    streams.matDiffuseSpecularAlphaBlend_id59 = 1.0f;
    streams.matAlphaBlendColor_id60 = 1.0f;
    streams.matAlphaDiscard_id61 = 0.0f;
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
        Compute_id405(streams);
    }

    {
        Compute_id410(streams);
    }

    {
        Compute_id415(streams);
    }

    {
        Compute_id420(streams);
    }

    {
        Compute_id435(streams);
    }
}
void ResetStream_id74(inout PS_STREAMS streams)
{
    ResetStream_id212(streams);
    streams.shadingColorAlpha_id68 = 1.0f;
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
float4 Shading_id30(inout PS_STREAMS streams)
{
    streams.viewWS_id62 = normalize(Eye_id28.xyz - streams.PositionWS_id19.xyz);
    streams.shadingColor_id67 = 0;
    ResetStream_id74(streams);
    Compute_id75(streams);
    return float4(streams.shadingColor_id67, streams.shadingColorAlpha_id68);
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
    streams.ColorTarget_id1 = Shading_id30(streams);
}
void GenerateNormal_PS_id20(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id16, streams.normalWS_id16) > 0)
        streams.normalWS_id16 = normalize(streams.normalWS_id16);
}
void GenerateNormal_VS_id19(inout VS_STREAMS streams)
{
    streams.normalWS_id16 = mul(streams.meshNormal_id14, (float3x3)WorldInverseTranspose_id31);
}
void VSMain_id8(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id7(streams);
}
void PSMain_id18(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id20(streams);
    PSMain_id3(streams);
}
void VSMain_id16(inout VS_STREAMS streams)
{
    VSMain_id8(streams);
    GenerateNormal_VS_id19(streams);
}
PS_OUTPUT PSMain(VS_OUTPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id19 = __input__.PositionWS_id19;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.normalWS_id16 = __input__.normalWS_id16;
    streams.ScreenPosition_id81 = __input__.ScreenPosition_id81;
    streams.TexCoord_id103 = __input__.TexCoord_id103;
    streams.ScreenPosition_id81 /= streams.ScreenPosition_id81.w;
    PSMain_id18(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id1 = streams.ColorTarget_id1;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id18 = __input__.Position_id18;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    streams.TexCoord_id103 = __input__.TexCoord_id103;
    VSMain_id16(streams);
    streams.ScreenPosition_id81 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id16 = streams.normalWS_id16;
    __output__.ScreenPosition_id81 = streams.ScreenPosition_id81;
    __output__.TexCoord_id103 = streams.TexCoord_id103;
    return __output__;
}
