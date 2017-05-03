/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.HasSkinningPosition: True
@P Material.HasSkinningNormal: True
@P Material.HasSkinningTangent: False
@P Material.SkinningMaxBones: 56
@P Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecular,rgb> [{computeColorSource = ComputeColorConstantColorLink<Material.SpecularValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecularIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.SpecularIntensityValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilityImplicit}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionBlinnPhong}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<8>, LightClusteredPointGroup, LightClusteredSpotGroup
@P Lighting.EnvironmentLights: LightSimpleAmbient, xkfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: IComputeEnvironmentColor
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: IComputeEnvironmentColor
@P XenkoEffectBase.RenderTargetExtensions: mixin
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 4000]
@C    World_id29 => Transformation.World
@C    WorldInverse_id30 => Transformation.WorldInverse
@C    WorldInverseTranspose_id31 => Transformation.WorldInverseTranspose
@C    WorldView_id32 => Transformation.WorldView
@C    WorldViewInverse_id33 => Transformation.WorldViewInverse
@C    WorldViewProjection_id34 => Transformation.WorldViewProjection
@C    WorldScale_id35 => Transformation.WorldScale
@C    EyeMS_id36 => Transformation.EyeMS
@C    BlendMatrixArray_id37 => TransformationSkinning.BlendMatrixArray
cbuffer PerMaterial [Size: 48]
@C    constantColor_id105 => Material.DiffuseValue
@C    constantColor_id168 => Material.SpecularValue
@C    constantFloat_id170 => Material.SpecularIntensityValue
cbuffer PerView [Size: 800]
@C    View_id22 => Transformation.View
@C    ViewInverse_id23 => Transformation.ViewInverse
@C    Projection_id24 => Transformation.Projection
@C    ProjectionInverse_id25 => Transformation.ProjectionInverse
@C    ViewProjection_id26 => Transformation.ViewProjection
@C    ProjScreenRay_id27 => Transformation.ProjScreenRay
@C    Eye_id28 => Transformation.Eye
@C    NearClipPlane_id86 => Camera.NearClipPlane
@C    FarClipPlane_id87 => Camera.FarClipPlane
@C    ZProjection_id88 => Camera.ZProjection
@C    ViewSize_id89 => Camera.ViewSize
@C    AspectRatio_id90 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id82 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id84 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ClusterDepthScale_id95 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id96 => LightClustered.ClusterDepthBias
@C    ClusterStride_id97 => LightClustered.ClusterStride
@C    AmbientLight_id100 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SkyMatrix_id101 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id102 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    LightClusters_id93 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id93 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id94 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id94 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id98 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id98 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id99 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id99 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LightClusters_id93 => LightClustered.LightClusters [Stage: Pixel, Slot: (0-0)]
@R    LightIndices_id94 => LightClustered.LightIndices [Stage: Pixel, Slot: (1-1)]
@R    PointLights_id98 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (2-2)]
@R    SpotLights_id99 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (3-3)]
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
@S    TransformationSkinning => e7bd10d31973ce3c7a50eb430b6e2748
@S    NormalMeshSkinning => 886f2c848d2cc3a8d790a16ff0e2e6c6
@S    NormalVSSkinningFromMesh => 1528b929ed1092a428d81cd1b353bda8
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
@S    MaterialSurfaceShadingDiffuseLambert => 66ea94572ee9f10a2e305608a7d69dad
@S    MaterialSurfaceShadingSpecularMicrofacet => b7d013f1414d67d7f1a4afd4ac068c8e
@S    BRDFMicrofacet => 98c58221f1b61f0766453f0ce60edcb0
@S    IMaterialSpecularMicrofacetFresnelFunction => be6c16bab5a59713001b43d92cde1a5a
@S    IMaterialSpecularMicrofacetVisibilityFunction => 5872403d82d7dcdfdaaf64a9f924b8dd
@S    IMaterialSpecularMicrofacetNormalDistributionFunction => a8ee1e483f2e3d59a955262211e6f903
@S    MaterialSpecularMicrofacetFresnelSchlick => 31c4aa7c7fbef53ee309a102999a200c
@S    MaterialSpecularMicrofacetVisibilityImplicit => 71acfad6c818096c1cd2e2b3e45c9b21
@S    MaterialSpecularMicrofacetNormalDistributionBlinnPhong => fc2aebd5862689be6d792d63d0448aac
***************************
*****     Stages      *****
***************************
@G    Vertex => 7292b8640a9df84ea08b66cca0d9de73
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id29;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id30;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id32;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id33;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id34; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id35;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id36;                 // Offset:  400 Size:    16 [unused]
//   float4x4 BlendMatrixArray_id37[56];// Offset:  416 Size:  3584
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
//   float NearClipPlane_id86;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id87;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id88;           // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id89;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id90;            // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id82;               // Offset:  400 Size:     4 [unused]
//   
//   struct
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id84[8];                  // Offset:  416 Size:   252 [unused]
//   float ClusterDepthScale_id95;      // Offset:  668 Size:     4 [unused]
//   float ClusterDepthBias_id96;       // Offset:  672 Size:     4 [unused]
//   float2 ClusterStride_id97;         // Offset:  676 Size:     8 [unused]
//   float3 AmbientLight_id100;         // Offset:  688 Size:    12 [unused]
//   float4x4 SkyMatrix_id101;          // Offset:  704 Size:    64 [unused]
//   float Intensity_id102;             // Offset:  768 Size:     4 [unused]
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
// POSITION                 0   xyzw        0     NONE   float   xyz 
// BLENDINDICES             0   xyzw        1     NONE    uint   xyzw
// BLENDWEIGHT              0   xyzw        2     NONE   float   xyzw
// NORMAL                   0   xyz         3     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// SCREENPOSITION_ID85_SEM     0   xyzw        3     NONE   float   xyzw
//
vs_4_0
dcl_constantbuffer cb0[250], dynamicIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyz
dcl_input v1.xyzw
dcl_input v2.xyzw
dcl_input v3.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_temps 5
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.BlendIndices_id39.x; v1.y <- __input__.BlendIndices_id39.y; v1.z <- __input__.BlendIndices_id39.z; v1.w <- __input__.BlendIndices_id39.w; 
//   v2.x <- __input__.BlendWeights_id38.x; v2.y <- __input__.BlendWeights_id38.y; v2.z <- __input__.BlendWeights_id38.z; v2.w <- __input__.BlendWeights_id38.w; 
//   v3.x <- __input__.meshNormal_id14.x; v3.y <- __input__.meshNormal_id14.y; v3.z <- __input__.meshNormal_id14.z; 
//   o3.x <- <VSMain return value>.ScreenPosition_id85.x; o3.y <- <VSMain return value>.ScreenPosition_id85.y; o3.z <- <VSMain return value>.ScreenPosition_id85.z; o3.w <- <VSMain return value>.ScreenPosition_id85.w; 
//   o2.x <- <VSMain return value>.normalWS_id16.x; o2.y <- <VSMain return value>.normalWS_id16.y; o2.z <- <VSMain return value>.normalWS_id16.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 771 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_67aaeb0f8f89bdb17803602dbf0e737f.hlsl"
mov r0.xyz, v0.xyzx
mov r0.w, l(1.000000)

