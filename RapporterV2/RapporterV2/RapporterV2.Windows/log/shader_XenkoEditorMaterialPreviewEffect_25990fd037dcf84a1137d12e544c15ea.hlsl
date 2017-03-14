/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoEditorMaterialPreviewEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.DiffuseMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = ComputeColorTextureScaledOffsetDynamicSampler<Material.EmissiveMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale.i1,Material.TextureOffset.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.EmissiveIntensity>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}], MaterialSurfaceEmissiveShading<false>]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: LightClusteredPointGroup<64>, LightClusteredSpotGroup<64>, mixin LightDirectionalGroup<8>
@P Lighting.EnvironmentLights: LightSimpleAmbient
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
@C    scale_id159 => Material.TextureScale
@C    offset_id160 => Material.TextureOffset
@C    scale_id167 => Material.TextureScale.i1
@C    offset_id168 => Material.TextureOffset.i1
@C    constantFloat_id170 => Material.EmissiveIntensity
cbuffer PerView [Size: 672]
@C    View_id22 => Transformation.View
@C    ViewInverse_id23 => Transformation.ViewInverse
@C    Projection_id24 => Transformation.Projection
@C    ProjectionInverse_id25 => Transformation.ProjectionInverse
@C    ViewProjection_id26 => Transformation.ViewProjection
@C    ProjScreenRay_id27 => Transformation.ProjScreenRay
@C    Eye_id28 => Transformation.Eye
@C    NearClipPlane_id135 => Camera.NearClipPlane
@C    FarClipPlane_id136 => Camera.FarClipPlane
@C    ZProjection_id137 => Camera.ZProjection
@C    ViewSize_id138 => Camera.ViewSize
@C    AspectRatio_id139 => Camera.AspectRatio
@C    ClusterDepthScale_id145 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id146 => LightClustered.ClusterDepthBias
@C    LightCount_id152 => DirectLightGroupPerView.LightCount.directLightGroups[2]
@C    Lights_id154 => LightDirectionalGroup.Lights.directLightGroups[2]
@C    AmbientLight_id155 => LightSimpleAmbient.AmbientLight.environmentLights[0]
***************************
******  Resources    ******
***************************
@R    Texture_id156 => Material.DiffuseMap [Stage: None, Slot: (-1--1)]
@R    Texture_id156 => Material.DiffuseMap [Stage: None, Slot: (-1--1)]
@R    Sampler_id157 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Sampler_id157 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Texture_id165 => Material.EmissiveMap [Stage: None, Slot: (-1--1)]
@R    Texture_id165 => Material.EmissiveMap [Stage: None, Slot: (-1--1)]
@R    LightClusters_id143 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id143 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id144 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id144 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id148 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id148 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id151 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id151 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    Sampler_id157 => Material.Sampler.i0 [Stage: Pixel, Slot: (0-0)]
@R    Texture_id156 => Material.DiffuseMap [Stage: Pixel, Slot: (0-0)]
@R    Texture_id165 => Material.EmissiveMap [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id143 => LightClustered.LightClusters [Stage: Pixel, Slot: (2-2)]
@R    LightIndices_id144 => LightClustered.LightIndices [Stage: Pixel, Slot: (3-3)]
@R    PointLights_id148 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (4-4)]
@R    SpotLights_id151 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (5-5)]
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
@S    SharedTextureCoordinate => 83b1f951770017cd4fa3533f0c94c522
@S    Texturing => a9d9ee1fb9a68af7ce6b12291686faea
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
@S    LightSimpleAmbient => 6d68fc78fb5b5ad232c5ec44f6d90e31
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
@S    ComputeColorConstantFloatLink => a459500fd7f6c5988997e81bf766f988
@S    MaterialSurfaceLightingAndShading => 4faacd53863c0b5c65d23ad20797d27c
@S    Math => 5bdf39e412cac464ebbce340da34bca1
@S    IMaterialSurfaceShading => 7aecb9db43b53094f40d49ae22406a18
@S    MaterialSurfaceShadingDiffuseLambert => 66ea94572ee9f10a2e305608a7d69dad
@S    MaterialSurfaceEmissiveShading => 8441e737217d64ffcec16b8458a149b2
***************************
*****     Stages      *****
***************************
@G    Vertex => d401b243ae289c87252688529da57c6a
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
//   float NearClipPlane_id135;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id136;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id137;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id138;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id139;           // Offset:  376 Size:     4 [unused]
//   float ClusterDepthScale_id145;     // Offset:  380 Size:     4 [unused]
//   float ClusterDepthBias_id146;      // Offset:  384 Size:     4 [unused]
//   int LightCount_id152;              // Offset:  388 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  400
//       float3 Color;                  // Offset:  416
//
//   } Lights_id154[8];                 // Offset:  400 Size:   252 [unused]
//   float3 AmbientLight_id155;         // Offset:  656 Size:    12 [unused]
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
dcl_output o2.xyz
dcl_output o3.xy
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.meshNormal_id14.x; v1.y <- __input__.meshNormal_id14.y; v1.z <- __input__.meshNormal_id14.z; 
//   v2.x <- __input__.TexCoord_id124.x; v2.y <- __input__.TexCoord_id124.y; 
//   o3.x <- <VSMain return value>.TexCoord_id124.x; o3.y <- <VSMain return value>.TexCoord_id124.y; 
//   o2.x <- <VSMain return value>.normalWS_id16.x; o2.y <- <VSMain return value>.normalWS_id16.y; o2.z <- <VSMain return value>.normalWS_id16.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 586 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\RapporterV2.Windows\log\shader_XenkoEditorMaterialPreviewEffect_25990fd037dcf84a1137d12e544c15ea.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 669
mov o0.xyzw, r0.xyzw

