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
@P Lighting.DirectLightGroups: LightClusteredPointGroup<64>, LightClusteredSpotGroup<64>, mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false>, ShadowMapFilterPcf<PerView.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient, xkfx LightSkyboxEffect
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
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
@C    constantColor_id184 => Material.DiffuseValue
@C    constantColor_id189 => Material.SpecularValue
@C    constantFloat_id191 => Material.SpecularIntensityValue
cbuffer PerView [Size: 1040]
@C    View_id22 => Transformation.View
@C    ViewInverse_id23 => Transformation.ViewInverse
@C    Projection_id24 => Transformation.Projection
@C    ProjectionInverse_id25 => Transformation.ProjectionInverse
@C    ViewProjection_id26 => Transformation.ViewProjection
@C    ProjScreenRay_id27 => Transformation.ProjScreenRay
@C    Eye_id28 => Transformation.Eye
@C    NearClipPlane_id81 => Camera.NearClipPlane
@C    FarClipPlane_id82 => Camera.FarClipPlane
@C    ZProjection_id83 => Camera.ZProjection
@C    ViewSize_id84 => Camera.ViewSize
@C    AspectRatio_id85 => Camera.AspectRatio
@C    ClusterDepthScale_id91 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id92 => LightClustered.ClusterDepthBias
@C    LightCount_id98 => DirectLightGroupPerView.LightCount.directLightGroups[2]
@C    Lights_id100 => LightDirectionalGroup.Lights.directLightGroups[2]
@C    ShadowMapTextureSize_id102 => ShadowMap.TextureSize.directLightGroups[2]
@C    ShadowMapTextureTexelSize_id103 => ShadowMap.TextureTexelSize.directLightGroups[2]
@C    WorldToShadowCascadeUV_id164 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[2]
@C    DepthBiases_id165 => ShadowMapReceiverBase.DepthBiases.directLightGroups[2]
@C    OffsetScales_id166 => ShadowMapReceiverBase.OffsetScales.directLightGroups[2]
@C    CascadeDepthSplits_id172 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[2]
@C    Bias_id174 => ShadowMapFilterPcf.Bias.directLightGroups[2]
@C    AmbientLight_id175 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id177 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id178 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id180 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id181 => LightSkyboxShader.Intensity.environmentLights[1]
***************************
******  Resources    ******
***************************
@R    LightClusters_id89 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id89 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id90 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id90 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id94 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id94 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id97 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id97 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id101 => ShadowMap.Texture.directLightGroups[2] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id101 => ShadowMap.Texture.directLightGroups[2] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id179 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id179 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id134 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id136 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id89 => LightClustered.LightClusters [Stage: Pixel, Slot: (0-0)]
@R    LightIndices_id90 => LightClustered.LightIndices [Stage: Pixel, Slot: (1-1)]
@R    PointLights_id94 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (2-2)]
@R    SpotLights_id97 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (3-3)]
@R    ShadowMapTexture_id101 => ShadowMap.Texture.directLightGroups[2] [Stage: Pixel, Slot: (4-4)]
@R    CubeMap_id179 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (5-5)]
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
@S    TransformationSkinning => e7bd10d31973ce3c7a50eb430b6e2748
@S    NormalMeshSkinning => 886f2c848d2cc3a8d790a16ff0e2e6c6
@S    NormalVSSkinningFromMesh => 1528b929ed1092a428d81cd1b353bda8
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
@G    Vertex => 2fe4989061e2ffc652bf033010a43790
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
//   float NearClipPlane_id81;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id82;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id83;           // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id84;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id85;            // Offset:  376 Size:     4 [unused]
//   float ClusterDepthScale_id91;      // Offset:  380 Size:     4 [unused]
//   float ClusterDepthBias_id92;       // Offset:  384 Size:     4 [unused]
//   int LightCount_id98;               // Offset:  388 Size:     4 [unused]
//   
//   struct
//   {
//       
//       float3 DirectionWS;            // Offset:  400
//       float3 Color;                  // Offset:  416
//
//   } Lights_id100;                    // Offset:  400 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id102; // Offset:  432 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id103;// Offset:  440 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id164[4];// Offset:  448 Size:   256 [unused]
//   float DepthBiases_id165;           // Offset:  704 Size:     4 [unused]
//   float OffsetScales_id166;          // Offset:  720 Size:     4 [unused]
//   float CascadeDepthSplits_id172[4]; // Offset:  736 Size:    52 [unused]
//   float Bias_id174;                  // Offset:  788 Size:     4 [unused]
//   float3 AmbientLight_id175;         // Offset:  800 Size:    12 [unused]
//   float3 SphericalColors_id177[9];   // Offset:  816 Size:   140 [unused]
//   float MipCount_id178;              // Offset:  956 Size:     4 [unused]
//   float4x4 SkyMatrix_id180;          // Offset:  960 Size:    64 [unused]
//   float Intensity_id181;             // Offset: 1024 Size:     4 [unused]
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
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMALWS                 0    yzw        2     NONE   float    yzw
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
dcl_output o2.x
dcl_output o2.yzw
dcl_temps 5
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.BlendIndices_id39.x; v1.y <- __input__.BlendIndices_id39.y; v1.z <- __input__.BlendIndices_id39.z; v1.w <- __input__.BlendIndices_id39.w; 
//   v2.x <- __input__.BlendWeights_id38.x; v2.y <- __input__.BlendWeights_id38.y; v2.z <- __input__.BlendWeights_id38.z; v2.w <- __input__.BlendWeights_id38.w; 
//   v3.x <- __input__.meshNormal_id14.x; v3.y <- __input__.meshNormal_id14.y; v3.z <- __input__.meshNormal_id14.z; 
//   o2.x <- <VSMain return value>.DepthVS_id20; o2.y <- <VSMain return value>.normalWS_id16.x; o2.z <- <VSMain return value>.normalWS_id16.y; o2.w <- <VSMain return value>.normalWS_id16.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 808 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_086b5629af01152c59f306ef90c8a96e.hlsl"
mov r0.xyz, v0.xyzx
mov r0.w, l(1.000000)

#line 651
ishl r1.xyzw, v1.xyzw, l(2)

#line 807
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

#line 849
dp3 r3.y, v3.xyzx, r3.xyzx

#line 807
mul r4.xyzw, v2.yyyy, cb0[r1.y + 27].xyzw
mad r4.xyzw, cb0[r1.x + 27].xyzw, v2.xxxx, r4.xyzw
mad r4.xyzw, cb0[r1.z + 27].xyzw, v2.zzzz, r4.xyzw
mad r4.xyzw, cb0[r1.w + 27].xyzw, v2.wwww, r4.xyzw  // r4.x <- streams.skinningBlendMatrix_id40._m01; r4.y <- streams.skinningBlendMatrix_id40._m11; r4.z <- streams.skinningBlendMatrix_id40._m21; r4.w <- streams.skinningBlendMatrix_id40._m31
dp4 r2.y, r0.xyzw, r4.xyzw  // r2.y <- blendPos.y

#line 849
dp3 r3.z, v3.xyzx, r4.xyzx

#line 807
mul r4.xyzw, v2.yyyy, cb0[r1.y + 28].xyzw
mad r4.xyzw, cb0[r1.x + 28].xyzw, v2.xxxx, r4.xyzw
mad r4.xyzw, cb0[r1.z + 28].xyzw, v2.zzzz, r4.xyzw
mad r1.xyzw, cb0[r1.w + 28].xyzw, v2.wwww, r4.xyzw  // r1.x <- streams.skinningBlendMatrix_id40._m02; r1.y <- streams.skinningBlendMatrix_id40._m12; r1.z <- streams.skinningBlendMatrix_id40._m22; r1.w <- streams.skinningBlendMatrix_id40._m32
dp4 r2.z, r0.xyzw, r1.xyzw  // r2.z <- blendPos.z

#line 849
dp3 r3.w, v3.xyzx, r1.xyzx

#line 809
div r0.xyzw, r2.xyzw, r2.wwww  // r0.x <- blendPos.x; r0.y <- blendPos.y; r0.z <- blendPos.z; r0.w <- blendPos.w

#line 916
mov o0.xyzw, r0.xyzw