#line 602
ishl r1.xyzw, v1.xyzw, l(2)

#line 770
mul r2.xyzw, v2.yyyy, cb0[r1.y + 29].xyzw
mad r2.xyzw, cb0[r1.x + 29].xyzw, v2.xxxx, r2.xyzw
mad r2.xyzw, cb0[r1.z + 29].xyzw, v2.zzzz, r2.xyzw
mad r2.xyzw, cb0[r1.w + 29].xyzw, v2.wwww, r2.xyzw  // r2.x <- streams.skinningBlendMatrix_id40._m03; r2.y <- streams.skinningBlendMatrix_id40._m13; r2.z <- streams.skinningBlendMatrix_id40._m23; r2.w <- streams.skinningBlendMatrix_id40._m33
dp4 r2.w, r0.xyzw, r2.xyzw  // r2.w <- blendPos.w
mul r3.xyzw, v2.yyyy, cb0[r1.y + 26].xyzw
mad r3.xyzw, cb0[r1.x + 26].xyzw, v2.xxxx, r3.xyzw
mad r3.xyzw, cb0[r1.z + 26].xyzw, v2.zzzz, r3.xyzw
mad r3.xyzw, cb0[r1.w + 26].xyzw, v2.wwww, r3.xyzw  // r3.x <- streams.skinningBlendMatrix_id40._m00; r3.y <- streams.skinningBlendMatrix_id40._m10; r3.z <- streams.skinningBlendMatrix_id40._m20; r3.w <- streams.skinningBlendMatrix_id40._m30
dp4 r2.x, r0.xyzw, r3.xyzw  // r2.x <- blendPos.x

#line 812
dp3 r3.x, v3.xyzx, r3.xyzx

#line 770
mul r4.xyzw, v2.yyyy, cb0[r1.y + 27].xyzw
mad r4.xyzw, cb0[r1.x + 27].xyzw, v2.xxxx, r4.xyzw
mad r4.xyzw, cb0[r1.z + 27].xyzw, v2.zzzz, r4.xyzw
mad r4.xyzw, cb0[r1.w + 27].xyzw, v2.wwww, r4.xyzw  // r4.x <- streams.skinningBlendMatrix_id40._m01; r4.y <- streams.skinningBlendMatrix_id40._m11; r4.z <- streams.skinningBlendMatrix_id40._m21; r4.w <- streams.skinningBlendMatrix_id40._m31
dp4 r2.y, r0.xyzw, r4.xyzw  // r2.y <- blendPos.y

#line 812
dp3 r3.y, v3.xyzx, r4.xyzx

#line 770
mul r4.xyzw, v2.yyyy, cb0[r1.y + 28].xyzw
mad r4.xyzw, cb0[r1.x + 28].xyzw, v2.xxxx, r4.xyzw
mad r4.xyzw, cb0[r1.z + 28].xyzw, v2.zzzz, r4.xyzw
mad r1.xyzw, cb0[r1.w + 28].xyzw, v2.wwww, r4.xyzw  // r1.x <- streams.skinningBlendMatrix_id40._m02; r1.y <- streams.skinningBlendMatrix_id40._m12; r1.z <- streams.skinningBlendMatrix_id40._m22; r1.w <- streams.skinningBlendMatrix_id40._m32
dp4 r2.z, r0.xyzw, r1.xyzw  // r2.z <- blendPos.z

#line 812
dp3 r3.z, v3.xyzx, r1.xyzx

#line 772
div r0.xyzw, r2.xyzw, r2.wwww  // r0.x <- blendPos.x; r0.y <- blendPos.y; r0.z <- blendPos.z; r0.w <- blendPos.w

#line 890
mov o0.xyzw, r0.xyzw

#line 802
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- streams.ShadingPosition_id0.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- streams.ShadingPosition_id0.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- streams.ShadingPosition_id0.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- streams.ShadingPosition_id0.w

#line 890
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw

#line 812
dp3 r0.x, r3.xyzx, r3.xyzx
rsq r0.x, r0.x
mul o2.xyz, r0.xxxx, r3.xyzx

#line 890
ret 
// Approximately 38 instruction slots used
@G    Pixel => 46dd0e5253b7478baf8889a78a047988
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id105;        // Offset:    0 Size:    16
//   float4 constantColor_id168;        // Offset:   16 Size:    16
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
//   float4 Eye_id28;                   // Offset:  336 Size:    16
//   float NearClipPlane_id86;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id87;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id88;           // Offset:  360 Size:     8
//   float2 ViewSize_id89;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id90;            // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id82;               // Offset:  400 Size:     4
//   
//   struct
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id84[8];                  // Offset:  416 Size:   252
//   float ClusterDepthScale_id95;      // Offset:  668 Size:     4
//   float ClusterDepthBias_id96;       // Offset:  672 Size:     4
//   float2 ClusterStride_id97;         // Offset:  676 Size:     8
//   float3 AmbientLight_id100;         // Offset:  688 Size:    12
//   float4x4 SkyMatrix_id101;          // Offset:  704 Size:    64 [unused]
//   float Intensity_id102;             // Offset:  768 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset:  784 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// LightClusters_id93                texture   uint2          3d    0        1
// LightIndices_id94                 texture    uint         buf    1        1
// PointLights_id98                  texture  float4         buf    2        1
// SpotLights_id99                   texture  float4         buf    3        1
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
// SCREENPOSITION_ID85_SEM     0   xyzw        3     NONE   float   xy w
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
dcl_constantbuffer cb1[44], dynamicIndexed
dcl_resource_texture3d (uint,uint,uint,uint) t0
dcl_resource_buffer (uint,uint,uint,uint) t1
dcl_resource_buffer (float,float,float,float) t2
dcl_resource_buffer (float,float,float,float) t3
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyw
dcl_output o0.xyzw
dcl_temps 16
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id16.x; v2.y <- __input__.normalWS_id16.y; v2.z <- __input__.normalWS_id16.z; 
//   v3.x <- __input__.ScreenPosition_id85.x; v3.y <- __input__.ScreenPosition_id85.y; v3.z <- __input__.ScreenPosition_id85.z; v3.w <- __input__.ScreenPosition_id85.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 870 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_67aaeb0f8f89bdb17803602dbf0e737f.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id85.x; r0.y <- streams.ScreenPosition_id85.y