#line 576
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw
dp4 o1.w, r0.xyzw, cb1[19].xyzw

#line 619
dp3 o2.x, v1.xyzx, cb0[8].xyzx
dp3 o2.y, v1.xyzx, cb0[9].xyzx
dp3 o2.z, v1.xyzx, cb0[10].xyzx

#line 669
mov o3.xy, v2.xyxx
ret 
// Approximately 14 instruction slots used
@G    Pixel => ce3b05b1bd64f94c88b9cd1dafb5867f
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float2 scale_id159;                // Offset:    0 Size:     8
//   float2 offset_id160;               // Offset:    8 Size:     8
//   float2 scale_id167;                // Offset:   16 Size:     8
//   float2 offset_id168;               // Offset:   24 Size:     8
//   float constantFloat_id170;         // Offset:   32 Size:     4
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
//   float NearClipPlane_id135;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id136;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id137;          // Offset:  360 Size:     8
//   float2 ViewSize_id138;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id139;           // Offset:  376 Size:     4 [unused]
//   float ClusterDepthScale_id145;     // Offset:  380 Size:     4
//   float ClusterDepthBias_id146;      // Offset:  384 Size:     4
//   int LightCount_id152;              // Offset:  388 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  400
//       float3 Color;                  // Offset:  416
//
//   } Lights_id154[8];                 // Offset:  400 Size:   252
//   float3 AmbientLight_id155;         // Offset:  656 Size:    12
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// Sampler_id157                     sampler      NA          NA    0        1
// Texture_id156                     texture  float4          2d    0        1
// Texture_id165                     texture  float4          2d    1        1
// LightClusters_id143               texture   uint2          3d    2        1
// LightIndices_id144                texture    uint         buf    3        1
// PointLights_id148                 texture  float4         buf    4        1
// SpotLights_id151                  texture  float4         buf    5        1
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
// NORMALWS                 0   xyz         2     NONE   float   xyz 
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
dcl_constantbuffer cb1[42], dynamicIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture3d (uint,uint,uint,uint) t2
dcl_resource_buffer (uint,uint,uint,uint) t3
dcl_resource_buffer (float,float,float,float) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.xyz, position
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xy
dcl_output o0.xyzw
dcl_temps 12
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id16.x; v2.y <- __input__.normalWS_id16.y; v2.z <- __input__.normalWS_id16.z; 
//   v3.x <- __input__.TexCoord_id124.x; v3.y <- __input__.TexCoord_id124.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 615 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\RapporterV2.Windows\log\shader_XenkoEditorMaterialPreviewEffect_25990fd037dcf84a1137d12e544c15ea.hlsl"
dp3 r0.x, v2.xyzx, v2.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.xyzx  // r0.x <- streams.normalWS_id16.x; r0.y <- streams.normalWS_id16.y; r0.z <- streams.normalWS_id16.z