#line 839
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw
dp4 r0.x, r0.xyzw, cb1[19].xyzw  // r0.x <- streams.ShadingPosition_id0.w

#line 916
mov o1.w, r0.x
mov o2.x, r0.x

#line 849
dp3 r0.x, r3.yzwy, r3.yzwy
rsq r0.x, r0.x
mul o2.yzw, r0.xxxx, r3.yyzw

#line 916
ret 
// Approximately 38 instruction slots used
@G    Pixel => baa8cd5cfb25a86e661006b31be4b351
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id184;        // Offset:    0 Size:    16
//   float4 constantColor_id189;        // Offset:   16 Size:    16
//   float constantFloat_id191;         // Offset:   32 Size:     4
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
//   float NearClipPlane_id81;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id82;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id83;           // Offset:  360 Size:     8
//   float2 ViewSize_id84;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id85;            // Offset:  376 Size:     4 [unused]
//   float ClusterDepthScale_id91;      // Offset:  380 Size:     4
//   float ClusterDepthBias_id92;       // Offset:  384 Size:     4
//   int LightCount_id98;               // Offset:  388 Size:     4
//   
//   struct
//   {
//       
//       float3 DirectionWS;            // Offset:  400
//       float3 Color;                  // Offset:  416
//
//   } Lights_id100;                    // Offset:  400 Size:    28
//   float2 ShadowMapTextureSize_id102; // Offset:  432 Size:     8
//   float2 ShadowMapTextureTexelSize_id103;// Offset:  440 Size:     8
//   float4x4 WorldToShadowCascadeUV_id164[4];// Offset:  448 Size:   256
//   float DepthBiases_id165;           // Offset:  704 Size:     4
//   float OffsetScales_id166;          // Offset:  720 Size:     4
//   float CascadeDepthSplits_id172[4]; // Offset:  736 Size:    52
//   float Bias_id174;                  // Offset:  788 Size:     4 [unused]
//   float3 AmbientLight_id175;         // Offset:  800 Size:    12
//   float3 SphericalColors_id177[9];   // Offset:  816 Size:   140
//   float MipCount_id178;              // Offset:  956 Size:     4
//   float4x4 SkyMatrix_id180;          // Offset:  960 Size:    64
//   float Intensity_id181;             // Offset: 1024 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// LinearSampler_id134               sampler      NA          NA    0        1
// LinearClampCompareLessEqualSampler_id136  sampler_c      NA          NA    1        1
// LightClusters_id89                texture   uint2          3d    0        1
// LightIndices_id90                 texture    uint         buf    1        1
// PointLights_id94                  texture  float4         buf    2        1
// SpotLights_id97                   texture  float4         buf    3        1
// ShadowMapTexture_id101            texture  float4          2d    4        1
// CubeMap_id179                     texture  float4        cube    5        1
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
dcl_temps 18
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id20; v2.y <- __input__.normalWS_id16.x; v2.z <- __input__.normalWS_id16.y; v2.w <- __input__.normalWS_id16.z; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 878 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_086b5629af01152c59f306ef90c8a96e.hlsl"
dp3 r0.x, v2.yzwy, v2.yzwy
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.yzwy  // r0.x <- streams.normalWS_id16.x; r0.y <- streams.normalWS_id16.y; r0.z <- streams.normalWS_id16.z

#line 853
add r1.xyz, -v0.xyzx, cb1[21].xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, r1.xyzx  // r1.x <- streams.viewWS_id65.x; r1.y <- streams.viewWS_id65.y; r1.z <- streams.viewWS_id65.z

#line 613
mul r2.xyz, cb0[1].xyzx, cb0[2].xxxx  // r2.x <- streams.matSpecularVisible_id68.x; r2.y <- streams.matSpecularVisible_id68.y; r2.z <- streams.matSpecularVisible_id68.z
dp3 r0.w, r0.xyzx, r1.xyzx
max r0.w, r0.w, l(0.000100)  // r0.w <- streams.NdotV_id69

#line 486
add r1.w, v1.z, -cb1[22].z
div r1.w, cb1[22].w, r1.w  // r1.w <- depth
ftoi r3.xy, v1.xyxx  // r3.x <- shadingPosition.x; r3.y <- shadingPosition.y
mad r1.w, r1.w, cb1[23].w, cb1[24].x
log r1.w, r1.w
max r1.w, r1.w, l(0.000000)
ftoi r4.z, r1.w  // r4.z <- slice
ushr r4.xy, r3.xyxx, l(6)
mov r4.w, l(0)
ld r3.xyzw, r4.xyzw, t0.xyzw  // r3.x <- streams.lightData_id87.x; r3.y <- streams.lightData_id87.y

#line 603
and r1.w, r3.y, l(0x0000ffff)  // r1.w <- <GetMaxLightCount_id227 return value>

#line 670
mov r4.xyz, r0.xyzx  // r4.x <- streams.normalWS_id16.x; r4.y <- streams.normalWS_id16.y; r4.z <- streams.normalWS_id16.z
mov r4.w, v0.x  // r4.w <- streams.PositionWS_id19.x
mov r5.yz, v0.yyzy  // r5.y <- streams.PositionWS_id19.y; r5.z <- streams.PositionWS_id19.z
mov r5.w, r1.x  // r5.w <- streams.viewWS_id65.x
mov r6.yz, r1.yyzy  // r6.y <- streams.viewWS_id65.y; r6.z <- streams.viewWS_id65.z
mov r7.xy, cb0[0].xyxx  // r7.x <- streams.matDiffuseVisible_id66.x; r7.y <- streams.matDiffuseVisible_id66.y
mov r8.x, cb0[0].z  // r8.x <- streams.matDiffuseVisible_id66.z
mov r8.yzw, r2.xxyz  // r8.y <- streams.matSpecularVisible_id68.x; r8.z <- streams.matSpecularVisible_id68.y; r8.w <- streams.matSpecularVisible_id68.z
mov r9.x, r3.x  // r9.x <- streams.lightIndex_id88
mov r9.yzw, l(0,0,0,0)  // r9.y <- directLightingContribution.x; r9.z <- directLightingContribution.y; r9.w <- directLightingContribution.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.z, r2.w, r1.w
  breakc_nz r3.z
  if_nz r3.z
    break 
  endif 

#line 473
  ld r10.xyzw, r9.xxxx, t1.xyzw  // r10.x <- realLightIndex
  iadd r9.x, r9.x, l(1)  // r9.x <- streams.lightIndex_id88
  ishl r3.z, r10.x, l(1)
  ld r10.xyzw, r3.zzzz, t2.xyzw  // r10.x <- pointLight1.x; r10.y <- pointLight1.y; r10.z <- pointLight1.z; r10.w <- pointLight1.w
  iadd r3.z, r3.z, l(1)
  ld r11.xyzw, r3.zzzz, t2.xyzw  // r11.x <- pointLight2.x; r11.y <- pointLight2.y; r11.z <- pointLight2.z

#line 326
  mov r5.x, r4.w
  add r10.xyz, -r5.xyzx, r10.xyzx  // r10.x <- lightVector.x; r10.y <- lightVector.y; r10.z <- lightVector.z
  dp3 r3.z, r10.xyzx, r10.xyzx
  sqrt r3.w, r3.z  // r3.w <- lightVectorLength
  div r10.xyz, r10.xyzx, r3.wwww  // r10.x <- lightVectorNorm.x; r10.y <- lightVectorNorm.y; r10.z <- lightVectorNorm.z

#line 276
  max r3.w, r3.z, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 213
  mul r3.z, r10.w, r3.z  // r3.z <- factor
  mad r3.z, -r3.z, r3.z, l(1.000000)
  max r3.z, r3.z, l(0.000000)  // r3.z <- smoothFactor
  mul r3.z, r3.z, r3.z  // r3.z <- <SmoothDistanceAttenuation_id82 return value>

#line 277
  mul r3.z, r3.z, r3.w  // r3.z <- attenuation

#line 332
  mul r11.xyz, r3.zzzz, r11.xyzx  // r11.x <- streams.lightColor_id43.x; r11.y <- streams.lightColor_id43.y; r11.z <- streams.lightColor_id43.z

