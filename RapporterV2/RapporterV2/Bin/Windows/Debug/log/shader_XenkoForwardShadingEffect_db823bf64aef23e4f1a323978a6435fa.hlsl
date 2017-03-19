/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.DiffuseMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = ComputeColorTextureScaledOffsetDynamicSampler<Material.EmissiveMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale.i1,Material.TextureOffset.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.EmissiveIntensity>}], mixin MaterialSurfaceSetStreamFromComputeColor<matDiffuseSpecularAlphaBlend,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.DiffuseSpecularAlphaBlendValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAlphaBlendColor,rgb> [{computeColorSource = ComputeColorConstantColorLink<Material.AlphaBlendColorValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}], MaterialSurfaceEmissiveShading<false>, MaterialSurfaceDiffuseSpecularAlphaBlendColor]}]
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
cbuffer PerMaterial [Size: 64]
@C    scale_id183 => Material.TextureScale
@C    offset_id184 => Material.TextureOffset
@C    scale_id191 => Material.TextureScale.i1
@C    offset_id192 => Material.TextureOffset.i1
@C    constantFloat_id194 => Material.EmissiveIntensity
@C    constantFloat_id196 => Material.DiffuseSpecularAlphaBlendValue
@C    constantColor_id198 => Material.AlphaBlendColorValue
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
@R    Texture_id180 => Material.DiffuseMap [Stage: None, Slot: (-1--1)]
@R    Texture_id180 => Material.DiffuseMap [Stage: None, Slot: (-1--1)]
@R    Sampler_id181 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Sampler_id181 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Texture_id189 => Material.EmissiveMap [Stage: None, Slot: (-1--1)]
@R    Texture_id189 => Material.EmissiveMap [Stage: None, Slot: (-1--1)]
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
@R    LinearClampCompareLessEqualSampler_id132 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (0-0)]
@R    Sampler_id181 => Material.Sampler.i0 [Stage: Pixel, Slot: (1-1)]
@R    Texture_id180 => Material.DiffuseMap [Stage: Pixel, Slot: (0-0)]
@R    Texture_id189 => Material.EmissiveMap [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: Pixel, Slot: (2-2)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: Pixel, Slot: (3-3)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (4-4)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (5-5)]
@R    ShadowMapTexture_id97 => ShadowMap.Texture.directLightGroups[2] [Stage: Pixel, Slot: (6-6)]
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
@G    Vertex => ea6d7b3eec5a9744039ceeea080bb9ab
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
vs_4_0
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
//   v2.x <- __input__.TexCoord_id148.x; v2.y <- __input__.TexCoord_id148.y; 
//   o3.x <- <VSMain return value>.TexCoord_id148.x; o3.y <- <VSMain return value>.TexCoord_id148.y; 
//   o2.x <- <VSMain return value>.DepthVS_id20; o2.y <- <VSMain return value>.normalWS_id16.x; o2.z <- <VSMain return value>.normalWS_id16.y; o2.w <- <VSMain return value>.normalWS_id16.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 792 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_db823bf64aef23e4f1a323978a6435fa.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 860
mov o0.xyzw, r0.xyzw

#line 782
dp4 r1.x, r0.xyzw, cb1[19].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 860
mov o1.w, r1.x
mov o2.x, r1.x

#line 782
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw

#line 825
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 860
mov o3.xy, v2.xyxx
ret 
// Approximately 16 instruction slots used
@G    Pixel => 625f3e28284af8e2b4630482926ad331
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float2 scale_id183;                // Offset:    0 Size:     8
//   float2 offset_id184;               // Offset:    8 Size:     8
//   float2 scale_id191;                // Offset:   16 Size:     8
//   float2 offset_id192;               // Offset:   24 Size:     8
//   float constantFloat_id194;         // Offset:   32 Size:     4
//   float constantFloat_id196;         // Offset:   36 Size:     4
//   float4 constantColor_id198;        // Offset:   48 Size:    16
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
//   float MipCount_id174;              // Offset:  956 Size:     4 [unused]
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
// LinearClampCompareLessEqualSampler_id132  sampler_c      NA          NA    0        1
// Sampler_id181                     sampler      NA          NA    1        1
// Texture_id180                     texture  float4          2d    0        1
// Texture_id189                     texture  float4          2d    1        1
// LightClusters_id85                texture   uint2          3d    2        1
// LightIndices_id86                 texture    uint         buf    3        1
// PointLights_id90                  texture  float4         buf    4        1
// SpotLights_id93                   texture  float4         buf    5        1
// ShadowMapTexture_id97             texture  float4          2d    6        1
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
ps_4_0
dcl_constantbuffer cb0[4], immediateIndexed
dcl_constantbuffer cb1[65], dynamicIndexed
dcl_sampler s0, mode_comparison
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture3d (uint,uint,uint,uint) t2
dcl_resource_buffer (uint,uint,uint,uint) t3
dcl_resource_buffer (float,float,float,float) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_resource_texture2d (float,float,float,float) t6
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.xyz, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xy
dcl_output o0.xyzw
dcl_temps 17
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id20; v2.y <- __input__.normalWS_id16.x; v2.z <- __input__.normalWS_id16.y; v2.w <- __input__.normalWS_id16.z; 
//   v3.x <- __input__.TexCoord_id148.x; v3.y <- __input__.TexCoord_id148.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 821 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_db823bf64aef23e4f1a323978a6435fa.hlsl"
dp3 r0.x, v2.yzwy, v2.yzwy
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.yzwy  // r0.x <- streams.normalWS_id16.x; r0.y <- streams.normalWS_id16.y; r0.z <- streams.normalWS_id16.z

