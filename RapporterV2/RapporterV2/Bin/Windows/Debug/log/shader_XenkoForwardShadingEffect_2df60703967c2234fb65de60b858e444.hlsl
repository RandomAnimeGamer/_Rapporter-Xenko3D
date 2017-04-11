/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = ComputeColorConstantColorLink<Material.EmissiveValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.EmissiveIntensity>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [mixin MaterialSurfaceShadingDiffuseCelShading<false,0> [{celLightFunction = MaterialCelShadingLightDefault<false>}], mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilityImplicit}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionBeckmann}]]}], MaterialSurfaceEmissiveShading<false>]}]
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
@C    constantColor_id98 => Material.DiffuseValue
@C    constantColor_id161 => Material.EmissiveValue
@C    constantFloat_id163 => Material.EmissiveIntensity
cbuffer PerView [Size: 672]
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
@C    AmbientLight_id97 => LightSimpleAmbient.AmbientLight.environmentLights[0]
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
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: Pixel, Slot: (0-0)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: Pixel, Slot: (1-1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (2-2)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (3-3)]
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
@S    LightSimpleAmbient => 6d68fc78fb5b5ad232c5ec44f6d90e31
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
@S    Texturing => a9d9ee1fb9a68af7ce6b12291686faea
@S    ComputeColorConstantFloatLink => a459500fd7f6c5988997e81bf766f988
@S    MaterialSurfaceLightingAndShading => 4faacd53863c0b5c65d23ad20797d27c
@S    Math => 5bdf39e412cac464ebbce340da34bca1
@S    IMaterialSurfaceShading => 7aecb9db43b53094f40d49ae22406a18
@S    MaterialSurfaceShadingDiffuseCelShading => fd7ea0674fb34309c429cdfa5368cf24
@S    IMaterialCelShadingLightFunction => 70757a2161508f580900500a4f91240e
@S    MaterialCelShadingLightDefault => 196b323242b05a6f36d6f91049be130b
@S    MaterialSurfaceShadingSpecularMicrofacet => b7d013f1414d67d7f1a4afd4ac068c8e
@S    BRDFMicrofacet => 98c58221f1b61f0766453f0ce60edcb0
@S    IMaterialSpecularMicrofacetFresnelFunction => be6c16bab5a59713001b43d92cde1a5a
@S    IMaterialSpecularMicrofacetVisibilityFunction => 5872403d82d7dcdfdaaf64a9f924b8dd
@S    IMaterialSpecularMicrofacetNormalDistributionFunction => a8ee1e483f2e3d59a955262211e6f903
@S    MaterialSpecularMicrofacetFresnelSchlick => 31c4aa7c7fbef53ee309a102999a200c
@S    MaterialSpecularMicrofacetVisibilityImplicit => 71acfad6c818096c1cd2e2b3e45c9b21
@S    MaterialSpecularMicrofacetNormalDistributionBeckmann => 2d9c923d1b2ff0f5bcf8bafa3ed1dd41
@S    MaterialSurfaceEmissiveShading => 8441e737217d64ffcec16b8458a149b2
***************************
*****     Stages      *****
***************************
@G    Vertex => 0c2b84e51c54532c05db516ac735a711
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
//   } Lights_id96[8];                  // Offset:  400 Size:   252 [unused]
//   float3 AmbientLight_id97;          // Offset:  656 Size:    12 [unused]
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
// NORMALWS                 0   xyz         2     NONE   float   xyz 
//
vs_4_0
dcl_constantbuffer cb0[11], immediateIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyz
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.meshNormal_id14.x; v1.y <- __input__.meshNormal_id14.y; v1.z <- __input__.meshNormal_id14.z; 
//   o2.x <- <VSMain return value>.normalWS_id16.x; o2.y <- <VSMain return value>.normalWS_id16.y; o2.z <- <VSMain return value>.normalWS_id16.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 677 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_2df60703967c2234fb65de60b858e444.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 740
mov o0.xyzw, r0.xyzw

#line 667
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw
dp4 o1.w, r0.xyzw, cb1[19].xyzw