#line 593
  dp3 r3.z, r4.xyzx, r10.xyzx
  max r3.z, r3.z, l(0.000100)  // r3.z <- streams.NdotL_id47
  mul r11.xyz, r3.zzzz, r11.xyzx  // r11.x <- streams.lightColorNdotL_id44.x; r11.y <- streams.lightColorNdotL_id44.y; r11.z <- streams.lightColorNdotL_id44.z

#line 585
  mov r6.x, r5.w
  add r12.xyz, r10.xyzx, r6.xyzx
  dp3 r3.z, r12.xyzx, r12.xyzx
  rsq r3.z, r3.z
  mul r12.xyz, r3.zzzz, r12.xyzx  // r12.x <- streams.H_id72.x; r12.y <- streams.H_id72.y; r12.z <- streams.H_id72.z
  dp3 r3.z, r10.xyzx, r12.xyzx
  max r3.z, r3.z, l(0.000100)  // r3.z <- streams.LdotH_id74

#line 581
  mov r7.z, r8.x
  mul r10.xyz, r11.xyzx, r7.xyzx

#line 680
  mad r10.xyz, r10.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r9.yzwy  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 271
  add r12.xyz, -r8.yzwy, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.z, -r3.z, l(1.000000)
  mul r3.w, r3.z, r3.z
  mul r3.w, r3.w, r3.w
  mul r3.z, r3.w, r3.z
  mad r12.xyz, r12.xyzx, r3.zzzz, r8.yzwy  // r12.x <- <FresnelSchlick_id177 return value>.x; r12.y <- <FresnelSchlick_id177 return value>.y; r12.z <- <FresnelSchlick_id177 return value>.z

#line 575
  mul r11.xyz, r11.xyzx, r12.xyzx

#line 684
  mad r9.yzw, r11.xxyz, l(0.000000, 0.079577, 0.079577, 0.079577), r10.xxyz  // r9.y <- directLightingContribution.x; r9.z <- directLightingContribution.y; r9.w <- directLightingContribution.z

#line 670
  iadd r2.w, r2.w, l(1)

#line 686
endloop   // r9.x <- streams.lightIndex_id88

#line 564
ushr r1.w, r3.y, l(16)  // r1.w <- <GetMaxLightCount_id236 return value>

#line 694
mov r3.xyz, v0.xyzx  // r3.x <- streams.PositionWS_id19.x; r3.y <- streams.PositionWS_id19.y; r3.z <- streams.PositionWS_id19.z
mov r4.xyz, r0.xyzx
mov r5.xyz, r1.xyzx  // r5.x <- streams.viewWS_id65.x; r5.y <- streams.viewWS_id65.y; r5.z <- streams.viewWS_id65.z
mov r6.xyz, cb0[0].xyzx  // r6.x <- streams.matDiffuseVisible_id66.x; r6.y <- streams.matDiffuseVisible_id66.y; r6.z <- streams.matDiffuseVisible_id66.z
mov r7.xyz, r2.xyzx  // r7.x <- streams.matSpecularVisible_id68.x; r7.y <- streams.matSpecularVisible_id68.y; r7.z <- streams.matSpecularVisible_id68.z
mov r8.xyz, r9.yzwy  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z
mov r2.w, r9.x  // r2.w <- streams.lightIndex_id88
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r4.w, r3.w, r1.w
  breakc_nz r4.w
  if_nz r4.w
    break 
  endif 

#line 442
  ld r10.xyzw, r2.wwww, t1.xyzw  // r10.x <- realLightIndex
  iadd r2.w, r2.w, l(1)  // r2.w <- streams.lightIndex_id88
  ishl r4.w, r10.x, l(2)
  ld r10.xyzw, r4.wwww, t3.xyzw  // r10.x <- spotLight1.x; r10.y <- spotLight1.y; r10.z <- spotLight1.z

#line 448
  iadd r11.xyz, r4.wwww, l(1, 2, 3, 0)
  ld r12.xyzw, r11.xxxx, t3.xyzw  // r12.x <- spotLight2.x; r12.y <- spotLight2.y; r12.z <- spotLight2.z
  ld r13.xyzw, r11.yyyy, t3.xyzw  // r13.x <- spotLight3.x; r13.y <- spotLight3.y; r13.z <- spotLight3.z
  ld r11.xyzw, r11.zzzz, t3.xyzw  // r11.x <- spotLight4.x; r11.y <- spotLight4.y; r11.z <- spotLight4.z

#line 298
  add r10.xyz, -r3.xyzx, r10.xyzx  // r10.x <- lightVector.x; r10.y <- lightVector.y; r10.z <- lightVector.z
  dp3 r4.w, r10.xyzx, r10.xyzx
  sqrt r5.w, r4.w  // r5.w <- lightVectorLength
  div r10.xyz, r10.xyzx, r5.wwww  // r10.x <- lightVectorNorm.x; r10.y <- lightVectorNorm.y; r10.z <- lightVectorNorm.z

#line 265
  max r5.w, r4.w, l(0.000100)
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w  // r5.w <- attenuation

#line 207
  mul r4.w, r13.z, r4.w  // r4.w <- factor
  mad r4.w, -r4.w, r4.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- smoothFactor
  mul r4.w, r4.w, r4.w  // r4.w <- <SmoothDistanceAttenuation_id90 return value>

#line 266
  mul r4.w, r4.w, r5.w  // r4.w <- attenuation

#line 257
  dp3 r5.w, -r12.xyzx, r10.xyzx  // r5.w <- cd
  mad_sat r5.w, r5.w, r13.x, r13.y  // r5.w <- attenuation
  mul r5.w, r5.w, r5.w

#line 307
  mul r4.w, r4.w, r5.w  // r4.w <- attenuation
  mul r11.xyz, r4.wwww, r11.xyzx  // r11.x <- streams.lightColor_id43.x; r11.y <- streams.lightColor_id43.y; r11.z <- streams.lightColor_id43.z

#line 554
  dp3 r4.w, r4.xyzx, r10.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id47
  mul r11.xyz, r4.wwww, r11.xyzx  // r11.x <- streams.lightColorNdotL_id44.x; r11.y <- streams.lightColorNdotL_id44.y; r11.z <- streams.lightColorNdotL_id44.z

#line 585
  add r12.xyz, r5.xyzx, r10.xyzx
  dp3 r4.w, r12.xyzx, r12.xyzx
  rsq r4.w, r4.w
  mul r12.xyz, r4.wwww, r12.xyzx  // r12.x <- streams.H_id72.x; r12.y <- streams.H_id72.y; r12.z <- streams.H_id72.z
  dp3 r4.w, r10.xyzx, r12.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.LdotH_id74

#line 581
  mul r10.xyz, r6.xyzx, r11.xyzx

#line 704
  mad r10.xyz, r10.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r8.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 271
  add r12.xyz, -r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r5.w, r4.w, r4.w
  mul r5.w, r5.w, r5.w
  mul r4.w, r4.w, r5.w
  mad r12.xyz, r12.xyzx, r4.wwww, r7.xyzx  // r12.x <- <FresnelSchlick_id177 return value>.x; r12.y <- <FresnelSchlick_id177 return value>.y; r12.z <- <FresnelSchlick_id177 return value>.z

#line 575
  mul r11.xyz, r11.xyzx, r12.xyzx

#line 708
  mad r8.xyz, r11.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r10.xyzx  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z

#line 694
  iadd r3.w, r3.w, l(1)

#line 710
endloop   // r2.w <- streams.lightIndex_id88

#line 290
dp2 r1.w, cb1[45].xxxx, cb1[27].zzzz

#line 282
mov r3.w, l(1.000000)

#line 718
mov r4.xyz, v0.xyzx  // r4.x <- streams.PositionWS_id19.x; r4.y <- streams.PositionWS_id19.y; r4.z <- streams.PositionWS_id19.z
mov r4.w, v2.x  // r4.w <- streams.DepthVS_id20
mov r5.xyz, r0.xyzx  // r5.x <- streams.normalWS_id16.x; r5.y <- streams.normalWS_id16.y; r5.z <- streams.normalWS_id16.z
mov r6.xyz, r1.xyzx  // r6.y <- streams.viewWS_id65.y; r6.z <- streams.viewWS_id65.z; r6.x <- streams.viewWS_id65.x
mov r7.xyz, cb0[0].xyzx  // r7.x <- streams.matDiffuseVisible_id66.x; r7.y <- streams.matDiffuseVisible_id66.y; r7.z <- streams.matDiffuseVisible_id66.z
mov r9.xyz, r2.xyzx  // r9.x <- streams.matSpecularVisible_id68.x; r9.y <- streams.matSpecularVisible_id68.y; r9.z <- streams.matSpecularVisible_id68.z
mov r10.xyz, r8.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r5.w, r2.w, l(1)
  breakc_nz r5.w
  ige r5.w, r2.w, cb1[24].y
  if_nz r5.w
    break 
  endif 