#line 587
mad r1.xy, v3.xyxx, cb0[0].xyxx, cb0[0].zwzz
sample r1.xyzw, r1.xyxx, t0.xyzw, s1  // r1.x <- <Compute_id234 return value>.x; r1.y <- <Compute_id234 return value>.y; r1.z <- <Compute_id234 return value>.z; r1.w <- <Compute_id234 return value>.w

#line 583
mad r2.xy, v3.xyxx, cb0[1].xyxx, cb0[1].zwzz
sample r2.xyzw, r2.xyxx, t1.xyzw, s1  // r2.x <- <Compute_id236 return value>.x; r2.y <- <Compute_id236 return value>.y; r2.z <- <Compute_id236 return value>.z

#line 549
mul r1.xyz, r1.xyzx, cb0[2].yyyy
mul r1.xyz, r1.xyzx, cb0[3].xyzx  // r1.x <- streams.matDiffuseVisible_id62.x; r1.y <- streams.matDiffuseVisible_id62.y; r1.z <- streams.matDiffuseVisible_id62.z

#line 440
add r0.w, v1.z, -cb1[22].z
div r0.w, cb1[22].w, r0.w  // r0.w <- depth
ftoi r3.xy, v1.xyxx  // r3.x <- shadingPosition.x; r3.y <- shadingPosition.y
mad r0.w, r0.w, cb1[23].w, cb1[24].x
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)
ftoi r4.z, r0.w  // r4.z <- slice
ushr r4.xy, r3.xyxx, l(6)
mov r4.w, l(0)
ld r3.xyzw, r4.xyzw, t2.xyzw  // r3.x <- streams.lightData_id83.x; r3.y <- streams.lightData_id83.y

#line 540
and r0.w, r3.y, l(0x0000ffff)  // r0.w <- <GetMaxLightCount_id194 return value>

#line 614
mov r4.xyz, r0.xyzx  // r4.x <- streams.normalWS_id16.x; r4.y <- streams.normalWS_id16.y; r4.z <- streams.normalWS_id16.z
mov r4.w, v0.x  // r4.w <- streams.PositionWS_id19.x
mov r5.yz, v0.yyzy  // r5.y <- streams.PositionWS_id19.y; r5.z <- streams.PositionWS_id19.z
mov r6.xyz, r1.xyzx  // r6.x <- streams.matDiffuseVisible_id62.x; r6.y <- streams.matDiffuseVisible_id62.y; r6.z <- streams.matDiffuseVisible_id62.z
mov r2.w, cb0[2].y  // r2.w <- streams.matDiffuseSpecularAlphaBlend_id58.x
mov r7.x, r3.x  // r7.x <- streams.lightIndex_id84
mov r7.yzw, l(0,0,0,0)  // r7.y <- directLightingContribution.x; r7.z <- directLightingContribution.y; r7.w <- directLightingContribution.z
mov r3.z, l(0)  // r3.z <- i
loop 
  ige r3.w, r3.z, r0.w
  breakc_nz r3.w
  if_nz r3.w
    break 
  endif 

#line 427
  ld r8.xyzw, r7.xxxx, t3.xyzw  // r8.x <- realLightIndex
  iadd r7.x, r7.x, l(1)  // r7.x <- streams.lightIndex_id84
  ishl r3.w, r8.x, l(1)
  ld r8.xyzw, r3.wwww, t4.xyzw  // r8.x <- pointLight1.x; r8.y <- pointLight1.y; r8.z <- pointLight1.z; r8.w <- pointLight1.w
  iadd r3.w, r3.w, l(1)
  ld r9.xyzw, r3.wwww, t4.xyzw  // r9.x <- pointLight2.x; r9.y <- pointLight2.y; r9.z <- pointLight2.z

#line 315
  mov r5.x, r4.w
  add r8.xyz, -r5.xyzx, r8.xyzx  // r8.x <- lightVector.x; r8.y <- lightVector.y; r8.z <- lightVector.z
  dp3 r3.w, r8.xyzx, r8.xyzx
  sqrt r5.x, r3.w  // r5.x <- lightVectorLength
  div r8.xyz, r8.xyzx, r5.xxxx  // r8.x <- lightVectorNorm.x; r8.y <- lightVectorNorm.y; r8.z <- lightVectorNorm.z

#line 278
  max r5.x, r3.w, l(0.000100)
  div r5.x, l(1.000000, 1.000000, 1.000000, 1.000000), r5.x  // r5.x <- attenuation

#line 219
  mul r3.w, r8.w, r3.w  // r3.w <- factor
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id76 return value>