#line 710
dp3 o2.x, v1.xyzx, cb0[8].xyzx
dp3 o2.y, v1.xyzx, cb0[9].xyzx
dp3 o2.z, v1.xyzx, cb0[10].xyzx

#line 740
ret 
// Approximately 13 instruction slots used
@G    Pixel => 129e3a4d7bde3c9386fc35eb23949443
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id98;         // Offset:    0 Size:    16
//   float4 constantColor_id161;        // Offset:   16 Size:    16
//   float constantFloat_id163;         // Offset:   32 Size:     4
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
//   } Lights_id96[8];                  // Offset:  400 Size:   252
//   float3 AmbientLight_id97;          // Offset:  656 Size:    12
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// LightClusters_id85                texture   uint2          3d    0        1
// LightIndices_id86                 texture    uint         buf    1        1
// PointLights_id90                  texture  float4         buf    2        1
// SpotLights_id93                   texture  float4         buf    3        1
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
dcl_constantbuffer cb1[42], dynamicIndexed
dcl_resource_texture3d (uint,uint,uint,uint) t0
dcl_resource_buffer (uint,uint,uint,uint) t1
dcl_resource_buffer (float,float,float,float) t2
dcl_resource_buffer (float,float,float,float) t3
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.xyz, position
dcl_input_ps linear v2.xyz
dcl_output o0.xyzw
dcl_temps 12
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id16.x; v2.y <- __input__.normalWS_id16.y; v2.z <- __input__.normalWS_id16.z; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 706 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_2df60703967c2234fb65de60b858e444.hlsl"
dp3 r0.x, v2.xyzx, v2.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.xyzx  // r0.x <- streams.normalWS_id16.x; r0.y <- streams.normalWS_id16.y; r0.z <- streams.normalWS_id16.z

#line 681
add r1.xyz, -v0.xyzx, cb1[21].xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, r1.xyzx  // r1.x <- streams.viewWS_id61.x; r1.y <- streams.viewWS_id61.y; r1.z <- streams.viewWS_id61.z

#line 336
add r0.w, v1.z, -cb1[22].z
div r0.w, cb1[22].w, r0.w  // r0.w <- depth
ftoi r2.xy, v1.xyxx  // r2.x <- shadingPosition.x; r2.y <- shadingPosition.y
mad r0.w, r0.w, cb1[23].w, cb1[24].x
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)
ftoi r3.z, r0.w  // r3.z <- slice
ushr r3.xy, r2.xyxx, l(6)
mov r3.w, l(0)
ld r2.xyzw, r3.xyzw, t0.xyzw  // r2.x <- streams.lightData_id83.x; r2.y <- streams.lightData_id83.y

#line 449
and r0.w, r2.y, l(0x0000ffff)  // r0.w <- <GetMaxLightCount_id216 return value>

#line 511
mov r3.xyz, r0.xyzx  // r3.x <- streams.normalWS_id16.x; r3.y <- streams.normalWS_id16.y; r3.z <- streams.normalWS_id16.z
mov r3.w, v0.x  // r3.w <- streams.PositionWS_id19.x
mov r4.xy, v0.yzyy  // r4.x <- streams.PositionWS_id19.y; r4.y <- streams.PositionWS_id19.z
mov r4.zw, r1.xxxy  // r4.z <- streams.viewWS_id61.x; r4.w <- streams.viewWS_id61.y
mov r5.z, r1.z  // r5.z <- streams.viewWS_id61.z
mov r6.xyz, cb0[0].xyzx  // r6.x <- streams.matDiffuseVisible_id62.x; r6.y <- streams.matDiffuseVisible_id62.y; r6.z <- streams.matDiffuseVisible_id62.z
mov r7.x, r2.x  // r7.x <- streams.lightIndex_id84
mov r7.yzw, l(0,0,0,0)  // r7.y <- directLightingContribution.x; r7.z <- directLightingContribution.y; r7.w <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.z, r1.w, r0.w
  breakc_nz r2.z
  if_nz r2.z
    break 
  endif 