#line 536
  dp3 r5.w, r5.xyzx, -cb1[25].xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id47

#line 392
  ishl r6.w, r2.w, l(2)  // r6.w <- cascadeIndexBase

#line 399
  lt r7.w, cb1[r6.w + 46].x, r4.w

#line 402
  and r7.w, r7.w, l(1)  // r7.w <- cascadeIndex

#line 399
  iadd r11.xy, r6.wwww, l(1, 2, 0, 0)
  lt r8.w, cb1[r11.x + 46].x, r4.w

#line 402
  movc r7.w, r8.w, l(2), r7.w

#line 399
  lt r8.w, cb1[r11.y + 46].x, r4.w

#line 402
  movc r7.w, r8.w, l(3), r7.w

#line 289
  add r9.w, -r5.w, l(1.000000)
  max r9.w, r9.w, l(0.000000)  // r9.w <- normalOffsetScale
  mul r9.w, r1.w, r9.w

#line 406
  mad r3.xyz, r9.wwww, r5.xyzx, r4.xyzx  // r3.x <- shadowPosition.x; r3.y <- shadowPosition.y; r3.z <- shadowPosition.z

#line 282
  iadd r6.w, r6.w, r7.w
  ishl r9.w, r6.w, l(2)
  dp4 r11.x, r3.xyzw, cb1[r9.w + 28].xyzw  // r11.x <- shadowPosition.x
  dp4 r11.y, r3.xyzw, cb1[r9.w + 29].xyzw  // r11.y <- shadowPosition.y
  dp4 r10.w, r3.xyzw, cb1[r9.w + 30].xyzw  // r10.w <- shadowPosition.z
  dp4 r11.w, r3.xyzw, cb1[r9.w + 31].xyzw  // r11.w <- shadowPosition.w
  add r11.z, r10.w, -cb1[44].x  // r11.z <- shadowPosition.z
  div r11.xyz, r11.xyzx, r11.wwww

