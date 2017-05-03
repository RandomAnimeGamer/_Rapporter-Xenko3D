/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.DiffuseMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = ComputeColorTextureScaledOffsetDynamicSampler<Material.EmissiveMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale.i1,Material.TextureOffset.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.EmissiveIntensity>}], mixin MaterialSurfaceSetStreamFromComputeColor<matDiffuseSpecularAlphaBlend,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.DiffuseSpecularAlphaBlendValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAlphaBlendColor,rgb> [{computeColorSource = ComputeColorConstantColorLink<Material.AlphaBlendColorValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}], MaterialSurfaceEmissiveShading<false>, MaterialSurfaceDiffuseSpecularAlphaBlendColor]}]
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
@C    scale_id170 => Material.TextureScale.i1
@C    offset_id171 => Material.TextureOffset.i1
@C    constantFloat_id173 => Material.EmissiveIntensity
@C    constantFloat_id175 => Material.DiffuseSpecularAlphaBlendValue
@C    constantColor_id177 => Material.AlphaBlendColorValue
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
@R    Texture_id168 => Material.EmissiveMap [Stage: None, Slot: (-1--1)]
@R    Texture_id168 => Material.EmissiveMap [Stage: None, Slot: (-1--1)]
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
@R    Texture_id168 => Material.EmissiveMap [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id89 => LightClustered.LightClusters [Stage: Pixel, Slot: (2-2)]
@R    LightIndices_id90 => LightClustered.LightIndices [Stage: Pixel, Slot: (3-3)]
@R    PointLights_id94 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (4-4)]
@R    SpotLights_id95 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (5-5)]
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
@S    MaterialSurfaceSetStreamFromComputeColor => 1d00f7d823647b307a55871a0b3eba09
@S    IMaterialSurfaceVertex => 8e13e0524d4025cb811c673aeb77f45b
@S    MaterialVertexStream => fe2d4e2abe57231a93785fe59684b199
@S    MaterialDisplacementStream => 5112948b0773a844410cc7c3df78184a
@S    IMaterialSurfaceDomain => a787b7e989be07714532cd1ffc35ef2a
@S    MaterialDomainStream => 8be905888c6f3153139bc1fa900fdf5f
@S    MaterialTessellationStream => 87652904dbe93d91999520c7e41f52a1
@S    Texturing => a9d9ee1fb9a68af7ce6b12291686faea
@S    ComputeColorConstantFloatLink => a459500fd7f6c5988997e81bf766f988
@S    ComputeColorConstantColorLink => a4f7de8d03608ceba6b4f128ada2b3ed
@S    MaterialSurfaceLightingAndShading => 4faacd53863c0b5c65d23ad20797d27c
@S    Math => 5bdf39e412cac464ebbce340da34bca1
@S    IMaterialSurfaceShading => 7aecb9db43b53094f40d49ae22406a18
@S    MaterialSurfaceShadingDiffuseLambert => 66ea94572ee9f10a2e305608a7d69dad
@S    MaterialSurfaceEmissiveShading => 8441e737217d64ffcec16b8458a149b2
@S    MaterialSurfaceDiffuseSpecularAlphaBlendColor => e029cbc0eae8d0982044aa3f553641da
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
#line 751 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_f9468533b357783c9fa4a6e055bc03a3.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 830
mov o0.xyzw, r0.xyzw

#line 741
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- streams.ShadingPosition_id0.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- streams.ShadingPosition_id0.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- streams.ShadingPosition_id0.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- streams.ShadingPosition_id0.w

#line 830
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw

#line 785
dp3 o2.x, v1.xyzx, cb0[8].xyzx
dp3 o2.y, v1.xyzx, cb0[9].xyzx
dp3 o2.z, v1.xyzx, cb0[10].xyzx