#line 323
  ld r8.xyzw, r7.xxxx, t1.xyzw  // r8.x <- realLightIndex
  iadd r7.x, r7.x, l(1)  // r7.x <- streams.lightIndex_id84
  ishl r2.z, r8.x, l(1)
  ld r8.xyzw, r2.zzzz, t2.xyzw  // r8.x <- pointLight1.x; r8.y <- pointLight1.y; r8.z <- pointLight1.z; r8.w <- pointLight1.w
  iadd r2.z, r2.z, l(1)
  ld r9.xyzw, r2.zzzz, t2.xyzw  // r9.x <- pointLight2.x; r9.y <- pointLight2.y; r9.z <- pointLight2.z

#line 232
  mov r10.x, r3.w
  mov r10.yz, r4.xxyx
  add r8.xyz, r8.xyzx, -r10.xyzx  // r8.x <- lightVector.x; r8.y <- lightVector.y; r8.z <- lightVector.z
  dp3 r2.z, r8.xyzx, r8.xyzx
  sqrt r2.w, r2.z  // r2.w <- lightVectorLength
  div r8.xyz, r8.xyzx, r2.wwww  // r8.x <- lightVectorNorm.x; r8.y <- lightVectorNorm.y; r8.z <- lightVectorNorm.z

#line 196
  max r2.w, r2.z, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 171
  mul r2.z, r8.w, r2.z  // r2.z <- factor
  mad r2.z, -r2.z, r2.z, l(1.000000)
  max r2.z, r2.z, l(0.000000)  // r2.z <- smoothFactor
  mul r2.z, r2.z, r2.z  // r2.z <- <SmoothDistanceAttenuation_id78 return value>

#line 197
  mul r2.z, r2.z, r2.w  // r2.z <- attenuation

#line 238
  mul r9.xyz, r2.zzzz, r9.xyzx  // r9.x <- streams.lightColor_id39.x; r9.y <- streams.lightColor_id39.y; r9.z <- streams.lightColor_id39.z

#line 439
  dp3 r2.z, r3.xyzx, r8.xyzx
  max r2.z, r2.z, l(0.000100)  // r2.z <- streams.NdotL_id43
  mul r2.w, r2.z, r9.x  // r2.w <- streams.lightColorNdotL_id40.x

#line 431
  mov r5.xy, r4.zwzz
  add r5.xyw, r8.xyxz, r5.xyxz
  dp3 r6.w, r5.xywx, r5.xywx
  rsq r6.w, r6.w
  mul r5.xyw, r5.xyxw, r6.wwww  // r5.x <- streams.H_id68.x; r5.y <- streams.H_id68.y; r5.w <- streams.H_id68.z
  dp3 r6.w, r3.xyzx, r5.xywx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.NdotH_id69
  dp3 r5.x, r8.xyzx, r5.xywx
  max r5.x, r5.x, l(0.000100)  // r5.x <- streams.LdotH_id70

#line 272
  lt r8.xyz, l(0.800000, 0.500000, 0.200000, 0.000000), r2.zzzz
  movc r2.z, r8.y, l(0.800000), l(1.000000)  // r2.z <- <Compute_id247 return value>.x
  movc r2.z, r8.z, l(0.300000), r2.z
  movc r2.z, r8.y, l(0.800000), r2.z
  movc r2.z, r8.x, l(1.000000), r2.z
  and r2.z, r2.z, r8.z

#line 425
  mul r8.xyz, r6.xyzx, r9.xyzx
  mul r8.xyz, r2.zzzz, r8.xyzx

#line 521
  mad r8.xyz, r8.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r7.yzwy  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z

#line 191
  add r2.z, -r5.x, l(1.000000)
  mul r5.x, r2.z, r2.z
  mul r5.x, r5.x, r5.x
  mul r2.z, r2.z, r5.x  // r2.z <- <FresnelSchlick_id159 return value>.x

#line 218
  mul r5.x, r6.w, r6.w  // r5.x <- nDotH2
  mul r5.y, r5.x, r5.x  // r5.y <- nDotH4
  mad r5.w, r6.w, r6.w, l(-1.000000)
  div r5.x, r5.w, r5.x
  mul r5.xy, r5.xyxx, l(1.442695, 3.141593, 0.000000, 0.000000)
  exp r5.x, r5.x
  div r5.x, r5.x, r5.y  // r5.x <- <NormalDistributionBeckmann_id192 return value>