#line 413
mad r1.xy, v3.xyxx, cb0[0].xyxx, cb0[0].zwzz
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.xyxx, t0.xyzw, s0  // r1.x <- <Compute_id166 return value>.x; r1.y <- <Compute_id166 return value>.y; r1.z <- <Compute_id166 return value>.z; r1.w <- <Compute_id166 return value>.w

#line 409
mad r2.xy, v3.xyxx, cb0[1].xyxx, cb0[1].zwzz
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyxx, t1.xyzw, s0  // r2.x <- <Compute_id168 return value>.x; r2.y <- <Compute_id168 return value>.y; r2.z <- <Compute_id168 return value>.z

#line 285
add r0.w, v1.z, -cb1[22].z
div r0.w, cb1[22].w, r0.w  // r0.w <- depth
ftoi r3.xy, v1.xyxx  // r3.x <- shadingPosition.x; r3.y <- shadingPosition.y
mad r0.w, r0.w, cb1[23].w, cb1[24].x
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)
ftoi r4.z, r0.w  // r4.z <- slice
ushr r4.xy, r3.xyxx, l(6, 6, 0, 0)
mov r4.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r3.xy, r4.xyzw, t2.xyzw  // r3.x <- streams.lightData_id141.x; r3.y <- streams.lightData_id141.y

#line 374
and r0.w, r3.y, l(0x0000ffff)  // r0.w <- <GetMaxLightCount_id141 return value>

#line 436
mov r4.xyz, r0.xyzx  // r4.x <- streams.normalWS_id16.x; r4.y <- streams.normalWS_id16.y; r4.z <- streams.normalWS_id16.z
mov r4.w, v0.x  // r4.w <- streams.PositionWS_id19.x
mov r5.yz, v0.yyzy  // r5.y <- streams.PositionWS_id19.y; r5.z <- streams.PositionWS_id19.z
mov r6.xyz, r1.xyzx  // r6.x <- streams.matDiffuseVisible_id62.x; r6.y <- streams.matDiffuseVisible_id62.y; r6.z <- streams.matDiffuseVisible_id62.z
mov r7.xyz, l(0,0,0,0)  // r7.x <- directLightingContribution.x; r7.y <- directLightingContribution.y; r7.z <- directLightingContribution.z
mov r8.x, r3.x  // r8.x <- streams.lightIndex_id142
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.z, r2.w, r0.w
  breakc_nz r3.z
  if_nz r3.z
    break 
  endif 

#line 272
  ld_indexable(buffer)(uint,uint,uint,uint) r3.z, r8.xxxx, t3.yzxw  // r3.z <- realLightIndex
  iadd r8.x, r8.x, l(1)  // r8.x <- streams.lightIndex_id142
  ishl r3.w, r3.z, l(1)
  ld_indexable(buffer)(float,float,float,float) r9.xyzw, r3.wwww, t4.xyzw  // r9.x <- pointLight1.x; r9.y <- pointLight1.y; r9.z <- pointLight1.z; r9.w <- pointLight1.w
  bfi r3.z, l(31), l(1), r3.z, l(1)
  ld_indexable(buffer)(float,float,float,float) r8.yzw, r3.zzzz, t4.wxyz  // r8.y <- pointLight2.x; r8.z <- pointLight2.y; r8.w <- pointLight2.z

#line 229
  mov r5.x, r4.w
  add r9.xyz, -r5.xyzx, r9.xyzx  // r9.x <- lightVector.x; r9.y <- lightVector.y; r9.z <- lightVector.z
  dp3 r3.z, r9.xyzx, r9.xyzx
  sqrt r3.w, r3.z  // r3.w <- lightVectorLength
  div r9.xyz, r9.xyzx, r3.wwww  // r9.x <- lightVectorNorm.x; r9.y <- lightVectorNorm.y; r9.z <- lightVectorNorm.z

#line 208
  max r3.w, r3.z, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 187
  mul r3.z, r9.w, r3.z  // r3.z <- factor
  mad r3.z, -r3.z, r3.z, l(1.000000)
  max r3.z, r3.z, l(0.000000)  // r3.z <- smoothFactor
  mul r3.z, r3.z, r3.z  // r3.z <- <SmoothDistanceAttenuation_id64 return value>

#line 209
  mul r3.z, r3.z, r3.w  // r3.z <- attenuation