#line 830
mov o4.xy, v2.xyxx
ret 
// Approximately 16 instruction slots used
@G    Pixel => fcd806417c922d7b9a3bfcf1765dad76
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
//   float2 scale_id170;                // Offset:   16 Size:     8
//   float2 offset_id171;               // Offset:   24 Size:     8
//   float constantFloat_id173;         // Offset:   32 Size:     4
//   float constantFloat_id175;         // Offset:   36 Size:     4
//   float4 constantColor_id177;        // Offset:   48 Size:    16
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
//   float4 Eye_id28;                   // Offset:  336 Size:    16 [unused]
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
// Texture_id168                     texture  float4          2d    1        1
// LightClusters_id89                texture   uint2          3d    2        1
// LightIndices_id90                 texture    uint         buf    3        1
// PointLights_id94                  texture  float4         buf    4        1
// SpotLights_id95                   texture  float4         buf    5        1
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
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture3d (uint,uint,uint,uint) t2
dcl_resource_buffer (uint,uint,uint,uint) t3
dcl_resource_buffer (float,float,float,float) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyw
dcl_input_ps linear v4.xy
dcl_output o0.xyzw
dcl_temps 14
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id16.x; v2.y <- __input__.normalWS_id16.y; v2.z <- __input__.normalWS_id16.z; 
//   v3.x <- __input__.ScreenPosition_id81.x; v3.y <- __input__.ScreenPosition_id81.y; v3.z <- __input__.ScreenPosition_id81.z; v3.w <- __input__.ScreenPosition_id81.w; 
//   v4.x <- __input__.TexCoord_id103.x; v4.y <- __input__.TexCoord_id103.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 810 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_f9468533b357783c9fa4a6e055bc03a3.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id81.x; r0.y <- streams.ScreenPosition_id81.y

#line 780
dp3 r0.z, v2.xyzx, v2.xyzx
lt r0.w, l(0.000000), r0.z
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.xyzx  // r1.x <- streams.normalWS_id16.x; r1.y <- streams.normalWS_id16.y; r1.z <- streams.normalWS_id16.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.xyzx

#line 538
mad r0.zw, v4.xxxy, cb0[0].xxxy, cb0[0].zzzw
sample r2.xyzw, r0.zwzz, t0.xyzw, s0  // r2.x <- <Compute_id217 return value>.x; r2.y <- <Compute_id217 return value>.y; r2.z <- <Compute_id217 return value>.z; r2.w <- <Compute_id217 return value>.w

#line 534
mad r0.zw, v4.xxxy, cb0[1].xxxy, cb0[1].zzzw
sample r3.xyzw, r0.zwzz, t1.xyzw, s0  // r3.x <- <Compute_id219 return value>.x; r3.y <- <Compute_id219 return value>.y; r3.z <- <Compute_id219 return value>.z

#line 499
mul r2.xyz, r2.xyzx, cb0[2].yyyy
mul r2.xyz, r2.xyzx, cb0[3].xyzx  // r2.x <- streams.matDiffuseVisible_id63.x; r2.y <- streams.matDiffuseVisible_id63.y; r2.z <- streams.matDiffuseVisible_id63.z

#line 565
mov r4.xyz, r1.xyzx  // r4.x <- streams.normalWS_id16.x; r4.y <- streams.normalWS_id16.y; r4.z <- streams.normalWS_id16.z
mov r5.xyz, r2.xyzx  // r5.x <- streams.matDiffuseVisible_id63.x; r5.y <- streams.matDiffuseVisible_id63.y; r5.z <- streams.matDiffuseVisible_id63.z
mov r0.z, cb0[2].y  // r0.z <- streams.matDiffuseSpecularAlphaBlend_id59.x
mov r6.xyz, l(0,0,0,0)  // r6.x <- directLightingContribution.x; r6.y <- directLightingContribution.y; r6.z <- directLightingContribution.z
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, l(8)
  breakc_nz r1.w
  ige r1.w, r0.w, cb1[25].x
  if_nz r1.w
    break 
  endif 