#line 412
  mul r2.z, r2.z, r5.x
  mul r2.z, r2.w, r2.z

#line 525
  mad r7.yzw, r2.zzzz, l(0.000000, 0.250000, 0.250000, 0.250000), r8.xxyz  // r7.y <- directLightingContribution.x; r7.z <- directLightingContribution.y; r7.w <- directLightingContribution.z

#line 511
  iadd r1.w, r1.w, l(1)

#line 527
endloop   // r7.x <- streams.lightIndex_id84

#line 401
ushr r0.w, r2.y, l(16)  // r0.w <- <GetMaxLightCount_id225 return value>

#line 535
mov r2.xyz, r0.xyzx  // r2.x <- streams.normalWS_id16.x; r2.y <- streams.normalWS_id16.y; r2.z <- streams.normalWS_id16.z
mov r2.w, r1.x  // r2.w <- streams.viewWS_id61.x
mov r3.xyz, v0.xyzx  // r3.x <- streams.PositionWS_id19.x; r3.y <- streams.PositionWS_id19.y; r3.z <- streams.PositionWS_id19.z
mov r3.w, r7.x  // r3.w <- streams.lightIndex_id84
mov r4.yz, r1.yyzy  // r4.y <- streams.viewWS_id61.y; r4.z <- streams.viewWS_id61.z
mov r5.xyz, cb0[0].xyzx  // r5.x <- streams.matDiffuseVisible_id62.x; r5.y <- streams.matDiffuseVisible_id62.y; r5.z <- streams.matDiffuseVisible_id62.z
mov r6.xyz, r7.yzwy  // r6.x <- directLightingContribution.x; r6.y <- directLightingContribution.y; r6.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r4.w, r1.w, r0.w
  breakc_nz r4.w
  if_nz r4.w
    break 
  endif 

#line 292
  ld r8.xyzw, r3.wwww, t1.xyzw  // r8.x <- realLightIndex
  iadd r3.w, r3.w, l(1)  // r3.w <- streams.lightIndex_id84
  ishl r4.w, r8.x, l(2)
  ld r8.xyzw, r4.wwww, t3.xyzw  // r8.x <- spotLight1.x; r8.y <- spotLight1.y; r8.z <- spotLight1.z

#line 298
  iadd r9.xyz, r4.wwww, l(1, 2, 3, 0)
  ld r10.xyzw, r9.xxxx, t3.xyzw  // r10.x <- spotLight2.x; r10.y <- spotLight2.y; r10.z <- spotLight2.z
  ld r11.xyzw, r9.yyyy, t3.xyzw  // r11.x <- spotLight3.x; r11.y <- spotLight3.y; r11.z <- spotLight3.z
  ld r9.xyzw, r9.zzzz, t3.xyzw  // r9.x <- spotLight4.x; r9.y <- spotLight4.y; r9.z <- spotLight4.z

#line 202
  add r8.xyz, -r3.xyzx, r8.xyzx  // r8.x <- lightVector.x; r8.y <- lightVector.y; r8.z <- lightVector.z
  dp3 r4.w, r8.xyzx, r8.xyzx
  sqrt r5.w, r4.w  // r5.w <- lightVectorLength
  div r8.xyz, r8.xyzx, r5.wwww  // r8.x <- lightVectorNorm.x; r8.y <- lightVectorNorm.y; r8.z <- lightVectorNorm.z

#line 185
  max r5.w, r4.w, l(0.000100)
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w  // r5.w <- attenuation

#line 165
  mul r4.w, r11.z, r4.w  // r4.w <- factor
  mad r4.w, -r4.w, r4.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- smoothFactor
  mul r4.w, r4.w, r4.w  // r4.w <- <SmoothDistanceAttenuation_id86 return value>

#line 186
  mul r4.w, r4.w, r5.w  // r4.w <- attenuation

#line 177
  dp3 r5.w, -r10.xyzx, r8.xyzx  // r5.w <- cd
  mad_sat r5.w, r5.w, r11.x, r11.y  // r5.w <- attenuation
  mul r5.w, r5.w, r5.w

