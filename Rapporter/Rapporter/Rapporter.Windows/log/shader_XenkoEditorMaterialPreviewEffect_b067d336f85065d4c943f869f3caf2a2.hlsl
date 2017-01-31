/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoEditorMaterialPreviewEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.DiffuseMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceNormalMap<true,true,false> [{normalMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.NormalMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale.i1,Material.TextureOffset.i1>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = mixin ComputeColorAdd3ds [{color1 = ComputeColorTextureScaledOffsetDynamicSampler<Material.GlossinessMap,TEXCOORD0,Material.Sampler.i0,r,Material.TextureScale.i2,Material.TextureOffset.i2>}, {color2 = ComputeColorConstantFloatLink<Material.GlossinessValue>}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecular,rgb> [{computeColorSource = ComputeColorConstantColorLink<Material.SpecularValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecularIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.SpecularIntensityValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Material.HasNormalMap: True
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
cbuffer PerMaterial [Size: 96]
@C    scale_id159 => Material.TextureScale
@C    offset_id160 => Material.TextureOffset
@C    scale_id164 => Material.TextureScale.i1
@C    offset_id165 => Material.TextureOffset.i1
@C    scale_id172 => Material.TextureScale.i2
@C    offset_id173 => Material.TextureOffset.i2
@C    constantFloat_id174 => Material.GlossinessValue
@C    constantColor_id182 => Material.SpecularValue
@C    constantFloat_id184 => Material.SpecularIntensityValue
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
@R    Texture_id162 => Material.NormalMap [Stage: None, Slot: (-1--1)]
@R    Texture_id162 => Material.NormalMap [Stage: None, Slot: (-1--1)]
@R    Texture_id170 => Material.GlossinessMap [Stage: None, Slot: (-1--1)]
@R    Texture_id170 => Material.GlossinessMap [Stage: None, Slot: (-1--1)]
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
@R    Texture_id162 => Material.NormalMap [Stage: Pixel, Slot: (1-1)]
@R    Texture_id170 => Material.GlossinessMap [Stage: Pixel, Slot: (2-2)]
@R    LightClusters_id143 => LightClustered.LightClusters [Stage: Pixel, Slot: (3-3)]
@R    LightIndices_id144 => LightClustered.LightIndices [Stage: Pixel, Slot: (4-4)]
@R    PointLights_id148 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (5-5)]
@R    SpotLights_id151 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (6-6)]
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
@S    MaterialSurfaceNormalMap => 9d09de7bfdbcadbc973dbfcc57934c02
@S    MaterialSurfaceGlossinessMap => fb8774941dd1a7b0ced77715861382a4
@S    ComputeColorAdd3ds => 0d65d2008f4e34b23415e745fe4a26e5
@S    BlendUtils => 15eb19bd390134e12d394f2ac18f8d02
@S    ComputeColorConstantFloatLink => a459500fd7f6c5988997e81bf766f988
@S    MaterialSurfaceSetStreamFromComputeColor => 1d00f7d823647b307a55871a0b3eba09
@S    IMaterialSurfaceVertex => 8e13e0524d4025cb811c673aeb77f45b
@S    MaterialVertexStream => fe2d4e2abe57231a93785fe59684b199
@S    MaterialDisplacementStream => 5112948b0773a844410cc7c3df78184a
@S    IMaterialSurfaceDomain => a787b7e989be07714532cd1ffc35ef2a
@S    MaterialDomainStream => 8be905888c6f3153139bc1fa900fdf5f
@S    MaterialTessellationStream => 87652904dbe93d91999520c7e41f52a1
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
@G    Vertex => a630fdc0753ef0f08d67ec0b3574ed5c
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
// TEXCOORD                 0   xy          1     NONE   float   xy  
// NORMAL                   0   xyz         2     NONE   float   xyz 
// TANGENT                  0   xyzw        3     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// TEXCOORD                 0   xy          2     NONE   float   xy  
// NORMAL                   0   xyz         3     NONE   float   xyz 
// TANGENT                  0   xyzw        4     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[4], immediateIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xy
dcl_input v2.xyz
dcl_input v3.xyzw
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xy
dcl_output o3.xyz
dcl_output o4.xyzw
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.TexCoord_id124.x; v1.y <- __input__.TexCoord_id124.y; 
//   v2.x <- __input__.meshNormal_id14.x; v2.y <- __input__.meshNormal_id14.y; v2.z <- __input__.meshNormal_id14.z; 
//   v3.x <- __input__.meshTangent_id15.x; v3.y <- __input__.meshTangent_id15.y; v3.z <- __input__.meshTangent_id15.z; v3.w <- __input__.meshTangent_id15.w; 
//   o4.x <- <VSMain return value>.meshTangent_id15.x; o4.y <- <VSMain return value>.meshTangent_id15.y; o4.z <- <VSMain return value>.meshTangent_id15.z; o4.w <- <VSMain return value>.meshTangent_id15.w; 
//   o3.x <- <VSMain return value>.meshNormal_id14.x; o3.y <- <VSMain return value>.meshNormal_id14.y; o3.z <- <VSMain return value>.meshNormal_id14.z; 
//   o2.x <- <VSMain return value>.TexCoord_id124.x; o2.y <- <VSMain return value>.TexCoord_id124.y; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 742 "C:\_Rapporter-Xenko3D\Rapporter\Rapporter\Rapporter.Windows\log\shader_XenkoEditorMaterialPreviewEffect_b067d336f85065d4c943f869f3caf2a2.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 838
mov o0.xyzw, r0.xyzw

#line 732
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw
dp4 o1.w, r0.xyzw, cb1[19].xyzw

#line 838
mov o2.xy, v1.xyxx
mov o3.xyz, v2.xyzx
mov o4.xyzw, v3.xyzw
ret 
// Approximately 13 instruction slots used
@G    Pixel => a0d8a230c15d955e44198a06807a7cd9
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
//   float2 scale_id159;                // Offset:    0 Size:     8
//   float2 offset_id160;               // Offset:    8 Size:     8
//   float2 scale_id164;                // Offset:   16 Size:     8
//   float2 offset_id165;               // Offset:   24 Size:     8
//   float2 scale_id172;                // Offset:   32 Size:     8
//   float2 offset_id173;               // Offset:   40 Size:     8
//   float constantFloat_id174;         // Offset:   48 Size:     4
//   float4 constantColor_id182;        // Offset:   64 Size:    16
//   float constantFloat_id184;         // Offset:   80 Size:     4
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
// Texture_id162                     texture  float4          2d    1        1
// Texture_id170                     texture  float4          2d    2        1
// LightClusters_id143               texture   uint2          3d    3        1
// LightIndices_id144                texture    uint         buf    4        1
// PointLights_id148                 texture  float4         buf    5        1
// SpotLights_id151                  texture  float4         buf    6        1
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
// TEXCOORD                 0   xy          2     NONE   float   xy  
// NORMAL                   0   xyz         3     NONE   float   xyz 
// TANGENT                  0   xyzw        4     NONE   float   xyzw
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
dcl_constantbuffer cb1[6], immediateIndexed
dcl_constantbuffer cb2[42], dynamicIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture3d (uint,uint,uint,uint) t3
dcl_resource_buffer (uint,uint,uint,uint) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_resource_buffer (float,float,float,float) t6
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.xyz, position
dcl_input_ps linear v2.xy
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyzw
dcl_output o0.xyzw
dcl_temps 16
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.TexCoord_id124.x; v2.y <- __input__.TexCoord_id124.y; 
//   v3.x <- __input__.meshNormal_id14.x; v3.y <- __input__.meshNormal_id14.y; v3.z <- __input__.meshNormal_id14.z; 
//   v4.x <- __input__.meshTangent_id15.x; v4.y <- __input__.meshTangent_id15.y; v4.z <- __input__.meshTangent_id15.z; v4.w <- __input__.meshTangent_id15.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 723 "C:\_Rapporter-Xenko3D\Rapporter\Rapporter\Rapporter.Windows\log\shader_XenkoEditorMaterialPreviewEffect_b067d336f85065d4c943f869f3caf2a2.hlsl"
dp3 r0.x, v3.xyzx, v3.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v3.xyzx  // r0.x <- streams.meshNormal_id14.x; r0.y <- streams.meshNormal_id14.y; r0.z <- streams.meshNormal_id14.z
dp3 r0.w, v4.xyzx, v4.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v4.xyzx  // r1.x <- tangent.x; r1.y <- tangent.y; r1.z <- tangent.z
mul r2.xyz, r0.zxyz, r1.yzxy
mad r2.xyz, r0.yzxy, r1.zxyz, -r2.xyzx
mul r2.xyz, r2.xyzx, v4.wwww  // r2.x <- bitangent.x; r2.y <- bitangent.y; r2.z <- bitangent.z

#line 759
dp3 r3.x, r1.xyzx, cb0[0].xyzx  // r3.x <- streams.tangentToWorld_id17._m00
dp3 r4.x, r1.xyzx, cb0[1].xyzx  // r4.x <- streams.tangentToWorld_id17._m01
dp3 r1.x, r1.xyzx, cb0[2].xyzx  // r1.x <- streams.tangentToWorld_id17._m02
dp3 r3.y, r2.xyzx, cb0[0].xyzx  // r3.y <- streams.tangentToWorld_id17._m10
dp3 r4.y, r2.xyzx, cb0[1].xyzx  // r4.y <- streams.tangentToWorld_id17._m11
dp3 r1.y, r2.xyzx, cb0[2].xyzx  // r1.y <- streams.tangentToWorld_id17._m12
dp3 r3.z, r0.xyzx, cb0[0].xyzx  // r3.z <- streams.tangentToWorld_id17._m20
dp3 r4.z, r0.xyzx, cb0[1].xyzx  // r4.z <- streams.tangentToWorld_id17._m21
dp3 r1.z, r0.xyzx, cb0[2].xyzx  // r1.z <- streams.tangentToWorld_id17._m22

#line 746
add r0.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx  // r0.x <- streams.viewWS_id61.x; r0.y <- streams.viewWS_id61.y; r0.z <- streams.viewWS_id61.z

#line 522
mad r2.xy, v2.xyxx, cb1[0].xyxx, cb1[0].zwzz
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.xyxx, t0.xyzw, s0  // r2.x <- <Compute_id237 return value>.x; r2.y <- <Compute_id237 return value>.y; r2.z <- <Compute_id237 return value>.z; r2.w <- <Compute_id237 return value>.w

#line 518
mad r5.xy, v2.xyxx, cb1[1].xyxx, cb1[1].zwzz
sample_indexable(texture2d)(float,float,float,float) r5.xy, r5.xyxx, t1.xyzw, s0  // r5.x <- <Compute_id239 return value>.x; r5.y <- <Compute_id239 return value>.y

#line 641
mad r5.xy, r5.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r5.x <- normal.x; r5.y <- normal.y

#line 645
dp2 r0.w, r5.xyxx, r5.xyxx
add r0.w, -r0.w, l(1.000000)
max r0.w, r0.w, l(0.000000)
sqrt r5.z, r0.w  // r5.z <- normal.z

#line 380
mad r6.xy, v2.xyxx, cb1[2].xyxx, cb1[2].zwzz
sample_indexable(texture2d)(float,float,float,float) r0.w, r6.xyxx, t2.yzwx, s0  // r0.w <- <Compute_id241 return value>.x

#line 513
add r1.w, r0.w, cb1[3].x  // r1.w <- interColor.x

#line 372
mul r3.w, r0.w, cb1[3].x
add r4.w, -r0.w, l(1.000000)
mul r5.w, cb1[3].x, cb1[3].x
mul r4.w, r4.w, r5.w
mad r1.w, r3.w, r1.w, r4.w
add r3.w, -cb1[3].x, l(1.000000)
mul r0.w, r0.w, r0.w
mad r0.w, r0.w, r3.w, r1.w  // r0.w <- <BasicBlend_id433 return value>.x

#line 499
dp3 r3.y, r5.xyzx, r3.xyzx
dp3 r3.z, r5.xyzx, r4.xyzx
dp3 r3.w, r5.xyzx, r1.xyzx
dp3 r1.x, r3.yzwy, r3.yzwy
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, r3.yzwy  // r1.x <- streams.normalWS_id16.x; r1.y <- streams.normalWS_id16.y; r1.z <- streams.normalWS_id16.z

#line 481
mul r3.xyz, cb1[4].xyzx, cb1[5].xxxx  // r3.x <- streams.matSpecularVisible_id64.x; r3.y <- streams.matSpecularVisible_id64.y; r3.z <- streams.matSpecularVisible_id64.z
dp3 r1.w, r1.xyzx, r0.xyzx
max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotV_id65
add r0.w, -r0.w, l(1.000000)  // r0.w <- roughness

#line 364
dp3 r3.w, r5.xyzx, r5.xyzx
sqrt r4.x, r3.w  // r4.x <- r
lt r4.y, r4.x, l(1.000000)
add r4.z, -r3.w, l(1.000000)
mul r4.z, r4.z, l(0.500000)
mul r3.w, r3.w, r4.x
mad r3.w, r4.x, l(3.000000), -r3.w
div r3.w, r4.z, r3.w  // r3.w <- roughnessAdjust
and r3.w, r3.w, r4.y

#line 485
mad r0.w, r0.w, r0.w, r3.w
max r0.w, r0.w, l(0.001000)  // r0.w <- streams.alphaRoughness_id63

#line 356
add r3.w, v1.z, -cb2[22].z
div r3.w, cb2[22].w, r3.w  // r3.w <- depth
ftoi r4.xy, v1.xyxx  // r4.x <- shadingPosition.x; r4.y <- shadingPosition.y
mad r3.w, r3.w, cb2[23].w, cb2[24].x
log r3.w, r3.w
max r3.w, r3.w, l(0.000000)
ftoi r5.z, r3.w  // r5.z <- slice
ushr r5.xy, r4.xyxx, l(6, 6, 0, 0)
mov r5.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r4.xy, r5.xyzw, t3.xyzw  // r4.x <- streams.lightData_id141.x; r4.y <- streams.lightData_id141.y

#line 471
and r3.w, r4.y, l(0x0000ffff)  // r3.w <- <GetMaxLightCount_id212 return value>

#line 541
mov r5.xyz, v0.xyzx  // r5.x <- streams.PositionWS_id19.x; r5.y <- streams.PositionWS_id19.y; r5.z <- streams.PositionWS_id19.z
mov r5.w, r0.x  // r5.w <- streams.viewWS_id61.x
mov r6.yz, r0.yyzy  // r6.y <- streams.viewWS_id61.y; r6.z <- streams.viewWS_id61.z
mov r7.xy, r2.xyxx  // r7.x <- streams.matDiffuseVisible_id62.x; r7.y <- streams.matDiffuseVisible_id62.y
mov r8.x, r2.z  // r8.x <- streams.matDiffuseVisible_id62.z
mov r8.yzw, r3.xxyz  // r8.y <- streams.matSpecularVisible_id64.x; r8.z <- streams.matSpecularVisible_id64.y; r8.w <- streams.matSpecularVisible_id64.z
mov r4.z, r0.w  // r4.z <- streams.alphaRoughness_id63
mov r9.xyz, r1.xyzx  // r9.x <- streams.normalWS_id16.x; r9.y <- streams.normalWS_id16.y; r9.z <- streams.normalWS_id16.z
mov r10.y, r1.w  // r10.y <- streams.NdotV_id65
mov r10.x, r4.x  // r10.x <- streams.lightIndex_id142
mov r11.xyz, l(0,0,0,0)  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r4.w, l(0)  // r4.w <- i
loop 
  ige r6.w, r4.w, r3.w
  breakc_nz r6.w
  if_nz r6.w
    break 
  endif 

#line 343
  ld_indexable(buffer)(uint,uint,uint,uint) r6.w, r10.xxxx, t4.yzwx  // r6.w <- realLightIndex
  iadd r10.x, r10.x, l(1)  // r10.x <- streams.lightIndex_id142
  ishl r7.w, r6.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r12.xyzw, r7.wwww, t5.xyzw  // r12.x <- pointLight1.x; r12.y <- pointLight1.y; r12.z <- pointLight1.z; r12.w <- pointLight1.w
  bfi r6.w, l(31), l(1), r6.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyz, r6.wwww, t5.xyzw  // r13.x <- pointLight2.x; r13.y <- pointLight2.y; r13.z <- pointLight2.z

#line 265
  add r12.xyz, -r5.xyzx, r12.xyzx  // r12.x <- lightVector.x; r12.y <- lightVector.y; r12.z <- lightVector.z
  dp3 r6.w, r12.xyzx, r12.xyzx
  sqrt r7.w, r6.w  // r7.w <- lightVectorLength
  div r12.xyz, r12.xyzx, r7.wwww  // r12.x <- lightVectorNorm.x; r12.y <- lightVectorNorm.y; r12.z <- lightVectorNorm.z

#line 231
  max r7.w, r6.w, l(0.000100)
  div r7.w, l(1.000000, 1.000000, 1.000000, 1.000000), r7.w  // r7.w <- attenuation

#line 201
  mul r6.w, r12.w, r6.w  // r6.w <- factor
  mad r6.w, -r6.w, r6.w, l(1.000000)
  max r6.w, r6.w, l(0.000000)  // r6.w <- smoothFactor
  mul r6.w, r6.w, r6.w  // r6.w <- <SmoothDistanceAttenuation_id76 return value>

#line 232
  mul r6.w, r6.w, r7.w  // r6.w <- attenuation

#line 271
  mul r13.xyz, r6.wwww, r13.xyzx  // r13.x <- streams.lightColor_id39.x; r13.y <- streams.lightColor_id39.y; r13.z <- streams.lightColor_id39.z

#line 461
  dp3 r6.w, r9.xyzx, r12.xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.NdotL_id43
  mul r13.xyz, r6.wwww, r13.xyzx  // r13.x <- streams.lightColorNdotL_id40.x; r13.y <- streams.lightColorNdotL_id40.y; r13.z <- streams.lightColorNdotL_id40.z

#line 453
  mov r6.x, r5.w
  add r14.xyz, r12.xyzx, r6.xyzx
  dp3 r6.x, r14.xyzx, r14.xyzx
  rsq r6.x, r6.x
  mul r14.xyz, r6.xxxx, r14.xyzx  // r14.x <- streams.H_id68.x; r14.y <- streams.H_id68.y; r14.z <- streams.H_id68.z
  dp3 r6.x, r9.xyzx, r14.xyzx
  max r6.x, r6.x, l(0.000100)  // r6.x <- streams.NdotH_id69
  dp3 r7.w, r12.xyzx, r14.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.LdotH_id70

#line 449
  mov r7.z, r8.x
  mul r12.xyz, r13.xyzx, r7.xyzx

#line 551
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 226
  add r14.xyz, -r8.yzwy, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r7.z, -r7.w, l(1.000000)
  mul r7.w, r7.z, r7.z
  mul r7.w, r7.w, r7.w
  mul r7.z, r7.w, r7.z
  mad r14.xyz, r14.xyzx, r7.zzzz, r8.yzwy  // r14.x <- <FresnelSchlick_id160 return value>.x; r14.y <- <FresnelSchlick_id160 return value>.y; r14.z <- <FresnelSchlick_id160 return value>.z

#line 221
  mul r7.z, r4.z, l(0.500000)  // r7.z <- k
  mad r7.w, -r4.z, l(0.500000), l(1.000000)
  mad r9.w, r6.w, r7.w, r7.z
  div r9.w, r6.w, r9.w  // r9.w <- <VisibilityhSchlickGGX_id178 return value>
  mad r7.z, r10.y, r7.w, r7.z
  div r7.z, r10.y, r7.z  // r7.z <- <VisibilityhSchlickGGX_id178 return value>

#line 257
  mul r7.z, r7.z, r9.w
  mul r6.w, r10.y, r6.w
  div r6.w, r7.z, r6.w  // r6.w <- <VisibilitySmithSchlickGGX_id180 return value>

#line 252
  mul r7.z, r4.z, r4.z  // r7.z <- alphaR2
  mul r6.x, r6.x, r6.x
  mad r7.w, r4.z, r4.z, l(-1.000000)
  mad r6.x, r6.x, r7.w, l(1.000000)
  max r6.x, r6.x, l(0.000100)
  mul r6.x, r6.x, r6.x
  mul r6.x, r6.x, l(3.141593)
  div r6.x, r7.z, r6.x  // r6.x <- <NormalDistributionGGX_id194 return value>

#line 443
  mul r14.xyz, r6.wwww, r14.xyzx
  mul r14.xyz, r6.xxxx, r14.xyzx
  mul r13.xyz, r13.xyzx, r14.xyzx

#line 555
  mad r11.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 541
  iadd r4.w, r4.w, l(1)

#line 557
endloop   // r10.x <- streams.lightIndex_id142

#line 432
ushr r3.w, r4.y, l(16)  // r3.w <- <GetMaxLightCount_id221 return value>

#line 565
mov r4.xyz, v0.xyzx  // r4.x <- streams.PositionWS_id19.x; r4.y <- streams.PositionWS_id19.y; r4.z <- streams.PositionWS_id19.z
mov r4.w, r10.x  // r4.w <- streams.lightIndex_id142
mov r5.xyz, r0.xyzx  // r5.x <- streams.viewWS_id61.x; r5.y <- streams.viewWS_id61.y; r5.z <- streams.viewWS_id61.z
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id16.x; r6.y <- streams.normalWS_id16.y; r6.z <- streams.normalWS_id16.z
mov r7.xyz, r2.xyzx  // r7.z <- streams.matDiffuseVisible_id62.z
mov r8.xyz, r3.xyzx  // r8.x <- streams.matSpecularVisible_id64.x; r8.y <- streams.matSpecularVisible_id64.y; r8.z <- streams.matSpecularVisible_id64.z
mov r9.x, r0.w  // r9.x <- streams.alphaRoughness_id63
mov r9.z, r1.w  // r9.z <- streams.NdotV_id65
mov r10.yzw, r11.xxyz  // r10.y <- directLightingContribution.x; r10.z <- directLightingContribution.y; r10.w <- directLightingContribution.z
mov r5.w, l(0)  // r5.w <- i
loop 
  ige r6.w, r5.w, r3.w
  breakc_nz r6.w
  if_nz r6.w
    break 
  endif 

#line 312
  ld_indexable(buffer)(uint,uint,uint,uint) r6.w, r4.wwww, t4.yzwx  // r6.w <- realLightIndex
  iadd r4.w, r4.w, l(1)  // r4.w <- streams.lightIndex_id142
  ishl r7.w, r6.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r12.xyz, r7.wwww, t6.xyzw  // r12.x <- spotLight1.x; r12.y <- spotLight1.y; r12.z <- spotLight1.z

#line 318
  bfi r13.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r6.wwww, l(1, 2, 3, 0)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r13.xxxx, t6.xyzw  // r14.x <- spotLight2.x; r14.y <- spotLight2.y; r14.z <- spotLight2.z
  ld_indexable(buffer)(float,float,float,float) r13.xyw, r13.yyyy, t6.xywz  // r13.x <- spotLight3.x; r13.y <- spotLight3.y; r13.w <- spotLight3.z
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r13.zzzz, t6.xyzw  // r15.x <- spotLight4.x; r15.y <- spotLight4.y; r15.z <- spotLight4.z

#line 237
  add r12.xyz, -r4.xyzx, r12.xyzx  // r12.x <- lightVector.x; r12.y <- lightVector.y; r12.z <- lightVector.z
  dp3 r6.w, r12.xyzx, r12.xyzx
  sqrt r7.w, r6.w  // r7.w <- lightVectorLength
  div r12.xyz, r12.xyzx, r7.wwww  // r12.x <- lightVectorNorm.x; r12.y <- lightVectorNorm.y; r12.z <- lightVectorNorm.z

#line 215
  max r7.w, r6.w, l(0.000100)
  div r7.w, l(1.000000, 1.000000, 1.000000, 1.000000), r7.w  // r7.w <- attenuation

#line 195
  mul r6.w, r13.w, r6.w  // r6.w <- factor
  mad r6.w, -r6.w, r6.w, l(1.000000)
  max r6.w, r6.w, l(0.000000)  // r6.w <- smoothFactor
  mul r6.w, r6.w, r6.w  // r6.w <- <SmoothDistanceAttenuation_id84 return value>

#line 216
  mul r6.w, r6.w, r7.w  // r6.w <- attenuation

#line 207
  dp3 r7.w, -r14.xyzx, r12.xyzx  // r7.w <- cd
  mad_sat r7.w, r7.w, r13.x, r13.y  // r7.w <- attenuation
  mul r7.w, r7.w, r7.w

#line 246
  mul r6.w, r6.w, r7.w  // r6.w <- attenuation
  mul r12.xyz, r6.wwww, r15.xyzx  // r12.x <- streams.lightColor_id39.x; r12.y <- streams.lightColor_id39.y; r12.z <- streams.lightColor_id39.z

#line 422
  dp3 r6.w, r6.xyzx, -r14.xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.NdotL_id43
  mul r12.xyz, r6.wwww, r12.xyzx  // r12.x <- streams.lightColorNdotL_id40.x; r12.y <- streams.lightColorNdotL_id40.y; r12.z <- streams.lightColorNdotL_id40.z

#line 453
  add r13.xyz, r5.xyzx, -r14.xyzx
  dp3 r7.w, r13.xyzx, r13.xyzx
  rsq r7.w, r7.w
  mul r13.xyz, r7.wwww, r13.xyzx  // r13.x <- streams.H_id68.x; r13.y <- streams.H_id68.y; r13.z <- streams.H_id68.z
  dp3 r7.w, r6.xyzx, r13.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotH_id69
  dp3 r8.w, -r14.xyzx, r13.xyzx
  max r8.w, r8.w, l(0.000100)  // r8.w <- streams.LdotH_id70

#line 449
  mul r13.xyz, r7.xyzx, r12.xyzx

#line 575
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.yzwy  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 226
  add r14.xyz, -r8.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r8.w, -r8.w, l(1.000000)
  mul r9.y, r8.w, r8.w
  mul r9.y, r9.y, r9.y
  mul r8.w, r8.w, r9.y
  mad r14.xyz, r14.xyzx, r8.wwww, r8.xyzx  // r14.x <- <FresnelSchlick_id160 return value>.x; r14.y <- <FresnelSchlick_id160 return value>.y; r14.z <- <FresnelSchlick_id160 return value>.z

#line 221
  mul r8.w, r9.x, l(0.500000)  // r8.w <- k
  mad r9.y, -r9.x, l(0.500000), l(1.000000)
  mad r9.w, r6.w, r9.y, r8.w
  div r9.w, r6.w, r9.w  // r9.w <- <VisibilityhSchlickGGX_id178 return value>
  mad r8.w, r9.z, r9.y, r8.w
  div r8.w, r9.z, r8.w  // r8.w <- <VisibilityhSchlickGGX_id178 return value>

#line 257
  mul r8.w, r8.w, r9.w
  mul r6.w, r9.z, r6.w
  div r6.w, r8.w, r6.w  // r6.w <- <VisibilitySmithSchlickGGX_id180 return value>

#line 252
  mul r8.w, r9.x, r9.x  // r8.w <- alphaR2
  mul r7.w, r7.w, r7.w
  mad r9.y, r9.x, r9.x, l(-1.000000)
  mad r7.w, r7.w, r9.y, l(1.000000)
  max r7.w, r7.w, l(0.000100)
  mul r7.w, r7.w, r7.w
  mul r7.w, r7.w, l(3.141593)
  div r7.w, r8.w, r7.w  // r7.w <- <NormalDistributionGGX_id194 return value>

#line 443
  mul r14.xyz, r6.wwww, r14.xyzx
  mul r14.xyz, r7.wwww, r14.xyzx
  mul r12.xyz, r12.xyzx, r14.xyzx

#line 579
  mad r10.yzw, r12.xxyz, l(0.000000, 0.250000, 0.250000, 0.250000), r13.xxyz  // r10.y <- directLightingContribution.x; r10.z <- directLightingContribution.y; r10.w <- directLightingContribution.z

#line 565
  iadd r5.w, r5.w, l(1)

#line 581
endloop   // r4.w <- streams.lightIndex_id142

#line 589
mov r4.xyz, r0.xyzx  // r4.x <- streams.viewWS_id61.x; r4.y <- streams.viewWS_id61.y; r4.z <- streams.viewWS_id61.z
mov r5.xyz, r1.xyzx  // r5.x <- streams.normalWS_id16.x; r5.y <- streams.normalWS_id16.y; r5.z <- streams.normalWS_id16.z
mov r6.xyz, r2.xyzx  // r6.x <- streams.matDiffuseVisible_id62.x; r6.y <- streams.matDiffuseVisible_id62.y; r6.z <- streams.matDiffuseVisible_id62.z
mov r7.xyz, r3.xyzx  // r7.x <- streams.matSpecularVisible_id64.x; r7.y <- streams.matSpecularVisible_id64.y; r7.z <- streams.matSpecularVisible_id64.z
mov r8.x, r0.w  // r8.x <- streams.alphaRoughness_id63
mov r8.z, r1.w  // r8.z <- streams.NdotV_id65
mov r9.xyz, r10.yzwy  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.z <- directLightingContribution.z
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r4.w, r3.w, l(8)
  breakc_nz r4.w
  ige r4.w, r3.w, cb2[24].y
  if_nz r4.w
    break 
  endif 

#line 303
  ishl r4.w, r3.w, l(1)

#line 404
  dp3 r5.w, r5.xyzx, -cb2[r4.w + 25].xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id43
  mul r11.xyz, r5.wwww, cb2[r4.w + 26].xyzx  // r11.x <- streams.lightColorNdotL_id40.x; r11.y <- streams.lightColorNdotL_id40.y; r11.z <- streams.lightColorNdotL_id40.z

#line 453
  add r12.xyz, r4.xyzx, -cb2[r4.w + 25].xyzx
  dp3 r6.w, r12.xyzx, r12.xyzx
  rsq r6.w, r6.w
  mul r12.xyz, r6.wwww, r12.xyzx  // r12.x <- streams.H_id68.x; r12.y <- streams.H_id68.y; r12.z <- streams.H_id68.z
  dp3 r6.w, r5.xyzx, r12.xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.NdotH_id69
  dp3 r4.w, -cb2[r4.w + 25].xyzx, r12.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.LdotH_id70

#line 449
  mul r12.xyz, r6.xyzx, r11.xyzx

#line 599
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r9.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 226
  add r13.xyz, -r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r7.w, r4.w, r4.w
  mul r7.w, r7.w, r7.w
  mul r4.w, r4.w, r7.w
  mad r13.xyz, r13.xyzx, r4.wwww, r7.xyzx  // r13.x <- <FresnelSchlick_id160 return value>.x; r13.y <- <FresnelSchlick_id160 return value>.y; r13.z <- <FresnelSchlick_id160 return value>.z

#line 221
  mul r4.w, r8.x, l(0.500000)  // r4.w <- k
  mad r7.w, -r8.x, l(0.500000), l(1.000000)
  mad r8.y, r5.w, r7.w, r4.w
  div r8.y, r5.w, r8.y  // r8.y <- <VisibilityhSchlickGGX_id178 return value>
  mad r4.w, r8.z, r7.w, r4.w
  div r4.w, r8.z, r4.w  // r4.w <- <VisibilityhSchlickGGX_id178 return value>

#line 257
  mul r4.w, r4.w, r8.y
  mul r5.w, r8.z, r5.w
  div r4.w, r4.w, r5.w  // r4.w <- <VisibilitySmithSchlickGGX_id180 return value>

#line 252
  mul r5.w, r8.x, r8.x  // r5.w <- alphaR2
  mul r6.w, r6.w, r6.w
  mad r7.w, r8.x, r8.x, l(-1.000000)
  mad r6.w, r6.w, r7.w, l(1.000000)
  max r6.w, r6.w, l(0.000100)
  mul r6.w, r6.w, r6.w
  mul r6.w, r6.w, l(3.141593)
  div r5.w, r5.w, r6.w  // r5.w <- <NormalDistributionGGX_id194 return value>

#line 443
  mul r13.xyz, r4.wwww, r13.xyzx
  mul r13.xyz, r5.wwww, r13.xyzx
  mul r11.xyz, r11.xyzx, r13.xyzx

#line 603
  mad r9.xyz, r11.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.z <- directLightingContribution.z

#line 589
  iadd r3.w, r3.w, l(1)

#line 605
endloop 

#line 276
add r0.x, -r0.w, l(1.000000)  // r0.x <- x

#line 284
mul r0.y, r0.x, r0.x

#line 292
mul r0.z, r0.y, l(1.895000)

#line 284
mad r0.z, r0.x, l(-0.168800), r0.z
mad r0.w, r1.w, l(-4.853000), l(0.990300)
mul r1.x, r1.w, r1.w
mad r0.w, r1.x, l(8.404000), r0.w
mul r1.y, r1.w, r1.x
mad r0.w, r1.y, l(-5.069000), r0.w
min_sat r0.z, r0.w, r0.z  // r0.z <- bias

#line 292
mad r0.w, r0.x, l(1.699000), l(0.604500)
mad r0.w, r1.w, l(-0.522800), r0.w
mad r0.w, r0.y, l(-3.603000), r0.w
mul r1.y, r0.x, r1.w
mad r0.w, r1.y, l(1.404000), r0.w
mad r0.w, r1.x, l(0.193900), r0.w
mul r0.x, r0.x, r0.y
mad_sat r0.x, r0.x, l(2.661000), r0.w  // r0.x <- delta
add r0.x, -r0.z, r0.x  // r0.x <- scale
mul_sat r0.y, r3.y, l(50.000000)
mul r0.y, r0.y, r0.z  // r0.y <- bias
mad r0.xyz, r3.xyzx, r0.xxxx, r0.yyyy  // r0.x <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id195 return value>.x; r0.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id195 return value>.y; r0.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id195 return value>.z

#line 388
mul r0.xyz, r0.xyzx, cb2[41].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id388 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id388 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id388 return value>.z

#line 617
mad r0.xyz, r2.xyzx, cb2[41].xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 620
mad o0.xyz, r9.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 822
mov o0.w, r2.w
ret 
// Approximately 322 instruction slots used
***************************
*************************/
const static uint ClusterSize2_id140 = 64;
const static int TMaxLightCount_id153 = 8;
const static bool TIsNormalXY1_id166 = true;
const static bool TScaleAndBias_id167 = true;
const static bool TInvertY_id168 = false;
const static bool TInvert_id177 = false;
const static bool TIsEnergyConservative_id188 = false;
static const float PI_id190 = 3.14159265358979323846;
Texture2D Texture_id156;
SamplerState Sampler_id157;
Texture2D Texture_id162;
Texture2D Texture_id170;
Texture3D<uint2> LightClusters_id143;
Buffer<uint> LightIndices_id144;
Buffer<float4> PointLights_id148;
Buffer<float4> SpotLights_id151;
struct PS_STREAMS 
{
    float2 TexCoord_id124;
    float3 meshNormal_id14;
    float4 meshTangent_id15;
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
    float2 TexCoord_id124;
    float3 meshNormal_id14;
    float4 meshTangent_id15;
    float4 PositionH_id21;
    float DepthVS_id20;
    float3 normalWS_id16;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id19 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id124 : TEXCOORD0;
    float3 meshNormal_id14 : NORMAL;
    float4 meshTangent_id15 : TANGENT;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    float2 TexCoord_id124 : TEXCOORD0;
    float3 meshNormal_id14 : NORMAL;
    float4 meshTangent_id15 : TANGENT;
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
    float2 scale_id164;
    float2 offset_id165;
    float2 scale_id172;
    float2 offset_id173;
    float constantFloat_id174;
    float4 constantColor_id182;
    float constantFloat_id184;
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
float SmoothDistanceAttenuation_id84(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id76(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float GetAngleAttenuation_id86(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id85(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id84(d2, lightInvSquareRadius);
    return attenuation;
}
float VisibilityhSchlickGGX_id178(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id160(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float GetDistanceAttenuation_id77(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id76(d2, lightInvSquareRadius);
    return attenuation;
}
void ProcessLight_id87(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = light.AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -light.DirectionWS;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id85(lightVector, lightInvSquareRadius);
    attenuation *= GetAngleAttenuation_id86(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightDirection;
}
float NormalDistributionGGX_id194(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    return alphaR2 / (PI_id190 * pow(max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001), 2.0f));
}
float VisibilitySmithSchlickGGX_id180(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id178(alphaR, nDotL) * VisibilityhSchlickGGX_id178(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id166(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id160(f0, 1.0f, lOrVDotH);
}
void ProcessLight_id79(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id77(lightVector, lightInvSquareRadius);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id195(float3 specularColor, float alphaR, float nDotV)
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
void ComputeShadow_id91(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id134 = 1.0f;
}
void PrepareDirectLightCore_id90(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id39 = Lights_id154[lightIndex].Color;
    streams.lightDirectionWS_id38 = -Lights_id154[lightIndex].DirectionWS;
}
void ComputeShadow_id83(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id134 = 1.0f;
}
void PrepareDirectLightCore_id82(inout PS_STREAMS streams, int lightIndexIgnored)
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
    ProcessLight_id87(streams, spotLight);
}
float Compute_id309(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id194(streams.alphaRoughness_id63, streams.NdotH_id69);
}
float Compute_id280(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id180(streams.alphaRoughness_id63, streams.NdotL_id43, streams.NdotV_id65);
}
float3 Compute_id251(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id166(f0, streams.LdotH_id70);
}
void ComputeShadow_id75(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id134 = 1.0f;
}
void PrepareDirectLightCore_id74(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id144.Load(streams.lightIndex_id142);
    streams.lightIndex_id142++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id148.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id148.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id79(streams, pointLight);
}
void PrepareLightData_id78(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id137.y / (projectedDepth - ZProjection_id137.x);
    int2 shadingPosition = int2(streams.ShadingPosition_id0.xy);
    int slice = int(max(log2(depth * ClusterDepthScale_id145 + ClusterDepthBias_id146), 0));
    streams.lightData_id141 = LightClusters_id143.Load(int4(shadingPosition / ClusterSize2_id140, slice, 0));
    streams.lightIndex_id142 = streams.lightData_id141.x;
}
float GetFilterSquareRoughnessAdjustment_id132(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
float4 BasicBlend_id433(float4 backColor, float4 frontColor, float3 interColor)
{
    return float4(frontColor.a * backColor.a * interColor + frontColor.a * (1.0f - backColor.a) * frontColor.rgb + (1.0f - frontColor.a) * backColor.a * backColor.rgb, lerp(frontColor.a, 1.0f, backColor.a));
}
float4 Compute_id243()
{
    return float4(constantFloat_id174, constantFloat_id174, constantFloat_id174, constantFloat_id174);
}
float4 Compute_id241(inout PS_STREAMS streams)
{
    return Texture_id170.Sample(Sampler_id157, streams.TexCoord_id124 * scale_id172 + offset_id173).r;
}
void ResetStream_id198()
{
}
float3 ComputeEnvironmentLightContribution_id388(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id195(specularColor, streams.alphaRoughness_id63, streams.NdotV_id65) * streams.envLightSpecularColor_id42;
}
float3 ComputeEnvironmentLightContribution_id339(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id236(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id155 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareDirectLight_id228(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id90(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id91(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id134 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id229()
{
    return LightCount_id152;
}
int GetMaxLightCount_id230()
{
    return TMaxLightCount_id153;
}
void PrepareDirectLights_id226()
{
}
void PrepareDirectLight_id219(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id82(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id83(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id134 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id222(inout PS_STREAMS streams)
{
    return streams.lightData_id141.y >> 16;
}
int GetMaxLightCount_id221(inout PS_STREAMS streams)
{
    return streams.lightData_id141.y >> 16;
}
void PrepareDirectLights_id217()
{
}
float3 ComputeDirectLightContribution_id387(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    float3 fresnel = Compute_id251(streams, specularColor);
    float geometricShadowing = Compute_id280(streams);
    float normalDistribution = Compute_id309(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeDirectLightContribution_id338(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor / PI_id190 * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.x;
}
void PrepareMaterialPerDirectLight_id28(inout PS_STREAMS streams)
{
    streams.H_id68 = normalize(streams.viewWS_id61 + streams.lightDirectionWS_id38);
    streams.NdotH_id69 = max(dot(streams.normalWS_id16, streams.H_id68), 0.0001f);
    streams.LdotH_id70 = max(dot(streams.lightDirectionWS_id38, streams.H_id68), 0.0001f);
    streams.VdotH_id71 = streams.LdotH_id70;
}
void PrepareDirectLight_id209(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id74(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id75(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id134 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id213(inout PS_STREAMS streams)
{
    return streams.lightData_id141.y & 0xFFFF;
}
int GetMaxLightCount_id212(inout PS_STREAMS streams)
{
    return streams.lightData_id141.y & 0xFFFF;
}
void PrepareDirectLights_id211(inout PS_STREAMS streams)
{
    PrepareLightData_id78(streams);
}
void PrepareMaterialForLightingAndShading_id197(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id132(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id196(inout PS_STREAMS streams)
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
float4 Compute_id249()
{
    return float4(constantFloat_id184, constantFloat_id184, constantFloat_id184, constantFloat_id184);
}
float4 Compute_id247()
{
    return constantColor_id182;
}
float4 Compute_id246(inout PS_STREAMS streams)
{
    float4 backColor = Compute_id241(streams);
    float4 frontColor = Compute_id243();
    float3 interColor = frontColor.rgb + backColor.rgb;
    return BasicBlend_id433(backColor, frontColor, interColor);
}
float4 Compute_id239(inout PS_STREAMS streams)
{
    return Texture_id162.Sample(Sampler_id157, streams.TexCoord_id124 * scale_id164 + offset_id165).rgba;
}
float4 Compute_id237(inout PS_STREAMS streams)
{
    return Texture_id156.Sample(Sampler_id157, streams.TexCoord_id124 * scale_id159 + offset_id160).rgba;
}
void ResetStream_id201(inout PS_STREAMS streams)
{
    ResetStream_id198();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id428(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id12(streams, streams.matNormal_id45);
    ResetLightStream_id196(streams);
    PrepareMaterialForLightingAndShading_id197(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id211(streams);
        const int maxLightCount = GetMaxLightCount_id212(streams);
        int count = GetLightCount_id213(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id209(streams, i);
            PrepareMaterialPerDirectLight_id28(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id338(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id387(streams);
            }
        }
    }

    {
        PrepareDirectLights_id217();
        const int maxLightCount = GetMaxLightCount_id221(streams);
        int count = GetLightCount_id222(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id219(streams, i);
            PrepareMaterialPerDirectLight_id28(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id338(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id387(streams);
            }
        }
    }

    {
        PrepareDirectLights_id226();
        const int maxLightCount = GetMaxLightCount_id230();
        int count = GetLightCount_id229();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id228(streams, i);
            PrepareMaterialPerDirectLight_id28(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id338(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id387(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id236(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id339(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id388(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id190 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id413(inout PS_STREAMS streams)
{
    streams.matSpecularIntensity_id50 = Compute_id249().r;
}
void Compute_id408(inout PS_STREAMS streams)
{
    streams.matSpecular_id49 = Compute_id247().rgb;
}
void Compute_id403(inout PS_STREAMS streams)
{
    float glossiness = Compute_id246(streams).r;
    streams.matGlossiness_id48 = glossiness;
}
void Compute_id398(inout PS_STREAMS streams)
{
    float4 normal = Compute_id239(streams);

    {
        normal = (2.0f * normal) - 1.0f;
    }

    {
        normal.z = sqrt(max(0, 1.0f - (normal.x * normal.x + normal.y * normal.y)));
    }
    streams.matNormal_id45 = normal.xyz;
}
void Compute_id393(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id237(streams);
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id203(inout PS_STREAMS streams)
{
    ResetStream_id201(streams);
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
void Compute_id71(inout PS_STREAMS streams)
{

    {
        Compute_id393(streams);
    }

    {
        Compute_id398(streams);
    }

    {
        Compute_id403(streams);
    }

    {
        Compute_id408(streams);
    }

    {
        Compute_id413(streams);
    }

    {
        Compute_id428(streams);
    }
}
void ResetStream_id70(inout PS_STREAMS streams)
{
    ResetStream_id203(streams);
    streams.shadingColorAlpha_id67 = 1.0f;
}
float3x3 GetTangentWorldTransform_id20()
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
float4 Shading_id29(inout PS_STREAMS streams)
{
    streams.viewWS_id61 = normalize(Eye_id28.xyz - streams.PositionWS_id19.xyz);
    streams.shadingColor_id66 = 0;
    ResetStream_id70(streams);
    Compute_id71(streams);
    return float4(streams.shadingColor_id66, streams.shadingColorAlpha_id67);
}
void PSMain_id1()
{
}
void UpdateTangentToWorld_id11(inout PS_STREAMS streams)
{
    float3x3 tangentMatrix = GetTangentMatrix_id9(streams);
    float3x3 tangentWorldTransform = GetTangentWorldTransform_id20();
    streams.tangentToWorld_id17 = mul(tangentMatrix, tangentWorldTransform);
}
void GenerateNormal_PS_id17()
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
    streams.ColorTarget_id1 = Shading_id29(streams);
}
void GenerateNormal_PS_id19(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id17();
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
void PSMain_id18(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id19(streams);
    PSMain_id3(streams);
}
void VSMain_id16(inout VS_STREAMS streams)
{
    VSMain_id8(streams);
    GenerateNormal_VS_id15(streams);
}
PS_OUTPUT PSMain(VS_OUTPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id19 = __input__.PositionWS_id19;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.TexCoord_id124 = __input__.TexCoord_id124;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    streams.meshTangent_id15 = __input__.meshTangent_id15;
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
    streams.TexCoord_id124 = __input__.TexCoord_id124;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    streams.meshTangent_id15 = __input__.meshTangent_id15;
    VSMain_id16(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.TexCoord_id124 = streams.TexCoord_id124;
    __output__.meshNormal_id14 = streams.meshNormal_id14;
    __output__.meshTangent_id15 = streams.meshTangent_id15;
    return __output__;
}