#line 386
  ishl r1.w, r0.w, l(1)

#line 481
  dp3 r3.w, r4.xyzx, -cb1[r1.w + 26].xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id44
  mul r7.xyz, r3.wwww, cb1[r1.w + 27].xyzx  // r7.x <- streams.lightColorNdotL_id41.x; r7.y <- streams.lightColorNdotL_id41.y; r7.z <- streams.lightColorNdotL_id41.z

#line 469
  mul r7.xyz, r7.xyzx, r5.xyzx
  mul r7.xyz, r0.zzzz, r7.xyzx

#line 575
  mad r6.xyz, r7.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r6.xyzx

#line 565
  iadd r0.w, r0.w, l(1)

#line 577
endloop 

#line 374
add r0.z, v1.z, -cb1[22].z
div r0.z, cb1[22].w, r0.z  // r0.z <- depth
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb1[42].yzyy
mad r0.z, r0.z, cb1[41].w, cb1[42].x
log r0.z, r0.z
max r0.z, r0.z, l(0.000000)
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
ftoi r4.xyz, r0.xyzx  // r4.z <- slice
mov r4.w, l(0)
ld r0.xyzw, r4.xyzw, t2.xyzw  // r0.x <- streams.lightData_id87.x; r0.y <- streams.lightData_id87.y

#line 460
and r0.z, r0.y, l(0x0000ffff)  // r0.z <- <GetMaxLightCount_id191 return value>

#line 585
mov r4.xyz, r1.xyzx  // r4.x <- streams.normalWS_id16.x; r4.y <- streams.normalWS_id16.y; r4.z <- streams.normalWS_id16.z
mov r4.w, v0.x  // r4.w <- streams.PositionWS_id19.x
mov r5.yz, v0.yyzy  // r5.y <- streams.PositionWS_id19.y; r5.z <- streams.PositionWS_id19.z
mov r7.xyz, r2.xyzx  // r7.x <- streams.matDiffuseVisible_id63.x; r7.y <- streams.matDiffuseVisible_id63.y; r7.z <- streams.matDiffuseVisible_id63.z
mov r0.w, cb0[2].y  // r0.w <- streams.matDiffuseSpecularAlphaBlend_id59.x
mov r8.xyz, r6.xyzx  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z
mov r9.x, r0.x  // r9.x <- streams.lightIndex_id88
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r3.w, r1.w, r0.z
  breakc_nz r3.w
  if_nz r3.w
    break 
  endif 

#line 361
  ld r10.xyzw, r9.xxxx, t3.xyzw  // r10.x <- realLightIndex
  iadd r9.x, r9.x, l(1)  // r9.x <- streams.lightIndex_id88
  ishl r3.w, r10.x, l(1)
  ld r10.xyzw, r3.wwww, t4.xyzw  // r10.x <- pointLight1.x; r10.y <- pointLight1.y; r10.z <- pointLight1.z; r10.w <- pointLight1.w
  iadd r3.w, r3.w, l(1)
  ld r11.xyzw, r3.wwww, t4.xyzw  // r11.x <- pointLight2.x; r11.y <- pointLight2.y; r11.z <- pointLight2.z

#line 308
  mov r5.x, r4.w
  add r9.yzw, -r5.xxyz, r10.xxyz  // r9.y <- lightVector.x; r9.z <- lightVector.y; r9.w <- lightVector.z
  dp3 r3.w, r9.yzwy, r9.yzwy
  sqrt r5.x, r3.w  // r5.x <- lightVectorLength
  div r9.yzw, r9.yyzw, r5.xxxx  // r9.y <- lightVectorNorm.x; r9.z <- lightVectorNorm.y; r9.w <- lightVectorNorm.z

#line 287
  max r5.x, r3.w, l(0.000100)
  div r5.x, l(1.000000, 1.000000, 1.000000, 1.000000), r5.x  // r5.x <- attenuation