#line 279
  mul r3.w, r3.w, r5.x  // r3.w <- attenuation

#line 321
  mul r9.xyz, r3.wwww, r9.xyzx  // r9.x <- streams.lightColor_id39.x; r9.y <- streams.lightColor_id39.y; r9.z <- streams.lightColor_id39.z

#line 530
  dp3 r3.w, r4.xyzx, r8.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id43
  mul r8.xyz, r3.wwww, r9.xyzx  // r8.x <- streams.lightColorNdotL_id40.x; r8.y <- streams.lightColorNdotL_id40.y; r8.z <- streams.lightColorNdotL_id40.z

#line 518
  mul r8.xyz, r8.xyzx, r6.xyzx
  mul r8.xyz, r2.wwww, r8.xyzx

#line 624
  mad r7.yzw, r8.xxyz, l(0.000000, 0.318310, 0.318310, 0.318310), r7.yyzw

#line 614
  iadd r3.z, r3.z, l(1)

#line 626
endloop   // r7.x <- streams.lightIndex_id84

#line 510
ushr r0.w, r3.y, l(16)  // r0.w <- <GetMaxLightCount_id203 return value>

#line 634
mov r3.xyz, v0.xyzx  // r3.x <- streams.PositionWS_id19.x; r3.y <- streams.PositionWS_id19.y; r3.z <- streams.PositionWS_id19.z
mov r4.xyz, r0.xyzx
mov r2.w, cb0[2].y
mov r5.xyz, r1.xyzx  // r5.x <- streams.matDiffuseVisible_id62.x; r5.y <- streams.matDiffuseVisible_id62.y; r5.z <- streams.matDiffuseVisible_id62.z
mov r6.xyz, r7.yzwy  // r6.x <- directLightingContribution.x; r6.y <- directLightingContribution.y; r6.z <- directLightingContribution.z
mov r3.w, r7.x  // r3.w <- streams.lightIndex_id84
mov r4.w, l(0)  // r4.w <- i
loop 
  ige r5.w, r4.w, r0.w
  breakc_nz r5.w
  if_nz r5.w
    break 
  endif 

#line 408
  ld r8.xyzw, r3.wwww, t3.xyzw  // r8.x <- realLightIndex
  iadd r3.w, r3.w, l(1)  // r3.w <- streams.lightIndex_id84
  ishl r5.w, r8.x, l(2)
  ld r8.xyzw, r5.wwww, t5.xyzw  // r8.x <- spotLight1.x; r8.y <- spotLight1.y; r8.z <- spotLight1.z

#line 414
  iadd r9.xyz, r5.wwww, l(1, 2, 3, 0)
  ld r10.xyzw, r9.xxxx, t5.xyzw  // r10.x <- spotLight2.x; r10.y <- spotLight2.y; r10.z <- spotLight2.z
  ld r11.xyzw, r9.yyyy, t5.xyzw  // r11.x <- spotLight3.x; r11.y <- spotLight3.y; r11.z <- spotLight3.z
  ld r9.xyzw, r9.zzzz, t5.xyzw  // r9.x <- spotLight4.x; r9.y <- spotLight4.y; r9.z <- spotLight4.z

#line 300
  add r8.xyz, -r3.xyzx, r8.xyzx  // r8.x <- lightVector.x; r8.y <- lightVector.y; r8.z <- lightVector.z
  dp3 r5.w, r8.xyzx, r8.xyzx
  sqrt r6.w, r5.w  // r6.w <- lightVectorLength
  div r8.xyz, r8.xyzx, r6.wwww  // r8.x <- lightVectorNorm.x; r8.y <- lightVectorNorm.y; r8.z <- lightVectorNorm.z

#line 271
  max r6.w, r5.w, l(0.000100)
  div r6.w, l(1.000000, 1.000000, 1.000000, 1.000000), r6.w  // r6.w <- attenuation

#line 213
  mul r5.w, r11.z, r5.w  // r5.w <- factor
  mad r5.w, -r5.w, r5.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)  // r5.w <- smoothFactor
  mul r5.w, r5.w, r5.w  // r5.w <- <SmoothDistanceAttenuation_id84 return value>

#line 272
  mul r5.w, r5.w, r6.w  // r5.w <- attenuation

#line 263
  dp3 r6.w, -r10.xyzx, r8.xyzx  // r6.w <- cd
  mad_sat r6.w, r6.w, r11.x, r11.y  // r6.w <- attenuation
  mul r6.w, r6.w, r6.w

#line 309
  mul r5.w, r5.w, r6.w  // r5.w <- attenuation
  mul r9.xyz, r5.wwww, r9.xyzx  // r9.x <- streams.lightColor_id39.x; r9.y <- streams.lightColor_id39.y; r9.z <- streams.lightColor_id39.z

#line 500
  dp3 r5.w, r4.xyzx, r8.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id43
  mul r8.xyz, r5.wwww, r9.xyzx  // r8.x <- streams.lightColorNdotL_id40.x; r8.y <- streams.lightColorNdotL_id40.y; r8.z <- streams.lightColorNdotL_id40.z