#line 211
  mul r4.w, r4.w, r5.w  // r4.w <- attenuation
  mul r9.xyz, r4.wwww, r9.xyzx  // r9.x <- streams.lightColor_id39.x; r9.y <- streams.lightColor_id39.y; r9.z <- streams.lightColor_id39.z

#line 391
  dp3 r4.w, r2.xyzx, r8.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id43
  mul r5.w, r4.w, r9.x  // r5.w <- streams.lightColorNdotL_id40.x

#line 431
  mov r4.x, r2.w
  add r10.xyz, r8.xyzx, r4.xyzx
  dp3 r4.x, r10.xyzx, r10.xyzx
  rsq r4.x, r4.x
  mul r10.xyz, r4.xxxx, r10.xyzx  // r10.x <- streams.H_id68.x; r10.y <- streams.H_id68.y; r10.z <- streams.H_id68.z
  dp3 r4.x, r2.xyzx, r10.xyzx
  max r4.x, r4.x, l(0.000100)  // r4.x <- streams.NdotH_id69
  dp3 r6.w, r8.xyzx, r10.xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.LdotH_id70

#line 272
  lt r8.xyz, l(0.800000, 0.500000, 0.200000, 0.000000), r4.wwww
  movc r4.w, r8.y, l(0.800000), l(1.000000)  // r4.w <- <Compute_id247 return value>.x
  movc r4.w, r8.z, l(0.300000), r4.w
  movc r4.w, r8.y, l(0.800000), r4.w
  movc r4.w, r8.x, l(1.000000), r4.w
  and r4.w, r4.w, r8.z

#line 425
  mul r8.xyz, r5.xyzx, r9.xyzx
  mul r8.xyz, r4.wwww, r8.xyzx

#line 545
  mad r8.xyz, r8.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r6.xyzx  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z

#line 191
  add r4.w, -r6.w, l(1.000000)
  mul r6.w, r4.w, r4.w
  mul r6.w, r6.w, r6.w
  mul r4.w, r4.w, r6.w  // r4.w <- <FresnelSchlick_id159 return value>.x

#line 218
  mul r6.w, r4.x, r4.x  // r6.w <- nDotH2
  mul r8.w, r6.w, r6.w  // r8.w <- nDotH4
  mad r4.x, r4.x, r4.x, l(-1.000000)
  div r4.x, r4.x, r6.w
  mul r4.x, r4.x, l(1.442695)
  exp r4.x, r4.x
  mul r6.w, r8.w, l(3.141593)
  div r4.x, r4.x, r6.w  // r4.x <- <NormalDistributionBeckmann_id192 return value>

#line 412
  mul r4.x, r4.x, r4.w
  mul r4.x, r5.w, r4.x

#line 549
  mad r6.xyz, r4.xxxx, l(0.250000, 0.250000, 0.250000, 0.000000), r8.xyzx  // r6.x <- directLightingContribution.x; r6.y <- directLightingContribution.y; r6.z <- directLightingContribution.z

#line 535
  iadd r1.w, r1.w, l(1)

#line 551
endloop   // r3.w <- streams.lightIndex_id84

#line 559
mov r2.xyz, r0.xyzx
mov r2.w, r1.x
mov r3.yz, r1.yyzy  // r3.y <- streams.viewWS_id61.y; r3.z <- streams.viewWS_id61.z
mov r4.xyz, cb0[0].xyzx  // r4.x <- streams.matDiffuseVisible_id62.x; r4.y <- streams.matDiffuseVisible_id62.y; r4.z <- streams.matDiffuseVisible_id62.z
mov r5.xyz, r6.xyzx  // r5.x <- directLightingContribution.x; r5.y <- directLightingContribution.y; r5.z <- directLightingContribution.z
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, l(8)
  breakc_nz r1.w
  ige r1.w, r0.w, cb1[24].y
  if_nz r1.w
    break 
  endif 

#line 283
  ishl r1.w, r0.w, l(1)

#line 373
  dp3 r3.w, r2.xyzx, -cb1[r1.w + 25].xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id43
  mul r4.w, r3.w, cb1[r1.w + 26].x  // r4.w <- streams.lightColorNdotL_id40.x