#line 266
  mul r3.w, r10.w, r3.w  // r3.w <- factor
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id80 return value>

#line 288
  mul r3.w, r3.w, r5.x  // r3.w <- attenuation

#line 315
  mul r10.xyz, r3.wwww, r11.xyzx  // r10.x <- streams.lightColor_id40.x; r10.y <- streams.lightColor_id40.y; r10.z <- streams.lightColor_id40.z

#line 450
  dp3 r3.w, r4.xyzx, r9.yzwy
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id44
  mul r9.yzw, r3.wwww, r10.xxyz  // r9.y <- streams.lightColorNdotL_id41.x; r9.z <- streams.lightColorNdotL_id41.y; r9.w <- streams.lightColorNdotL_id41.z

#line 469
  mul r9.yzw, r9.yyzw, r7.xxyz
  mul r9.yzw, r0.wwww, r9.yyzw

#line 595
  mad r8.xyz, r9.yzwy, l(0.318310, 0.318310, 0.318310, 0.000000), r8.xyzx

#line 585
  iadd r1.w, r1.w, l(1)

#line 597
endloop   // r9.x <- streams.lightIndex_id88

#line 442
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id200 return value>

#line 605
mov r4.xyz, r1.xyzx
mov r4.w, v0.x
mov r5.xy, v0.yzyy  // r5.x <- streams.PositionWS_id19.y; r5.y <- streams.PositionWS_id19.z
mov r5.w, r9.x  // r5.w <- streams.lightIndex_id88
mov r0.y, cb0[2].y  // r0.y <- streams.matDiffuseSpecularAlphaBlend_id59.x
mov r6.xyz, r2.xyzx  // r6.x <- streams.matDiffuseVisible_id63.x; r6.y <- streams.matDiffuseVisible_id63.y; r6.z <- streams.matDiffuseVisible_id63.z
mov r7.xyz, r8.xyzx  // r7.x <- directLightingContribution.x; r7.y <- directLightingContribution.y; r7.z <- directLightingContribution.z
mov r0.z, l(0)  // r0.z <- i
loop 
  ige r0.w, r0.z, r0.x
  breakc_nz r0.w
  if_nz r0.w
    break 
  endif 

#line 342
  ld r10.xyzw, r5.wwww, t3.xyzw  // r10.x <- realLightIndex
  iadd r5.w, r5.w, l(1)  // r5.w <- streams.lightIndex_id88
  ishl r0.w, r10.x, l(2)
  ld r10.xyzw, r0.wwww, t5.xyzw  // r10.x <- spotLight1.x; r10.y <- spotLight1.y; r10.z <- spotLight1.z

#line 348
  iadd r9.yzw, r0.wwww, l(0, 1, 2, 3)
  ld r11.xyzw, r9.yyyy, t5.xyzw  // r11.x <- spotLight2.x; r11.y <- spotLight2.y; r11.z <- spotLight2.z
  ld r12.xyzw, r9.zzzz, t5.xyzw  // r12.x <- spotLight3.x; r12.y <- spotLight3.y; r12.z <- spotLight3.z
  ld r13.xyzw, r9.wwww, t5.xyzw  // r13.x <- spotLight4.x; r13.y <- spotLight4.y; r13.z <- spotLight4.z

#line 293
  mov r5.z, r4.w
  add r9.yzw, -r5.zzxy, r10.xxyz  // r9.y <- lightVector.x; r9.z <- lightVector.y; r9.w <- lightVector.z
  dp3 r0.w, r9.yzwy, r9.yzwy
  sqrt r1.w, r0.w  // r1.w <- lightVectorLength
  div r9.yzw, r9.yyzw, r1.wwww  // r9.y <- lightVectorNorm.x; r9.z <- lightVectorNorm.y; r9.w <- lightVectorNorm.z

#line 280
  max r1.w, r0.w, l(0.000100)
  div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w  // r1.w <- attenuation

