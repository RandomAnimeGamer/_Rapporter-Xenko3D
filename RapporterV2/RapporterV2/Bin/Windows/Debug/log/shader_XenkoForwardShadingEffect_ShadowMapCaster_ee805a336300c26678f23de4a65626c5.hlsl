/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect.ShadowMapCaster
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
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
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
@S    ShadowMapCasterBase => 8499e30978d7612019e28c26288f702b
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
@G    Vertex => d82790175b976f6cd8fe5e06d07cd727
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
// SKINNINGBLENDMATRIX_ID40_SEM     0   xyzw        1     NONE   float   xyzw
// SKINNINGBLENDMATRIX_ID40_SEM     1   xyzw        2     NONE   float   xyzw
// SKINNINGBLENDMATRIX_ID40_SEM     2   xyzw        3     NONE   float   xyzw
// SKINNINGBLENDMATRIX_ID40_SEM     3   xyzw        4     NONE   float   xyzw
// NORMAL                   0   xyz         5     NONE   float   xyz 
// DEPTH_VS                 0      w        5     NONE   float      w
// SV_Position              0   xyzw        6      POS   float   xyzw
// POSITIONH                0   xyzw        7     NONE   float   xyzw
// NORMALWS                 0   xyz         8     NONE   float   xyz 
// SCREENPOSITION_ID85_SEM     0   xyzw        9     NONE   float   xyzw
//
vs_4_0
dcl_constantbuffer cb0[250], dynamicIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyz
dcl_input v1.xyzw
dcl_input v2.xyzw
dcl_input v3.xyz
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xyzw
dcl_output o4.xyzw
dcl_output o5.xyz
dcl_output o5.w
dcl_output_siv o6.xyzw, position
dcl_output o7.xyzw
dcl_output o8.xyz
dcl_output o9.xyzw
dcl_temps 6
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.BlendIndices_id39.x; v1.y <- __input__.BlendIndices_id39.y; v1.z <- __input__.BlendIndices_id39.z; v1.w <- __input__.BlendIndices_id39.w; 
//   v2.x <- __input__.BlendWeights_id38.x; v2.y <- __input__.BlendWeights_id38.y; v2.z <- __input__.BlendWeights_id38.z; v2.w <- __input__.BlendWeights_id38.w; 
//   v3.x <- __input__.meshNormal_id14.x; v3.y <- __input__.meshNormal_id14.y; v3.z <- __input__.meshNormal_id14.z; 
//   o9.x <- <VSMain return value>.ScreenPosition_id85.x; o9.y <- <VSMain return value>.ScreenPosition_id85.y; o9.z <- <VSMain return value>.ScreenPosition_id85.z; o9.w <- <VSMain return value>.ScreenPosition_id85.w; 
//   o8.x <- <VSMain return value>.normalWS_id16.x; o8.y <- <VSMain return value>.normalWS_id16.y; o8.z <- <VSMain return value>.normalWS_id16.z; 
//   o7.x <- <VSMain return value>.PositionH_id21.x; o7.y <- <VSMain return value>.PositionH_id21.y; o7.z <- <VSMain return value>.PositionH_id21.z; o7.w <- <VSMain return value>.PositionH_id21.w; 
//   o6.x <- <VSMain return value>.ShadingPosition_id0.x; o6.y <- <VSMain return value>.ShadingPosition_id0.y; o6.z <- <VSMain return value>.ShadingPosition_id0.z; o6.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o5.x <- <VSMain return value>.meshNormal_id14.x; o5.y <- <VSMain return value>.meshNormal_id14.y; o5.z <- <VSMain return value>.meshNormal_id14.z; o5.w <- <VSMain return value>.DepthVS_id20; 
//   o4.x <- <VSMain return value>.skinningBlendMatrix_id40._m03; o4.y <- <VSMain return value>.skinningBlendMatrix_id40._m13; o4.z <- <VSMain return value>.skinningBlendMatrix_id40._m23; o4.w <- <VSMain return value>.skinningBlendMatrix_id40._m33; 
//   o3.x <- <VSMain return value>.skinningBlendMatrix_id40._m02; o3.y <- <VSMain return value>.skinningBlendMatrix_id40._m12; o3.z <- <VSMain return value>.skinningBlendMatrix_id40._m22; o3.w <- <VSMain return value>.skinningBlendMatrix_id40._m32; 
//   o2.x <- <VSMain return value>.skinningBlendMatrix_id40._m01; o2.y <- <VSMain return value>.skinningBlendMatrix_id40._m11; o2.z <- <VSMain return value>.skinningBlendMatrix_id40._m21; o2.w <- <VSMain return value>.skinningBlendMatrix_id40._m31; 
//   o1.x <- <VSMain return value>.skinningBlendMatrix_id40._m00; o1.y <- <VSMain return value>.skinningBlendMatrix_id40._m10; o1.z <- <VSMain return value>.skinningBlendMatrix_id40._m20; o1.w <- <VSMain return value>.skinningBlendMatrix_id40._m30; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 222 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_ShadowMapCaster_ee805a336300c26678f23de4a65626c5.hlsl"
mov r0.xyz, v0.xyzx
mov r0.w, l(1.000000)

#line 208
ishl r1.xyzw, v1.xyzw, l(2)

#line 221
mul r2.xyzw, v2.yyyy, cb0[r1.y + 29].xyzw
mad r2.xyzw, cb0[r1.x + 29].xyzw, v2.xxxx, r2.xyzw
mad r2.xyzw, cb0[r1.z + 29].xyzw, v2.zzzz, r2.xyzw
mad r2.xyzw, cb0[r1.w + 29].xyzw, v2.wwww, r2.xyzw  // r2.x <- streams.skinningBlendMatrix_id40._m03; r2.y <- streams.skinningBlendMatrix_id40._m13; r2.z <- streams.skinningBlendMatrix_id40._m23; r2.w <- streams.skinningBlendMatrix_id40._m33
dp4 r3.w, r0.xyzw, r2.xyzw  // r3.w <- blendPos.w