#line 841
dp3 r0.z, v2.xyzx, v2.xyzx
lt r0.w, l(0.000000), r0.z
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.xyzx  // r1.x <- streams.normalWS_id16.x; r1.y <- streams.normalWS_id16.y; r1.z <- streams.normalWS_id16.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.xyzx

#line 816
add r2.xyz, -v0.xyzx, cb1[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.viewWS_id66.x; r2.y <- streams.viewWS_id66.y; r2.z <- streams.viewWS_id66.z

#line 563
mul r3.xyz, cb0[1].xyzx, cb0[2].xxxx  // r3.x <- streams.matSpecularVisible_id69.x; r3.y <- streams.matSpecularVisible_id69.y; r3.z <- streams.matSpecularVisible_id69.z
dp3 r0.z, r1.xyzx, r2.xyzx

#line 621
mov r4.xyz, r1.xyzx  // r4.x <- streams.normalWS_id16.x; r4.y <- streams.normalWS_id16.y; r4.z <- streams.normalWS_id16.z
mov r5.xyz, r2.xyzx  // r5.x <- streams.viewWS_id66.x; r5.y <- streams.viewWS_id66.y; r5.z <- streams.viewWS_id66.z
mov r6.xyz, cb0[0].xyzx  // r6.x <- streams.matDiffuseVisible_id67.x; r6.y <- streams.matDiffuseVisible_id67.y; r6.z <- streams.matDiffuseVisible_id67.z
mov r7.xyz, r3.xyzx  // r7.x <- streams.matSpecularVisible_id69.x; r7.y <- streams.matSpecularVisible_id69.y; r7.z <- streams.matSpecularVisible_id69.z
mov r8.xyz, l(0,0,0,0)  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, l(8)
  breakc_nz r1.w
  ige r1.w, r0.w, cb1[25].x
  if_nz r1.w
    break 
  endif 

#line 432
  ishl r1.w, r0.w, l(1)

#line 544
  dp3 r2.w, r4.xyzx, -cb1[r1.w + 26].xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id48
  mul r9.xyz, r2.wwww, cb1[r1.w + 27].xyzx  // r9.x <- streams.lightColorNdotL_id45.x; r9.y <- streams.lightColorNdotL_id45.y; r9.z <- streams.lightColorNdotL_id45.z

#line 536
  add r10.xyz, r5.xyzx, -cb1[r1.w + 26].xyzx
  dp3 r2.w, r10.xyzx, r10.xyzx
  rsq r2.w, r2.w
  mul r10.xyz, r2.wwww, r10.xyzx  // r10.x <- streams.H_id73.x; r10.y <- streams.H_id73.y; r10.z <- streams.H_id73.z
  dp3 r1.w, -cb1[r1.w + 26].xyzx, r10.xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.LdotH_id75

#line 532
  mul r10.xyz, r6.xyzx, r9.xyzx

#line 631
  mad r10.xyz, r10.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r8.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 287
  add r11.xyz, -r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r1.w, -r1.w, l(1.000000)
  mul r2.w, r1.w, r1.w
  mul r2.w, r2.w, r2.w
  mul r1.w, r1.w, r2.w
  mad r11.xyz, r11.xyzx, r1.wwww, r7.xyzx  // r11.x <- <FresnelSchlick_id166 return value>.x; r11.y <- <FresnelSchlick_id166 return value>.y; r11.z <- <FresnelSchlick_id166 return value>.z

#line 526
  mul r9.xyz, r9.xyzx, r11.xyzx

#line 635
  mad r8.xyz, r9.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r10.xyzx  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z

#line 621
  iadd r0.w, r0.w, l(1)

#line 637
endloop 

#line 408
add r0.w, v1.z, -cb1[22].z
div r0.w, cb1[22].w, r0.w  // r0.w <- depth
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb1[42].yzyy
mad r0.w, r0.w, cb1[41].w, cb1[42].x
log r0.w, r0.w

#line 564
max r0.zw, r0.zzzw, l(0.000000, 0.000000, 0.000100, 0.000000)  // r0.z <- streams.NdotV_id70

#line 411
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
ftoi r4.xyz, r0.xywx  // r4.z <- slice
mov r4.w, l(0)
ld r4.xyzw, r4.xyzw, t0.xyzw  // r4.x <- streams.lightData_id91.x; r4.y <- streams.lightData_id91.y

#line 514
and r0.x, r4.y, l(0x0000ffff)  // r0.x <- <GetMaxLightCount_id224 return value>

#line 645
mov r5.xyz, r1.xyzx  // r5.x <- streams.normalWS_id16.x; r5.y <- streams.normalWS_id16.y; r5.z <- streams.normalWS_id16.z
mov r5.w, v0.x  // r5.w <- streams.PositionWS_id19.x
mov r6.xy, v0.yzyy  // r6.x <- streams.PositionWS_id19.y; r6.y <- streams.PositionWS_id19.z
mov r6.zw, r2.xxxy  // r6.z <- streams.viewWS_id66.x; r6.w <- streams.viewWS_id66.y
mov r7.z, r2.z  // r7.z <- streams.viewWS_id66.z
mov r9.xyz, cb0[0].xyzx  // r9.x <- streams.matDiffuseVisible_id67.x; r9.y <- streams.matDiffuseVisible_id67.y; r9.z <- streams.matDiffuseVisible_id67.z
mov r10.xyz, r3.xyzx  // r10.x <- streams.matSpecularVisible_id69.x; r10.y <- streams.matSpecularVisible_id69.y; r10.z <- streams.matSpecularVisible_id69.z
mov r11.x, r4.x  // r11.x <- streams.lightIndex_id92
mov r11.yzw, r8.xxyz  // r11.y <- directLightingContribution.x; r11.z <- directLightingContribution.y; r11.w <- directLightingContribution.z
mov r0.y, l(0)  // r0.y <- i
loop 
  ige r0.w, r0.y, r0.x
  breakc_nz r0.w
  if_nz r0.w
    break 
  endif 

#line 395
  ld r12.xyzw, r11.xxxx, t1.xyzw  // r12.x <- realLightIndex
  iadd r11.x, r11.x, l(1)  // r11.x <- streams.lightIndex_id92
  ishl r0.w, r12.x, l(1)
  ld r12.xyzw, r0.wwww, t2.xyzw  // r12.x <- pointLight1.x; r12.y <- pointLight1.y; r12.z <- pointLight1.z; r12.w <- pointLight1.w
  iadd r0.w, r0.w, l(1)
  ld r13.xyzw, r0.wwww, t2.xyzw  // r13.x <- pointLight2.x; r13.y <- pointLight2.y; r13.z <- pointLight2.z

#line 306
  mov r14.x, r5.w
  mov r14.yz, r6.xxyx
  add r12.xyz, r12.xyzx, -r14.xyzx  // r12.x <- lightVector.x; r12.y <- lightVector.y; r12.z <- lightVector.z
  dp3 r0.w, r12.xyzx, r12.xyzx
  sqrt r1.w, r0.w  // r1.w <- lightVectorLength
  div r12.xyz, r12.xyzx, r1.wwww  // r12.x <- lightVectorNorm.x; r12.y <- lightVectorNorm.y; r12.z <- lightVectorNorm.z

#line 281
  max r1.w, r0.w, l(0.000100)
  div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w  // r1.w <- attenuation

#line 260
  mul r0.w, r12.w, r0.w  // r0.w <- factor
  mad r0.w, -r0.w, r0.w, l(1.000000)
  max r0.w, r0.w, l(0.000000)  // r0.w <- smoothFactor
  mul r0.w, r0.w, r0.w  // r0.w <- <SmoothDistanceAttenuation_id86 return value>

#line 282
  mul r0.w, r0.w, r1.w  // r0.w <- attenuation

#line 313
  mul r13.xyz, r0.wwww, r13.xyzx  // r13.x <- streams.lightColor_id44.x; r13.y <- streams.lightColor_id44.y; r13.z <- streams.lightColor_id44.z

#line 504
  dp3 r0.w, r5.xyzx, r12.xyzx
  max r0.w, r0.w, l(0.000100)  // r0.w <- streams.NdotL_id48
  mul r13.xyz, r0.wwww, r13.xyzx  // r13.x <- streams.lightColorNdotL_id45.x; r13.y <- streams.lightColorNdotL_id45.y; r13.z <- streams.lightColorNdotL_id45.z

#line 536
  mov r7.xy, r6.zwzz
  add r7.xyw, r12.xyxz, r7.xyxz
  dp3 r0.w, r7.xywx, r7.xywx
  rsq r0.w, r0.w
  mul r7.xyw, r0.wwww, r7.xyxw  // r7.x <- streams.H_id73.x; r7.y <- streams.H_id73.y; r7.w <- streams.H_id73.z
  dp3 r0.w, r12.xyzx, r7.xywx
  max r0.w, r0.w, l(0.000100)  // r0.w <- streams.LdotH_id75

#line 532
  mul r7.xyw, r9.xyxz, r13.xyxz

#line 655
  mad r7.xyw, r7.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r11.yzyw  // r7.x <- directLightingContribution.x; r7.y <- directLightingContribution.y; r7.w <- directLightingContribution.z

#line 287
  add r12.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r0.w, -r0.w, l(1.000000)
  mul r1.w, r0.w, r0.w
  mul r1.w, r1.w, r1.w
  mul r0.w, r0.w, r1.w
  mad r12.xyz, r12.xyzx, r0.wwww, r10.xyzx  // r12.x <- <FresnelSchlick_id166 return value>.x; r12.y <- <FresnelSchlick_id166 return value>.y; r12.z <- <FresnelSchlick_id166 return value>.z

#line 526
  mul r12.xyz, r13.xyzx, r12.xyzx

#line 659
  mad r11.yzw, r12.xxyz, l(0.000000, 0.079577, 0.079577, 0.079577), r7.xxyw  // r11.y <- directLightingContribution.x; r11.z <- directLightingContribution.y; r11.w <- directLightingContribution.z

#line 645
  iadd r0.y, r0.y, l(1)

#line 661
endloop   // r11.x <- streams.lightIndex_id92

#line 496
ushr r0.x, r4.y, l(16)  // r0.x <- <GetMaxLightCount_id233 return value>

#line 669
mov r4.xyz, r1.xyzx  // r4.x <- streams.normalWS_id16.x; r4.y <- streams.normalWS_id16.y; r4.z <- streams.normalWS_id16.z
mov r4.w, v0.x  // r4.w <- streams.PositionWS_id19.x
mov r5.xy, v0.yzyy  // r5.x <- streams.PositionWS_id19.y; r5.y <- streams.PositionWS_id19.z
mov r5.zw, r2.xxxy  // r5.z <- streams.viewWS_id66.x; r5.w <- streams.viewWS_id66.y
mov r6.x, r2.z  // r6.x <- streams.viewWS_id66.z
mov r6.z, r11.x  // r6.z <- streams.lightIndex_id92
mov r7.xyz, cb0[0].xyzx  // r7.x <- streams.matDiffuseVisible_id67.x; r7.y <- streams.matDiffuseVisible_id67.y; r7.z <- streams.matDiffuseVisible_id67.z
mov r8.xyz, r3.xyzx  // r8.x <- streams.matSpecularVisible_id69.x; r8.y <- streams.matSpecularVisible_id69.y; r8.z <- streams.matSpecularVisible_id69.z
mov r9.xyz, r11.yzwy  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.z <- directLightingContribution.z
mov r0.y, l(0)  // r0.y <- i
loop 
  ige r0.w, r0.y, r0.x
  breakc_nz r0.w
  if_nz r0.w
    break 
  endif 

#line 376
  ld r10.xyzw, r6.zzzz, t1.xyzw  // r10.x <- realLightIndex
  iadd r6.z, r6.z, l(1)  // r6.z <- streams.lightIndex_id92
  ishl r0.w, r10.x, l(2)
  ld r10.xyzw, r0.wwww, t3.xyzw  // r10.x <- spotLight1.x; r10.y <- spotLight1.y; r10.z <- spotLight1.z

#line 382
  iadd r12.xyz, r0.wwww, l(1, 2, 3, 0)
  ld r13.xyzw, r12.xxxx, t3.xyzw  // r13.x <- spotLight2.x; r13.y <- spotLight2.y; r13.z <- spotLight2.z
  ld r14.xyzw, r12.yyyy, t3.xyzw  // r14.x <- spotLight3.x; r14.y <- spotLight3.y; r14.z <- spotLight3.z
  ld r12.xyzw, r12.zzzz, t3.xyzw  // r12.x <- spotLight4.x; r12.y <- spotLight4.y; r12.z <- spotLight4.z

#line 291
  mov r15.x, r4.w
  mov r15.yz, r5.xxyx
  add r10.xyz, r10.xyzx, -r15.xyzx  // r10.x <- lightVector.x; r10.y <- lightVector.y; r10.z <- lightVector.z
  dp3 r0.w, r10.xyzx, r10.xyzx
  sqrt r1.w, r0.w  // r1.w <- lightVectorLength
  div r10.xyz, r10.xyzx, r1.wwww  // r10.x <- lightVectorNorm.x; r10.y <- lightVectorNorm.y; r10.z <- lightVectorNorm.z

#line 274
  max r1.w, r0.w, l(0.000100)
  div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w  // r1.w <- attenuation

#line 254
  mul r0.w, r14.z, r0.w  // r0.w <- factor
  mad r0.w, -r0.w, r0.w, l(1.000000)
  max r0.w, r0.w, l(0.000000)  // r0.w <- smoothFactor
  mul r0.w, r0.w, r0.w  // r0.w <- <SmoothDistanceAttenuation_id94 return value>

#line 275
  mul r0.w, r0.w, r1.w  // r0.w <- attenuation

#line 266
  dp3 r1.w, -r13.xyzx, r10.xyzx  // r1.w <- cd
  mad_sat r1.w, r1.w, r14.x, r14.y  // r1.w <- attenuation
  mul r1.w, r1.w, r1.w

#line 300
  mul r0.w, r0.w, r1.w  // r0.w <- attenuation
  mul r12.xyz, r0.wwww, r12.xyzx  // r12.x <- streams.lightColor_id44.x; r12.y <- streams.lightColor_id44.y; r12.z <- streams.lightColor_id44.z

#line 486
  dp3 r0.w, r4.xyzx, r10.xyzx
  max r0.w, r0.w, l(0.000100)  // r0.w <- streams.NdotL_id48
  mul r12.xyz, r0.wwww, r12.xyzx  // r12.x <- streams.lightColorNdotL_id45.x; r12.y <- streams.lightColorNdotL_id45.y; r12.z <- streams.lightColorNdotL_id45.z

#line 536
  mov r6.yw, r5.zzzw
  add r13.xyz, r10.xyzx, r6.ywxy
  dp3 r0.w, r13.xyzx, r13.xyzx
  rsq r0.w, r0.w
  mul r13.xyz, r0.wwww, r13.xyzx  // r13.x <- streams.H_id73.x; r13.y <- streams.H_id73.y; r13.z <- streams.H_id73.z
  dp3 r0.w, r10.xyzx, r13.xyzx
  max r0.w, r0.w, l(0.000100)  // r0.w <- streams.LdotH_id75

#line 532
  mul r10.xyz, r7.xyzx, r12.xyzx

#line 679
  mad r10.xyz, r10.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r9.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 287
  add r13.xyz, -r8.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r0.w, -r0.w, l(1.000000)
  mul r1.w, r0.w, r0.w
  mul r1.w, r1.w, r1.w
  mul r0.w, r0.w, r1.w
  mad r13.xyz, r13.xyzx, r0.wwww, r8.xyzx  // r13.x <- <FresnelSchlick_id166 return value>.x; r13.y <- <FresnelSchlick_id166 return value>.y; r13.z <- <FresnelSchlick_id166 return value>.z

#line 526
  mul r12.xyz, r12.xyzx, r13.xyzx

#line 683
  mad r9.xyz, r12.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r10.xyzx  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.z <- directLightingContribution.z

#line 669
  iadd r0.y, r0.y, l(1)

#line 685
endloop   // r6.z <- streams.lightIndex_id92

#line 360
mad r0.x, r0.z, l(-0.522800), l(0.604500)
mul r0.y, r0.z, r0.z
mad_sat r0.x, r0.y, l(0.193900), r0.x  // r0.x <- delta

#line 363
mul r0.xyz, r0.xxxx, r3.xyzx  // r0.x <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id199 return value>.x; r0.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id199 return value>.y; r0.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id199 return value>.z

#line 469
mul r0.xyz, r0.xyzx, cb1[43].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id395 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id395 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id395 return value>.z

#line 697
mad r0.xyz, cb0[0].xyzx, cb1[43].xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 724
mad o0.xyz, r9.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 874
mov o0.w, cb0[0].w
ret 
// Approximately 191 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id83 = 8;
const static bool TIsEnergyConservative_id174 = false;
static const float PI_id176 = 3.14159265358979323846;
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
Texture3D<uint2> LightClusters_id93;
Buffer<uint> LightIndices_id94;
Buffer<float4> PointLights_id98;
Buffer<float4> SpotLights_id99;
struct PS_STREAMS 
{
    float4 ScreenPosition_id85;
    float3 normalWS_id16;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float3 viewWS_id66;
    float3 shadingColor_id71;
    float matBlend_id41;
    float3 matNormal_id50;
    float4 matColorBase_id51;
    float4 matDiffuse_id52;
    float3 matDiffuseVisible_id67;
    float3 matSpecular_id54;
    float3 matSpecularVisible_id69;
    float matSpecularIntensity_id55;
    float matGlossiness_id53;
    float alphaRoughness_id68;
    float matAmbientOcclusion_id56;
    float matAmbientOcclusionDirectLightingFactor_id57;
    float matCavity_id58;
    float matCavityDiffuse_id59;
    float matCavitySpecular_id60;
    float4 matEmissive_id61;
    float matEmissiveIntensity_id62;
    float2 matDiffuseSpecularAlphaBlend_id63;
    float3 matAlphaBlendColor_id64;
    float matAlphaDiscard_id65;
    float shadingColorAlpha_id72;
    float3 lightPositionWS_id42;
    float3 lightDirectionWS_id43;
    float3 lightColor_id44;
    float3 lightColorNdotL_id45;
    float3 envLightDiffuseColor_id46;
    float3 envLightSpecularColor_id47;
    float lightDirectAmbientOcclusion_id49;
    float NdotL_id48;
    float NdotV_id70;
    float3 shadowColor_id81;
    float3 H_id73;
    float NdotH_id74;
    float LdotH_id75;
    float VdotH_id76;
    uint2 lightData_id91;
    int lightIndex_id92;
    float4 ColorTarget_id1;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id1 : SV_Target0;
};
struct VS_STREAMS 
{
    float4 Position_id18;
    uint4 BlendIndices_id39;
    float4 BlendWeights_id38;
    float3 meshNormal_id14;
    float4x4 skinningBlendMatrix_id40;
    float4 PositionH_id21;
    float DepthVS_id20;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float3 normalWS_id16;
    float4 ScreenPosition_id85;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id19 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id16 : NORMALWS;
    float4 ScreenPosition_id85 : SCREENPOSITION_ID85_SEM;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    uint4 BlendIndices_id39 : BLENDINDICES;
    float4 BlendWeights_id38 : BLENDWEIGHT;
    float3 meshNormal_id14 : NORMAL;
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
    float4x4 BlendMatrixArray_id37[56];
};
cbuffer PerMaterial 
{
    float4 constantColor_id105;
    float4 constantColor_id168;
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
    float NearClipPlane_id86 = 1.0f;
    float FarClipPlane_id87 = 100.0f;
    float2 ZProjection_id88;
    float2 ViewSize_id89;
    float AspectRatio_id90;
    float4 _padding_PerView_Default;
    int LightCount_id82;
    DirectionalLightData Lights_id84[TMaxLightCount_id83];
    float ClusterDepthScale_id95;
    float ClusterDepthBias_id96;
    float2 ClusterStride_id97;
    float3 AmbientLight_id100;
    float4x4 SkyMatrix_id101;
    float Intensity_id102;
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
float SmoothDistanceAttenuation_id94(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id86(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float GetAngleAttenuation_id96(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id95(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id94(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id87(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id86(d2, lightInvSquareRadius);
    return attenuation;
}
float3 FresnelSchlick_id166(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
void ProcessLight_id97(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = light.AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -light.DirectionWS;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id95(lightVector, lightInvSquareRadius);
    attenuation *= GetAngleAttenuation_id96(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    streams.lightColor_id44 = light.Color * attenuation;
    streams.lightDirectionWS_id43 = lightVectorNorm;
}
void ProcessLight_id89(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id87(lightVector, lightInvSquareRadius);
    streams.lightPositionWS_id42 = light.PositionWS;
    streams.lightColor_id44 = light.Color * attenuation;
    streams.lightDirectionWS_id43 = lightVectorNorm;
}
float NormalDistributionBlinnPhong_id198(float alphaR, float nDotH)
{
    float alphaR2 = max(alphaR * alphaR, 0.1);
    return pow(nDotH, 2 / alphaR2 - 2) / (PI_id176 * alphaR2);
}
float VisibilityImplicit_id185(float nDotL, float nDotV)
{
    return 1.0f;
}
float3 FresnelSchlick_id172(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id166(f0, 1.0f, lOrVDotH);
}
float4 Compute_id236(float3 direction)
{
    return 0;
}
float4 Compute_id235(float3 direction)
{
    return 0;
}
void PrepareEnvironmentLight_id111(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
}
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id199(float3 specularColor, float alphaR, float nDotV)
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
void PrepareEnvironmentLight_id104(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
}
void ComputeShadow_id93(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id81 = 1.0f;
}
void PrepareDirectLightCore_id92(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id94.Load(streams.lightIndex_id92);
    streams.lightIndex_id92++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id99.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id99.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id99.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id99.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id97(streams, spotLight);
}
void ComputeShadow_id85(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id81 = 1.0f;
}
void PrepareDirectLightCore_id84(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id94.Load(streams.lightIndex_id92);
    streams.lightIndex_id92++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id98.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id98.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id89(streams, pointLight);
}
void PrepareLightData_id88(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id88.y / (projectedDepth - ZProjection_id88.x);
    float2 texCoord = float2(streams.ScreenPosition_id85.x + 1, 1 - streams.ScreenPosition_id85.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id95 + ClusterDepthBias_id96), 0));
    streams.lightData_id91 = LightClusters_id93.Load(int4(texCoord * ClusterStride_id97, slice, 0));
    streams.lightIndex_id92 = streams.lightData_id91.x;
}
float Compute_id315(inout PS_STREAMS streams)
{
    return NormalDistributionBlinnPhong_id198(streams.alphaRoughness_id68, streams.NdotH_id74);
}
float Compute_id285(inout PS_STREAMS streams)
{
    return VisibilityImplicit_id185(streams.NdotL_id48, streams.NdotV_id70);
}
float3 Compute_id256(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id172(f0, streams.LdotH_id75);
}
void ComputeShadow_id81(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id81 = 1.0f;
}
void PrepareDirectLightCore_id80(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id44 = Lights_id84[lightIndex].Color;
    streams.lightDirectionWS_id43 = -Lights_id84[lightIndex].DirectionWS;
}
float GetFilterSquareRoughnessAdjustment_id138(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id50);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id202()
{
}
void PreTransformPosition_id4()
{
}
void PrepareEnvironmentLight_id249(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
}
void PrepareEnvironmentLight_id246(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id111(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id56;
    float3 sampleDirection = mul(streams.normalWS_id16, (float3x3)SkyMatrix_id101);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id46 = Compute_id235(sampleDirection).rgb * Intensity_id102 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id63.x;
    sampleDirection = reflect(-streams.viewWS_id66, streams.normalWS_id16);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id101);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id47 = Compute_id236(sampleDirection).rgb * Intensity_id102 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id63.y;
}
float3 ComputeEnvironmentLightContribution_id395(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id69;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id199(specularColor, streams.alphaRoughness_id68, streams.NdotV_id70) * streams.envLightSpecularColor_id47;
}
float3 ComputeEnvironmentLightContribution_id346(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id67;
    return diffuseColor * streams.envLightDiffuseColor_id46;
}
void PrepareEnvironmentLight_id241(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id104(streams);
    float3 lightColor = AmbientLight_id100 * streams.matAmbientOcclusion_id56;
    streams.envLightDiffuseColor_id46 = lightColor;
    streams.envLightSpecularColor_id47 = lightColor;
}
void PrepareDirectLight_id231(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id92(streams, lightIndex);
    streams.NdotL_id48 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id43), 0.0001f);
    ComputeShadow_id93(streams, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.shadowColor_id81 * streams.NdotL_id48 * streams.lightDirectAmbientOcclusion_id49;
}
int GetLightCount_id234(inout PS_STREAMS streams)
{
    return streams.lightData_id91.y >> 16;
}
int GetMaxLightCount_id233(inout PS_STREAMS streams)
{
    return streams.lightData_id91.y >> 16;
}
void PrepareDirectLights_id229()
{
}
void PrepareDirectLight_id221(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id84(streams, lightIndex);
    streams.NdotL_id48 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id43), 0.0001f);
    ComputeShadow_id85(streams, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.shadowColor_id81 * streams.NdotL_id48 * streams.lightDirectAmbientOcclusion_id49;
}
int GetLightCount_id225(inout PS_STREAMS streams)
{
    return streams.lightData_id91.y & 0xFFFF;
}
int GetMaxLightCount_id224(inout PS_STREAMS streams)
{
    return streams.lightData_id91.y & 0xFFFF;
}
void PrepareDirectLights_id223(inout PS_STREAMS streams)
{
    PrepareLightData_id88(streams);
}
float3 ComputeDirectLightContribution_id394(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id69;
    float3 fresnel = Compute_id256(streams, specularColor);
    float geometricShadowing = Compute_id285(streams);
    float normalDistribution = Compute_id315(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightColorNdotL_id45 * streams.matDiffuseSpecularAlphaBlend_id63.y;
}
float3 ComputeDirectLightContribution_id345(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id67;
    return diffuseColor / PI_id176 * streams.lightColorNdotL_id45 * streams.matDiffuseSpecularAlphaBlend_id63.x;
}
void PrepareMaterialPerDirectLight_id33(inout PS_STREAMS streams)
{
    streams.H_id73 = normalize(streams.viewWS_id66 + streams.lightDirectionWS_id43);
    streams.NdotH_id74 = max(dot(streams.normalWS_id16, streams.H_id73), 0.0001f);
    streams.LdotH_id75 = max(dot(streams.lightDirectionWS_id43, streams.H_id73), 0.0001f);
    streams.VdotH_id76 = streams.LdotH_id75;
}
void PrepareDirectLight_id213(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id80(streams, lightIndex);
    streams.NdotL_id48 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id43), 0.0001f);
    ComputeShadow_id81(streams, lightIndex);
    streams.lightColorNdotL_id45 = streams.lightColor_id44 * streams.shadowColor_id81 * streams.NdotL_id48 * streams.lightDirectAmbientOcclusion_id49;
}
int GetLightCount_id214()
{
    return LightCount_id82;
}
int GetMaxLightCount_id215()
{
    return TMaxLightCount_id83;
}
void PrepareDirectLights_id211()
{
}
void PrepareMaterialForLightingAndShading_id201(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id49 = lerp(1.0, streams.matAmbientOcclusion_id56, streams.matAmbientOcclusionDirectLightingFactor_id57);
    streams.matDiffuseVisible_id67 = streams.matDiffuse_id52.rgb * lerp(1.0f, streams.matCavity_id58, streams.matCavityDiffuse_id59) * streams.matDiffuseSpecularAlphaBlend_id63.r * streams.matAlphaBlendColor_id64;
    streams.matSpecularVisible_id69 = streams.matSpecular_id54.rgb * streams.matSpecularIntensity_id55 * lerp(1.0f, streams.matCavity_id58, streams.matCavitySpecular_id60) * streams.matDiffuseSpecularAlphaBlend_id63.g * streams.matAlphaBlendColor_id64;
    streams.NdotV_id70 = max(dot(streams.normalWS_id16, streams.viewWS_id66), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id53;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id138(streams, streams.matNormal_id50);
    streams.alphaRoughness_id68 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id200(inout PS_STREAMS streams)
{
    streams.lightPositionWS_id42 = 0;
    streams.lightDirectionWS_id43 = 0;
    streams.lightColor_id44 = 0;
    streams.lightColorNdotL_id45 = 0;
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
    streams.lightDirectAmbientOcclusion_id49 = 1.0f;
    streams.NdotL_id48 = 0;
}
void UpdateNormalFromTangentSpace_id21(float3 normalInTangentSpace)
{
}
float4 Compute_id254()
{
    return float4(constantFloat_id170, constantFloat_id170, constantFloat_id170, constantFloat_id170);
}
float4 Compute_id252()
{
    return constantColor_id168;
}
float4 Compute_id250()
{
    return constantColor_id105;
}
void ResetStream_id205(inout PS_STREAMS streams)
{
    ResetStream_id202();
    streams.matBlend_id41 = 0.0f;
}
float4x4 GetBlendMatrix_id22(int index)
{
    return BlendMatrixArray_id37[index];
}
void PreTransformPosition_id13(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id19 = mul(streams.Position_id18, World_id29);
}
void Compute_id425(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id21(streams.matNormal_id50);
    ResetLightStream_id200(streams);
    PrepareMaterialForLightingAndShading_id201(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id211();
        const int maxLightCount = GetMaxLightCount_id215();
        int count = GetLightCount_id214();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id213(streams, i);
            PrepareMaterialPerDirectLight_id33(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id345(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id394(streams);
            }
        }
    }

    {
        PrepareDirectLights_id223(streams);
        const int maxLightCount = GetMaxLightCount_id224(streams);
        int count = GetLightCount_id225(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id221(streams, i);
            PrepareMaterialPerDirectLight_id33(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id345(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id394(streams);
            }
        }
    }

    {
        PrepareDirectLights_id229();
        const int maxLightCount = GetMaxLightCount_id233(streams);
        int count = GetLightCount_id234(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id231(streams, i);
            PrepareMaterialPerDirectLight_id33(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id345(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id394(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id241(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id346(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id395(streams);
        }
    }

    {
        PrepareEnvironmentLight_id246(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id346(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id395(streams);
        }
    }

    {
        PrepareEnvironmentLight_id249(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id346(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id395(streams);
        }
    }
    streams.shadingColor_id71 += directLightingContribution * PI_id176 + environmentLightingContribution;
    streams.shadingColorAlpha_id72 = streams.matDiffuse_id52.a;
}
void Compute_id410(inout PS_STREAMS streams)
{
    streams.matSpecularIntensity_id55 = Compute_id254().r;
}
void Compute_id405(inout PS_STREAMS streams)
{
    streams.matSpecular_id54 = Compute_id252().rgb;
}
void Compute_id400(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id250();
    streams.matDiffuse_id52 = colorBase;
    streams.matColorBase_id51 = colorBase;
}
void ResetStream_id207(inout PS_STREAMS streams)
{
    ResetStream_id205(streams);
    streams.matNormal_id50 = float3(0, 0, 1);
    streams.matColorBase_id51 = 0.0f;
    streams.matDiffuse_id52 = 0.0f;
    streams.matDiffuseVisible_id67 = 0.0f;
    streams.matSpecular_id54 = 0.0f;
    streams.matSpecularVisible_id69 = 0.0f;
    streams.matSpecularIntensity_id55 = 1.0f;
    streams.matGlossiness_id53 = 0.0f;
    streams.alphaRoughness_id68 = 1.0f;
    streams.matAmbientOcclusion_id56 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id57 = 0.0f;
    streams.matCavity_id58 = 1.0f;
    streams.matCavityDiffuse_id59 = 0.0f;
    streams.matCavitySpecular_id60 = 0.0f;
    streams.matEmissive_id61 = 0.0f;
    streams.matEmissiveIntensity_id62 = 0.0f;
    streams.matDiffuseSpecularAlphaBlend_id63 = 1.0f;
    streams.matAlphaBlendColor_id64 = 1.0f;
    streams.matAlphaDiscard_id65 = 0.0f;
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id23(inout VS_STREAMS streams)
{
    PreTransformPosition_id13(streams);
    streams.skinningBlendMatrix_id40 = GetBlendMatrix_id22(streams.BlendIndices_id39[0]) * streams.BlendWeights_id38[0] + GetBlendMatrix_id22(streams.BlendIndices_id39[1]) * streams.BlendWeights_id38[1] + GetBlendMatrix_id22(streams.BlendIndices_id39[2]) * streams.BlendWeights_id38[2] + GetBlendMatrix_id22(streams.BlendIndices_id39[3]) * streams.BlendWeights_id38[3];
    float4 blendPos = mul(float4(streams.Position_id18.xyz, 1.0f), streams.skinningBlendMatrix_id40);
    blendPos /= blendPos.w;
    streams.PositionWS_id19 = blendPos;
}
void Compute_id77(inout PS_STREAMS streams)
{

    {
        Compute_id400(streams);
    }

    {
        Compute_id405(streams);
    }

    {
        Compute_id410(streams);
    }

    {
        Compute_id425(streams);
    }
}
void ResetStream_id76(inout PS_STREAMS streams)
{
    ResetStream_id207(streams);
    streams.shadingColorAlpha_id72 = 1.0f;
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
void PreTransformPosition_id24(inout VS_STREAMS streams)
{
    PreTransformPosition_id23(streams);
    streams.meshNormal_id14 = normalize(mul(streams.meshNormal_id14, (float3x3)streams.skinningBlendMatrix_id40));
}
float4 Shading_id34(inout PS_STREAMS streams)
{
    streams.viewWS_id66 = normalize(Eye_id28.xyz - streams.PositionWS_id19.xyz);
    streams.shadingColor_id71 = 0;
    ResetStream_id76(streams);
    Compute_id77(streams);
    return float4(streams.shadingColor_id71, streams.shadingColorAlpha_id72);
}
void PSMain_id1()
{
}
void BaseTransformVS_id7(inout VS_STREAMS streams)
{
    PreTransformPosition_id24(streams);
    TransformPosition_id5();
    PostTransformPosition_id14(streams);
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id1 = Shading_id34(streams);
}
void GenerateNormal_PS_id20(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id16, streams.normalWS_id16) > 0)
        streams.normalWS_id16 = normalize(streams.normalWS_id16);
}
void GenerateNormal_VS_id25(inout VS_STREAMS streams)
{
    streams.normalWS_id16 = streams.meshNormal_id14;
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
    GenerateNormal_VS_id25(streams);
}
PS_OUTPUT PSMain(VS_OUTPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id19 = __input__.PositionWS_id19;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.normalWS_id16 = __input__.normalWS_id16;
    streams.ScreenPosition_id85 = __input__.ScreenPosition_id85;
    streams.ScreenPosition_id85 /= streams.ScreenPosition_id85.w;
    PSMain_id18(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id1 = streams.ColorTarget_id1;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id18 = __input__.Position_id18;
    streams.BlendIndices_id39 = __input__.BlendIndices_id39;
    streams.BlendWeights_id38 = __input__.BlendWeights_id38;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    VSMain_id16(streams);
    streams.ScreenPosition_id85 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id16 = streams.normalWS_id16;
    __output__.ScreenPosition_id85 = streams.ScreenPosition_id85;
    return __output__;
}