#line 260
  mul r0.w, r12.z, r0.w  // r0.w <- factor
  mad r0.w, -r0.w, r0.w, l(1.000000)
  max r0.w, r0.w, l(0.000000)  // r0.w <- smoothFactor
  mul r0.w, r0.w, r0.w  // r0.w <- <SmoothDistanceAttenuation_id88 return value>

#line 281
  mul r0.w, r0.w, r1.w  // r0.w <- attenuation

#line 272
  dp3 r1.w, -r11.xyzx, r9.yzwy  // r1.w <- cd
  mad_sat r1.w, r1.w, r12.x, r12.y  // r1.w <- attenuation
  mul r1.w, r1.w, r1.w

#line 302
  mul r0.w, r0.w, r1.w  // r0.w <- attenuation
  mul r10.xyz, r0.wwww, r13.xyzx  // r10.x <- streams.lightColor_id40.x; r10.y <- streams.lightColor_id40.y; r10.z <- streams.lightColor_id40.z

#line 432
  dp3 r0.w, r4.xyzx, r9.yzwy
  max r0.w, r0.w, l(0.000100)  // r0.w <- streams.NdotL_id44
  mul r9.yzw, r0.wwww, r10.xxyz  // r9.y <- streams.lightColorNdotL_id41.x; r9.z <- streams.lightColorNdotL_id41.y; r9.w <- streams.lightColorNdotL_id41.z

#line 469
  mul r9.yzw, r6.xxyz, r9.yyzw
  mul r9.yzw, r0.yyyy, r9.yyzw

#line 615
  mad r7.xyz, r9.yzwy, l(0.318310, 0.318310, 0.318310, 0.000000), r7.xyzx

#line 605
  iadd r0.z, r0.z, l(1)

#line 617
endloop   // r5.w <- streams.lightIndex_id88

#line 420
mul r0.xyz, r2.xyzx, cb1[43].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id228 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id228 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id228 return value>.z

#line 644
mad r0.xyz, r7.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx  // r0.x <- streams.shadingColor_id67.x; r0.y <- streams.shadingColor_id67.y; r0.z <- streams.shadingColor_id67.z

#line 551
mad o0.xyz, r3.xyzx, cb0[2].xxxx, r0.xyzx

#line 547
mul o0.w, r2.w, cb0[2].y

