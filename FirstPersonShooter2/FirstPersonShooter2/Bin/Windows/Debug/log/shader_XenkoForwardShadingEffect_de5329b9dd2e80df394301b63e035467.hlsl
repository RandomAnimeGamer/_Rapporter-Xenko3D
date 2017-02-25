/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceNormalMap<true,true,false> [{normalMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.NormalMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = ComputeColorConstantFloatLink<Material.GlossinessValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecular,rgb> [{computeColorSource = ComputeColorConstantColorLink<Material.SpecularValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecularIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.SpecularIntensityValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAmbientOcclusion,r> [{computeColorSource = ComputeColorTextureScaledOffsetDynamicSampler<Material.AmbientOcclusionMap,TEXCOORD0,Material.Sampler.i0,r,Material.TextureScale.i1,Material.TextureOffset.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAmbientOcclusionDirectLightingFactor,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.AmbientOcclusionDirectLightingFactorValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavityValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavityDiffuse,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavityDiffuseValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavitySpecular,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavitySpecularValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = mixin ComputeColorMultiply [{color1 = ComputeColorTextureScaledOffsetDynamicSampler<Material.EmissiveMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale.i2,Material.TextureOffset.i2>}, {color2 = ComputeColorConstantColorLink<Material.EmissiveValue>}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.EmissiveIntensity>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}], MaterialSurfaceEmissiveShading<false>]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Material.HasNormalMap: True
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
cbuffer PerMaterial [Size: 160]
@C    constantColor_id180 => Material.DiffuseValue
@C    scale_id185 => Material.TextureScale
@C    offset_id186 => Material.TextureOffset
@C    constantFloat_id191 => Material.GlossinessValue
@C    constantColor_id197 => Material.SpecularValue
@C    constantFloat_id199 => Material.SpecularIntensityValue
@C    scale_id203 => Material.TextureScale.i1
@C    offset_id204 => Material.TextureOffset.i1
@C    constantFloat_id206 => Material.AmbientOcclusionDirectLightingFactorValue
@C    constantFloat_id208 => Material.CavityValue
@C    constantFloat_id210 => Material.CavityDiffuseValue
@C    constantFloat_id212 => Material.CavitySpecularValue
@C    scale_id216 => Material.TextureScale.i2
@C    offset_id217 => Material.TextureOffset.i2
@C    constantColor_id218 => Material.EmissiveValue
@C    constantFloat_id222 => Material.EmissiveIntensity
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
@R    Texture_id182 => Material.NormalMap [Stage: None, Slot: (-1--1)]
@R    Texture_id182 => Material.NormalMap [Stage: None, Slot: (-1--1)]
@R    Sampler_id183 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Sampler_id183 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Texture_id201 => Material.AmbientOcclusionMap [Stage: None, Slot: (-1--1)]
@R    Texture_id201 => Material.AmbientOcclusionMap [Stage: None, Slot: (-1--1)]
@R    Texture_id214 => Material.EmissiveMap [Stage: None, Slot: (-1--1)]
@R    Texture_id214 => Material.EmissiveMap [Stage: None, Slot: (-1--1)]
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
@R    Sampler_id183 => Material.Sampler.i0 [Stage: Pixel, Slot: (2-2)]
@R    Texture_id182 => Material.NormalMap [Stage: Pixel, Slot: (0-0)]
@R    Texture_id201 => Material.AmbientOcclusionMap [Stage: Pixel, Slot: (1-1)]
@R    Texture_id214 => Material.EmissiveMap [Stage: Pixel, Slot: (2-2)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: Pixel, Slot: (3-3)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: Pixel, Slot: (4-4)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (5-5)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (6-6)]
@R    ShadowMapTexture_id97 => ShadowMap.Texture.directLightGroups[2] [Stage: Pixel, Slot: (7-7)]
@R    CubeMap_id175 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (8-8)]
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
@S    MaterialSurfaceNormalMap => 9d09de7bfdbcadbc973dbfcc57934c02
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
@S    ComputeColorMultiply => 4609285caa8d3d20440e3ecad99b1075
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
@S    MaterialSurfaceEmissiveShading => 8441e737217d64ffcec16b8458a149b2
***************************
*****     Stages      *****
***************************
@G    Vertex => f2eeb9bb9f1f69bc13dc865e6c9745f3
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
// TANGENT                  0   xyzw        2     NONE   float   xyzw
// TEXCOORD                 0   xy          3     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMAL                   0    yzw        2     NONE   float    yzw
// TANGENT                  0   xyzw        3     NONE   float   xyzw
// TEXCOORD                 0   xy          4     NONE   float   xy  
//
vs_4_0
dcl_constantbuffer cb0[4], immediateIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input v2.xyzw
dcl_input v3.xy
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.x
dcl_output o2.yzw
dcl_output o3.xyzw
dcl_output o4.xy
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.meshNormal_id14.x; v1.y <- __input__.meshNormal_id14.y; v1.z <- __input__.meshNormal_id14.z; 
//   v2.x <- __input__.meshTangent_id15.x; v2.y <- __input__.meshTangent_id15.y; v2.z <- __input__.meshTangent_id15.z; v2.w <- __input__.meshTangent_id15.w; 
//   v3.x <- __input__.TexCoord_id148.x; v3.y <- __input__.TexCoord_id148.y; 
//   o4.x <- <VSMain return value>.TexCoord_id148.x; o4.y <- <VSMain return value>.TexCoord_id148.y; 
//   o3.x <- <VSMain return value>.meshTangent_id15.x; o3.y <- <VSMain return value>.meshTangent_id15.y; o3.z <- <VSMain return value>.meshTangent_id15.z; o3.w <- <VSMain return value>.meshTangent_id15.w; 
//   o2.x <- <VSMain return value>.DepthVS_id20; o2.y <- <VSMain return value>.meshNormal_id14.x; o2.z <- <VSMain return value>.meshNormal_id14.y; o2.w <- <VSMain return value>.meshNormal_id14.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 1014 "C:\_Rapporter-Xenko3D\FirstPersonShooter2\FirstPersonShooter2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_de5329b9dd2e80df394301b63e035467.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 1095
mov o0.xyzw, r0.xyzw

#line 1004
dp4 r1.x, r0.xyzw, cb1[19].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 1095
mov o1.w, r1.x
mov o2.x, r1.x

#line 1004
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw

#line 1095
mov o2.yzw, v1.xxyz
mov o3.xyzw, v2.xyzw
mov o4.xy, v3.xyxx
ret 
// Approximately 15 instruction slots used
@G    Pixel => d0512bdcb9d0fe959b19c7820c82894c
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
//   float4 constantColor_id180;        // Offset:    0 Size:    16
//   float2 scale_id185;                // Offset:   16 Size:     8
//   float2 offset_id186;               // Offset:   24 Size:     8
//   float constantFloat_id191;         // Offset:   32 Size:     4
//   float4 constantColor_id197;        // Offset:   48 Size:    16
//   float constantFloat_id199;         // Offset:   64 Size:     4
//   float2 scale_id203;                // Offset:   68 Size:     8
//   float2 offset_id204;               // Offset:   80 Size:     8
//   float constantFloat_id206;         // Offset:   88 Size:     4
//   float constantFloat_id208;         // Offset:   92 Size:     4
//   float constantFloat_id210;         // Offset:   96 Size:     4
//   float constantFloat_id212;         // Offset:  100 Size:     4
//   float2 scale_id216;                // Offset:  104 Size:     8
//   float2 offset_id217;               // Offset:  112 Size:     8
//   float4 constantColor_id218;        // Offset:  128 Size:    16
//   float constantFloat_id222;         // Offset:  144 Size:     4
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
// Sampler_id183                     sampler      NA          NA    2        1
// Texture_id182                     texture  float4          2d    0        1
// Texture_id201                     texture  float4          2d    1        1
// Texture_id214                     texture  float4          2d    2        1
// LightClusters_id85                texture   uint2          3d    3        1
// LightIndices_id86                 texture    uint         buf    4        1
// PointLights_id90                  texture  float4         buf    5        1
// SpotLights_id93                   texture  float4         buf    6        1
// ShadowMapTexture_id97             texture  float4          2d    7        1
// CubeMap_id175                     texture  float4        cube    8        1
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
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMAL                   0    yzw        2     NONE   float    yzw
// TANGENT                  0   xyzw        3     NONE   float   xyzw
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
dcl_constantbuffer cb0[3], immediateIndexed
dcl_constantbuffer cb1[10], immediateIndexed
dcl_constantbuffer cb2[65], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture3d (uint,uint,uint,uint) t3
dcl_resource_buffer (uint,uint,uint,uint) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_resource_buffer (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texturecube (float,float,float,float) t8
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.xyz, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xy
dcl_output o0.xyzw
dcl_temps 22
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id20; v2.y <- __input__.meshNormal_id14.x; v2.z <- __input__.meshNormal_id14.y; v2.w <- __input__.meshNormal_id14.z; 
//   v3.x <- __input__.meshTangent_id15.x; v3.y <- __input__.meshTangent_id15.y; v3.z <- __input__.meshTangent_id15.z; v3.w <- __input__.meshTangent_id15.w; 
//   v4.x <- __input__.TexCoord_id148.x; v4.y <- __input__.TexCoord_id148.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 995 "C:\_Rapporter-Xenko3D\FirstPersonShooter2\FirstPersonShooter2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_de5329b9dd2e80df394301b63e035467.hlsl"
dp3 r0.x, v2.yzwy, v2.yzwy
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.yzwy  // r0.x <- streams.meshNormal_id14.x; r0.y <- streams.meshNormal_id14.y; r0.z <- streams.meshNormal_id14.z
dp3 r0.w, v3.xyzx, v3.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v3.xyzx  // r1.x <- tangent.x; r1.y <- tangent.y; r1.z <- tangent.z
mul r2.xyz, r0.zxyz, r1.yzxy
mad r2.xyz, r0.yzxy, r1.zxyz, -r2.xyzx
mul r2.xyz, r2.xyzx, v3.wwww  // r2.x <- bitangent.x; r2.y <- bitangent.y; r2.z <- bitangent.z

#line 1031
dp3 r3.x, r1.xyzx, cb0[0].xyzx  // r3.x <- streams.tangentToWorld_id17._m00
dp3 r4.x, r1.xyzx, cb0[1].xyzx  // r4.x <- streams.tangentToWorld_id17._m01
dp3 r1.x, r1.xyzx, cb0[2].xyzx  // r1.x <- streams.tangentToWorld_id17._m02
dp3 r3.y, r2.xyzx, cb0[0].xyzx  // r3.y <- streams.tangentToWorld_id17._m10
dp3 r4.y, r2.xyzx, cb0[1].xyzx  // r4.y <- streams.tangentToWorld_id17._m11
dp3 r1.y, r2.xyzx, cb0[2].xyzx  // r1.y <- streams.tangentToWorld_id17._m12
dp3 r3.z, r0.xyzx, cb0[0].xyzx  // r3.z <- streams.tangentToWorld_id17._m20
dp3 r4.z, r0.xyzx, cb0[1].xyzx  // r4.z <- streams.tangentToWorld_id17._m21
dp3 r1.z, r0.xyzx, cb0[2].xyzx  // r1.z <- streams.tangentToWorld_id17._m22

#line 1018
add r0.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx  // r0.x <- streams.viewWS_id61.x; r0.y <- streams.viewWS_id61.y; r0.z <- streams.viewWS_id61.z

#line 714
mad r2.xy, v4.xyxx, cb1[1].xyxx, cb1[1].zwzz
sample r2.xyzw, r2.xyxx, t0.xyzw, s2  // r2.x <- <Compute_id352 return value>.x; r2.y <- <Compute_id352 return value>.y

#line 881
mad r2.xy, r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r2.x <- normal.x; r2.y <- normal.y

#line 885
dp2 r0.w, r2.xyxx, r2.xyxx
add r0.w, -r0.w, l(1.000000)
max r0.w, r0.w, l(0.000000)
sqrt r2.z, r0.w  // r2.z <- normal.z

#line 698
mad r5.xy, v4.xyxx, cb1[4].yzyy, cb1[5].xyxx
sample r5.xyzw, r5.xyxx, t1.xyzw, s2  // r5.x <- <Compute_id360 return value>.x

#line 537
mad r5.yz, v4.xxyx, cb1[6].zzwz, cb1[7].xxyx
sample r6.xyzw, r5.yzyy, t2.xyzw, s2  // r6.x <- <Compute_id370 return value>.x; r6.y <- <Compute_id370 return value>.y; r6.z <- <Compute_id370 return value>.z

#line 677
mul r5.yzw, r6.xxyz, cb1[8].xxyz  // r5.y <- mix1.x; r5.z <- mix1.y; r5.w <- mix1.z

#line 667
dp3 r3.x, r2.xyzx, r3.xyzx
dp3 r3.y, r2.xyzx, r4.xyzx
dp3 r3.z, r2.xyzx, r1.xyzx
dp3 r0.w, r3.xyzx, r3.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, r3.xyzx  // r1.x <- streams.normalWS_id16.x; r1.y <- streams.normalWS_id16.y; r1.z <- streams.normalWS_id16.z

#line 647
add r0.w, r5.x, l(-1.000000)
mad r0.w, cb1[5].z, r0.w, l(1.000000)  // r0.w <- streams.lightDirectAmbientOcclusion_id44
add r1.w, cb1[5].w, l(-1.000000)
mad r3.xy, cb1[6].xyxx, r1.wwww, l(1.000000, 1.000000, 0.000000, 0.000000)
mul r3.xzw, r3.xxxx, cb1[0].xxyz  // r3.x <- streams.matDiffuseVisible_id62.x; r3.z <- streams.matDiffuseVisible_id62.y; r3.w <- streams.matDiffuseVisible_id62.z
mul r4.xyz, cb1[3].xyzx, cb1[4].xxxx
mul r4.xyz, r3.yyyy, r4.xyzx  // r4.x <- streams.matSpecularVisible_id64.x; r4.y <- streams.matSpecularVisible_id64.y; r4.z <- streams.matSpecularVisible_id64.z
dp3 r1.w, r1.xyzx, r0.xyzx
max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotV_id65
add r2.w, -cb1[2].x, l(1.000000)  // r2.w <- roughness

#line 525
dp3 r2.x, r2.xyzx, r2.xyzx
sqrt r2.y, r2.x  // r2.y <- r
lt r2.z, r2.y, l(1.000000)
add r3.y, -r2.x, l(1.000000)
mul r3.y, r3.y, l(0.500000)
mul r2.x, r2.y, r2.x
mad r2.x, r2.y, l(3.000000), -r2.x
div r2.x, r3.y, r2.x  // r2.x <- roughnessAdjust
and r2.x, r2.x, r2.z

#line 653
mad r2.x, r2.w, r2.w, r2.x

#line 517
add r2.y, v1.z, -cb2[22].z
div r2.y, cb2[22].w, r2.y  // r2.y <- depth
ftoi r2.zw, v1.xxxy  // r2.z <- shadingPosition.x; r2.w <- shadingPosition.y
mad r2.y, r2.y, cb2[23].w, cb2[24].x
log r2.y, r2.y

#line 653
max r2.xy, r2.xyxx, l(0.001000, 0.000000, 0.000000, 0.000000)  // r2.x <- streams.alphaRoughness_id63

#line 519
ftoi r6.z, r2.y  // r6.z <- slice
ushr r6.xy, r2.zwzz, l(6)
mov r6.w, l(0)
ld r6.xyzw, r6.xyzw, t3.xyzw  // r6.x <- streams.lightData_id83.x; r6.y <- streams.lightData_id83.y

#line 639
and r2.y, r6.y, l(0x0000ffff)  // r2.y <- <GetMaxLightCount_id310 return value>

#line 741
mov r7.xyz, v0.xyzx  // r7.x <- streams.PositionWS_id19.x; r7.y <- streams.PositionWS_id19.y; r7.z <- streams.PositionWS_id19.z
mov r8.xyz, r0.xyzx  // r8.x <- streams.viewWS_id61.x; r8.y <- streams.viewWS_id61.y; r8.z <- streams.viewWS_id61.z
mov r9.x, r3.x  // r9.x <- streams.matDiffuseVisible_id62.x
mov r10.xy, r3.zwzz  // r10.x <- streams.matDiffuseVisible_id62.y; r10.y <- streams.matDiffuseVisible_id62.z
mov r10.zw, r4.xxxy  // r10.z <- streams.matSpecularVisible_id64.x; r10.w <- streams.matSpecularVisible_id64.y
mov r11.x, r4.z  // r11.x <- streams.matSpecularVisible_id64.z
mov r11.y, r2.x  // r11.y <- streams.alphaRoughness_id63
mov r12.xyz, r1.xyzx  // r12.x <- streams.normalWS_id16.x; r12.y <- streams.normalWS_id16.y; r12.z <- streams.normalWS_id16.z
mov r13.y, r0.w  // r13.y <- streams.lightDirectAmbientOcclusion_id44
mov r13.z, r1.w  // r13.z <- streams.NdotV_id65
mov r13.x, r6.x  // r13.x <- streams.lightIndex_id84
mov r14.xyz, l(0,0,0,0)  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z
mov r2.z, l(0)  // r2.z <- i
loop 
  ige r2.w, r2.z, r2.y
  breakc_nz r2.w
  if_nz r2.w
    break 
  endif 

#line 504
  ld r15.xyzw, r13.xxxx, t4.xyzw  // r15.x <- realLightIndex
  iadd r13.x, r13.x, l(1)  // r13.x <- streams.lightIndex_id84
  ishl r2.w, r15.x, l(1)
  ld r15.xyzw, r2.wwww, t5.xyzw  // r15.x <- pointLight1.x; r15.y <- pointLight1.y; r15.z <- pointLight1.z; r15.w <- pointLight1.w
  iadd r2.w, r2.w, l(1)
  ld r16.xyzw, r2.wwww, t5.xyzw  // r16.x <- pointLight2.x; r16.y <- pointLight2.y; r16.z <- pointLight2.z

#line 357
  add r15.xyz, -r7.xyzx, r15.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z
  dp3 r2.w, r15.xyzx, r15.xyzx
  sqrt r3.y, r2.w  // r3.y <- lightVectorLength
  div r15.xyz, r15.xyzx, r3.yyyy  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 307
  max r3.y, r2.w, l(0.000100)
  div r3.y, l(1.000000, 1.000000, 1.000000, 1.000000), r3.y  // r3.y <- attenuation

#line 239
  mul r2.w, r15.w, r2.w  // r2.w <- factor
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id98 return value>

#line 308
  mul r2.w, r2.w, r3.y  // r2.w <- attenuation

#line 363
  mul r16.xyz, r2.wwww, r16.xyzx  // r16.x <- streams.lightColor_id39.x; r16.y <- streams.lightColor_id39.y; r16.z <- streams.lightColor_id39.z

#line 629
  dp3 r2.w, r12.xyzx, r15.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id43
  mul r16.xyz, r2.wwww, r16.xyzx
  mul r16.xyz, r13.yyyy, r16.xyzx  // r16.x <- streams.lightColorNdotL_id40.x; r16.y <- streams.lightColorNdotL_id40.y; r16.z <- streams.lightColorNdotL_id40.z

#line 621
  add r17.xyz, r8.xyzx, r15.xyzx
  dp3 r3.y, r17.xyzx, r17.xyzx
  rsq r3.y, r3.y
  mul r17.xyz, r3.yyyy, r17.xyzx  // r17.x <- streams.H_id68.x; r17.y <- streams.H_id68.y; r17.z <- streams.H_id68.z
  dp3 r3.y, r12.xyzx, r17.xyzx
  max r3.y, r3.y, l(0.000100)  // r3.y <- streams.NdotH_id69
  dp3 r4.w, r15.xyzx, r17.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.LdotH_id70

#line 617
  mov r9.yz, r10.xxyx
  mul r9.yzw, r16.xxyz, r9.xxyz

#line 751
  mad r9.yzw, r9.yyzw, l(0.000000, 0.318310, 0.318310, 0.318310), r14.xxyz  // r9.y <- directLightingContribution.x; r9.z <- directLightingContribution.y; r9.w <- directLightingContribution.z

#line 302
  mov r15.xy, r10.zwzz
  mov r15.z, r11.x
  add r17.xyz, -r15.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r6.z, r4.w, r4.w
  mul r6.z, r6.z, r6.z
  mul r4.w, r4.w, r6.z
  mad r15.xyz, r17.xyzx, r4.wwww, r15.xyzx  // r15.x <- <FresnelSchlick_id252 return value>.x; r15.y <- <FresnelSchlick_id252 return value>.y; r15.z <- <FresnelSchlick_id252 return value>.z

#line 297
  mul r4.w, r11.y, l(0.500000)  // r4.w <- k
  mad r6.z, -r11.y, l(0.500000), l(1.000000)
  mad r6.w, r2.w, r6.z, r4.w
  div r6.w, r2.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id270 return value>
  mad r4.w, r13.z, r6.z, r4.w
  div r4.w, r13.z, r4.w  // r4.w <- <VisibilityhSchlickGGX_id270 return value>

#line 349
  mul r4.w, r4.w, r6.w
  mul r2.w, r13.z, r2.w
  div r2.w, r4.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id272 return value>

#line 344
  mul r4.w, r11.y, r11.y  // r4.w <- alphaR2
  mul r3.y, r3.y, r3.y
  mad r6.z, r11.y, r11.y, l(-1.000000)
  mad r3.y, r3.y, r6.z, l(1.000000)
  max r3.y, r3.y, l(0.000100)
  mul r3.y, r3.y, r3.y
  mul r3.y, r3.y, l(3.141593)
  div r3.y, r4.w, r3.y  // r3.y <- <NormalDistributionGGX_id286 return value>

#line 611
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r15.xyz, r3.yyyy, r15.xyzx
  mul r15.xyz, r16.xyzx, r15.xyzx

#line 755
  mad r14.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r9.yzwy  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 741
  iadd r2.z, r2.z, l(1)

#line 757
endloop   // r13.x <- streams.lightIndex_id84

#line 600
ushr r2.y, r6.y, l(16)  // r2.y <- <GetMaxLightCount_id319 return value>

#line 765
mov r6.xyz, v0.xyzx  // r6.x <- streams.PositionWS_id19.x; r6.y <- streams.PositionWS_id19.y; r6.z <- streams.PositionWS_id19.z
mov r7.y, r2.x  // r7.y <- streams.alphaRoughness_id63
mov r7.w, r1.w  // r7.w <- streams.NdotV_id65
mov r8.xyz, r0.xyzx
mov r9.xyz, r3.xzwx  // r9.y <- streams.matDiffuseVisible_id62.y; r9.z <- streams.matDiffuseVisible_id62.z
mov r10.xyz, r4.xyzx  // r10.x <- streams.matSpecularVisible_id64.x; r10.y <- streams.matSpecularVisible_id64.y; r10.z <- streams.matSpecularVisible_id64.z
mov r11.xyz, r1.xyzx  // r11.x <- streams.normalWS_id16.x; r11.y <- streams.normalWS_id16.y; r11.z <- streams.normalWS_id16.z
mov r12.xyz, r14.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r2.z, r0.w  // r2.z <- streams.lightDirectAmbientOcclusion_id44
mov r2.w, r13.x  // r2.w <- streams.lightIndex_id84
mov r3.y, l(0)  // r3.y <- i
loop 
  ige r4.w, r3.y, r2.y
  breakc_nz r4.w
  if_nz r4.w
    break 
  endif 

#line 473
  ld r15.xyzw, r2.wwww, t4.xyzw  // r15.x <- realLightIndex
  iadd r2.w, r2.w, l(1)  // r2.w <- streams.lightIndex_id84
  ishl r4.w, r15.x, l(2)
  ld r15.xyzw, r4.wwww, t6.xyzw  // r15.x <- spotLight1.x; r15.y <- spotLight1.y; r15.z <- spotLight1.z

#line 479
  iadd r13.yzw, r4.wwww, l(0, 1, 2, 3)
  ld r16.xyzw, r13.yyyy, t6.xyzw  // r16.x <- spotLight2.x; r16.y <- spotLight2.y; r16.z <- spotLight2.z
  ld r17.xyzw, r13.zzzz, t6.xyzw  // r17.x <- spotLight3.x; r17.y <- spotLight3.y; r17.z <- spotLight3.z
  ld r18.xyzw, r13.wwww, t6.xyzw  // r18.x <- spotLight4.x; r18.y <- spotLight4.y; r18.z <- spotLight4.z

#line 329
  add r13.yzw, -r6.xxyz, r15.xxyz  // r13.y <- lightVector.x; r13.z <- lightVector.y; r13.w <- lightVector.z
  dp3 r4.w, r13.yzwy, r13.yzwy
  sqrt r6.w, r4.w  // r6.w <- lightVectorLength
  div r13.yzw, r13.yyzw, r6.wwww  // r13.y <- lightVectorNorm.x; r13.z <- lightVectorNorm.y; r13.w <- lightVectorNorm.z

#line 291
  max r6.w, r4.w, l(0.000100)
  div r6.w, l(1.000000, 1.000000, 1.000000, 1.000000), r6.w  // r6.w <- attenuation

#line 233
  mul r4.w, r17.z, r4.w  // r4.w <- factor
  mad r4.w, -r4.w, r4.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- smoothFactor
  mul r4.w, r4.w, r4.w  // r4.w <- <SmoothDistanceAttenuation_id106 return value>

#line 292
  mul r4.w, r4.w, r6.w  // r4.w <- attenuation

#line 283
  dp3 r6.w, -r16.xyzx, r13.yzwy  // r6.w <- cd
  mad_sat r6.w, r6.w, r17.x, r17.y  // r6.w <- attenuation
  mul r6.w, r6.w, r6.w

#line 338
  mul r4.w, r4.w, r6.w  // r4.w <- attenuation
  mul r13.yzw, r4.wwww, r18.xxyz  // r13.y <- streams.lightColor_id39.x; r13.z <- streams.lightColor_id39.y; r13.w <- streams.lightColor_id39.z

#line 590
  dp3 r4.w, r11.xyzx, -r16.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id43
  mul r13.yzw, r4.wwww, r13.yyzw
  mul r13.yzw, r2.zzzz, r13.yyzw  // r13.y <- streams.lightColorNdotL_id40.x; r13.z <- streams.lightColorNdotL_id40.y; r13.w <- streams.lightColorNdotL_id40.z

#line 621
  add r15.xyz, r8.xyzx, -r16.xyzx
  dp3 r6.w, r15.xyzx, r15.xyzx
  rsq r6.w, r6.w
  mul r15.xyz, r6.wwww, r15.xyzx  // r15.x <- streams.H_id68.x; r15.y <- streams.H_id68.y; r15.z <- streams.H_id68.z
  dp3 r6.w, r11.xyzx, r15.xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.NdotH_id69
  dp3 r7.x, -r16.xyzx, r15.xyzx
  max r7.x, r7.x, l(0.000100)  // r7.x <- streams.LdotH_id70

#line 617
  mul r15.xyz, r9.xyzx, r13.yzwy

#line 775
  mad r15.xyz, r15.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 302
  add r16.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r7.x, -r7.x, l(1.000000)
  mul r7.z, r7.x, r7.x
  mul r7.z, r7.z, r7.z
  mul r7.x, r7.z, r7.x
  mad r16.xyz, r16.xyzx, r7.xxxx, r10.xyzx  // r16.x <- <FresnelSchlick_id252 return value>.x; r16.y <- <FresnelSchlick_id252 return value>.y; r16.z <- <FresnelSchlick_id252 return value>.z

#line 297
  mul r7.x, r7.y, l(0.500000)  // r7.x <- k
  mad r7.z, -r7.y, l(0.500000), l(1.000000)
  mad r8.w, r4.w, r7.z, r7.x
  div r8.w, r4.w, r8.w  // r8.w <- <VisibilityhSchlickGGX_id270 return value>
  mad r7.x, r7.w, r7.z, r7.x
  div r7.x, r7.w, r7.x  // r7.x <- <VisibilityhSchlickGGX_id270 return value>

#line 349
  mul r7.x, r7.x, r8.w
  mul r4.w, r7.w, r4.w
  div r4.w, r7.x, r4.w  // r4.w <- <VisibilitySmithSchlickGGX_id272 return value>

#line 344
  mul r7.x, r7.y, r7.y  // r7.x <- alphaR2
  mul r6.w, r6.w, r6.w
  mad r7.z, r7.y, r7.y, l(-1.000000)
  mad r6.w, r6.w, r7.z, l(1.000000)
  max r6.w, r6.w, l(0.000100)
  mul r6.w, r6.w, r6.w
  mul r6.w, r6.w, l(3.141593)
  div r6.w, r7.x, r6.w  // r6.w <- <NormalDistributionGGX_id286 return value>

#line 611
  mul r16.xyz, r4.wwww, r16.xyzx
  mul r16.xyz, r6.wwww, r16.xyzx
  mul r13.yzw, r13.yyzw, r16.xxyz

#line 779
  mad r12.xyz, r13.yzwy, l(0.250000, 0.250000, 0.250000, 0.000000), r15.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 765
  iadd r3.y, r3.y, l(1)

#line 781
endloop   // r2.w <- streams.lightIndex_id84

#line 321
dp2 r2.y, cb2[45].xxxx, cb2[27].zzzz

#line 313
mov r6.w, l(1.000000)

#line 789
mov r7.xyz, v0.xyzx  // r7.x <- streams.PositionWS_id19.x; r7.y <- streams.PositionWS_id19.y; r7.z <- streams.PositionWS_id19.z
mov r7.w, v2.x  // r7.w <- streams.DepthVS_id20
mov r8.y, r2.x  // r8.y <- streams.alphaRoughness_id63
mov r8.w, r1.w  // r8.w <- streams.NdotV_id65
mov r9.xyz, r0.xyzx  // r9.x <- streams.viewWS_id61.x; r9.y <- streams.viewWS_id61.y; r9.z <- streams.viewWS_id61.z
mov r10.xyz, r3.xzwx  // r10.x <- streams.matDiffuseVisible_id62.x; r10.y <- streams.matDiffuseVisible_id62.y; r10.z <- streams.matDiffuseVisible_id62.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matSpecularVisible_id64.x; r11.y <- streams.matSpecularVisible_id64.y; r11.z <- streams.matSpecularVisible_id64.z
mov r13.xyz, r1.xyzx  // r13.x <- streams.normalWS_id16.x; r13.y <- streams.normalWS_id16.y; r13.z <- streams.normalWS_id16.z
mov r14.xyz, r12.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z
mov r2.z, r0.w
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.y, r2.w, l(1)
  breakc_nz r3.y
  ige r3.y, r2.w, cb2[24].y
  if_nz r3.y
    break 
  endif 

#line 572
  dp3 r3.y, r13.xyzx, -cb2[25].xyzx
  max r3.y, r3.y, l(0.000100)  // r3.y <- streams.NdotL_id43

#line 423
  ishl r4.w, r2.w, l(2)  // r4.w <- cascadeIndexBase

#line 430
  lt r8.x, cb2[r4.w + 46].x, r7.w

#line 433
  and r8.x, r8.x, l(1)  // r8.x <- cascadeIndex

#line 430
  iadd r15.xy, r4.wwww, l(1, 2, 0, 0)
  lt r8.z, cb2[r15.x + 46].x, r7.w

#line 433
  movc r8.x, r8.z, l(2), r8.x

#line 430
  lt r8.z, cb2[r15.y + 46].x, r7.w

#line 433
  movc r8.x, r8.z, l(3), r8.x

#line 320
  add r9.w, -r3.y, l(1.000000)
  max r9.w, r9.w, l(0.000000)  // r9.w <- normalOffsetScale
  mul r9.w, r2.y, r9.w

#line 437
  mad r6.xyz, r9.wwww, r13.xyzx, r7.xyzx  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 313
  iadd r4.w, r4.w, r8.x
  ishl r9.w, r4.w, l(2)
  dp4 r15.x, r6.xyzw, cb2[r9.w + 28].xyzw  // r15.x <- shadowPosition.x
  dp4 r15.y, r6.xyzw, cb2[r9.w + 29].xyzw  // r15.y <- shadowPosition.y
  dp4 r10.w, r6.xyzw, cb2[r9.w + 30].xyzw  // r10.w <- shadowPosition.z
  dp4 r11.w, r6.xyzw, cb2[r9.w + 31].xyzw  // r11.w <- shadowPosition.w
  add r15.z, r10.w, -cb2[44].x  // r15.z <- shadowPosition.z
  div r15.xyz, r15.xyzx, r11.wwww

#line 249
  mad r15.xy, r15.xyxx, cb2[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r16.xy, r15.xyxx  // r16.x <- base_uv.x; r16.y <- base_uv.y
  add r15.xy, r15.xyxx, -r16.xyxx  // r15.x <- s; r15.y <- t
  add r16.xy, r16.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r16.xy, r16.xyxx, cb2[27].zwzz

#line 262
  mad r16.zw, -r15.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r16.w <- uw0; r16.z <- vw0
  mad r17.xy, r15.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r17.x <- uw2; r17.y <- vw2
  mad r17.zw, -r15.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r17.zw, r17.zzzw, r16.wwwz
  add r18.xy, r15.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r15.xy, r15.xyxx, r17.xyxx
  add r19.xw, r17.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r19.x <- u0; r19.w <- v0
  mul r19.yz, r18.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r19.z <- u1; r19.y <- v1
  add r18.xy, r15.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r18.x <- u2; r18.y <- v2
  mul r10.w, r16.z, r16.w
  mad r20.xyzw, r19.xwzw, cb2[27].zwzw, r16.xyxy

#line 229
  sample_c r11.w, r20.xyxx, t7.xxxx, s1, r15.z  // r11.w <- <SampleTextureAndCompare_id122 return value>

#line 271
  mul r15.xy, r16.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 229
  sample_c r12.w, r20.zwzz, t7.xxxx, s1, r15.z  // r12.w <- <SampleTextureAndCompare_id122 return value>

#line 269
  mul r12.w, r12.w, r15.x
  mad r10.w, r10.w, r11.w, r12.w  // r10.w <- shadow

#line 274
  mul r15.xw, r16.zzzw, r17.xxxy
  mov r18.zw, r19.wwwy
  mad r20.xyzw, r18.xzxw, cb2[27].zwzw, r16.xyxy

#line 229
  sample_c r11.w, r20.xyxx, t7.xxxx, s1, r15.z  // r11.w <- <SampleTextureAndCompare_id122 return value>

#line 270
  mad r10.w, r15.x, r11.w, r10.w
  mad r21.xyzw, r19.xyzy, cb2[27].zwzw, r16.xyxy

#line 229
  sample_c r11.w, r21.xyxx, t7.xxxx, s1, r15.z

#line 271
  mad r10.w, r15.y, r11.w, r10.w

#line 229
  sample_c r11.w, r21.zwzz, t7.xxxx, s1, r15.z

#line 272
  mad r10.w, r11.w, l(49.000000), r10.w

#line 275
  mul r15.xy, r17.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 229
  sample_c r11.w, r20.zwzz, t7.xxxx, s1, r15.z

#line 273
  mad r10.w, r15.x, r11.w, r10.w
  mov r19.y, r18.y
  mad r19.xyzw, r19.xyzy, cb2[27].zwzw, r16.xyxy

#line 229
  sample_c r11.w, r19.xyxx, t7.xxxx, s1, r15.z

#line 274
  mad r10.w, r15.w, r11.w, r10.w

#line 229
  sample_c r11.w, r19.zwzz, t7.xxxx, s1, r15.z

#line 275
  mad r10.w, r15.y, r11.w, r10.w
  mul r11.w, r17.y, r17.x
  mad r15.xy, r18.xyxx, cb2[27].zwzz, r16.xyxx

#line 229
  sample_c r12.w, r15.xyxx, t7.xxxx, s1, r15.z  // r12.w <- <SampleTextureAndCompare_id122 return value>

#line 276
  mad r10.w, r11.w, r12.w, r10.w
  mul r11.w, r10.w, l(0.006944)  // r11.w <- shadow

#line 442
  iadd r12.w, r4.w, l(-1)
  add r12.w, -cb2[r12.w + 46].x, cb2[r4.w + 46].x
  movc r8.x, r8.x, r12.w, cb2[r4.w + 46].x  // r8.x <- splitSize
  add r4.w, -r7.w, cb2[r4.w + 46].x
  div r4.w, r4.w, r8.x  // r4.w <- splitDist
  lt r8.x, r4.w, l(0.200000)

#line 313
  iadd r9.w, r9.w, l(4)
  dp4 r15.x, r6.xyzw, cb2[r9.w + 28].xyzw  // r15.x <- shadowPosition.x
  dp4 r15.y, r6.xyzw, cb2[r9.w + 29].xyzw  // r15.y <- shadowPosition.y
  dp4 r12.w, r6.xyzw, cb2[r9.w + 30].xyzw  // r12.w <- shadowPosition.z
  dp4 r6.x, r6.xyzw, cb2[r9.w + 31].xyzw  // r6.x <- shadowPosition.w
  add r15.z, r12.w, -cb2[44].x  // r15.z <- shadowPosition.z
  div r6.xyz, r15.xyzx, r6.xxxx  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 249
  mad r6.xy, r6.xyxx, cb2[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r15.xy, r6.xyxx  // r15.x <- base_uv.x; r15.y <- base_uv.y
  add r6.xy, r6.xyxx, -r15.xyxx  // r6.x <- s; r6.y <- t
  add r15.xy, r15.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r15.xy, r15.xyxx, cb2[27].zwzz

#line 262
  mad r15.zw, -r6.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r15.w <- uw0; r15.z <- vw0
  mad r16.xy, r6.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r16.x <- uw2; r16.y <- vw2
  mad r16.zw, -r6.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r16.zw, r16.zzzw, r15.wwwz
  add r17.xy, r6.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r6.xy, r6.xyxx, r16.xyxx
  add r18.xw, r16.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r18.x <- u0; r18.w <- v0
  mul r18.yz, r17.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r18.z <- u1; r18.y <- v1
  add r17.xy, r6.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r17.x <- u2; r17.y <- v2
  mad r19.xyzw, r18.xwzw, cb2[27].zwzw, r15.xyxy

#line 229
  sample_c r6.x, r19.xyxx, t7.xxxx, s1, r6.z  // r6.x <- <SampleTextureAndCompare_id122 return value>
  sample_c r6.y, r19.zwzz, t7.xxxx, s1, r6.z  // r6.y <- <SampleTextureAndCompare_id122 return value>

#line 273
  mov r17.zw, r18.wwwy
  mad r19.xyzw, r17.xzxw, cb2[27].zwzw, r15.xyxy

#line 229
  sample_c r9.w, r19.xyxx, t7.xxxx, s1, r6.z  // r9.w <- <SampleTextureAndCompare_id122 return value>

#line 272
  mad r20.xyzw, r18.xyzy, cb2[27].zwzw, r15.xyxy

#line 229
  sample_c r12.w, r20.xyxx, t7.xxxx, s1, r6.z  // r12.w <- <SampleTextureAndCompare_id122 return value>
  sample_c r13.w, r20.zwzz, t7.xxxx, s1, r6.z  // r13.w <- <SampleTextureAndCompare_id122 return value>
  sample_c r14.w, r19.zwzz, t7.xxxx, s1, r6.z  // r14.w <- <SampleTextureAndCompare_id122 return value>

#line 274
  mov r18.y, r17.y
  mad r18.xyzw, r18.xyzy, cb2[27].zwzw, r15.xyxy

#line 229
  sample_c r16.z, r18.xyxx, t7.xxxx, s1, r6.z  // r16.z <- <SampleTextureAndCompare_id122 return value>
  sample_c r16.w, r18.zwzz, t7.xxxx, s1, r6.z  // r16.w <- <SampleTextureAndCompare_id122 return value>

#line 276
  mad r15.xy, r17.xyxx, cb2[27].zwzz, r15.xyxx

#line 229
  sample_c r6.z, r15.xyxx, t7.xxxx, s1, r6.z  // r6.z <- <SampleTextureAndCompare_id122 return value>

#line 444
  if_nz r8.x

#line 447
    if_z r8.z
      mul_sat r4.w, r4.w, l(5.000000)
      mad r8.x, r4.w, l(-2.000000), l(3.000000)
      mul r4.w, r4.w, r4.w
      mul r4.w, r4.w, r8.x  // r4.w <- lerpAmt

#line 268
      mul r8.x, r15.z, r15.w
      mul r6.y, r15.z, r6.y
      mul r6.y, r6.y, l(7.000000)
      mad r6.x, r8.x, r6.x, r6.y  // r6.x <- shadow

#line 274
      mul r8.xz, r15.zzwz, r16.xxyx

#line 270
      mad r6.x, r8.x, r9.w, r6.x
      mul r6.y, r12.w, r15.w
      mad r6.x, r6.y, l(7.000000), r6.x
      mad r6.x, r13.w, l(49.000000), r6.x
      mul r6.y, r14.w, r16.x
      mad r6.x, r6.y, l(7.000000), r6.x
      mad r6.x, r8.z, r16.z, r6.x
      mul r6.y, r16.y, r16.w
      mad r6.x, r6.y, l(7.000000), r6.x
      mul r6.y, r16.y, r16.x
      mad r6.x, r6.y, r6.z, r6.x
      mul r6.x, r6.x, l(0.006944)

#line 453
      mad r6.y, r10.w, l(0.006944), -r6.x
      mad r11.w, r4.w, r6.y, r6.x
    endif 
  endif   // r11.w <- shadow

#line 574
  mul r6.xyz, r11.wwww, cb2[26].xyzx
  mul r6.xyz, r3.yyyy, r6.xyzx
  mul r6.xyz, r2.zzzz, r6.xyzx  // r6.x <- streams.lightColorNdotL_id40.x; r6.y <- streams.lightColorNdotL_id40.y; r6.z <- streams.lightColorNdotL_id40.z

#line 621
  add r15.xyz, r9.xyzx, -cb2[25].xyzx
  dp3 r4.w, r15.xyzx, r15.xyzx
  rsq r4.w, r4.w
  mul r15.xyz, r4.wwww, r15.xyzx  // r15.x <- streams.H_id68.x; r15.y <- streams.H_id68.y; r15.z <- streams.H_id68.z
  dp3 r4.w, r13.xyzx, r15.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotH_id69
  dp3 r8.x, -cb2[25].xyzx, r15.xyzx
  max r8.x, r8.x, l(0.000100)  // r8.x <- streams.LdotH_id70

#line 617
  mul r15.xyz, r6.xyzx, r10.xyzx

#line 799
  mad r15.xyz, r15.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r14.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 302
  add r16.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r8.x, -r8.x, l(1.000000)
  mul r8.z, r8.x, r8.x
  mul r8.z, r8.z, r8.z
  mul r8.x, r8.z, r8.x
  mad r16.xyz, r16.xyzx, r8.xxxx, r11.xyzx  // r16.x <- <FresnelSchlick_id252 return value>.x; r16.y <- <FresnelSchlick_id252 return value>.y; r16.z <- <FresnelSchlick_id252 return value>.z

#line 297
  mul r8.x, r8.y, l(0.500000)  // r8.x <- k
  mad r8.z, -r8.y, l(0.500000), l(1.000000)
  mad r9.w, r3.y, r8.z, r8.x
  div r9.w, r3.y, r9.w  // r9.w <- <VisibilityhSchlickGGX_id270 return value>
  mad r8.x, r8.w, r8.z, r8.x
  div r8.x, r8.w, r8.x  // r8.x <- <VisibilityhSchlickGGX_id270 return value>

#line 349
  mul r8.x, r8.x, r9.w
  mul r3.y, r8.w, r3.y
  div r3.y, r8.x, r3.y  // r3.y <- <VisibilitySmithSchlickGGX_id272 return value>

#line 344
  mul r8.x, r8.y, r8.y  // r8.x <- alphaR2
  mul r4.w, r4.w, r4.w
  mad r8.z, r8.y, r8.y, l(-1.000000)
  mad r4.w, r4.w, r8.z, l(1.000000)
  max r4.w, r4.w, l(0.000100)
  mul r4.w, r4.w, r4.w
  mul r4.w, r4.w, l(3.141593)
  div r4.w, r8.x, r4.w  // r4.w <- <NormalDistributionGGX_id286 return value>

#line 611
  mul r16.xyz, r3.yyyy, r16.xyzx
  mul r16.xyz, r4.wwww, r16.xyzx
  mul r6.xyz, r6.xyzx, r16.xyzx

#line 803
  mad r14.xyz, r6.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r15.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 789
  iadd r2.w, r2.w, l(1)

#line 805
endloop 

#line 565
mul r2.yzw, r5.xxxx, cb2[50].xxyz  // r2.y <- lightColor.x; r2.z <- lightColor.y; r2.w <- lightColor.z

#line 399
add r0.w, -r2.x, l(1.000000)  // r0.w <- x

#line 407
mul r3.y, r0.w, r0.w

#line 415
mul r4.w, r3.y, l(1.895000)

#line 407
mad r4.w, r0.w, l(-0.168800), r4.w
mad r6.x, r1.w, l(-4.853000), l(0.990300)
mul r6.y, r1.w, r1.w
mad r6.x, r6.y, l(8.404000), r6.x
mul r6.z, r1.w, r6.y
mad r6.x, r6.z, l(-5.069000), r6.x
min_sat r4.w, r4.w, r6.x  // r4.w <- bias

#line 415
mad r6.x, r0.w, l(1.699000), l(0.604500)
mad r6.x, r1.w, l(-0.522800), r6.x
mad r6.x, r3.y, l(-3.603000), r6.x
mul r1.w, r0.w, r1.w
mad r1.w, r1.w, l(1.404000), r6.x
mad r1.w, r6.y, l(0.193900), r1.w
mul r0.w, r0.w, r3.y
mad_sat r0.w, r0.w, l(2.661000), r1.w  // r0.w <- delta
add r0.w, -r4.w, r0.w  // r0.w <- scale
mul_sat r1.w, r4.y, l(50.000000)
mul r1.w, r1.w, r4.w  // r1.w <- bias
mad r4.xyz, r4.xyzx, r0.wwww, r1.wwww  // r4.x <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id287 return value>.x; r4.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id287 return value>.y; r4.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id287 return value>.z

#line 556
mul r6.xyz, r2.yzwy, r4.xyzx  // r6.x <- <ComputeEnvironmentLightContribution_id515 return value>.x; r6.y <- <ComputeEnvironmentLightContribution_id515 return value>.y; r6.z <- <ComputeEnvironmentLightContribution_id515 return value>.z

#line 817
mad r2.yzw, r3.xxzw, r2.yyzw, r6.xxyz  // r2.y <- environmentLightingContribution.x; r2.z <- environmentLightingContribution.y; r2.w <- environmentLightingContribution.z

#line 545
dp3 r0.w, r1.xyzx, cb2[60].xyzx  // r0.w <- sampleDirection.x
dp3 r1.w, r1.xyzx, cb2[61].xyzx  // r1.w <- sampleDirection.y
dp3 r3.y, r1.xyzx, cb2[62].xyzx  // r3.y <- sampleDirection.z

#line 378
mul r4.w, r1.w, r1.w  // r4.w <- y2
mul r6.x, r3.y, r3.y  // r6.x <- z2

#line 383
mad r6.yzw, cb2[52].xxyz, r1.wwww, cb2[51].xxyz  // r6.y <- color.x; r6.z <- color.y; r6.w <- color.z
mad r6.yzw, cb2[53].xxyz, -r3.yyyy, r6.yyzw
mad r6.yzw, cb2[54].xxyz, r0.wwww, r6.yyzw

#line 388
mul r7.xyz, r1.wwww, cb2[55].xyzx
mad r6.yzw, r7.xxyz, r0.wwww, r6.yyzw
mul r7.xyz, r1.wwww, cb2[56].xyzx
mad r6.yzw, r7.xxyz, -r3.yyyy, r6.yyzw
mad r1.w, r6.x, l(3.000000), l(-1.000000)
mad r6.xyz, cb2[57].xyzx, r1.wwww, r6.yzwy  // r6.x <- color.x; r6.y <- color.y; r6.z <- color.z
mul r7.xyz, r0.wwww, cb2[58].xyzx
mad r6.xyz, r7.xyzx, -r3.yyyy, r6.xyzx
mad r0.w, r0.w, r0.w, -r4.w
mad r6.xyz, cb2[59].xyzx, r0.wwww, r6.xyzx

#line 547
mul r6.xyz, r6.xyzx, cb2[64].xxxx
mul r6.xyz, r5.xxxx, r6.xyzx  // r6.x <- streams.envLightDiffuseColor_id41.x; r6.y <- streams.envLightDiffuseColor_id41.y; r6.z <- streams.envLightDiffuseColor_id41.z
dp3 r0.w, -r0.xyzx, r1.xyzx
add r0.w, r0.w, r0.w
mad r0.xyz, r1.xyzx, -r0.wwww, -r0.xyzx  // r0.x <- sampleDirection.x; r0.y <- sampleDirection.y; r0.z <- sampleDirection.z
dp3 r1.x, r0.xyzx, cb2[60].xyzx  // r1.x <- sampleDirection.x
dp3 r1.y, r0.xyzx, cb2[61].xyzx  // r1.y <- sampleDirection.y
dp3 r0.x, r0.xyzx, cb2[62].xyzx  // r0.x <- sampleDirection.z
mov r1.z, -r0.x  // r1.z <- sampleDirection.z

#line 369
sqrt r0.x, r2.x
mul r0.x, r0.x, cb2[59].w  // r0.x <- mipLevel
sample_l r0.xyzw, r1.xyzx, t8.xyzw, s0, r0.x  // r0.x <- <Compute_id337 return value>.x; r0.y <- <Compute_id337 return value>.y; r0.z <- <Compute_id337 return value>.z

#line 551
mul r0.xyz, r0.xyzx, cb2[64].xxxx
mul r0.xyz, r5.xxxx, r0.xyzx  // r0.x <- streams.envLightSpecularColor_id42.x; r0.y <- streams.envLightSpecularColor_id42.y; r0.z <- streams.envLightSpecularColor_id42.z

#line 825
mad r1.xyz, r3.xzwx, r6.xyzx, r2.yzwy  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 829
mad r0.xyz, r4.xyzx, r0.xyzx, r1.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 832
mad r0.xyz, r14.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx  // r0.x <- streams.shadingColor_id66.x; r0.y <- streams.shadingColor_id66.y; r0.z <- streams.shadingColor_id66.z

#line 727
mad o0.xyz, r5.yzwy, cb1[9].xxxx, r0.xyzx

#line 1077
mov o0.w, cb1[0].w
ret 
// Approximately 501 instruction slots used
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
const static bool TIsNormalXY1_id187 = true;
const static bool TScaleAndBias_id188 = true;
const static bool TInvertY_id189 = false;
const static bool TInvert_id192 = false;
const static bool TIsEnergyConservative_id226 = false;
static const float PI_id228 = 3.14159265358979323846;
const static bool TUseAlphaFromEmissive_id235 = false;
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
Texture2D Texture_id182;
SamplerState Sampler_id183;
Texture2D Texture_id201;
Texture2D Texture_id214;
Texture3D<uint2> LightClusters_id85;
Buffer<uint> LightIndices_id86;
Buffer<float4> PointLights_id90;
Buffer<float4> SpotLights_id93;
Texture2D ShadowMapTexture_id97;
TextureCube CubeMap_id175;
struct PS_STREAMS 
{
    float3 meshNormal_id14;
    float4 meshTangent_id15;
    float4 PositionWS_id19;
    float2 TexCoord_id148;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
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
    float4 meshTangent_id15;
    float2 TexCoord_id148;
    float4 PositionH_id21;
    float3 normalWS_id16;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id19 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id20 : DEPTH_VS;
    float3 meshNormal_id14 : NORMAL;
    float4 meshTangent_id15 : TANGENT;
    float2 TexCoord_id148 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    float3 meshNormal_id14 : NORMAL;
    float4 meshTangent_id15 : TANGENT;
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
    float4 constantColor_id180;
    float2 scale_id185;
    float2 offset_id186;
    float constantFloat_id191;
    float4 constantColor_id197;
    float constantFloat_id199;
    float2 scale_id203;
    float2 offset_id204;
    float constantFloat_id206;
    float constantFloat_id208;
    float constantFloat_id210;
    float constantFloat_id212;
    float2 scale_id216;
    float2 offset_id217;
    float4 constantColor_id218;
    float constantFloat_id222;
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
float SampleTextureAndCompare_id122(float2 position, float positionDepth)
{
    return ShadowMapTexture_id97.SampleCmp(LinearClampCompareLessEqualSampler_id132, position, positionDepth);
}
float SmoothDistanceAttenuation_id106(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id98(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float FilterShadow_id118(float2 position, float positionDepth)
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
        shadow += uw0 * vw0 * SampleTextureAndCompare_id122(base_uv + float2(u0, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw0 * SampleTextureAndCompare_id122(base_uv + float2(u1, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw0 * SampleTextureAndCompare_id122(base_uv + float2(u2, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw0 * vw1 * SampleTextureAndCompare_id122(base_uv + float2(u0, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw1 * SampleTextureAndCompare_id122(base_uv + float2(u1, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw1 * SampleTextureAndCompare_id122(base_uv + float2(u2, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw0 * vw2 * SampleTextureAndCompare_id122(base_uv + float2(u0, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw2 * SampleTextureAndCompare_id122(base_uv + float2(u1, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw2 * SampleTextureAndCompare_id122(base_uv + float2(u2, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow /= 144.0f;
    }
    return shadow;
}
float GetAngleAttenuation_id108(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id107(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id106(d2, lightInvSquareRadius);
    return attenuation;
}
float VisibilityhSchlickGGX_id270(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id252(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float GetDistanceAttenuation_id99(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id98(d2, lightInvSquareRadius);
    return attenuation;
}
float ComputeShadowFromCascade_id121(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1), WorldToShadowCascadeUV_id160[cascadeIndex + lightIndex * TCascadeCountBase_id158]);
    shadowPosition.z -= DepthBiases_id161[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id118(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id120(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id99.x * offsetScale * normalOffsetScale * normal;
}
void ComputeShadow_id119(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void ProcessLight_id109(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = light.AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -light.DirectionWS;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id107(lightVector, lightInvSquareRadius);
    attenuation *= GetAngleAttenuation_id108(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightDirection;
}
float NormalDistributionGGX_id286(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    return alphaR2 / (PI_id228 * pow(max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001), 2.0f));
}
float VisibilitySmithSchlickGGX_id272(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id270(alphaR, nDotL) * VisibilityhSchlickGGX_id270(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id258(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id252(f0, 1.0f, lOrVDotH);
}
void ProcessLight_id101(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id99(lightVector, lightInvSquareRadius);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
float4 Compute_id337(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id63;
    float mipLevel = sqrt(alpha) * MipCount_id174;
    return CubeMap_id175.SampleLevel(LinearSampler_id130, direction, mipLevel);
}
float4 Compute_id332(float3 direction)
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
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id287(float3 specularColor, float alphaR, float nDotV)
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
void ComputeShadow_id113(inout PS_STREAMS streams, int lightIndex)
{
    ComputeShadow_id119(streams, lightIndex);
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
    shadowPosition += GetShadowPositionOffset_id120(OffsetScales_id162[lightIndex], streams.NdotL_id43, streams.normalWS_id16);
    if (cascadeIndex < TCascadeCount_id163)
    {
        shadow = ComputeShadowFromCascade_id121(shadowPosition, cascadeIndex, lightIndex);
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
                float nextShadow = ComputeShadowFromCascade_id121(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }

    {
        streams.shadowColor_id76 = shadow;
    }
}
void PrepareDirectLightCore_id112(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id39 = Lights_id96[lightIndex].Color;
    streams.lightDirectionWS_id38 = -Lights_id96[lightIndex].DirectionWS;
}
void ComputeShadow_id105(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id104(inout PS_STREAMS streams, int lightIndexIgnored)
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
    ProcessLight_id109(streams, spotLight);
}
float Compute_id436(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id286(streams.alphaRoughness_id63, streams.NdotH_id69);
}
float Compute_id407(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id272(streams.alphaRoughness_id63, streams.NdotL_id43, streams.NdotV_id65);
}
float3 Compute_id378(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id258(f0, streams.LdotH_id70);
}
void ComputeShadow_id97(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id96(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id86.Load(streams.lightIndex_id84);
    streams.lightIndex_id84++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id90.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id90.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id101(streams, pointLight);
}
void PrepareLightData_id100(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id79.y / (projectedDepth - ZProjection_id79.x);
    int2 shadingPosition = int2(streams.ShadingPosition_id0.xy);
    int slice = int(max(log2(depth * ClusterDepthScale_id87 + ClusterDepthBias_id88), 0));
    streams.lightData_id83 = LightClusters_id85.Load(int4(shadingPosition / ClusterSize2_id82, slice, 0));
    streams.lightIndex_id84 = streams.lightData_id83.x;
}
float GetFilterSquareRoughnessAdjustment_id224(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
float4 Compute_id372()
{
    return constantColor_id218;
}
float4 Compute_id370(inout PS_STREAMS streams)
{
    return Texture_id214.Sample(Sampler_id183, streams.TexCoord_id148 * scale_id216 + offset_id217).rgba;
}
void ResetStream_id296()
{
}
void PrepareEnvironmentLight_id349(inout PS_STREAMS streams)
{
    float ambientAccessibility = streams.matAmbientOcclusion_id51;
    float3 sampleDirection = mul(streams.normalWS_id16, (float3x3)SkyMatrix_id176);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id41 = Compute_id332(sampleDirection).rgb * Intensity_id177 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id58.x;
    sampleDirection = reflect(-streams.viewWS_id61, streams.normalWS_id16);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id176);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id42 = Compute_id337(streams, sampleDirection).rgb * Intensity_id177 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeEnvironmentLightContribution_id515(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id287(specularColor, streams.alphaRoughness_id63, streams.NdotV_id65) * streams.envLightSpecularColor_id42;
}
float3 ComputeEnvironmentLightContribution_id466(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id343(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id171 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareDirectLight_id326(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id112(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id113(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id327()
{
    return LightCount_id94;
}
int GetMaxLightCount_id328()
{
    return TMaxLightCount_id95;
}
void PrepareDirectLights_id324()
{
}
void PrepareDirectLight_id317(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id104(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id105(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id320(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
int GetMaxLightCount_id319(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
void PrepareDirectLights_id315()
{
}
float3 ComputeDirectLightContribution_id514(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    float3 fresnel = Compute_id378(streams, specularColor);
    float geometricShadowing = Compute_id407(streams);
    float normalDistribution = Compute_id436(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeDirectLightContribution_id465(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor / PI_id228 * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.x;
}
void PrepareMaterialPerDirectLight_id26(inout PS_STREAMS streams)
{
    streams.H_id68 = normalize(streams.viewWS_id61 + streams.lightDirectionWS_id38);
    streams.NdotH_id69 = max(dot(streams.normalWS_id16, streams.H_id68), 0.0001f);
    streams.LdotH_id70 = max(dot(streams.lightDirectionWS_id38, streams.H_id68), 0.0001f);
    streams.VdotH_id71 = streams.LdotH_id70;
}
void PrepareDirectLight_id307(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id96(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id97(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id311(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
int GetMaxLightCount_id310(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
void PrepareDirectLights_id309(inout PS_STREAMS streams)
{
    PrepareLightData_id100(streams);
}
void PrepareMaterialForLightingAndShading_id289(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id224(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id288(inout PS_STREAMS streams)
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
float4 Compute_id376()
{
    return float4(constantFloat_id222, constantFloat_id222, constantFloat_id222, constantFloat_id222);
}
float4 Compute_id375(inout PS_STREAMS streams)
{
    float4 tex1 = Compute_id370(streams);
    float4 tex2 = Compute_id372();
    float4 mix1 = tex1 * tex2;
    return mix1;
}
float4 Compute_id368()
{
    return float4(constantFloat_id212, constantFloat_id212, constantFloat_id212, constantFloat_id212);
}
float4 Compute_id366()
{
    return float4(constantFloat_id210, constantFloat_id210, constantFloat_id210, constantFloat_id210);
}
float4 Compute_id364()
{
    return float4(constantFloat_id208, constantFloat_id208, constantFloat_id208, constantFloat_id208);
}
float4 Compute_id362()
{
    return float4(constantFloat_id206, constantFloat_id206, constantFloat_id206, constantFloat_id206);
}
float4 Compute_id360(inout PS_STREAMS streams)
{
    return Texture_id201.Sample(Sampler_id183, streams.TexCoord_id148 * scale_id203 + offset_id204).r;
}
float4 Compute_id358()
{
    return float4(constantFloat_id199, constantFloat_id199, constantFloat_id199, constantFloat_id199);
}
float4 Compute_id356()
{
    return constantColor_id197;
}
float4 Compute_id354()
{
    return float4(constantFloat_id191, constantFloat_id191, constantFloat_id191, constantFloat_id191);
}
float4 Compute_id352(inout PS_STREAMS streams)
{
    return Texture_id182.Sample(Sampler_id183, streams.TexCoord_id148 * scale_id185 + offset_id186).rgba;
}
float4 Compute_id350()
{
    return constantColor_id180;
}
void ResetStream_id299(inout PS_STREAMS streams)
{
    ResetStream_id296();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id591(inout PS_STREAMS streams)
{
    streams.shadingColor_id66 += streams.matEmissive_id56.rgb * streams.matEmissiveIntensity_id57;
}
void Compute_id590(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id12(streams, streams.matNormal_id45);
    ResetLightStream_id288(streams);
    PrepareMaterialForLightingAndShading_id289(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id309(streams);
        const int maxLightCount = GetMaxLightCount_id310(streams);
        int count = GetLightCount_id311(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id307(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id465(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id514(streams);
            }
        }
    }

    {
        PrepareDirectLights_id315();
        const int maxLightCount = GetMaxLightCount_id319(streams);
        int count = GetLightCount_id320(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id317(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id465(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id514(streams);
            }
        }
    }

    {
        PrepareDirectLights_id324();
        const int maxLightCount = GetMaxLightCount_id328();
        int count = GetLightCount_id327();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id326(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id465(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id514(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id343(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id466(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id515(streams);
        }
    }

    {
        PrepareEnvironmentLight_id349(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id466(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id515(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id228 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id575(inout PS_STREAMS streams)
{
    streams.matEmissiveIntensity_id57 = Compute_id376().r;
}
void Compute_id570(inout PS_STREAMS streams)
{
    streams.matEmissive_id56 = Compute_id375(streams).rgba;
}
void Compute_id565(inout PS_STREAMS streams)
{
    streams.matCavitySpecular_id55 = Compute_id368().r;
}
void Compute_id560(inout PS_STREAMS streams)
{
    streams.matCavityDiffuse_id54 = Compute_id366().r;
}
void Compute_id555(inout PS_STREAMS streams)
{
    streams.matCavity_id53 = Compute_id364().r;
}
void Compute_id550(inout PS_STREAMS streams)
{
    streams.matAmbientOcclusionDirectLightingFactor_id52 = Compute_id362().r;
}
void Compute_id545(inout PS_STREAMS streams)
{
    streams.matAmbientOcclusion_id51 = Compute_id360(streams).r;
}
void Compute_id540(inout PS_STREAMS streams)
{
    streams.matSpecularIntensity_id50 = Compute_id358().r;
}
void Compute_id535(inout PS_STREAMS streams)
{
    streams.matSpecular_id49 = Compute_id356().rgb;
}
void Compute_id530(inout PS_STREAMS streams)
{
    float glossiness = Compute_id354().r;
    streams.matGlossiness_id48 = glossiness;
}
void Compute_id525(inout PS_STREAMS streams)
{
    float4 normal = Compute_id352(streams);

    {
        normal = (2.0f * normal) - 1.0f;
    }

    {
        normal.z = sqrt(max(0, 1.0f - (normal.x * normal.x + normal.y * normal.y)));
    }
    streams.matNormal_id45 = normal.xyz;
}
void Compute_id520(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id350();
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id301(inout PS_STREAMS streams)
{
    ResetStream_id299(streams);
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
void Compute_id93(inout PS_STREAMS streams)
{

    {
        Compute_id520(streams);
    }

    {
        Compute_id525(streams);
    }

    {
        Compute_id530(streams);
    }

    {
        Compute_id535(streams);
    }

    {
        Compute_id540(streams);
    }

    {
        Compute_id545(streams);
    }

    {
        Compute_id550(streams);
    }

    {
        Compute_id555(streams);
    }

    {
        Compute_id560(streams);
    }

    {
        Compute_id565(streams);
    }

    {
        Compute_id570(streams);
    }

    {
        Compute_id575(streams);
    }

    {
        Compute_id590(streams);
    }

    {
        Compute_id591(streams);
    }
}
void ResetStream_id92(inout PS_STREAMS streams)
{
    ResetStream_id301(streams);
    streams.shadingColorAlpha_id67 = 1.0f;
}
float3x3 GetTangentWorldTransform_id18()
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
float4 Shading_id27(inout PS_STREAMS streams)
{
    streams.viewWS_id61 = normalize(Eye_id28.xyz - streams.PositionWS_id19.xyz);
    streams.shadingColor_id66 = 0;
    ResetStream_id92(streams);
    Compute_id93(streams);
    return float4(streams.shadingColor_id66, streams.shadingColorAlpha_id67);
}
void PSMain_id1()
{
}
void UpdateTangentToWorld_id11(inout PS_STREAMS streams)
{
    float3x3 tangentMatrix = GetTangentMatrix_id9(streams);
    float3x3 tangentWorldTransform = GetTangentWorldTransform_id18();
    streams.tangentToWorld_id17 = mul(tangentMatrix, tangentWorldTransform);
}
void GenerateNormal_PS_id16()
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
    streams.ColorTarget_id1 = Shading_id27(streams);
}
void GenerateNormal_PS_id17(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id16();
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
PS_OUTPUT PSMain(VS_OUTPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id19 = __input__.PositionWS_id19;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id20 = __input__.DepthVS_id20;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    streams.meshTangent_id15 = __input__.meshTangent_id15;
    streams.TexCoord_id148 = __input__.TexCoord_id148;
    GenerateNormal_PS_id17(streams);
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
    streams.meshTangent_id15 = __input__.meshTangent_id15;
    streams.TexCoord_id148 = __input__.TexCoord_id148;
    VSMain_id8(streams);
    GenerateNormal_VS_id15(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id20 = streams.DepthVS_id20;
    __output__.meshNormal_id14 = streams.meshNormal_id14;
    __output__.meshTangent_id15 = streams.meshTangent_id15;
    __output__.TexCoord_id148 = streams.TexCoord_id148;
    return __output__;
}