#line 282
mov o4.xyzw, r2.xyzw

#line 221
mul r2.xyzw, v2.yyyy, cb0[r1.y + 26].xyzw
mad r2.xyzw, cb0[r1.x + 26].xyzw, v2.xxxx, r2.xyzw
mad r2.xyzw, cb0[r1.z + 26].xyzw, v2.zzzz, r2.xyzw
mad r2.xyzw, cb0[r1.w + 26].xyzw, v2.wwww, r2.xyzw  // r2.x <- streams.skinningBlendMatrix_id40._m00; r2.y <- streams.skinningBlendMatrix_id40._m10; r2.z <- streams.skinningBlendMatrix_id40._m20; r2.w <- streams.skinningBlendMatrix_id40._m30
dp4 r3.x, r0.xyzw, r2.xyzw  // r3.x <- blendPos.x
mul r4.xyzw, v2.yyyy, cb0[r1.y + 27].xyzw
mad r4.xyzw, cb0[r1.x + 27].xyzw, v2.xxxx, r4.xyzw
mad r4.xyzw, cb0[r1.z + 27].xyzw, v2.zzzz, r4.xyzw
mad r4.xyzw, cb0[r1.w + 27].xyzw, v2.wwww, r4.xyzw  // r4.x <- streams.skinningBlendMatrix_id40._m01; r4.y <- streams.skinningBlendMatrix_id40._m11; r4.z <- streams.skinningBlendMatrix_id40._m21; r4.w <- streams.skinningBlendMatrix_id40._m31
dp4 r3.y, r0.xyzw, r4.xyzw  // r3.y <- blendPos.y
mul r5.xyzw, v2.yyyy, cb0[r1.y + 28].xyzw
mad r5.xyzw, cb0[r1.x + 28].xyzw, v2.xxxx, r5.xyzw
mad r5.xyzw, cb0[r1.z + 28].xyzw, v2.zzzz, r5.xyzw
mad r1.xyzw, cb0[r1.w + 28].xyzw, v2.wwww, r5.xyzw  // r1.x <- streams.skinningBlendMatrix_id40._m02; r1.y <- streams.skinningBlendMatrix_id40._m12; r1.z <- streams.skinningBlendMatrix_id40._m22; r1.w <- streams.skinningBlendMatrix_id40._m32
dp4 r3.z, r0.xyzw, r1.xyzw  // r3.z <- blendPos.z
div r0.xyzw, r3.xyzw, r3.wwww  // r0.x <- blendPos.x; r0.y <- blendPos.y; r0.z <- blendPos.z; r0.w <- blendPos.w

#line 282
mov o0.xyzw, r0.xyzw
mov o1.xyzw, r2.xyzw

#line 239
dp3 r2.x, v3.xyzx, r2.xyzx

#line 282
mov o2.xyzw, r4.xyzw

#line 239
dp3 r2.y, v3.xyzx, r4.xyzx

#line 282
mov o3.xyzw, r1.xyzw

#line 239
dp3 r2.z, v3.xyzx, r1.xyzx
dp3 r1.x, r2.xyzx, r2.xyzx
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, r2.xyzx  // r1.x <- streams.meshNormal_id14.x; r1.y <- streams.meshNormal_id14.y; r1.z <- streams.meshNormal_id14.z

#line 229
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- streams.ShadingPosition_id0.w

#line 282
mov o5.xyzw, r1.xyzw
mov o8.xyz, r1.xyzx

#line 229
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- streams.ShadingPosition_id0.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- streams.ShadingPosition_id0.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- streams.ShadingPosition_id0.z

#line 282
mov o6.xyzw, r1.xyzw
mov o7.xyzw, r1.xyzw
mov o9.xyzw, r1.xyzw
ret 
// Approximately 45 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id83 = 8;
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
struct VS_STREAMS 
{
    float4 Position_id18;
    uint4 BlendIndices_id39;
    float4 BlendWeights_id38;
    float3 meshNormal_id14;
    float4 PositionWS_id19;
    float4x4 skinningBlendMatrix_id40;
    float4 ShadingPosition_id0;
    float4 PositionH_id21;
    float DepthVS_id20;
    float3 normalWS_id16;
    float4 ScreenPosition_id85;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id19 : POSITION_WS;
    float4x4 skinningBlendMatrix_id40 : SKINNINGBLENDMATRIX_ID40_SEM;
    float3 meshNormal_id14 : NORMAL;
    float4 ShadingPosition_id0 : SV_Position;
    float4 PositionH_id21 : POSITIONH;
    float DepthVS_id20 : DEPTH_VS;
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
void PreTransformPosition_id4()
{
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
void BaseTransformVS_id7(inout VS_STREAMS streams)
{
    PreTransformPosition_id24(streams);
    TransformPosition_id5();
    PostTransformPosition_id14(streams);
}
void VSMain_id0()
{
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
void VSMain_id16(inout VS_STREAMS streams)
{
    VSMain_id8(streams);
    GenerateNormal_VS_id25(streams);
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
    __output__.skinningBlendMatrix_id40 = streams.skinningBlendMatrix_id40;
    __output__.meshNormal_id14 = streams.meshNormal_id14;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.PositionH_id21 = streams.PositionH_id21;
    __output__.DepthVS_id20 = streams.DepthVS_id20;
    __output__.normalWS_id16 = streams.normalWS_id16;
    __output__.ScreenPosition_id85 = streams.ScreenPosition_id85;
    return __output__;
}