#line 223
  mad r11.xy, r11.xyxx, cb1[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r12.xy, r11.xyxx  // r12.x <- base_uv.x; r12.y <- base_uv.y
  add r11.xy, r11.xyxx, -r12.xyxx  // r11.x <- s; r11.y <- t
  add r12.xy, r12.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r12.xy, r12.xyxx, cb1[27].zwzz

#line 236
  mad r12.zw, -r11.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r12.w <- uw0; r12.z <- vw0
  mad r13.xy, r11.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r13.x <- uw2; r13.y <- vw2
  mad r13.zw, -r11.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r13.zw, r13.zzzw, r12.wwwz
  add r14.xy, r11.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r11.xy, r11.xyxx, r13.xyxx
  add r15.xw, r13.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r15.x <- u0; r15.w <- v0
  mul r15.yz, r14.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r15.z <- u1; r15.y <- v1
  add r14.xy, r11.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r14.x <- u2; r14.y <- v2
  mul r10.w, r12.z, r12.w
  mad r16.xyzw, r15.xwzw, cb1[27].zwzw, r12.xyxy

#line 203
  sample_c r11.x, r16.xyxx, t4.xxxx, s1, r11.z  // r11.x <- <SampleTextureAndCompare_id106 return value>

#line 245
  mul r11.yw, r12.zzzw, l(0.000000, 7.000000, 0.000000, 7.000000)

#line 203
  sample_c r13.z, r16.zwzz, t4.xxxx, s1, r11.z  // r13.z <- <SampleTextureAndCompare_id106 return value>

#line 243
  mul r11.y, r11.y, r13.z
  mad r10.w, r10.w, r11.x, r11.y  // r10.w <- shadow

#line 248
  mul r11.xy, r12.zwzz, r13.xyxx
  mov r14.zw, r15.wwwy
  mad r16.xyzw, r14.xzxw, cb1[27].zwzw, r12.xyxy

#line 203
  sample_c r12.z, r16.xyxx, t4.xxxx, s1, r11.z  // r12.z <- <SampleTextureAndCompare_id106 return value>

#line 244
  mad r10.w, r11.x, r12.z, r10.w
  mad r17.xyzw, r15.xyzy, cb1[27].zwzw, r12.xyxy

#line 203
  sample_c r11.x, r17.xyxx, t4.xxxx, s1, r11.z  // r11.x <- <SampleTextureAndCompare_id106 return value>

#line 245
  mad r10.w, r11.w, r11.x, r10.w

#line 203
  sample_c r11.x, r17.zwzz, t4.xxxx, s1, r11.z

#line 246
  mad r10.w, r11.x, l(49.000000), r10.w

#line 249
  mul r11.xw, r13.xxxy, l(7.000000, 0.000000, 0.000000, 7.000000)

#line 203
  sample_c r12.z, r16.zwzz, t4.xxxx, s1, r11.z  // r12.z <- <SampleTextureAndCompare_id106 return value>

#line 247
  mad r10.w, r11.x, r12.z, r10.w
  mov r15.y, r14.y
  mad r15.xyzw, r15.xyzy, cb1[27].zwzw, r12.xyxy

#line 203
  sample_c r11.x, r15.xyxx, t4.xxxx, s1, r11.z  // r11.x <- <SampleTextureAndCompare_id106 return value>

#line 248
  mad r10.w, r11.y, r11.x, r10.w

#line 203
  sample_c r11.x, r15.zwzz, t4.xxxx, s1, r11.z

#line 249
  mad r10.w, r11.w, r11.x, r10.w
  mul r11.x, r13.y, r13.x
  mad r11.yw, r14.xxxy, cb1[27].zzzw, r12.xxxy

#line 203
  sample_c r11.y, r11.ywyy, t4.xxxx, s1, r11.z  // r11.y <- <SampleTextureAndCompare_id106 return value>

#line 250
  mad r10.w, r11.x, r11.y, r10.w
  mul r11.x, r10.w, l(0.006944)  // r11.x <- shadow

#line 411
  iadd r11.y, r6.w, l(-1)
  add r11.y, -cb1[r11.y + 46].x, cb1[r6.w + 46].x
  movc r7.w, r7.w, r11.y, cb1[r6.w + 46].x  // r7.w <- splitSize
  add r6.w, -r4.w, cb1[r6.w + 46].x
  div r6.w, r6.w, r7.w  // r6.w <- splitDist
  lt r7.w, r6.w, l(0.200000)

#line 282
  iadd r9.w, r9.w, l(4)
  dp4 r12.x, r3.xyzw, cb1[r9.w + 28].xyzw  // r12.x <- shadowPosition.x
  dp4 r12.y, r3.xyzw, cb1[r9.w + 29].xyzw  // r12.y <- shadowPosition.y
  dp4 r11.y, r3.xyzw, cb1[r9.w + 30].xyzw  // r11.y <- shadowPosition.z
  dp4 r3.x, r3.xyzw, cb1[r9.w + 31].xyzw  // r3.x <- shadowPosition.w
  add r12.z, r11.y, -cb1[44].x  // r12.z <- shadowPosition.z
  div r3.xyz, r12.xyzx, r3.xxxx  // r3.x <- shadowPosition.x; r3.y <- shadowPosition.y; r3.z <- shadowPosition.z

#line 223
  mad r3.xy, r3.xyxx, cb1[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r11.yz, r3.xxyx  // r11.y <- base_uv.x; r11.z <- base_uv.y
  add r3.xy, r3.xyxx, -r11.yzyy  // r3.x <- s; r3.y <- t
  add r11.yz, r11.yyzy, l(0.000000, -0.500000, -0.500000, 0.000000)
  mul r11.yz, r11.yyzy, cb1[27].zzwz

#line 236
  mad r12.xy, -r3.yxyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r12.y <- uw0; r12.x <- vw0
  mad r12.zw, r3.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r12.z <- uw2; r12.w <- vw2
  mad r13.xy, -r3.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r13.xy, r13.xyxx, r12.yxyy
  add r13.zw, r3.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000)
  div r3.xy, r3.xyxx, r12.zwzz
  add r14.xw, r13.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r14.x <- u0; r14.w <- v0
  mul r14.yz, r13.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r14.z <- u1; r14.y <- v1
  add r13.xy, r3.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r13.x <- u2; r13.y <- v2
  mad r15.xyzw, r14.xwzw, cb1[27].zwzw, r11.yzyz

#line 203
  sample_c r3.x, r15.xyxx, t4.xxxx, s1, r3.z  // r3.x <- <SampleTextureAndCompare_id106 return value>
  sample_c r3.y, r15.zwzz, t4.xxxx, s1, r3.z  // r3.y <- <SampleTextureAndCompare_id106 return value>

#line 247
  mov r13.zw, r14.wwwy
  mad r15.xyzw, r13.xzxw, cb1[27].zwzw, r11.yzyz

#line 203
  sample_c r9.w, r15.xyxx, t4.xxxx, s1, r3.z  // r9.w <- <SampleTextureAndCompare_id106 return value>

#line 246
  mad r16.xyzw, r14.xyzy, cb1[27].zwzw, r11.yzyz

#line 203
  sample_c r11.w, r16.xyxx, t4.xxxx, s1, r3.z  // r11.w <- <SampleTextureAndCompare_id106 return value>
  sample_c r13.z, r16.zwzz, t4.xxxx, s1, r3.z  // r13.z <- <SampleTextureAndCompare_id106 return value>
  sample_c r13.w, r15.zwzz, t4.xxxx, s1, r3.z  // r13.w <- <SampleTextureAndCompare_id106 return value>

#line 248
  mov r14.y, r13.y
  mad r14.xyzw, r14.xyzy, cb1[27].zwzw, r11.yzyz

#line 203
  sample_c r14.x, r14.xyxx, t4.xxxx, s1, r3.z  // r14.x <- <SampleTextureAndCompare_id106 return value>
  sample_c r14.y, r14.zwzz, t4.xxxx, s1, r3.z  // r14.y <- <SampleTextureAndCompare_id106 return value>

#line 250
  mad r11.yz, r13.xxyx, cb1[27].zzwz, r11.yyzy

#line 203
  sample_c r3.z, r11.yzyy, t4.xxxx, s1, r3.z  // r3.z <- <SampleTextureAndCompare_id106 return value>

#line 413
  if_nz r7.w

#line 416
    if_z r8.w
      mul_sat r6.w, r6.w, l(5.000000)
      mad r7.w, r6.w, l(-2.000000), l(3.000000)
      mul r6.w, r6.w, r6.w
      mul r6.w, r6.w, r7.w  // r6.w <- lerpAmt

#line 242
      mul r7.w, r12.x, r12.y
      mul r3.y, r12.x, r3.y
      mul r3.y, r3.y, l(7.000000)
      mad r3.x, r7.w, r3.x, r3.y  // r3.x <- shadow

#line 248
      mul r11.yz, r12.xxyx, r12.zzwz

#line 244
      mad r3.x, r11.y, r9.w, r3.x
      mul r3.y, r11.w, r12.y
      mad r3.x, r3.y, l(7.000000), r3.x
      mad r3.x, r13.z, l(49.000000), r3.x
      mul r3.y, r12.z, r13.w
      mad r3.x, r3.y, l(7.000000), r3.x
      mad r3.x, r11.z, r14.x, r3.x
      mul r3.y, r12.w, r14.y
      mad r3.x, r3.y, l(7.000000), r3.x
      mul r3.y, r12.w, r12.z
      mad r3.x, r3.y, r3.z, r3.x
      mul r3.x, r3.x, l(0.006944)

#line 422
      mad r3.y, r10.w, l(0.006944), -r3.x
      mad r11.x, r6.w, r3.y, r3.x
    endif 
  endif   // r11.x <- shadow

#line 538
  mul r3.xyz, r11.xxxx, cb1[26].xyzx
  mul r3.xyz, r5.wwww, r3.xyzx  // r3.x <- streams.lightColorNdotL_id44.x; r3.y <- streams.lightColorNdotL_id44.y; r3.z <- streams.lightColorNdotL_id44.z

#line 585
  add r11.xyz, r6.xyzx, -cb1[25].xyzx
  dp3 r5.w, r11.xyzx, r11.xyzx
  rsq r5.w, r5.w
  mul r11.xyz, r5.wwww, r11.xyzx  // r11.x <- streams.H_id72.x; r11.y <- streams.H_id72.y; r11.z <- streams.H_id72.z
  dp3 r5.w, -cb1[25].xyzx, r11.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.LdotH_id74

#line 581
  mul r11.xyz, r3.xyzx, r7.xyzx

#line 728
  mad r11.xyz, r11.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 271
  add r12.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r6.w, r5.w, r5.w
  mul r6.w, r6.w, r6.w
  mul r5.w, r5.w, r6.w
  mad r12.xyz, r12.xyzx, r5.wwww, r9.xyzx  // r12.x <- <FresnelSchlick_id177 return value>.x; r12.y <- <FresnelSchlick_id177 return value>.y; r12.z <- <FresnelSchlick_id177 return value>.z

#line 575
  mul r3.xyz, r3.xyzx, r12.xyzx

#line 732
  mad r10.xyz, r3.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r11.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 718
  iadd r2.w, r2.w, l(1)

#line 734
endloop 

#line 384
mad r1.w, r0.w, l(-0.522800), l(0.604500)
mul r0.w, r0.w, r0.w
mad_sat r0.w, r0.w, l(0.193900), r1.w  // r0.w <- delta

#line 387
mul r2.xyz, r0.wwww, r2.xyzx  // r2.x <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id210 return value>.x; r2.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id210 return value>.y; r2.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id210 return value>.z

#line 520
mul r3.xyz, r2.xyzx, cb1[50].xyzx  // r3.x <- <ComputeEnvironmentLightContribution_id412 return value>.x; r3.y <- <ComputeEnvironmentLightContribution_id412 return value>.y; r3.z <- <ComputeEnvironmentLightContribution_id412 return value>.z

#line 746
mad r3.xyz, cb0[0].xyzx, cb1[50].xyzx, r3.xyzx  // r3.x <- environmentLightingContribution.x; r3.y <- environmentLightingContribution.y; r3.z <- environmentLightingContribution.z

#line 509
dp3 r0.w, r0.xyzx, cb1[60].xyzx  // r0.w <- sampleDirection.x
dp3 r1.w, r0.xyzx, cb1[61].xyzx  // r1.w <- sampleDirection.y
dp3 r2.w, r0.xyzx, cb1[62].xyzx  // r2.w <- sampleDirection.z

#line 347
mul r3.w, r1.w, r1.w  // r3.w <- y2
mul r4.x, r2.w, r2.w  // r4.x <- z2

#line 352
mad r4.yzw, cb1[52].xxyz, r1.wwww, cb1[51].xxyz  // r4.y <- color.x; r4.z <- color.y; r4.w <- color.z
mad r4.yzw, cb1[53].xxyz, -r2.wwww, r4.yyzw
mad r4.yzw, cb1[54].xxyz, r0.wwww, r4.yyzw

#line 357
mul r5.xyz, r1.wwww, cb1[55].xyzx
mad r4.yzw, r5.xxyz, r0.wwww, r4.yyzw
mul r5.xyz, r1.wwww, cb1[56].xyzx
mad r4.yzw, r5.xxyz, -r2.wwww, r4.yyzw
mad r1.w, r4.x, l(3.000000), l(-1.000000)
mad r4.xyz, cb1[57].xyzx, r1.wwww, r4.yzwy  // r4.x <- color.x; r4.y <- color.y; r4.z <- color.z
mul r5.xyz, r0.wwww, cb1[58].xyzx
mad r4.xyz, r5.xyzx, -r2.wwww, r4.xyzx
mad r0.w, r0.w, r0.w, -r3.w
mad r4.xyz, cb1[59].xyzx, r0.wwww, r4.xyzx

#line 511
mul r4.xyz, r4.xyzx, cb1[64].xxxx  // r4.x <- streams.envLightDiffuseColor_id45.x; r4.y <- streams.envLightDiffuseColor_id45.y; r4.z <- streams.envLightDiffuseColor_id45.z
dp3 r0.w, -r1.xyzx, r0.xyzx
add r0.w, r0.w, r0.w
mad r0.xyz, r0.xyzx, -r0.wwww, -r1.xyzx  // r0.x <- sampleDirection.x; r0.y <- sampleDirection.y; r0.z <- sampleDirection.z
dp3 r1.x, r0.xyzx, cb1[60].xyzx  // r1.x <- sampleDirection.x
dp3 r1.y, r0.xyzx, cb1[61].xyzx  // r1.y <- sampleDirection.y
dp3 r0.x, r0.xyzx, cb1[62].xyzx  // r0.x <- sampleDirection.z
mov r1.z, -r0.x  // r1.z <- sampleDirection.z

#line 339
sample_l r0.xyzw, r1.xyzx, t5.xyzw, s0, cb1[59].w  // r0.x <- <Compute_id254 return value>.x; r0.y <- <Compute_id254 return value>.y; r0.z <- <Compute_id254 return value>.z

#line 515
mul r0.xyz, r0.xyzx, cb1[64].xxxx  // r0.x <- streams.envLightSpecularColor_id46.x; r0.y <- streams.envLightSpecularColor_id46.y; r0.z <- streams.envLightSpecularColor_id46.z

#line 754
mad r1.xyz, cb0[0].xyzx, r4.xyzx, r3.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 758
mad r0.xyz, r2.xyzx, r0.xyzx, r1.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 761
mad o0.xyz, r10.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 900
mov o0.w, cb0[0].w
ret 
// Approximately 353 instruction slots used
***************************
*************************/
const static uint ClusterSize2_id86 = 64;
const static int TMaxLightCount_id99 = 1;
const static int TCascadeCountBase_id162 = 4;
const static int TLightCountBase_id163 = 1;
const static int TCascadeCount_id167 = 4;
const static int TLightCount_id168 = 1;
const static bool TBlendCascades_id169 = true;
const static bool TDepthRangeAuto_id170 = true;
const static bool TCascadeDebug_id171 = false;
const static int TFilterSize_id173 = 5;
const static int TOrder_id176 = 3;
const static bool TIsEnergyConservative_id195 = false;
static const float PI_id197 = 3.14159265358979323846;
SamplerState LinearSampler_id134 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id136 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
Texture3D<uint2> LightClusters_id89;
Buffer<uint> LightIndices_id90;
Buffer<float4> PointLights_id94;
Buffer<float4> SpotLights_id97;
Texture2D ShadowMapTexture_id101;
TextureCube CubeMap_id179;
struct PS_STREAMS 
{
    float3 normalWS_id16;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
    float3 viewWS_id65;
    float3 shadingColor_id70;
    float matBlend_id41;
    float3 matNormal_id49;
    float4 matColorBase_id50;
    float4 matDiffuse_id51;
    float3 matDiffuseVisible_id66;
    float3 matSpecular_id53;
    float3 matSpecularVisible_id68;
    float matSpecularIntensity_id54;
    float matGlossiness_id52;
    float alphaRoughness_id67;
    float matAmbientOcclusion_id55;
    float matAmbientOcclusionDirectLightingFactor_id56;
    float matCavity_id57;
    float matCavityDiffuse_id58;
    float matCavitySpecular_id59;
    float4 matEmissive_id60;
    float matEmissiveIntensity_id61;
    float2 matDiffuseSpecularAlphaBlend_id62;
    float3 matAlphaBlendColor_id63;
    float matAlphaDiscard_id64;
    float shadingColorAlpha_id71;
    float3 lightDirectionWS_id42;
    float3 lightColor_id43;
    float3 lightColorNdotL_id44;
    float3 envLightDiffuseColor_id45;
    float3 envLightSpecularColor_id46;
    float lightDirectAmbientOcclusion_id48;
    float NdotL_id47;
    float NdotV_id69;
    uint2 lightData_id87;
    int lightIndex_id88;
    float3 shadowColor_id80;
    float3 H_id72;
    float NdotH_id73;
    float LdotH_id74;
    float VdotH_id75;
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
    uint4 BlendIndices_id39 : BLENDINDICES;
    float4 BlendWeights_id38 : BLENDWEIGHT;
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
    float4x4 BlendMatrixArray_id37[56];
};
cbuffer PerMaterial 
{
    float4 constantColor_id184;
    float4 constantColor_id189;
    float constantFloat_id191;
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
    float NearClipPlane_id81 = 1.0f;
    float FarClipPlane_id82 = 100.0f;
    float2 ZProjection_id83;
    float2 ViewSize_id84;
    float AspectRatio_id85;
    float ClusterDepthScale_id91;
    float ClusterDepthBias_id92;
    int LightCount_id98;
    DirectionalLightData Lights_id100[TMaxLightCount_id99];
    float2 ShadowMapTextureSize_id102;
    float2 ShadowMapTextureTexelSize_id103;
    float4x4 WorldToShadowCascadeUV_id164[TCascadeCountBase_id162 * TLightCountBase_id163];
    float DepthBiases_id165[TLightCountBase_id163];
    float OffsetScales_id166[TLightCountBase_id163];
    float CascadeDepthSplits_id172[TCascadeCount_id167 * TLightCount_id168];
    float Bias_id174;
    float3 AmbientLight_id175;
    float3 SphericalColors_id177[TOrder_id176 * TOrder_id176];
    float MipCount_id178;
    float4x4 SkyMatrix_id180;
    float Intensity_id181;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id105;
    float2 Texture1TexelSize_id107;
    float2 Texture2TexelSize_id109;
    float2 Texture3TexelSize_id111;
    float2 Texture4TexelSize_id113;
    float2 Texture5TexelSize_id115;
    float2 Texture6TexelSize_id117;
    float2 Texture7TexelSize_id119;
    float2 Texture8TexelSize_id121;
    float2 Texture9TexelSize_id123;
};
float SampleTextureAndCompare_id106(float2 position, float positionDepth)
{
    return ShadowMapTexture_id101.SampleCmp(LinearClampCompareLessEqualSampler_id136, position, positionDepth);
}
float SmoothDistanceAttenuation_id90(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id82(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float FilterShadow_id102(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 uv = position * ShadowMapTextureSize_id102;
    float2 base_uv;
    base_uv.x = floor(uv.x + 0.5);
    base_uv.y = floor(uv.y + 0.5);
    float s = (uv.x + 0.5 - base_uv.x);
    float t = (uv.y + 0.5 - base_uv.y);
    base_uv -= float2(0.5, 0.5);
    base_uv *= ShadowMapTextureTexelSize_id103;

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
        shadow += uw0 * vw0 * SampleTextureAndCompare_id106(base_uv + float2(u0, v0) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow += uw1 * vw0 * SampleTextureAndCompare_id106(base_uv + float2(u1, v0) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow += uw2 * vw0 * SampleTextureAndCompare_id106(base_uv + float2(u2, v0) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow += uw0 * vw1 * SampleTextureAndCompare_id106(base_uv + float2(u0, v1) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow += uw1 * vw1 * SampleTextureAndCompare_id106(base_uv + float2(u1, v1) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow += uw2 * vw1 * SampleTextureAndCompare_id106(base_uv + float2(u2, v1) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow += uw0 * vw2 * SampleTextureAndCompare_id106(base_uv + float2(u0, v2) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow += uw1 * vw2 * SampleTextureAndCompare_id106(base_uv + float2(u1, v2) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow += uw2 * vw2 * SampleTextureAndCompare_id106(base_uv + float2(u2, v2) * ShadowMapTextureTexelSize_id103, positionDepth);
        shadow /= 144.0f;
    }
    return shadow;
}
float GetAngleAttenuation_id92(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id91(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id90(d2, lightInvSquareRadius);
    return attenuation;
}
float3 FresnelSchlick_id177(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float GetDistanceAttenuation_id83(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id82(d2, lightInvSquareRadius);
    return attenuation;
}
float ComputeShadowFromCascade_id105(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1), WorldToShadowCascadeUV_id164[cascadeIndex + lightIndex * TCascadeCountBase_id162]);
    shadowPosition.z -= DepthBiases_id165[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id102(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id104(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id103.x * offsetScale * normalOffsetScale * normal;
}
void ComputeShadow_id103(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id80 = 1.0f;
}
void ProcessLight_id93(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = light.AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -light.DirectionWS;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id91(lightVector, lightInvSquareRadius);
    attenuation *= GetAngleAttenuation_id92(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    streams.lightColor_id43 = light.Color * attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float NormalDistributionBlinnPhong_id209(float alphaR, float nDotH)
{
    float alphaR2 = max(alphaR * alphaR, 0.1);
    return pow(nDotH, 2 / alphaR2 - 2) / (PI_id197 * alphaR2);
}
float VisibilityImplicit_id196(float nDotL, float nDotV)
{
    return 1.0f;
}
float3 FresnelSchlick_id183(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id177(f0, 1.0f, lOrVDotH);
}
void ProcessLight_id85(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id83(lightVector, lightInvSquareRadius);
    streams.lightColor_id43 = light.Color * attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float4 Compute_id254(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id67;
    float mipLevel = sqrt(alpha) * MipCount_id178;
    return CubeMap_id179.SampleLevel(LinearSampler_id134, direction, mipLevel);
}
float4 Compute_id249(float3 direction)
{
    float x = direction.x;
    float y = direction.y;
    float z = direction.z;
    float x2 = x * x;
    float y2 = y * y;
    float z2 = z * z;
    float3 color = SphericalColors_id177[0];

    {
        color += SphericalColors_id177[1] * y;
        color += SphericalColors_id177[2] * z;
        color += SphericalColors_id177[3] * x;

        {
            color += SphericalColors_id177[4] * y * x;
            color += SphericalColors_id177[5] * y * z;
            color += SphericalColors_id177[6] * (3.0 * z2 - 1.0);
            color += SphericalColors_id177[7] * x * z;
            color += SphericalColors_id177[8] * (x2 - y2);
        }
    }
    return float4(color, 1);
}
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id210(float3 specularColor, float alphaR, float nDotV)
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
void ComputeShadow_id97(inout PS_STREAMS streams, int lightIndex)
{
    ComputeShadow_id103(streams, lightIndex);
    int cascadeIndexBase = lightIndex * TCascadeCount_id167;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id167 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id20 > CascadeDepthSplits_id172[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float shadow = 1.0;
    float3 shadowPosition = streams.PositionWS_id19.xyz;
    shadowPosition += GetShadowPositionOffset_id104(OffsetScales_id166[lightIndex], streams.NdotL_id47, streams.normalWS_id16);
    if (cascadeIndex < TCascadeCount_id167)
    {
        shadow = ComputeShadowFromCascade_id105(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id172[cascadeIndexBase + cascadeIndex];
        float splitSize = cascadeIndex == 0 ? nextSplit : nextSplit - CascadeDepthSplits_id172[cascadeIndexBase + cascadeIndex - 1];
        float splitDist = (nextSplit - streams.DepthVS_id20) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id167 - 1)
            {
            }
            else if (TBlendCascades_id169)
            {
                float nextShadow = ComputeShadowFromCascade_id105(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }

    {
        streams.shadowColor_id80 = shadow;
    }
}
void PrepareDirectLightCore_id96(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id43 = Lights_id100[lightIndex].Color;
    streams.lightDirectionWS_id42 = -Lights_id100[lightIndex].DirectionWS;
}
void ComputeShadow_id89(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id80 = 1.0f;
}
void PrepareDirectLightCore_id88(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id90.Load(streams.lightIndex_id88);
    streams.lightIndex_id88++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id97.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id97.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id97.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id97.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id93(streams, spotLight);
}
float Compute_id332(inout PS_STREAMS streams)
{
    return NormalDistributionBlinnPhong_id209(streams.alphaRoughness_id67, streams.NdotH_id73);
}
float Compute_id302(inout PS_STREAMS streams)
{
    return VisibilityImplicit_id196(streams.NdotL_id47, streams.NdotV_id69);
}
float3 Compute_id273(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id183(f0, streams.LdotH_id74);
}
void ComputeShadow_id81(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id80 = 1.0f;
}
void PrepareDirectLightCore_id80(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id90.Load(streams.lightIndex_id88);
    streams.lightIndex_id88++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id94.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id94.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id85(streams, pointLight);
}
void PrepareLightData_id84(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id83.y / (projectedDepth - ZProjection_id83.x);
    int2 shadingPosition = int2(streams.ShadingPosition_id0.xy);
    int slice = int(max(log2(depth * ClusterDepthScale_id91 + ClusterDepthBias_id92), 0));
    streams.lightData_id87 = LightClusters_id89.Load(int4(shadingPosition / ClusterSize2_id86, slice, 0));
    streams.lightIndex_id88 = streams.lightData_id87.x;
}
float GetFilterSquareRoughnessAdjustment_id149(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id49);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id213()
{
}
void PreTransformPosition_id4()
{
}
void PrepareEnvironmentLight_id266(inout PS_STREAMS streams)
{
    float ambientAccessibility = streams.matAmbientOcclusion_id55;
    float3 sampleDirection = mul(streams.normalWS_id16, (float3x3)SkyMatrix_id180);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id45 = Compute_id249(sampleDirection).rgb * Intensity_id181 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id62.x;
    sampleDirection = reflect(-streams.viewWS_id65, streams.normalWS_id16);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id180);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id46 = Compute_id254(streams, sampleDirection).rgb * Intensity_id181 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id62.y;
}
float3 ComputeEnvironmentLightContribution_id412(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id68;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id210(specularColor, streams.alphaRoughness_id67, streams.NdotV_id69) * streams.envLightSpecularColor_id46;
}
float3 ComputeEnvironmentLightContribution_id363(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id66;
    return diffuseColor * streams.envLightDiffuseColor_id45;
}
void PrepareEnvironmentLight_id260(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id175 * streams.matAmbientOcclusion_id55;
    streams.envLightDiffuseColor_id45 = lightColor;
    streams.envLightSpecularColor_id46 = lightColor;
}
void PrepareDirectLight_id243(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id96(streams, lightIndex);
    streams.NdotL_id47 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id42), 0.0001f);
    ComputeShadow_id97(streams, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.shadowColor_id80 * streams.NdotL_id47 * streams.lightDirectAmbientOcclusion_id48;
}
int GetLightCount_id244()
{
    return LightCount_id98;
}
int GetMaxLightCount_id245()
{
    return TMaxLightCount_id99;
}
void PrepareDirectLights_id241()
{
}
void PrepareDirectLight_id234(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id88(streams, lightIndex);
    streams.NdotL_id47 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id42), 0.0001f);
    ComputeShadow_id89(streams, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.shadowColor_id80 * streams.NdotL_id47 * streams.lightDirectAmbientOcclusion_id48;
}
int GetLightCount_id237(inout PS_STREAMS streams)
{
    return streams.lightData_id87.y >> 16;
}
int GetMaxLightCount_id236(inout PS_STREAMS streams)
{
    return streams.lightData_id87.y >> 16;
}
void PrepareDirectLights_id232()
{
}
float3 ComputeDirectLightContribution_id411(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id68;
    float3 fresnel = Compute_id273(streams, specularColor);
    float geometricShadowing = Compute_id302(streams);
    float normalDistribution = Compute_id332(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id62.y;
}
float3 ComputeDirectLightContribution_id362(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id66;
    return diffuseColor / PI_id197 * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id62.x;
}
void PrepareMaterialPerDirectLight_id31(inout PS_STREAMS streams)
{
    streams.H_id72 = normalize(streams.viewWS_id65 + streams.lightDirectionWS_id42);
    streams.NdotH_id73 = max(dot(streams.normalWS_id16, streams.H_id72), 0.0001f);
    streams.LdotH_id74 = max(dot(streams.lightDirectionWS_id42, streams.H_id72), 0.0001f);
    streams.VdotH_id75 = streams.LdotH_id74;
}
void PrepareDirectLight_id224(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id80(streams, lightIndex);
    streams.NdotL_id47 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id42), 0.0001f);
    ComputeShadow_id81(streams, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.shadowColor_id80 * streams.NdotL_id47 * streams.lightDirectAmbientOcclusion_id48;
}
int GetLightCount_id228(inout PS_STREAMS streams)
{
    return streams.lightData_id87.y & 0xFFFF;
}
int GetMaxLightCount_id227(inout PS_STREAMS streams)
{
    return streams.lightData_id87.y & 0xFFFF;
}
void PrepareDirectLights_id226(inout PS_STREAMS streams)
{
    PrepareLightData_id84(streams);
}
void PrepareMaterialForLightingAndShading_id212(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id48 = lerp(1.0, streams.matAmbientOcclusion_id55, streams.matAmbientOcclusionDirectLightingFactor_id56);
    streams.matDiffuseVisible_id66 = streams.matDiffuse_id51.rgb * lerp(1.0f, streams.matCavity_id57, streams.matCavityDiffuse_id58) * streams.matDiffuseSpecularAlphaBlend_id62.r * streams.matAlphaBlendColor_id63;
    streams.matSpecularVisible_id68 = streams.matSpecular_id53.rgb * streams.matSpecularIntensity_id54 * lerp(1.0f, streams.matCavity_id57, streams.matCavitySpecular_id59) * streams.matDiffuseSpecularAlphaBlend_id62.g * streams.matAlphaBlendColor_id63;
    streams.NdotV_id69 = max(dot(streams.normalWS_id16, streams.viewWS_id65), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id52;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id149(streams, streams.matNormal_id49);
    streams.alphaRoughness_id67 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id211(inout PS_STREAMS streams)
{
    streams.lightDirectionWS_id42 = 0;
    streams.lightColor_id43 = 0;
    streams.lightColorNdotL_id44 = 0;
    streams.envLightDiffuseColor_id45 = 0;
    streams.envLightSpecularColor_id46 = 0;
    streams.lightDirectAmbientOcclusion_id48 = 1.0f;
    streams.NdotL_id47 = 0;
}
void UpdateNormalFromTangentSpace_id19(float3 normalInTangentSpace)
{
}
float4 Compute_id271()
{
    return float4(constantFloat_id191, constantFloat_id191, constantFloat_id191, constantFloat_id191);
}
float4 Compute_id269()
{
    return constantColor_id189;
}
float4 Compute_id267()
{
    return constantColor_id184;
}
void ResetStream_id216(inout PS_STREAMS streams)
{
    ResetStream_id213();
    streams.matBlend_id41 = 0.0f;
}
float4x4 GetBlendMatrix_id20(int index)
{
    return BlendMatrixArray_id37[index];
}
void PreTransformPosition_id13(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id19 = mul(streams.Position_id18, World_id29);
}
void Compute_id442(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id19(streams.matNormal_id49);
    ResetLightStream_id211(streams);
    PrepareMaterialForLightingAndShading_id212(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id226(streams);
        const int maxLightCount = GetMaxLightCount_id227(streams);
        int count = GetLightCount_id228(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id224(streams, i);
            PrepareMaterialPerDirectLight_id31(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id362(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id411(streams);
            }
        }
    }

    {
        PrepareDirectLights_id232();
        const int maxLightCount = GetMaxLightCount_id236(streams);
        int count = GetLightCount_id237(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id234(streams, i);
            PrepareMaterialPerDirectLight_id31(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id362(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id411(streams);
            }
        }
    }

    {
        PrepareDirectLights_id241();
        const int maxLightCount = GetMaxLightCount_id245();
        int count = GetLightCount_id244();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id243(streams, i);
            PrepareMaterialPerDirectLight_id31(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id362(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id411(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id260(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id363(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id412(streams);
        }
    }

    {
        PrepareEnvironmentLight_id266(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id363(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id412(streams);
        }
    }
    streams.shadingColor_id70 += directLightingContribution * PI_id197 + environmentLightingContribution;
    streams.shadingColorAlpha_id71 = streams.matDiffuse_id51.a;
}
void Compute_id427(inout PS_STREAMS streams)
{
    streams.matSpecularIntensity_id54 = Compute_id271().r;
}
void Compute_id422(inout PS_STREAMS streams)
{
    streams.matSpecular_id53 = Compute_id269().rgb;
}
void Compute_id417(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id267();
    streams.matDiffuse_id51 = colorBase;
    streams.matColorBase_id50 = colorBase;
}
void ResetStream_id218(inout PS_STREAMS streams)
{
    ResetStream_id216(streams);
    streams.matNormal_id49 = float3(0, 0, 1);
    streams.matColorBase_id50 = 0.0f;
    streams.matDiffuse_id51 = 0.0f;
    streams.matDiffuseVisible_id66 = 0.0f;
    streams.matSpecular_id53 = 0.0f;
    streams.matSpecularVisible_id68 = 0.0f;
    streams.matSpecularIntensity_id54 = 1.0f;
    streams.matGlossiness_id52 = 0.0f;
    streams.alphaRoughness_id67 = 1.0f;
    streams.matAmbientOcclusion_id55 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id56 = 0.0f;
    streams.matCavity_id57 = 1.0f;
    streams.matCavityDiffuse_id58 = 0.0f;
    streams.matCavitySpecular_id59 = 0.0f;
    streams.matEmissive_id60 = 0.0f;
    streams.matEmissiveIntensity_id61 = 0.0f;
    streams.matDiffuseSpecularAlphaBlend_id62 = 1.0f;
    streams.matAlphaBlendColor_id63 = 1.0f;
    streams.matAlphaDiscard_id64 = 0.0f;
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id21(inout VS_STREAMS streams)
{
    PreTransformPosition_id13(streams);
    streams.skinningBlendMatrix_id40 = GetBlendMatrix_id20(streams.BlendIndices_id39[0]) * streams.BlendWeights_id38[0] + GetBlendMatrix_id20(streams.BlendIndices_id39[1]) * streams.BlendWeights_id38[1] + GetBlendMatrix_id20(streams.BlendIndices_id39[2]) * streams.BlendWeights_id38[2] + GetBlendMatrix_id20(streams.BlendIndices_id39[3]) * streams.BlendWeights_id38[3];
    float4 blendPos = mul(float4(streams.Position_id18.xyz, 1.0f), streams.skinningBlendMatrix_id40);
    blendPos /= blendPos.w;
    streams.PositionWS_id19 = blendPos;
}
void Compute_id77(inout PS_STREAMS streams)
{

    {
        Compute_id417(streams);
    }

    {
        Compute_id422(streams);
    }

    {
        Compute_id427(streams);
    }

    {
        Compute_id442(streams);
    }
}
void ResetStream_id76(inout PS_STREAMS streams)
{
    ResetStream_id218(streams);
    streams.shadingColorAlpha_id71 = 1.0f;
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
void PreTransformPosition_id22(inout VS_STREAMS streams)
{
    PreTransformPosition_id21(streams);
    streams.meshNormal_id14 = normalize(mul(streams.meshNormal_id14, (float3x3)streams.skinningBlendMatrix_id40));
}
float4 Shading_id32(inout PS_STREAMS streams)
{
    streams.viewWS_id65 = normalize(Eye_id28.xyz - streams.PositionWS_id19.xyz);
    streams.shadingColor_id70 = 0;
    ResetStream_id76(streams);
    Compute_id77(streams);
    return float4(streams.shadingColor_id70, streams.shadingColorAlpha_id71);
}
void PSMain_id1()
{
}
void BaseTransformVS_id7(inout VS_STREAMS streams)
{
    PreTransformPosition_id22(streams);
    TransformPosition_id5();
    PostTransformPosition_id14(streams);
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id1 = Shading_id32(streams);
}
void GenerateNormal_PS_id18(inout PS_STREAMS streams)
{
    streams.normalWS_id16 = normalize(streams.normalWS_id16);
}
void GenerateNormal_VS_id23(inout VS_STREAMS streams)
{
    streams.normalWS_id16 = streams.meshNormal_id14;
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
    streams.BlendIndices_id39 = __input__.BlendIndices_id39;
    streams.BlendWeights_id38 = __input__.BlendWeights_id38;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    VSMain_id8(streams);
    GenerateNormal_VS_id23(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id20 = streams.DepthVS_id20;
    __output__.normalWS_id16 = streams.normalWS_id16;
    return __output__;
}