#line 814
ret 
// Approximately 139 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id79 = 8;
static const float PI_id180 = 3.14159265358979323846;
const static bool TIsEnergyConservative_id181 = false;
const static bool TUseAlphaFromEmissive_id183 = false;
Texture2D Texture0_id110;
Texture2D Texture1_id112;
Texture2D Texture2_id114;
Texture2D Texture3_id116;
Texture2D Texture4_id118;
Texture2D Texture5_id120;
Texture2D Texture6_id122;
Texture2D Texture7_id124;
Texture2D Texture8_id126;
Texture2D Texture9_id128;
TextureCube TextureCube0_id130;
TextureCube TextureCube1_id131;
TextureCube TextureCube2_id132;
TextureCube TextureCube3_id133;
Texture3D Texture3D0_id134;
Texture3D Texture3D1_id135;
Texture3D Texture3D2_id136;
Texture3D Texture3D3_id137;
SamplerState Sampler_id138;
SamplerState PointSampler_id139 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id140 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id141 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id142 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id143 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id144 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id145 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id146 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id147 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id148;
SamplerState Sampler1_id149;
SamplerState Sampler2_id150;
SamplerState Sampler3_id151;
SamplerState Sampler4_id152;
SamplerState Sampler5_id153;
SamplerState Sampler6_id154;
SamplerState Sampler7_id155;
SamplerState Sampler8_id156;
SamplerState Sampler9_id157;
Texture2D Texture_id101;
SamplerState Sampler_id102;
Texture2D Texture_id168;
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
    float2 scale_id170;
    float2 offset_id171;
    float constantFloat_id173;
    float constantFloat_id175;
    float4 constantColor_id177;
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
    float2 Texture0TexelSize_id111;
    float2 Texture1TexelSize_id113;
    float2 Texture2TexelSize_id115;
    float2 Texture3TexelSize_id117;
    float2 Texture4TexelSize_id119;
    float2 Texture5TexelSize_id121;
    float2 Texture6TexelSize_id123;
    float2 Texture7TexelSize_id125;
    float2 Texture8TexelSize_id127;
    float2 Texture9TexelSize_id129;
};
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
float GetDistanceAttenuation_id81(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id80(d2, lightInvSquareRadius);
    return attenuation;
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
    streams.lightColor_id40 = light.Color * attenuation;
    streams.lightDirectionWS_id39 = lightVectorNorm;
}
void ProcessLight_id83(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id81(lightVector, lightInvSquareRadius);
    streams.lightPositionWS_id38 = light.PositionWS;
    streams.lightColor_id40 = light.Color * attenuation;
    streams.lightDirectionWS_id39 = lightVectorNorm;
}
float4 Compute_id203(float3 direction)
{
    return 0;
}
float4 Compute_id202(float3 direction)
{
    return 0;
}
void PrepareEnvironmentLight_id105(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id42 = 0;
    streams.envLightSpecularColor_id43 = 0;
}
void PrepareEnvironmentLight_id98(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id42 = 0;
    streams.envLightSpecularColor_id43 = 0;
}
void ComputeShadow_id87(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id77 = 1.0f;
}
void PrepareDirectLightCore_id86(inout PS_STREAMS streams, int lightIndexIgnored)
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
    ProcessLight_id91(streams, spotLight);
}
void ComputeShadow_id79(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id77 = 1.0f;
}
void PrepareDirectLightCore_id78(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id90.Load(streams.lightIndex_id88);
    streams.lightIndex_id88++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id94.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id94.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id83(streams, pointLight);
}
void PrepareLightData_id82(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id84.y / (projectedDepth - ZProjection_id84.x);
    float2 texCoord = float2(streams.ScreenPosition_id81.x + 1, 1 - streams.ScreenPosition_id81.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id91 + ClusterDepthBias_id92), 0));
    streams.lightData_id87 = LightClusters_id89.Load(int4(texCoord * ClusterStride_id93, slice, 0));
    streams.lightIndex_id88 = streams.lightData_id87.x;
}
void ComputeShadow_id75(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id77 = 1.0f;
}
void PrepareDirectLightCore_id74(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id40 = Lights_id80[lightIndex].Color;
    streams.lightDirectionWS_id39 = -Lights_id80[lightIndex].DirectionWS;
}
float GetFilterSquareRoughnessAdjustment_id146(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id46);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id169()
{
}
void PrepareEnvironmentLight_id216(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id42 = 0;
    streams.envLightSpecularColor_id43 = 0;
}
void PrepareEnvironmentLight_id213(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id105(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id52;
    float3 sampleDirection = mul(streams.normalWS_id16, (float3x3)SkyMatrix_id97);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id42 = Compute_id202(sampleDirection).rgb * Intensity_id98 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id59.x;
    sampleDirection = reflect(-streams.viewWS_id62, streams.normalWS_id16);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id97);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id43 = Compute_id203(sampleDirection).rgb * Intensity_id98 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id59.y;
}
float3 ComputeEnvironmentLightContribution_id228(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id63;
    return diffuseColor * streams.envLightDiffuseColor_id42;
}
void PrepareEnvironmentLight_id208(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id98(streams);
    float3 lightColor = AmbientLight_id96 * streams.matAmbientOcclusion_id52;
    streams.envLightDiffuseColor_id42 = lightColor;
    streams.envLightSpecularColor_id43 = lightColor;
}
void PrepareDirectLight_id198(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id86(streams, lightIndex);
    streams.NdotL_id44 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id39), 0.0001f);
    ComputeShadow_id87(streams, lightIndex);
    streams.lightColorNdotL_id41 = streams.lightColor_id40 * streams.shadowColor_id77 * streams.NdotL_id44 * streams.lightDirectAmbientOcclusion_id45;
}
int GetLightCount_id201(inout PS_STREAMS streams)
{
    return streams.lightData_id87.y >> 16;
}
int GetMaxLightCount_id200(inout PS_STREAMS streams)
{
    return streams.lightData_id87.y >> 16;
}
void PrepareDirectLights_id196()
{
}
void PrepareDirectLight_id188(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id78(streams, lightIndex);
    streams.NdotL_id44 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id39), 0.0001f);
    ComputeShadow_id79(streams, lightIndex);
    streams.lightColorNdotL_id41 = streams.lightColor_id40 * streams.shadowColor_id77 * streams.NdotL_id44 * streams.lightDirectAmbientOcclusion_id45;
}
int GetLightCount_id192(inout PS_STREAMS streams)
{
    return streams.lightData_id87.y & 0xFFFF;
}
int GetMaxLightCount_id191(inout PS_STREAMS streams)
{
    return streams.lightData_id87.y & 0xFFFF;
}
void PrepareDirectLights_id190(inout PS_STREAMS streams)
{
    PrepareLightData_id82(streams);
}
float3 ComputeDirectLightContribution_id227(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id63;
    return diffuseColor / PI_id180 * streams.lightColorNdotL_id41 * streams.matDiffuseSpecularAlphaBlend_id59.x;
}
void PrepareMaterialPerDirectLight_id29(inout PS_STREAMS streams)
{
    streams.H_id69 = normalize(streams.viewWS_id62 + streams.lightDirectionWS_id39);
    streams.NdotH_id70 = max(dot(streams.normalWS_id16, streams.H_id69), 0.0001f);
    streams.LdotH_id71 = max(dot(streams.lightDirectionWS_id39, streams.H_id69), 0.0001f);
    streams.VdotH_id72 = streams.LdotH_id71;
}
void PrepareDirectLight_id180(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id74(streams, lightIndex);
    streams.NdotL_id44 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id39), 0.0001f);
    ComputeShadow_id75(streams, lightIndex);
    streams.lightColorNdotL_id41 = streams.lightColor_id40 * streams.shadowColor_id77 * streams.NdotL_id44 * streams.lightDirectAmbientOcclusion_id45;
}
int GetLightCount_id181()
{
    return LightCount_id78;
}
int GetMaxLightCount_id182()
{
    return TMaxLightCount_id79;
}
void PrepareDirectLights_id178()
{
}
void PrepareMaterialForLightingAndShading_id156(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id45 = lerp(1.0, streams.matAmbientOcclusion_id52, streams.matAmbientOcclusionDirectLightingFactor_id53);
    streams.matDiffuseVisible_id63 = streams.matDiffuse_id48.rgb * lerp(1.0f, streams.matCavity_id54, streams.matCavityDiffuse_id55) * streams.matDiffuseSpecularAlphaBlend_id59.r * streams.matAlphaBlendColor_id60;
    streams.matSpecularVisible_id65 = streams.matSpecular_id50.rgb * streams.matSpecularIntensity_id51 * lerp(1.0f, streams.matCavity_id54, streams.matCavitySpecular_id56) * streams.matDiffuseSpecularAlphaBlend_id59.g * streams.matAlphaBlendColor_id60;
    streams.NdotV_id66 = max(dot(streams.normalWS_id16, streams.viewWS_id62), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id49;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id146(streams, streams.matNormal_id46);
    streams.alphaRoughness_id64 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id155(inout PS_STREAMS streams)
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
float4 Compute_id225()
{
    return constantColor_id177;
}
float4 Compute_id223()
{
    return float4(constantFloat_id175, constantFloat_id175, constantFloat_id175, constantFloat_id175);
}
float4 Compute_id221()
{
    return float4(constantFloat_id173, constantFloat_id173, constantFloat_id173, constantFloat_id173);
}
float4 Compute_id219(inout PS_STREAMS streams)
{
    return Texture_id168.Sample(Sampler_id102, streams.TexCoord_id103 * scale_id170 + offset_id171).rgba;
}
float4 Compute_id217(inout PS_STREAMS streams)
{
    return Texture_id101.Sample(Sampler_id102, streams.TexCoord_id103 * scale_id104 + offset_id105).rgba;
}
void ResetStream_id172(inout PS_STREAMS streams)
{
    ResetStream_id169();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id291(inout PS_STREAMS streams)
{
    streams.shadingColorAlpha_id68 = lerp(0, streams.shadingColorAlpha_id68, streams.matDiffuseSpecularAlphaBlend_id59.r);
}
void Compute_id286(inout PS_STREAMS streams)
{
    streams.shadingColor_id67 += streams.matEmissive_id57.rgb * streams.matEmissiveIntensity_id58;
}
void Compute_id285(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id21(streams.matNormal_id46);
    ResetLightStream_id155(streams);
    PrepareMaterialForLightingAndShading_id156(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id178();
        const int maxLightCount = GetMaxLightCount_id182();
        int count = GetLightCount_id181();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id180(streams, i);
            PrepareMaterialPerDirectLight_id29(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id227(streams);
            }
        }
    }

    {
        PrepareDirectLights_id190(streams);
        const int maxLightCount = GetMaxLightCount_id191(streams);
        int count = GetLightCount_id192(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id188(streams, i);
            PrepareMaterialPerDirectLight_id29(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id227(streams);
            }
        }
    }

    {
        PrepareDirectLights_id196();
        const int maxLightCount = GetMaxLightCount_id200(streams);
        int count = GetLightCount_id201(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id198(streams, i);
            PrepareMaterialPerDirectLight_id29(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id227(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id208(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id228(streams);
        }
    }

    {
        PrepareEnvironmentLight_id213(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id228(streams);
        }
    }

    {
        PrepareEnvironmentLight_id216(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id228(streams);
        }
    }
    streams.shadingColor_id67 += directLightingContribution * PI_id180 + environmentLightingContribution;
    streams.shadingColorAlpha_id68 = streams.matDiffuse_id48.a;
}
void Compute_id270(inout PS_STREAMS streams)
{
    streams.matAlphaBlendColor_id60 = Compute_id225().rgb;
}
void Compute_id265(inout PS_STREAMS streams)
{
    streams.matDiffuseSpecularAlphaBlend_id59 = Compute_id223().r;
}
void Compute_id260(inout PS_STREAMS streams)
{
    streams.matEmissiveIntensity_id58 = Compute_id221().r;
}
void Compute_id255(inout PS_STREAMS streams)
{
    streams.matEmissive_id57 = Compute_id219(streams).rgba;
}
void Compute_id250(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id217(streams);
    streams.matDiffuse_id48 = colorBase;
    streams.matColorBase_id47 = colorBase;
}
void ResetStream_id174(inout PS_STREAMS streams)
{
    ResetStream_id172(streams);
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
void Compute_id71(inout PS_STREAMS streams)
{

    {
        Compute_id250(streams);
    }

    {
        Compute_id255(streams);
    }

    {
        Compute_id260(streams);
    }

    {
        Compute_id265(streams);
    }

    {
        Compute_id270(streams);
    }

    {
        Compute_id285(streams);
    }

    {
        Compute_id286(streams);
    }

    {
        Compute_id291(streams);
    }
}
void ResetStream_id70(inout PS_STREAMS streams)
{
    ResetStream_id174(streams);
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
    ResetStream_id70(streams);
    Compute_id71(streams);
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