#line 431
  mov r3.x, r2.w
  add r7.xyz, r3.xyzx, -cb1[r1.w + 25].xyzx
  dp3 r3.x, r7.xyzx, r7.xyzx
  rsq r3.x, r3.x
  mul r7.xyz, r3.xxxx, r7.xyzx  // r7.x <- streams.H_id68.x; r7.y <- streams.H_id68.y; r7.z <- streams.H_id68.z
  dp3 r3.x, r2.xyzx, r7.xyzx
  max r3.x, r3.x, l(0.000100)  // r3.x <- streams.NdotH_id69
  dp3 r5.w, -cb1[r1.w + 25].xyzx, r7.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.LdotH_id70

#line 272
  lt r7.xyz, l(0.800000, 0.500000, 0.200000, 0.000000), r3.wwww
  movc r3.w, r7.y, l(0.800000), l(1.000000)  // r3.w <- <Compute_id247 return value>.x
  movc r3.w, r7.z, l(0.300000), r3.w
  movc r3.w, r7.y, l(0.800000), r3.w
  movc r3.w, r7.x, l(1.000000), r3.w
  and r3.w, r3.w, r7.z

#line 425
  mul r7.xyz, r4.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000)
  mul r7.xyz, r7.xyzx, cb1[r1.w + 26].xyzx  // r7.x <- result.x; r7.y <- result.y; r7.z <- result.z

#line 569
  mad r7.xyz, r7.xyzx, r3.wwww, r5.xyzx  // r7.x <- directLightingContribution.x; r7.y <- directLightingContribution.y; r7.z <- directLightingContribution.z

#line 191
  add r1.w, -r5.w, l(1.000000)
  mul r3.w, r1.w, r1.w
  mul r3.w, r3.w, r3.w
  mul r1.w, r1.w, r3.w  // r1.w <- <FresnelSchlick_id159 return value>.x

#line 218
  mul r3.w, r3.x, r3.x  // r3.w <- nDotH2
  mul r5.w, r3.w, r3.w  // r5.w <- nDotH4
  mad r3.x, r3.x, r3.x, l(-1.000000)
  div r3.x, r3.x, r3.w
  mul r3.x, r3.x, l(1.442695)
  exp r3.x, r3.x
  mul r3.w, r5.w, l(3.141593)
  div r3.x, r3.x, r3.w  // r3.x <- <NormalDistributionBeckmann_id192 return value>

#line 412
  mul r1.w, r1.w, r3.x
  mul r1.w, r4.w, r1.w

#line 573
  mad r5.xyz, r1.wwww, l(0.250000, 0.250000, 0.250000, 0.000000), r7.xyzx  // r5.x <- directLightingContribution.x; r5.y <- directLightingContribution.y; r5.z <- directLightingContribution.z

#line 559
  iadd r0.w, r0.w, l(1)

#line 575
endloop 

#line 272
lt r0.xyz, l(0.800000, 0.500000, 0.200000, 0.000000), cb1[41].xxxx
movc r0.w, r0.y, l(0.800000), l(1.000000)  // r0.w <- <Compute_id247 return value>.x
movc r0.w, r0.z, l(0.300000), r0.w
movc r0.y, r0.y, l(0.800000), r0.w  // r0.y <- <Compute_id247 return value>.x
movc r0.x, r0.x, l(1.000000), r0.y  // r0.x <- <Compute_id247 return value>.x
and r0.x, r0.x, r0.z

#line 362
mul r0.xyz, r0.xxxx, cb0[0].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id359 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id359 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id359 return value>.z

#line 590
mad r0.xyz, r5.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx  // r0.x <- streams.shadingColor_id66.x; r0.y <- streams.shadingColor_id66.y; r0.z <- streams.shadingColor_id66.z

#line 497
mad o0.xyz, cb0[1].xyzx, cb0[2].xxxx, r0.xyzx