#line 518
  mul r8.xyz, r5.xyzx, r8.xyzx
  mul r8.xyz, r2.wwww, r8.xyzx

#line 644
  mad r6.xyz, r8.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r6.xyzx

#line 634
  iadd r4.w, r4.w, l(1)

#line 646
endloop   // r3.w <- streams.lightIndex_id84

#line 292
dp2 r0.w, cb1[45].xxxx, cb1[27].zzzz

#line 284
mov r3.w, l(1.000000)

#line 654
mov r4.xyz, v0.xyzx  // r4.x <- streams.PositionWS_id19.x; r4.y <- streams.PositionWS_id19.y; r4.z <- streams.PositionWS_id19.z
mov r4.w, v2.x  // r4.w <- streams.DepthVS_id20
mov r5.xyz, r0.xyzx  // r5.x <- streams.normalWS_id16.x; r5.y <- streams.normalWS_id16.y; r5.z <- streams.normalWS_id16.z
mov r2.w, cb0[2].y
mov r7.xyz, r1.xyzx  // r7.x <- streams.matDiffuseVisible_id62.x; r7.y <- streams.matDiffuseVisible_id62.y; r7.z <- streams.matDiffuseVisible_id62.z
mov r8.xyz, r6.xyzx  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z
mov r5.w, l(0)  // r5.w <- i
loop 
  ige r6.w, r5.w, l(1)
  breakc_nz r6.w
  ige r6.w, r5.w, cb1[24].y
  if_nz r6.w
    break 
  endif 

#line 482
  dp3 r6.w, r5.xyzx, -cb1[25].xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.NdotL_id43

#line 358
  ishl r7.w, r5.w, l(2)  // r7.w <- cascadeIndexBase

#line 365
  lt r8.w, cb1[r7.w + 46].x, r4.w

#line 368
  and r8.w, r8.w, l(1)  // r8.w <- cascadeIndex

#line 365
  iadd r9.xy, r7.wwww, l(1, 2, 0, 0)
  lt r9.x, cb1[r9.x + 46].x, r4.w

#line 368
  movc r8.w, r9.x, l(2), r8.w

#line 365
  lt r9.x, cb1[r9.y + 46].x, r4.w

#line 368
  movc r8.w, r9.x, l(3), r8.w

#line 291
  add r9.y, -r6.w, l(1.000000)
  max r9.y, r9.y, l(0.000000)  // r9.y <- normalOffsetScale
  mul r9.y, r0.w, r9.y

#line 372
  mad r3.xyz, r9.yyyy, r5.xyzx, r4.xyzx  // r3.x <- shadowPosition.x; r3.y <- shadowPosition.y; r3.z <- shadowPosition.z

#line 284
  iadd r7.w, r7.w, r8.w
  ishl r9.y, r7.w, l(2)
  dp4 r10.x, r3.xyzw, cb1[r9.y + 28].xyzw  // r10.x <- shadowPosition.x
  dp4 r10.y, r3.xyzw, cb1[r9.y + 29].xyzw  // r10.y <- shadowPosition.y
  dp4 r9.z, r3.xyzw, cb1[r9.y + 30].xyzw  // r9.z <- shadowPosition.z
  dp4 r9.w, r3.xyzw, cb1[r9.y + 31].xyzw  // r9.w <- shadowPosition.w
  add r10.z, r9.z, -cb1[44].x  // r10.z <- shadowPosition.z
  div r10.xyz, r10.xyzx, r9.wwww

#line 229
  mad r9.zw, r10.xxxy, cb1[27].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r10.xy, r9.zwzz  // r10.x <- base_uv.x; r10.y <- base_uv.y
  add r9.zw, r9.zzzw, -r10.xxxy  // r9.z <- s; r9.w <- t
  add r10.xy, r10.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r10.xy, r10.xyxx, cb1[27].zwzz

#line 242
  mad r11.xy, -r9.wzww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r11.y <- uw0; r11.x <- vw0
  mad r11.zw, r9.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r11.z <- uw2; r11.w <- vw2
  mad r12.xy, -r9.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r12.xy, r12.xyxx, r11.yxyy
  add r12.zw, r9.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000)
  div r9.zw, r9.zzzw, r11.zzzw
  add r13.xw, r12.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r13.x <- u0; r13.w <- v0
  mul r13.yz, r12.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r13.z <- u1; r13.y <- v1
  add r12.xy, r9.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r12.x <- u2; r12.y <- v2
  mul r9.z, r11.x, r11.y
  mad r14.xyzw, r13.xwzw, cb1[27].zwzw, r10.xyxy

#line 209
  sample_c r9.w, r14.xyxx, t6.xxxx, s0, r10.z  // r9.w <- <SampleTextureAndCompare_id100 return value>

#line 251
  mul r14.xy, r11.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 209
  sample_c r10.w, r14.zwzz, t6.xxxx, s0, r10.z  // r10.w <- <SampleTextureAndCompare_id100 return value>

#line 249
  mul r10.w, r10.w, r14.x
  mad r9.z, r9.z, r9.w, r10.w  // r9.z <- shadow