#line 235
  mul r8.yzw, r3.zzzz, r8.yyzw  // r8.y <- streams.lightColor_id39.x; r8.z <- streams.lightColor_id39.y; r8.w <- streams.lightColor_id39.z

#line 364
  dp3 r3.z, r4.xyzx, r9.xyzx
  max r3.z, r3.z, l(0.000100)  // r3.z <- streams.NdotL_id43
  mul r8.yzw, r3.zzzz, r8.yyzw  // r8.y <- streams.lightColorNdotL_id40.x; r8.z <- streams.lightColorNdotL_id40.y; r8.w <- streams.lightColorNdotL_id40.z

#line 352
  mul r8.yzw, r8.yyzw, r6.xxyz

#line 446
  mad r7.xyz, r8.yzwy, l(0.318310, 0.318310, 0.318310, 0.000000), r7.xyzx

#line 436
  iadd r2.w, r2.w, l(1)

#line 448
endloop   // r8.x <- streams.lightIndex_id142

#line 344
ushr r0.w, r3.y, l(16)  // r0.w <- <GetMaxLightCount_id150 return value>

#line 456
mov r3.xyz, r0.xyzx  // r3.x <- streams.normalWS_id16.x; r3.y <- streams.normalWS_id16.y; r3.z <- streams.normalWS_id16.z
mov r4.xyz, v0.xyzx  // r4.x <- streams.PositionWS_id19.x; r4.y <- streams.PositionWS_id19.y; r4.z <- streams.PositionWS_id19.z
mov r4.w, r8.x  // r4.w <- streams.lightIndex_id142
mov r5.xyz, r1.xyzx  // r5.x <- streams.matDiffuseVisible_id62.x; r5.y <- streams.matDiffuseVisible_id62.y; r5.z <- streams.matDiffuseVisible_id62.z
mov r6.xyz, r7.xyzx  // r6.x <- directLightingContribution.x; r6.y <- directLightingContribution.y; r6.z <- directLightingContribution.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r0.w
  breakc_nz r3.w
  if_nz r3.w
    break 
  endif 

#line 253
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r4.wwww, t3.yzwx  // r3.w <- realLightIndex
  iadd r4.w, r4.w, l(1)  // r4.w <- streams.lightIndex_id142
  ishl r5.w, r3.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r8.yzw, r5.wwww, t5.wxyz  // r8.y <- spotLight1.x; r8.z <- spotLight1.y; r8.w <- spotLight1.z

#line 259
  bfi r9.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r3.wwww, l(1, 2, 3, 0)
  ld_indexable(buffer)(float,float,float,float) r10.xyz, r9.xxxx, t5.xyzw  // r10.x <- spotLight2.x; r10.y <- spotLight2.y; r10.z <- spotLight2.z
  ld_indexable(buffer)(float,float,float,float) r9.xyw, r9.yyyy, t5.xywz  // r9.x <- spotLight3.x; r9.y <- spotLight3.y; r9.w <- spotLight3.z
  ld_indexable(buffer)(float,float,float,float) r11.xyz, r9.zzzz, t5.xyzw  // r11.x <- spotLight4.x; r11.y <- spotLight4.y; r11.z <- spotLight4.z

#line 214
  add r8.yzw, -r4.xxyz, r8.yyzw  // r8.y <- lightVector.x; r8.z <- lightVector.y; r8.w <- lightVector.z
  dp3 r3.w, r8.yzwy, r8.yzwy
  sqrt r5.w, r3.w  // r5.w <- lightVectorLength
  div r8.yzw, r8.yyzw, r5.wwww  // r8.y <- lightVectorNorm.x; r8.z <- lightVectorNorm.y; r8.w <- lightVectorNorm.z

#line 201
  max r5.w, r3.w, l(0.000100)
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w  // r5.w <- attenuation

#line 181
  mul r3.w, r9.w, r3.w  // r3.w <- factor
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id72 return value>

#line 202
  mul r3.w, r3.w, r5.w  // r3.w <- attenuation

#line 193
  dp3 r5.w, -r10.xyzx, r8.yzwy  // r5.w <- cd
  mad_sat r5.w, r5.w, r9.x, r9.y  // r5.w <- attenuation
  mul r5.w, r5.w, r5.w

#line 223
  mul r3.w, r3.w, r5.w  // r3.w <- attenuation
  mul r8.yzw, r3.wwww, r11.xxyz  // r8.y <- streams.lightColor_id39.x; r8.z <- streams.lightColor_id39.y; r8.w <- streams.lightColor_id39.z