#line 727
mov o0.w, cb0[0].w
ret 
// Approximately 230 instruction slots used
***************************
*************************/
const static uint ClusterSize2_id82 = 64;
const static int TMaxLightCount_id95 = 8;
const static bool TIsEnergyConservative_id168 = false;
const static float FakeNDotL_id169 = 0;
const static bool IsBlackAndWhite_id167 = false;
static const float PI_id172 = 3.14159265358979323846;
const static bool TUseAlphaFromEmissive_id179 = false;
Texture3D<uint2> LightClusters_id85;
Buffer<uint> LightIndices_id86;
Buffer<float4> PointLights_id90;
Buffer<float4> SpotLights_id93;
struct PS_STREAMS 
{
    float3 normalWS_id16;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
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
    float4 constantColor_id98;
    float4 constantColor_id161;
    float constantFloat_id163;
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
    float3 AmbientLight_id97;
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
float SmoothDistanceAttenuation_id86(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id78(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float GetAngleAttenuation_id88(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id87(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id86(d2, lightInvSquareRadius);
    return attenuation;
}
float3 FresnelSchlick_id159(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float GetDistanceAttenuation_id79(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id78(d2, lightInvSquareRadius);
    return attenuation;
}
void ProcessLight_id89(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = light.AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -light.DirectionWS;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id87(lightVector, lightInvSquareRadius);
    attenuation *= GetAngleAttenuation_id88(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
float NormalDistributionBeckmann_id192(float alphaR, float nDotH)
{
    float alphaR2 = max(alphaR * alphaR, 0.1);
    float nDotH2 = nDotH * nDotH;
    float nDotH4 = nDotH2 * nDotH2;
    return exp((nDotH2 - 1) / (alphaR2 * nDotH2)) / (PI_id172 * alphaR2 * nDotH4);
}
float VisibilityImplicit_id178(float nDotL, float nDotV)
{
    return 1.0f;
}
float3 FresnelSchlick_id165(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id159(f0, 1.0f, lOrVDotH);
}
void ProcessLight_id81(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id79(lightVector, lightInvSquareRadius);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id193(float3 specularColor, float alphaR, float nDotV)
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
float3 Compute_id247(float lightIn)
{

    {
        if (lightIn > 0.8)
            return float3(1, 1, 1);
        if (lightIn > 0.5)
            return float3(0.8f, 0.8f, 0.8f);
        if (lightIn > 0.2)
            return float3(0.3f, 0.3f, 0.3f);
    }
    return 0;
}
void ComputeShadow_id93(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id92(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id39 = Lights_id96[lightIndex].Color;
    streams.lightDirectionWS_id38 = -Lights_id96[lightIndex].DirectionWS;
}
void ComputeShadow_id85(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id84(inout PS_STREAMS streams, int lightIndexIgnored)
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
    ProcessLight_id89(streams, spotLight);
}
float Compute_id311(inout PS_STREAMS streams)
{
    return NormalDistributionBeckmann_id192(streams.alphaRoughness_id63, streams.NdotH_id69);
}
float Compute_id281(inout PS_STREAMS streams)
{
    return VisibilityImplicit_id178(streams.NdotL_id43, streams.NdotV_id65);
}
float3 Compute_id252(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id165(f0, streams.LdotH_id70);
}
void ComputeShadow_id77(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id76(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id86.Load(streams.lightIndex_id84);
    streams.lightIndex_id84++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id90.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id90.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id81(streams, pointLight);
}
void PrepareLightData_id80(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id79.y / (projectedDepth - ZProjection_id79.x);
    int2 shadingPosition = int2(streams.ShadingPosition_id0.xy);
    int slice = int(max(log2(depth * ClusterDepthScale_id87 + ClusterDepthBias_id88), 0));
    streams.lightData_id83 = LightClusters_id85.Load(int4(shadingPosition / ClusterSize2_id82, slice, 0));
    streams.lightIndex_id84 = streams.lightData_id83.x;
}
float GetFilterSquareRoughnessAdjustment_id124(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id202()
{
}
float3 ComputeEnvironmentLightContribution_id391(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id193(specularColor, streams.alphaRoughness_id63, streams.NdotV_id65) * streams.envLightSpecularColor_id42;
}
float3 ComputeEnvironmentLightContribution_id359(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    float3 celLight = Compute_id247(streams.envLightDiffuseColor_id41);
    return diffuseColor * celLight;
}
void PrepareEnvironmentLight_id240(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id97 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareDirectLight_id232(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id92(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id93(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id233()
{
    return LightCount_id94;
}
int GetMaxLightCount_id234()
{
    return TMaxLightCount_id95;
}
void PrepareDirectLights_id230()
{
}
void PrepareDirectLight_id223(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id84(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id85(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id226(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
int GetMaxLightCount_id225(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
void PrepareDirectLights_id221()
{
}
float3 ComputeDirectLightContribution_id390(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    float3 fresnel = Compute_id252(streams, specularColor);
    float geometricShadowing = Compute_id281(streams);
    float normalDistribution = Compute_id311(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeDirectLightContribution_id358(inout PS_STREAMS streams)
{
    float oldLightColorNdotL = streams.lightColorNdotL_id40;
    float3 celLight = float3(1, 1, 1);

    {
        celLight = Compute_id247(streams.NdotL_id43);
        streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.lightDirectAmbientOcclusion_id44;
    }
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    float3 result = diffuseColor / PI_id172 * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.x;
    streams.lightColorNdotL_id40 = oldLightColorNdotL;
    return result * celLight;
}
void PrepareMaterialPerDirectLight_id27(inout PS_STREAMS streams)
{
    streams.H_id68 = normalize(streams.viewWS_id61 + streams.lightDirectionWS_id38);
    streams.NdotH_id69 = max(dot(streams.normalWS_id16, streams.H_id68), 0.0001f);
    streams.LdotH_id70 = max(dot(streams.lightDirectionWS_id38, streams.H_id68), 0.0001f);
    streams.VdotH_id71 = streams.LdotH_id70;
}
void PrepareDirectLight_id213(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id76(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id77(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id217(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
int GetMaxLightCount_id216(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
void PrepareDirectLights_id215(inout PS_STREAMS streams)
{
    PrepareLightData_id80(streams);
}
void PrepareMaterialForLightingAndShading_id195(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id124(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id194(inout PS_STREAMS streams)
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
float4 Compute_id245()
{
    return float4(constantFloat_id163, constantFloat_id163, constantFloat_id163, constantFloat_id163);
}
float4 Compute_id243()
{
    return constantColor_id161;
}
float4 Compute_id241()
{
    return constantColor_id98;
}
void ResetStream_id205(inout PS_STREAMS streams)
{
    ResetStream_id202();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id422(inout PS_STREAMS streams)
{
    streams.shadingColor_id66 += streams.matEmissive_id56.rgb * streams.matEmissiveIntensity_id57;
}
void Compute_id421(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id19(streams.matNormal_id45);
    ResetLightStream_id194(streams);
    PrepareMaterialForLightingAndShading_id195(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id215(streams);
        const int maxLightCount = GetMaxLightCount_id216(streams);
        int count = GetLightCount_id217(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id213(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id358(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id390(streams);
            }
        }
    }

    {
        PrepareDirectLights_id221();
        const int maxLightCount = GetMaxLightCount_id225(streams);
        int count = GetLightCount_id226(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id223(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id358(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id390(streams);
            }
        }
    }

    {
        PrepareDirectLights_id230();
        const int maxLightCount = GetMaxLightCount_id234();
        int count = GetLightCount_id233();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id232(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id358(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id390(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id240(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id359(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id391(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id172 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id406(inout PS_STREAMS streams)
{
    streams.matEmissiveIntensity_id57 = Compute_id245().r;
}
void Compute_id401(inout PS_STREAMS streams)
{
    streams.matEmissive_id56 = Compute_id243().rgba;
}
void Compute_id396(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id241();
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id207(inout PS_STREAMS streams)
{
    ResetStream_id205(streams);
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
void Compute_id73(inout PS_STREAMS streams)
{

    {
        Compute_id396(streams);
    }

    {
        Compute_id401(streams);
    }

    {
        Compute_id406(streams);
    }

    {
        Compute_id421(streams);
    }

    {
        Compute_id422(streams);
    }
}
void ResetStream_id72(inout PS_STREAMS streams)
{
    ResetStream_id207(streams);
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
    ResetStream_id72(streams);
    Compute_id73(streams);
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
    __output__.normalWS_id16 = streams.normalWS_id16;
    return __output__;
}