#line 254
  mul r11.xy, r11.xyxx, r11.zwzz
  mov r12.zw, r13.wwwy
  mad r15.xyzw, r12.xzxw, cb1[27].zwzw, r10.xyxy

#line 209
  sample_c r9.w, r15.xyxx, t6.xxxx, s0, r10.z  // r9.w <- <SampleTextureAndCompare_id100 return value>

#line 250
  mad r9.z, r11.x, r9.w, r9.z
  mad r16.xyzw, r13.xyzy, cb1[27].zwzw, r10.xyxy

#line 209
  sample_c r9.w, r16.xyxx, t6.xxxx, s0, r10.z

#line 251
  mad r9.z, r14.y, r9.w, r9.z

#line 209
  sample_c r9.w, r16.zwzz, t6.xxxx, s0, r10.z

#line 252
  mad r9.z, r9.w, l(49.000000), r9.z

#line 255
  mul r12.zw, r11.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 209
  sample_c r9.w, r15.zwzz, t6.xxxx, s0, r10.z

#line 253
  mad r9.z, r12.z, r9.w, r9.z
  mov r13.y, r12.y
  mad r13.xyzw, r13.xyzy, cb1[27].zwzw, r10.xyxy

#line 209
  sample_c r9.w, r13.xyxx, t6.xxxx, s0, r10.z

#line 254
  mad r9.z, r11.y, r9.w, r9.z

#line 209
  sample_c r9.w, r13.zwzz, t6.xxxx, s0, r10.z

#line 255
  mad r9.z, r12.w, r9.w, r9.z
  mul r9.w, r11.w, r11.z
  mad r10.xy, r12.xyxx, cb1[27].zwzz, r10.xyxx

#line 209
  sample_c r10.x, r10.xyxx, t6.xxxx, s0, r10.z  // r10.x <- <SampleTextureAndCompare_id100 return value>

#line 256
  mad r9.z, r9.w, r10.x, r9.z
  mul r9.w, r9.z, l(0.006944)  // r9.w <- shadow

#line 377
  iadd r10.x, r7.w, l(-1)
  add r10.x, -cb1[r10.x + 46].x, cb1[r7.w + 46].x
  movc r8.w, r8.w, r10.x, cb1[r7.w + 46].x  // r8.w <- splitSize
  add r7.w, -r4.w, cb1[r7.w + 46].x
  div r7.w, r7.w, r8.w  // r7.w <- splitDist
  lt r8.w, r7.w, l(0.200000)

#line 284
  iadd r9.y, r9.y, l(4)
  dp4 r10.x, r3.xyzw, cb1[r9.y + 28].xyzw  // r10.x <- shadowPosition.x
  dp4 r10.y, r3.xyzw, cb1[r9.y + 29].xyzw  // r10.y <- shadowPosition.y
  dp4 r10.w, r3.xyzw, cb1[r9.y + 30].xyzw  // r10.w <- shadowPosition.z
  dp4 r3.x, r3.xyzw, cb1[r9.y + 31].xyzw  // r3.x <- shadowPosition.w
  add r10.z, r10.w, -cb1[44].x  // r10.z <- shadowPosition.z
  div r3.xyz, r10.xyzx, r3.xxxx  // r3.x <- shadowPosition.x; r3.y <- shadowPosition.y; r3.z <- shadowPosition.z