#line 334
  dp3 r3.w, r3.xyzx, -r10.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id43
  mul r8.yzw, r3.wwww, r8.yyzw  // r8.y <- streams.lightColorNdotL_id40.x; r8.z <- streams.lightColorNdotL_id40.y; r8.w <- streams.lightColorNdotL_id40.z

#line 352
  mul r8.yzw, r5.xxyz, r8.yyzw

#line 466
  mad r6.xyz, r8.yzwy, l(0.318310, 0.318310, 0.318310, 0.000000), r6.xyzx

#line 456
  iadd r2.w, r2.w, l(1)

#line 468
endloop   // r4.w <- streams.lightIndex_id142

#line 476
mov r3.xyz, r0.xyzx
mov r4.xyz, r1.xyzx  // r4.x <- streams.matDiffuseVisible_id62.x; r4.y <- streams.matDiffuseVisible_id62.y; r4.z <- streams.matDiffuseVisible_id62.z
mov r5.xyz, r6.xyzx  // r5.x <- directLightingContribution.x; r5.y <- directLightingContribution.y; r5.z <- directLightingContribution.z
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r2.w, r0.w, l(8)
  breakc_nz r2.w
  ige r2.w, r0.w, cb1[24].y
  if_nz r2.w
    break 
  endif 

#line 244
  ishl r2.w, r0.w, l(1)

#line 316
  dp3 r3.w, r3.xyzx, -cb1[r2.w + 25].xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id43
  mul r7.xyz, r3.wwww, cb1[r2.w + 26].xyzx  // r7.x <- streams.lightColorNdotL_id40.x; r7.y <- streams.lightColorNdotL_id40.y; r7.z <- streams.lightColorNdotL_id40.z

#line 352
  mul r7.xyz, r4.xyzx, r7.xyzx

#line 486
  mad r5.xyz, r7.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r5.xyzx

#line 476
  iadd r0.w, r0.w, l(1)

#line 488
endloop 

#line 305
mul r0.xyz, r1.xyzx, cb1[41].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id173 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id173 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id173 return value>.z

#line 499
mad r0.xyz, r5.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx  // r0.x <- streams.shadingColor_id66.x; r0.y <- streams.shadingColor_id66.y; r0.z <- streams.shadingColor_id66.z

#line 422
mad o0.xyz, r2.xyzx, cb0[2].xxxx, r0.xyzx