#line 229
  mad r3.xy, r3.xyxx, cb1[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r10.xy, r3.xyxx  // r10.x <- base_uv.x; r10.y <- base_uv.y
  add r3.xy, r3.xyxx, -r10.xyxx  // r3.x <- s; r3.y <- t
  add r10.xy, r10.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r10.xy, r10.xyxx, cb1[27].zwzz

#line 242
  mad r10.zw, -r3.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r10.w <- uw0; r10.z <- vw0
  mad r11.xy, r3.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r11.x <- uw2; r11.y <- vw2
  mad r11.zw, -r3.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r11.zw, r11.zzzw, r10.wwwz
  add r12.xy, r3.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r3.xy, r3.xyxx, r11.xyxx
  add r13.xw, r11.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r13.x <- u0; r13.w <- v0
  mul r13.yz, r12.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r13.z <- u1; r13.y <- v1
  add r12.xy, r3.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r12.x <- u2; r12.y <- v2
  mad r14.xyzw, r13.xwzw, cb1[27].zwzw, r10.xyxy

#line 209
  sample_c r3.x, r14.xyxx, t6.xxxx, s0, r3.z  // r3.x <- <SampleTextureAndCompare_id100 return value>
  sample_c r3.y, r14.zwzz, t6.xxxx, s0, r3.z  // r3.y <- <SampleTextureAndCompare_id100 return value>

#line 253
  mov r12.zw, r13.wwwy
  mad r14.xyzw, r12.xzxw, cb1[27].zwzw, r10.xyxy

#line 209
  sample_c r9.y, r14.xyxx, t6.xxxx, s0, r3.z  // r9.y <- <SampleTextureAndCompare_id100 return value>

#line 252
  mad r15.xyzw, r13.xyzy, cb1[27].zwzw, r10.xyxy

#line 209
  sample_c r11.z, r15.xyxx, t6.xxxx, s0, r3.z  // r11.z <- <SampleTextureAndCompare_id100 return value>
  sample_c r11.w, r15.zwzz, t6.xxxx, s0, r3.z  // r11.w <- <SampleTextureAndCompare_id100 return value>
  sample_c r12.z, r14.zwzz, t6.xxxx, s0, r3.z  // r12.z <- <SampleTextureAndCompare_id100 return value>

#line 254
  mov r13.y, r12.y
  mad r13.xyzw, r13.xyzy, cb1[27].zwzw, r10.xyxy

#line 209
  sample_c r12.w, r13.xyxx, t6.xxxx, s0, r3.z  // r12.w <- <SampleTextureAndCompare_id100 return value>
  sample_c r13.x, r13.zwzz, t6.xxxx, s0, r3.z  // r13.x <- <SampleTextureAndCompare_id100 return value>

#line 256
  mad r10.xy, r12.xyxx, cb1[27].zwzz, r10.xyxx

#line 209
  sample_c r3.z, r10.xyxx, t6.xxxx, s0, r3.z  // r3.z <- <SampleTextureAndCompare_id100 return value>

#line 379
  if_nz r8.w

#line 382
    if_z r9.x
      mul_sat r7.w, r7.w, l(5.000000)
      mad r8.w, r7.w, l(-2.000000), l(3.000000)
      mul r7.w, r7.w, r7.w
      mul r7.w, r7.w, r8.w  // r7.w <- lerpAmt

#line 248
      mul r8.w, r10.z, r10.w
      mul r3.y, r10.z, r3.y
      mul r3.y, r3.y, l(7.000000)
      mad r3.x, r8.w, r3.x, r3.y  // r3.x <- shadow

#line 254
      mul r10.xy, r10.zwzz, r11.xyxx

#line 250
      mad r3.x, r10.x, r9.y, r3.x
      mul r3.y, r10.w, r11.z
      mad r3.x, r3.y, l(7.000000), r3.x
      mad r3.x, r11.w, l(49.000000), r3.x
      mul r3.y, r11.x, r12.z
      mad r3.x, r3.y, l(7.000000), r3.x
      mad r3.x, r10.y, r12.w, r3.x
      mul r3.y, r11.y, r13.x
      mad r3.x, r3.y, l(7.000000), r3.x
      mul r3.y, r11.y, r11.x
      mad r3.x, r3.y, r3.z, r3.x
      mul r3.x, r3.x, l(0.006944)

#line 388
      mad r3.y, r9.z, l(0.006944), -r3.x
      mad r9.w, r7.w, r3.y, r3.x
    endif 
  endif   // r9.w <- shadow

#line 484
  mul r3.xyz, r9.wwww, cb1[26].xyzx
  mul r3.xyz, r6.wwww, r3.xyzx  // r3.x <- streams.lightColorNdotL_id40.x; r3.y <- streams.lightColorNdotL_id40.y; r3.z <- streams.lightColorNdotL_id40.z

#line 518
  mul r3.xyz, r3.xyzx, r7.xyzx
  mul r3.xyz, r2.wwww, r3.xyzx

#line 664
  mad r8.xyz, r3.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r8.xyzx

#line 654
  iadd r5.w, r5.w, l(1)

#line 666
endloop 

#line 460
dp3 r0.w, r0.xyzx, cb1[60].xyzx  // r0.w <- sampleDirection.x
dp3 r2.w, r0.xyzx, cb1[61].xyzx  // r2.w <- sampleDirection.y
dp3 r0.x, r0.xyzx, cb1[62].xyzx  // r0.x <- sampleDirection.z

#line 336
mul r0.y, r2.w, r2.w  // r0.y <- y2
mul r0.z, r0.x, r0.x  // r0.z <- z2

#line 341
mad r3.xyz, cb1[52].xyzx, r2.wwww, cb1[51].xyzx  // r3.x <- color.x; r3.y <- color.y; r3.z <- color.z
mad r3.xyz, cb1[53].xyzx, -r0.xxxx, r3.xyzx
mad r3.xyz, cb1[54].xyzx, r0.wwww, r3.xyzx

#line 346
mul r4.xyz, r2.wwww, cb1[55].xyzx
mad r3.xyz, r4.xyzx, r0.wwww, r3.xyzx
mul r4.xyz, r2.wwww, cb1[56].xyzx
mad r3.xyz, r4.xyzx, -r0.xxxx, r3.xyzx
mad r0.z, r0.z, l(3.000000), l(-1.000000)
mad r3.xyz, cb1[57].xyzx, r0.zzzz, r3.xyzx
mul r4.xyz, r0.wwww, cb1[58].xyzx
mad r3.xyz, r4.xyzx, -r0.xxxx, r3.xyzx
mad r0.x, r0.w, r0.w, -r0.y
mad r0.xyz, cb1[59].xyzx, r0.xxxx, r3.xyzx  // r0.x <- color.x; r0.y <- color.y; r0.z <- color.z

#line 462
mul r0.xyz, r0.xyzx, cb1[64].xxxx
mul r0.xyz, r0.xyzx, cb0[2].yyyy  // r0.x <- streams.envLightDiffuseColor_id41.x; r0.y <- streams.envLightDiffuseColor_id41.y; r0.z <- streams.envLightDiffuseColor_id41.z

#line 471
mul r0.xyz, r0.xyzx, r1.xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id245 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id245 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id245 return value>.z

#line 682
mad r0.xyz, r1.xyzx, cb1[50].xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 685
mad r0.xyz, r8.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx  // r0.x <- streams.shadingColor_id66.x; r0.y <- streams.shadingColor_id66.y; r0.z <- streams.shadingColor_id66.z

#line 600
mad o0.xyz, r2.xyzx, cb0[2].xxxx, r0.xyzx

#line 596
mul o0.w, r1.w, cb0[2].y

#line 844
ret 
// Approximately 293 instruction slots used
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
static const float PI_id201 = 3.14159265358979323846;
const static bool TIsEnergyConservative_id202 = false;
const static bool TUseAlphaFromEmissive_id204 = false;
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
Texture2D Texture_id180;
SamplerState Sampler_id181;
Texture2D Texture_id189;
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
    float2 TexCoord_id148;
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
    float2 TexCoord_id148;
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
    float2 TexCoord_id148 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    float3 meshNormal_id14 : NORMAL;
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
    float2 scale_id183;
    float2 offset_id184;
    float2 scale_id191;
    float2 offset_id192;
    float constantFloat_id194;
    float constantFloat_id196;
    float4 constantColor_id198;
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
float SampleTextureAndCompare_id100(float2 position, float positionDepth)
{
    return ShadowMapTexture_id97.SampleCmp(LinearClampCompareLessEqualSampler_id132, position, positionDepth);
}
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
float FilterShadow_id96(float2 position, float positionDepth)
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
        shadow += uw0 * vw0 * SampleTextureAndCompare_id100(base_uv + float2(u0, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw0 * SampleTextureAndCompare_id100(base_uv + float2(u1, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw0 * SampleTextureAndCompare_id100(base_uv + float2(u2, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw0 * vw1 * SampleTextureAndCompare_id100(base_uv + float2(u0, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw1 * SampleTextureAndCompare_id100(base_uv + float2(u1, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw1 * SampleTextureAndCompare_id100(base_uv + float2(u2, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw0 * vw2 * SampleTextureAndCompare_id100(base_uv + float2(u0, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw2 * SampleTextureAndCompare_id100(base_uv + float2(u1, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw2 * SampleTextureAndCompare_id100(base_uv + float2(u2, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow /= 144.0f;
    }
    return shadow;
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
float GetDistanceAttenuation_id77(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id76(d2, lightInvSquareRadius);
    return attenuation;
}
float ComputeShadowFromCascade_id99(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1), WorldToShadowCascadeUV_id160[cascadeIndex + lightIndex * TCascadeCountBase_id158]);
    shadowPosition.z -= DepthBiases_id161[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id96(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id98(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id99.x * offsetScale * normalOffsetScale * normal;
}
void ComputeShadow_id97(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
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
    streams.lightDirectionWS_id38 = lightVectorNorm;
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
float4 Compute_id221(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id63;
    float mipLevel = sqrt(alpha) * MipCount_id174;
    return CubeMap_id175.SampleLevel(LinearSampler_id130, direction, mipLevel);
}
float4 Compute_id216(float3 direction)
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
void ComputeShadow_id91(inout PS_STREAMS streams, int lightIndex)
{
    ComputeShadow_id97(streams, lightIndex);
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
    shadowPosition += GetShadowPositionOffset_id98(OffsetScales_id162[lightIndex], streams.NdotL_id43, streams.normalWS_id16);
    if (cascadeIndex < TCascadeCount_id163)
    {
        shadow = ComputeShadowFromCascade_id99(shadowPosition, cascadeIndex, lightIndex);
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
                float nextShadow = ComputeShadowFromCascade_id99(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }

    {
        streams.shadowColor_id76 = shadow;
    }
}
void PrepareDirectLightCore_id90(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id39 = Lights_id96[lightIndex].Color;
    streams.lightDirectionWS_id38 = -Lights_id96[lightIndex].DirectionWS;
}
void ComputeShadow_id83(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id82(inout PS_STREAMS streams, int lightIndexIgnored)
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
    ProcessLight_id87(streams, spotLight);
}
void ComputeShadow_id75(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id74(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id86.Load(streams.lightIndex_id84);
    streams.lightIndex_id84++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id90.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id90.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id79(streams, pointLight);
}
void PrepareLightData_id78(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id79.y / (projectedDepth - ZProjection_id79.x);
    int2 shadingPosition = int2(streams.ShadingPosition_id0.xy);
    int slice = int(max(log2(depth * ClusterDepthScale_id87 + ClusterDepthBias_id88), 0));
    streams.lightData_id83 = LightClusters_id85.Load(int4(shadingPosition / ClusterSize2_id82, slice, 0));
    streams.lightIndex_id84 = streams.lightData_id83.x;
}
float GetFilterSquareRoughnessAdjustment_id157(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id180()
{
}
void PrepareEnvironmentLight_id233(inout PS_STREAMS streams)
{
    float ambientAccessibility = streams.matAmbientOcclusion_id51;
    float3 sampleDirection = mul(streams.normalWS_id16, (float3x3)SkyMatrix_id176);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id41 = Compute_id216(sampleDirection).rgb * Intensity_id177 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id58.x;
    sampleDirection = reflect(-streams.viewWS_id61, streams.normalWS_id16);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id176);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id42 = Compute_id221(streams, sampleDirection).rgb * Intensity_id177 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeEnvironmentLightContribution_id245(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id227(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id171 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareDirectLight_id210(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id90(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id91(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id211()
{
    return LightCount_id94;
}
int GetMaxLightCount_id212()
{
    return TMaxLightCount_id95;
}
void PrepareDirectLights_id208()
{
}
void PrepareDirectLight_id201(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id82(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id83(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id204(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
int GetMaxLightCount_id203(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
void PrepareDirectLights_id199()
{
}
float3 ComputeDirectLightContribution_id244(inout PS_STREAMS streams)
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
void PrepareDirectLight_id191(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id74(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id75(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id195(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
int GetMaxLightCount_id194(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
void PrepareDirectLights_id193(inout PS_STREAMS streams)
{
    PrepareLightData_id78(streams);
}
void PrepareMaterialForLightingAndShading_id167(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id157(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id166(inout PS_STREAMS streams)
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
float4 Compute_id242()
{
    return constantColor_id198;
}
float4 Compute_id240()
{
    return float4(constantFloat_id196, constantFloat_id196, constantFloat_id196, constantFloat_id196);
}
float4 Compute_id238()
{
    return float4(constantFloat_id194, constantFloat_id194, constantFloat_id194, constantFloat_id194);
}
float4 Compute_id236(inout PS_STREAMS streams)
{
    return Texture_id189.Sample(Sampler_id181, streams.TexCoord_id148 * scale_id191 + offset_id192).rgba;
}
float4 Compute_id234(inout PS_STREAMS streams)
{
    return Texture_id180.Sample(Sampler_id181, streams.TexCoord_id148 * scale_id183 + offset_id184).rgba;
}
void ResetStream_id183(inout PS_STREAMS streams)
{
    ResetStream_id180();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id308(inout PS_STREAMS streams)
{
    streams.shadingColorAlpha_id67 = lerp(0, streams.shadingColorAlpha_id67, streams.matDiffuseSpecularAlphaBlend_id58.r);
}
void Compute_id303(inout PS_STREAMS streams)
{
    streams.shadingColor_id66 += streams.matEmissive_id56.rgb * streams.matEmissiveIntensity_id57;
}
void Compute_id302(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id19(streams.matNormal_id45);
    ResetLightStream_id166(streams);
    PrepareMaterialForLightingAndShading_id167(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id193(streams);
        const int maxLightCount = GetMaxLightCount_id194(streams);
        int count = GetLightCount_id195(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id191(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id244(streams);
            }
        }
    }

    {
        PrepareDirectLights_id199();
        const int maxLightCount = GetMaxLightCount_id203(streams);
        int count = GetLightCount_id204(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id201(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id244(streams);
            }
        }
    }

    {
        PrepareDirectLights_id208();
        const int maxLightCount = GetMaxLightCount_id212();
        int count = GetLightCount_id211();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id210(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id244(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id227(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id245(streams);
        }
    }

    {
        PrepareEnvironmentLight_id233(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id245(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id201 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id287(inout PS_STREAMS streams)
{
    streams.matAlphaBlendColor_id59 = Compute_id242().rgb;
}
void Compute_id282(inout PS_STREAMS streams)
{
    streams.matDiffuseSpecularAlphaBlend_id58 = Compute_id240().r;
}
void Compute_id277(inout PS_STREAMS streams)
{
    streams.matEmissiveIntensity_id57 = Compute_id238().r;
}
void Compute_id272(inout PS_STREAMS streams)
{
    streams.matEmissive_id56 = Compute_id236(streams).rgba;
}
void Compute_id267(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id234(streams);
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id185(inout PS_STREAMS streams)
{
    ResetStream_id183(streams);
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
        Compute_id267(streams);
    }

    {
        Compute_id272(streams);
    }

    {
        Compute_id277(streams);
    }

    {
        Compute_id282(streams);
    }

    {
        Compute_id287(streams);
    }

    {
        Compute_id302(streams);
    }

    {
        Compute_id303(streams);
    }

    {
        Compute_id308(streams);
    }
}
void ResetStream_id70(inout PS_STREAMS streams)
{
    ResetStream_id185(streams);
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
    ResetStream_id70(streams);
    Compute_id71(streams);
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
    streams.TexCoord_id148 = __input__.TexCoord_id148;
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
    streams.TexCoord_id148 = __input__.TexCoord_id148;
    VSMain_id8(streams);
    GenerateNormal_VS_id17(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id20 = streams.DepthVS_id20;
    __output__.normalWS_id16 = streams.normalWS_id16;
    __output__.TexCoord_id148 = streams.TexCoord_id148;
    return __output__;
}