#line 655
mov o0.w, r1.w
ret 
// Approximately 125 instruction slots used
***************************
*************************/
const static uint ClusterSize2_id140 = 64;
const static int TMaxLightCount_id153 = 8;
static const float PI_id173 = 3.14159265358979323846;
const static bool TIsEnergyConservative_id174 = false;
const static bool TUseAlphaFromEmissive_id176 = false;
Texture2D Texture_id156;
SamplerState Sampler_id157;
Texture2D Texture_id165;
Texture3D<uint2> LightClusters_id143;
Buffer<uint> LightIndices_id144;
Buffer<float4> PointLights_id148;
Buffer<float4> SpotLights_id151;
struct PS_STREAMS 
{
    float2 TexCoord_id124;
    float3 normalWS_id16;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float2 TexCoord1_id125;
    float2 TexCoord2_id126;
    float2 TexCoord3_id127;
    float2 TexCoord4_id128;
    float2 TexCoord5_id129;
    float2 TexCoord6_id130;
    float2 TexCoord7_id131;
    float2 TexCoord8_id132;
    float2 TexCoord9_id133;
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
    uint2 lightData_id141;
    int lightIndex_id142;
    float3 shadowColor_id134;
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
    float2 TexCoord_id124;
    float4 PositionH_id21;
    float DepthVS_id20;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float3 normalWS_id16;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id19 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id16 : NORMALWS;
    float2 TexCoord_id124 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    float3 meshNormal_id14 : NORMAL;
    float2 TexCoord_id124 : TEXCOORD0;
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
    float2 scale_id159;
    float2 offset_id160;
    float2 scale_id167;
    float2 offset_id168;
    float constantFloat_id170;
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
    float NearClipPlane_id135 = 1.0f;
    float FarClipPlane_id136 = 100.0f;
    float2 ZProjection_id137;
    float2 ViewSize_id138;
    float AspectRatio_id139;
    float ClusterDepthScale_id145;
    float ClusterDepthBias_id146;
    int LightCount_id152;
    DirectionalLightData Lights_id154[TMaxLightCount_id153];
    float3 AmbientLight_id155;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id77;
    float2 Texture1TexelSize_id79;
    float2 Texture2TexelSize_id81;
    float2 Texture3TexelSize_id83;
    float2 Texture4TexelSize_id85;
    float2 Texture5TexelSize_id87;
    float2 Texture6TexelSize_id89;
    float2 Texture7TexelSize_id91;
    float2 Texture8TexelSize_id93;
    float2 Texture9TexelSize_id95;
};
float SmoothDistanceAttenuation_id72(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id64(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float GetAngleAttenuation_id74(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id73(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id72(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id65(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id64(d2, lightInvSquareRadius);
    return attenuation;
}
void ProcessLight_id75(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = light.AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -light.DirectionWS;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id73(lightVector, lightInvSquareRadius);
    attenuation *= GetAngleAttenuation_id74(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightDirection;
}
void ProcessLight_id67(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id65(lightVector, lightInvSquareRadius);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
void ComputeShadow_id79(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id134 = 1.0f;
}
void PrepareDirectLightCore_id78(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id39 = Lights_id154[lightIndex].Color;
    streams.lightDirectionWS_id38 = -Lights_id154[lightIndex].DirectionWS;
}
void ComputeShadow_id71(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id134 = 1.0f;
}
void PrepareDirectLightCore_id70(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id144.Load(streams.lightIndex_id142);
    streams.lightIndex_id142++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id151.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id151.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id151.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id151.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id75(streams, spotLight);
}
void ComputeShadow_id63(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id134 = 1.0f;
}
void PrepareDirectLightCore_id62(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id144.Load(streams.lightIndex_id142);
    streams.lightIndex_id142++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id148.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id148.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id67(streams, pointLight);
}
void PrepareLightData_id66(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id137.y / (projectedDepth - ZProjection_id137.x);
    int2 shadingPosition = int2(streams.ShadingPosition_id0.xy);
    int slice = int(max(log2(depth * ClusterDepthScale_id145 + ClusterDepthBias_id146), 0));
    streams.lightData_id141 = LightClusters_id143.Load(int4(shadingPosition / ClusterSize2_id140, slice, 0));
    streams.lightIndex_id142 = streams.lightData_id141.x;
}
float GetFilterSquareRoughnessAdjustment_id110(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id127()
{
}
float3 ComputeEnvironmentLightContribution_id173(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id165(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id155 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareDirectLight_id157(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id78(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id79(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id134 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id158()
{
    return LightCount_id152;
}
int GetMaxLightCount_id159()
{
    return TMaxLightCount_id153;
}
void PrepareDirectLights_id155()
{
}
void PrepareDirectLight_id148(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id70(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id71(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id134 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id151(inout PS_STREAMS streams)
{
    return streams.lightData_id141.y >> 16;
}
int GetMaxLightCount_id150(inout PS_STREAMS streams)
{
    return streams.lightData_id141.y >> 16;
}
void PrepareDirectLights_id146()
{
}
float3 ComputeDirectLightContribution_id172(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor / PI_id173 * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.x;
}
void PrepareMaterialPerDirectLight_id29(inout PS_STREAMS streams)
{
    streams.H_id68 = normalize(streams.viewWS_id61 + streams.lightDirectionWS_id38);
    streams.NdotH_id69 = max(dot(streams.normalWS_id16, streams.H_id68), 0.0001f);
    streams.LdotH_id70 = max(dot(streams.lightDirectionWS_id38, streams.H_id68), 0.0001f);
    streams.VdotH_id71 = streams.LdotH_id70;
}
void PrepareDirectLight_id138(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id62(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id63(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id134 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id142(inout PS_STREAMS streams)
{
    return streams.lightData_id141.y & 0xFFFF;
}
int GetMaxLightCount_id141(inout PS_STREAMS streams)
{
    return streams.lightData_id141.y & 0xFFFF;
}
void PrepareDirectLights_id140(inout PS_STREAMS streams)
{
    PrepareLightData_id66(streams);
}
void PrepareMaterialForLightingAndShading_id120(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id110(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id119(inout PS_STREAMS streams)
{
    streams.lightDirectionWS_id38 = 0;
    streams.lightColor_id39 = 0;
    streams.lightColorNdotL_id40 = 0;
    streams.envLightDiffuseColor_id41 = 0;
    streams.envLightSpecularColor_id42 = 0;
    streams.lightDirectAmbientOcclusion_id44 = 1.0f;
    streams.NdotL_id43 = 0;
}
void UpdateNormalFromTangentSpace_id21(float3 normalInTangentSpace)
{
}
float4 Compute_id170()
{
    return float4(constantFloat_id170, constantFloat_id170, constantFloat_id170, constantFloat_id170);
}
float4 Compute_id168(inout PS_STREAMS streams)
{
    return Texture_id165.Sample(Sampler_id157, streams.TexCoord_id124 * scale_id167 + offset_id168).rgba;
}
float4 Compute_id166(inout PS_STREAMS streams)
{
    return Texture_id156.Sample(Sampler_id157, streams.TexCoord_id124 * scale_id159 + offset_id160).rgba;
}
void ResetStream_id130(inout PS_STREAMS streams)
{
    ResetStream_id127();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id221(inout PS_STREAMS streams)
{
    streams.shadingColor_id66 += streams.matEmissive_id56.rgb * streams.matEmissiveIntensity_id57;
}
void Compute_id220(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id21(streams.matNormal_id45);
    ResetLightStream_id119(streams);
    PrepareMaterialForLightingAndShading_id120(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id140(streams);
        const int maxLightCount = GetMaxLightCount_id141(streams);
        int count = GetLightCount_id142(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id138(streams, i);
            PrepareMaterialPerDirectLight_id29(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id172(streams);
            }
        }
    }

    {
        PrepareDirectLights_id146();
        const int maxLightCount = GetMaxLightCount_id150(streams);
        int count = GetLightCount_id151(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id148(streams, i);
            PrepareMaterialPerDirectLight_id29(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id172(streams);
            }
        }
    }

    {
        PrepareDirectLights_id155();
        const int maxLightCount = GetMaxLightCount_id159();
        int count = GetLightCount_id158();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id157(streams, i);
            PrepareMaterialPerDirectLight_id29(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id172(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id165(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id173(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id173 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id205(inout PS_STREAMS streams)
{
    streams.matEmissiveIntensity_id57 = Compute_id170().r;
}
void Compute_id200(inout PS_STREAMS streams)
{
    streams.matEmissive_id56 = Compute_id168(streams).rgba;
}
void Compute_id195(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id166(streams);
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id132(inout PS_STREAMS streams)
{
    ResetStream_id130(streams);
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
void Compute_id59(inout PS_STREAMS streams)
{

    {
        Compute_id195(streams);
    }

    {
        Compute_id200(streams);
    }

    {
        Compute_id205(streams);
    }

    {
        Compute_id220(streams);
    }

    {
        Compute_id221(streams);
    }
}
void ResetStream_id58(inout PS_STREAMS streams)
{
    ResetStream_id132(streams);
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
float4 Shading_id30(inout PS_STREAMS streams)
{
    streams.viewWS_id61 = normalize(Eye_id28.xyz - streams.PositionWS_id19.xyz);
    streams.shadingColor_id66 = 0;
    ResetStream_id58(streams);
    Compute_id59(streams);
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
    streams.ColorTarget_id1 = Shading_id30(streams);
}
void GenerateNormal_PS_id20(inout PS_STREAMS streams)
{
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
    streams.TexCoord_id124 = __input__.TexCoord_id124;
    streams.TexCoord1_id125 = streams.TexCoord_id124;
    streams.TexCoord2_id126 = streams.TexCoord_id124;
    streams.TexCoord3_id127 = streams.TexCoord_id124;
    streams.TexCoord4_id128 = streams.TexCoord_id124;
    streams.TexCoord5_id129 = streams.TexCoord_id124;
    streams.TexCoord6_id130 = streams.TexCoord_id124;
    streams.TexCoord7_id131 = streams.TexCoord_id124;
    streams.TexCoord8_id132 = streams.TexCoord_id124;
    streams.TexCoord9_id133 = streams.TexCoord_id124;
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
    streams.TexCoord_id124 = __input__.TexCoord_id124;
    VSMain_id16(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id16 = streams.normalWS_id16;
    __output__.TexCoord_id124 = streams.TexCoord_id124;
    return __output__;
}
