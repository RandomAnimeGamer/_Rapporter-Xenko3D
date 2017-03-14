/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoEditorForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceNormalMap<true,true,false> [{normalMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.NormalMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = ComputeColorConstantFloatLink<Material.GlossinessValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecular,rgb> [{computeColorSource = ComputeColorConstantColorLink<Material.SpecularValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecularIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.SpecularIntensityValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAmbientOcclusion,r> [{computeColorSource = ComputeColorTextureScaledOffsetDynamicSampler<Material.AmbientOcclusionMap,TEXCOORD0,Material.Sampler.i0,r,Material.TextureScale.i1,Material.TextureOffset.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAmbientOcclusionDirectLightingFactor,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.AmbientOcclusionDirectLightingFactorValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavityValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavityDiffuse,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavityDiffuseValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavitySpecular,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavitySpecularValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}], mixin MaterialSurfaceSetStreamFromComputeColor<matBlend,r> [{computeColorSource = ComputeColorTextureScaledOffsetDynamicSampler<Material.BlendMap,TEXCOORD0,Material.Sampler.i0,a,Material.TextureScale.i5,Material.TextureOffset.i5>}], mixin MaterialSurfaceShadingBlend [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue.i1>}], mixin MaterialSurfaceNormalMap<true,true,false> [{normalMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.NormalMap.i1,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale.i2,Material.TextureOffset.i2>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = ComputeColorConstantFloatLink<Material.GlossinessValue.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecular,rgb> [{computeColorSource = ComputeColorConstantColorLink<Material.SpecularValue.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecularIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.SpecularIntensityValue.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAmbientOcclusion,r> [{computeColorSource = ComputeColorTextureScaledOffsetDynamicSampler<Material.AmbientOcclusionMap.i1,TEXCOORD0,Material.Sampler.i0,r,Material.TextureScale.i3,Material.TextureOffset.i3>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAmbientOcclusionDirectLightingFactor,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.AmbientOcclusionDirectLightingFactorValue.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavityValue.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavityDiffuse,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavityDiffuseValue.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavitySpecular,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavitySpecularValue.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = mixin ComputeColorMultiply [{color1 = ComputeColorTextureScaledOffsetDynamicSampler<Material.EmissiveMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale.i4,Material.TextureOffset.i4>}, {color2 = ComputeColorConstantColorLink<Material.EmissiveValue>}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.EmissiveIntensity>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}], MaterialSurfaceEmissiveShading<false>]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Material.HasNormalMap: True
@P Lighting.DirectLightGroups: LightClusteredPointGroup<64>, LightClusteredSpotGroup<64>, mixin LightDirectionalGroup<8>, mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false>, ShadowMapFilterPcf<PerView.Lighting,5>
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
cbuffer PerMaterial [Size: 288]
@C    constantColor_id183 => Material.DiffuseValue
@C    scale_id188 => Material.TextureScale
@C    offset_id189 => Material.TextureOffset
@C    constantFloat_id194 => Material.GlossinessValue
@C    constantColor_id200 => Material.SpecularValue
@C    constantFloat_id202 => Material.SpecularIntensityValue
@C    scale_id206 => Material.TextureScale.i1
@C    offset_id207 => Material.TextureOffset.i1
@C    constantFloat_id209 => Material.AmbientOcclusionDirectLightingFactorValue
@C    constantFloat_id211 => Material.CavityValue
@C    constantFloat_id213 => Material.CavityDiffuseValue
@C    constantFloat_id215 => Material.CavitySpecularValue
@C    scale_id230 => Material.TextureScale.i5
@C    offset_id231 => Material.TextureOffset.i5
@C    constantColor_id233 => Material.DiffuseValue.i1
@C    scale_id237 => Material.TextureScale.i2
@C    offset_id238 => Material.TextureOffset.i2
@C    constantFloat_id243 => Material.GlossinessValue.i1
@C    constantColor_id246 => Material.SpecularValue.i1
@C    constantFloat_id248 => Material.SpecularIntensityValue.i1
@C    scale_id252 => Material.TextureScale.i3
@C    offset_id253 => Material.TextureOffset.i3
@C    constantFloat_id255 => Material.AmbientOcclusionDirectLightingFactorValue.i1
@C    constantFloat_id257 => Material.CavityValue.i1
@C    constantFloat_id259 => Material.CavityDiffuseValue.i1
@C    constantFloat_id261 => Material.CavitySpecularValue.i1
@C    scale_id265 => Material.TextureScale.i4
@C    offset_id266 => Material.TextureOffset.i4
@C    constantColor_id267 => Material.EmissiveValue
@C    constantFloat_id271 => Material.EmissiveIntensity
cbuffer PerView [Size: 1296]
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
@C    LightCount_id97 => DirectLightGroupPerView.LightCount.directLightGroups[3]
@C    Lights_id99 => LightDirectionalGroup.Lights.directLightGroups[3]
@C    ShadowMapTextureSize_id101 => ShadowMap.TextureSize.directLightGroups[3]
@C    ShadowMapTextureTexelSize_id102 => ShadowMap.TextureTexelSize.directLightGroups[3]
@C    WorldToShadowCascadeUV_id163 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[3]
@C    DepthBiases_id164 => ShadowMapReceiverBase.DepthBiases.directLightGroups[3]
@C    OffsetScales_id165 => ShadowMapReceiverBase.OffsetScales.directLightGroups[3]
@C    CascadeDepthSplits_id171 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[3]
@C    Bias_id173 => ShadowMapFilterPcf.Bias.directLightGroups[3]
@C    AmbientLight_id174 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id176 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id177 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id179 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id180 => LightSkyboxShader.Intensity.environmentLights[1]
***************************
******  Resources    ******
***************************
@R    Texture_id185 => Material.NormalMap [Stage: None, Slot: (-1--1)]
@R    Texture_id185 => Material.NormalMap [Stage: None, Slot: (-1--1)]
@R    Sampler_id186 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Sampler_id186 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Texture_id204 => Material.AmbientOcclusionMap [Stage: None, Slot: (-1--1)]
@R    Texture_id204 => Material.AmbientOcclusionMap [Stage: None, Slot: (-1--1)]
@R    Texture_id228 => Material.BlendMap [Stage: None, Slot: (-1--1)]
@R    Texture_id228 => Material.BlendMap [Stage: None, Slot: (-1--1)]
@R    Texture_id235 => Material.NormalMap.i1 [Stage: None, Slot: (-1--1)]
@R    Texture_id235 => Material.NormalMap.i1 [Stage: None, Slot: (-1--1)]
@R    Texture_id250 => Material.AmbientOcclusionMap.i1 [Stage: None, Slot: (-1--1)]
@R    Texture_id250 => Material.AmbientOcclusionMap.i1 [Stage: None, Slot: (-1--1)]
@R    Texture_id263 => Material.EmissiveMap [Stage: None, Slot: (-1--1)]
@R    Texture_id263 => Material.EmissiveMap [Stage: None, Slot: (-1--1)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id100 => ShadowMap.Texture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id100 => ShadowMap.Texture.directLightGroups[3] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id178 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id178 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id133 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id135 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    Sampler_id186 => Material.Sampler.i0 [Stage: Pixel, Slot: (2-2)]
@R    Texture_id185 => Material.NormalMap [Stage: Pixel, Slot: (0-0)]
@R    Texture_id204 => Material.AmbientOcclusionMap [Stage: Pixel, Slot: (1-1)]
@R    Texture_id228 => Material.BlendMap [Stage: Pixel, Slot: (2-2)]
@R    Texture_id235 => Material.NormalMap.i1 [Stage: Pixel, Slot: (3-3)]
@R    Texture_id250 => Material.AmbientOcclusionMap.i1 [Stage: Pixel, Slot: (4-4)]
@R    Texture_id263 => Material.EmissiveMap [Stage: Pixel, Slot: (5-5)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: Pixel, Slot: (6-6)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: Pixel, Slot: (7-7)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (8-8)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (9-9)]
@R    ShadowMapTexture_id100 => ShadowMap.Texture.directLightGroups[3] [Stage: Pixel, Slot: (10-10)]
@R    CubeMap_id178 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (11-11)]
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
@S    MaterialSurfaceShadingBlend => ac7ee53e630d134e6d099feb813b6052
@S    ComputeColorMultiply => 4609285caa8d3d20440e3ecad99b1075
@S    MaterialSurfaceEmissiveShading => 8441e737217d64ffcec16b8458a149b2
***************************
*****     Stages      *****
***************************
@G    Vertex => f55d001d54add32a03e6345a046aebad
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
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  400
//       float3 Color;                  // Offset:  416
//
//   } Lights_id96[8];                  // Offset:  400 Size:   252 [unused]
//   int LightCount_id97;               // Offset:  652 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  656
//       float3 Color;                  // Offset:  672
//
//   } Lights_id99;                     // Offset:  656 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id101; // Offset:  688 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id102;// Offset:  696 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id163[4];// Offset:  704 Size:   256 [unused]
//   float DepthBiases_id164;           // Offset:  960 Size:     4 [unused]
//   float OffsetScales_id165;          // Offset:  976 Size:     4 [unused]
//   float CascadeDepthSplits_id171[4]; // Offset:  992 Size:    52 [unused]
//   float Bias_id173;                  // Offset: 1044 Size:     4 [unused]
//   float3 AmbientLight_id174;         // Offset: 1056 Size:    12 [unused]
//   float3 SphericalColors_id176[9];   // Offset: 1072 Size:   140 [unused]
//   float MipCount_id177;              // Offset: 1212 Size:     4 [unused]
//   float4x4 SkyMatrix_id179;          // Offset: 1216 Size:    64 [unused]
//   float Intensity_id180;             // Offset: 1280 Size:     4 [unused]
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
vs_5_0
dcl_globalFlags refactoringAllowed
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
//   v3.x <- __input__.TexCoord_id151.x; v3.y <- __input__.TexCoord_id151.y; 
//   o4.x <- <VSMain return value>.TexCoord_id151.x; o4.y <- <VSMain return value>.TexCoord_id151.y; 
//   o3.x <- <VSMain return value>.meshTangent_id15.x; o3.y <- <VSMain return value>.meshTangent_id15.y; o3.z <- <VSMain return value>.meshTangent_id15.z; o3.w <- <VSMain return value>.meshTangent_id15.w; 
//   o2.x <- <VSMain return value>.DepthVS_id20; o2.y <- <VSMain return value>.meshNormal_id14.x; o2.z <- <VSMain return value>.meshNormal_id14.y; o2.w <- <VSMain return value>.meshNormal_id14.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 1487 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\RapporterV2.Windows\log\shader_XenkoEditorForwardShadingEffect_979efcadcf2b7d9e05ca0f14b68df971.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 1568
mov o0.xyzw, r0.xyzw

#line 1477
dp4 r1.x, r0.xyzw, cb1[19].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 1568
mov o1.w, r1.x
mov o2.x, r1.x

#line 1477
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw

#line 1568
mov o2.yzw, v1.xxyz
mov o3.xyzw, v2.xyzw
mov o4.xy, v3.xyxx
ret 
// Approximately 15 instruction slots used
@G    Pixel => 1feb90e90117f1c12f05f02179ab9150
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
//   float4 constantColor_id183;        // Offset:    0 Size:    16
//   float2 scale_id188;                // Offset:   16 Size:     8
//   float2 offset_id189;               // Offset:   24 Size:     8
//   float constantFloat_id194;         // Offset:   32 Size:     4
//   float4 constantColor_id200;        // Offset:   48 Size:    16
//   float constantFloat_id202;         // Offset:   64 Size:     4
//   float2 scale_id206;                // Offset:   68 Size:     8
//   float2 offset_id207;               // Offset:   80 Size:     8
//   float constantFloat_id209;         // Offset:   88 Size:     4
//   float constantFloat_id211;         // Offset:   92 Size:     4
//   float constantFloat_id213;         // Offset:   96 Size:     4
//   float constantFloat_id215;         // Offset:  100 Size:     4
//   float2 scale_id230;                // Offset:  104 Size:     8
//   float2 offset_id231;               // Offset:  112 Size:     8
//   float4 constantColor_id233;        // Offset:  128 Size:    16
//   float2 scale_id237;                // Offset:  144 Size:     8
//   float2 offset_id238;               // Offset:  152 Size:     8
//   float constantFloat_id243;         // Offset:  160 Size:     4
//   float4 constantColor_id246;        // Offset:  176 Size:    16
//   float constantFloat_id248;         // Offset:  192 Size:     4
//   float2 scale_id252;                // Offset:  196 Size:     8
//   float2 offset_id253;               // Offset:  208 Size:     8
//   float constantFloat_id255;         // Offset:  216 Size:     4
//   float constantFloat_id257;         // Offset:  220 Size:     4
//   float constantFloat_id259;         // Offset:  224 Size:     4
//   float constantFloat_id261;         // Offset:  228 Size:     4
//   float2 scale_id265;                // Offset:  232 Size:     8
//   float2 offset_id266;               // Offset:  240 Size:     8
//   float4 constantColor_id267;        // Offset:  256 Size:    16
//   float constantFloat_id271;         // Offset:  272 Size:     4
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
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  400
//       float3 Color;                  // Offset:  416
//
//   } Lights_id96[8];                  // Offset:  400 Size:   252
//   int LightCount_id97;               // Offset:  652 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  656
//       float3 Color;                  // Offset:  672
//
//   } Lights_id99;                     // Offset:  656 Size:    28
//   float2 ShadowMapTextureSize_id101; // Offset:  688 Size:     8
//   float2 ShadowMapTextureTexelSize_id102;// Offset:  696 Size:     8
//   float4x4 WorldToShadowCascadeUV_id163[4];// Offset:  704 Size:   256
//   float DepthBiases_id164;           // Offset:  960 Size:     4
//   float OffsetScales_id165;          // Offset:  976 Size:     4
//   float CascadeDepthSplits_id171[4]; // Offset:  992 Size:    52
//   float Bias_id173;                  // Offset: 1044 Size:     4 [unused]
//   float3 AmbientLight_id174;         // Offset: 1056 Size:    12
//   float3 SphericalColors_id176[9];   // Offset: 1072 Size:   140
//   float MipCount_id177;              // Offset: 1212 Size:     4
//   float4x4 SkyMatrix_id179;          // Offset: 1216 Size:    64
//   float Intensity_id180;             // Offset: 1280 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// LinearSampler_id133               sampler      NA          NA    0        1
// LinearClampCompareLessEqualSampler_id135  sampler_c      NA          NA    1        1
// Sampler_id186                     sampler      NA          NA    2        1
// Texture_id185                     texture  float4          2d    0        1
// Texture_id204                     texture  float4          2d    1        1
// Texture_id228                     texture  float4          2d    2        1
// Texture_id235                     texture  float4          2d    3        1
// Texture_id250                     texture  float4          2d    4        1
// Texture_id263                     texture  float4          2d    5        1
// LightClusters_id85                texture   uint2          3d    6        1
// LightIndices_id86                 texture    uint         buf    7        1
// PointLights_id90                  texture  float4         buf    8        1
// SpotLights_id93                   texture  float4         buf    9        1
// ShadowMapTexture_id100            texture  float4          2d   10        1
// CubeMap_id178                     texture  float4        cube   11        1
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
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[3], immediateIndexed
dcl_constantbuffer cb1[18], immediateIndexed
dcl_constantbuffer cb2[81], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_texture3d (uint,uint,uint,uint) t6
dcl_resource_buffer (uint,uint,uint,uint) t7
dcl_resource_buffer (float,float,float,float) t8
dcl_resource_buffer (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texturecube (float,float,float,float) t11
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.xyz, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xy
dcl_output o0.xyzw
dcl_temps 24
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id20; v2.y <- __input__.meshNormal_id14.x; v2.z <- __input__.meshNormal_id14.y; v2.w <- __input__.meshNormal_id14.z; 
//   v3.x <- __input__.meshTangent_id15.x; v3.y <- __input__.meshTangent_id15.y; v3.z <- __input__.meshTangent_id15.z; v3.w <- __input__.meshTangent_id15.w; 
//   v4.x <- __input__.TexCoord_id151.x; v4.y <- __input__.TexCoord_id151.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 1468 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\RapporterV2.Windows\log\shader_XenkoEditorForwardShadingEffect_979efcadcf2b7d9e05ca0f14b68df971.hlsl"
dp3 r0.x, v2.yzwy, v2.yzwy
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.yzwy  // r0.x <- streams.meshNormal_id14.x; r0.y <- streams.meshNormal_id14.y; r0.z <- streams.meshNormal_id14.z
dp3 r0.w, v3.xyzx, v3.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v3.xyzx  // r1.x <- tangent.x; r1.y <- tangent.y; r1.z <- tangent.z
mul r2.xyz, r0.zxyz, r1.yzxy
mad r2.xyz, r0.yzxy, r1.zxyz, -r2.xyzx
mul r2.xyz, r2.xyzx, v3.wwww  // r2.x <- bitangent.x; r2.y <- bitangent.y; r2.z <- bitangent.z

#line 1504
dp3 r3.x, r1.xyzx, cb0[0].xyzx  // r3.x <- streams.tangentToWorld_id17._m00
dp3 r4.x, r1.xyzx, cb0[1].xyzx  // r4.x <- streams.tangentToWorld_id17._m01
dp3 r1.x, r1.xyzx, cb0[2].xyzx  // r1.x <- streams.tangentToWorld_id17._m02
dp3 r3.y, r2.xyzx, cb0[0].xyzx  // r3.y <- streams.tangentToWorld_id17._m10
dp3 r4.y, r2.xyzx, cb0[1].xyzx  // r4.y <- streams.tangentToWorld_id17._m11
dp3 r1.y, r2.xyzx, cb0[2].xyzx  // r1.y <- streams.tangentToWorld_id17._m12
dp3 r3.z, r0.xyzx, cb0[0].xyzx  // r3.z <- streams.tangentToWorld_id17._m20
dp3 r4.z, r0.xyzx, cb0[1].xyzx  // r4.z <- streams.tangentToWorld_id17._m21
dp3 r1.z, r0.xyzx, cb0[2].xyzx  // r1.z <- streams.tangentToWorld_id17._m22

#line 1491
add r0.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx  // r0.x <- streams.viewWS_id61.x; r0.y <- streams.viewWS_id61.y; r0.z <- streams.viewWS_id61.z

#line 1167
mad r2.xy, v4.xyxx, cb1[1].xyxx, cb1[1].zwzz
sample_indexable(texture2d)(float,float,float,float) r2.xy, r2.xyxx, t0.xyzw, s2  // r2.x <- <Compute_id556 return value>.x; r2.y <- <Compute_id556 return value>.y

#line 1358
mad r2.xy, r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r2.x <- normal.x; r2.y <- normal.y

#line 1362
dp2 r0.w, r2.xyxx, r2.xyxx
add r0.w, -r0.w, l(1.000000)
max r0.w, r0.w, l(0.000000)
sqrt r2.z, r0.w  // r2.z <- normal.z

#line 1151
mad r5.xy, v4.xyxx, cb1[4].yzyy, cb1[5].xyxx
sample_indexable(texture2d)(float,float,float,float) r0.w, r5.xyxx, t1.yzwx, s2  // r0.w <- <Compute_id564 return value>.x

#line 720
dp3 r5.x, r2.xyzx, r3.xyzx
dp3 r5.y, r2.xyzx, r4.xyzx
dp3 r5.z, r2.xyzx, r1.xyzx
dp3 r1.w, r5.xyzx, r5.xyzx
rsq r1.w, r1.w
mul r5.xyz, r1.wwww, r5.xyzx  // r5.x <- streams.normalWS_id16.x; r5.y <- streams.normalWS_id16.y; r5.z <- streams.normalWS_id16.z

#line 1115
add r1.w, r0.w, l(-1.000000)
mad r1.w, cb1[5].z, r1.w, l(1.000000)  // r1.w <- streams.lightDirectAmbientOcclusion_id44
add r2.w, cb1[5].w, l(-1.000000)
mad r6.xy, cb1[6].xyxx, r2.wwww, l(1.000000, 1.000000, 0.000000, 0.000000)
mul r6.xzw, r6.xxxx, cb1[0].xxyz  // r6.x <- streams.matDiffuseVisible_id62.x; r6.z <- streams.matDiffuseVisible_id62.y; r6.w <- streams.matDiffuseVisible_id62.z
mul r7.xyz, cb1[3].xyzx, cb1[4].xxxx
mul r7.xyz, r6.yyyy, r7.xyzx  // r7.x <- streams.matSpecularVisible_id64.x; r7.y <- streams.matSpecularVisible_id64.y; r7.z <- streams.matSpecularVisible_id64.z
dp3 r2.w, r5.xyzx, r0.xyzx
add r3.w, -cb1[2].x, l(1.000000)  // r3.w <- roughness

#line 1017
dp3 r2.x, r2.xyzx, r2.xyzx
sqrt r2.y, r2.x  // r2.y <- r
lt r2.z, r2.y, l(1.000000)
add r4.w, -r2.x, l(1.000000)
mul r4.w, r4.w, l(0.500000)
mul r2.x, r2.y, r2.x
mad r2.x, r2.y, l(3.000000), -r2.x
div r2.x, r4.w, r2.x  // r2.x <- roughnessAdjust
and r2.x, r2.x, r2.z

#line 1121
mad r2.x, r3.w, r3.w, r2.x

#line 546
add r2.y, v1.z, -cb2[22].z
div r2.y, cb2[22].w, r2.y  // r2.y <- depth
ftoi r8.xy, v1.xyxx  // r8.x <- shadingPosition.x; r8.y <- shadingPosition.y
mad r2.y, r2.y, cb2[23].w, cb2[24].x
log r2.y, r2.y

#line 1118
max r2.xyw, r2.xyxw, l(0.001000, 0.000000, 0.000000, 0.000100)  // r2.x <- streams.alphaRoughness_id63; r2.w <- streams.NdotV_id65

#line 548
ftoi r9.z, r2.y  // r9.z <- slice
ushr r9.xy, r8.xyxx, l(6, 6, 0, 0)
mov r9.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r2.yz, r9.xyzw, t6.zxyw  // r2.y <- streams.lightData_id83.x; r2.z <- streams.lightData_id83.y

#line 692
and r3.w, r2.z, l(0x0000ffff)  // r3.w <- <GetMaxLightCount_id506 return value>

#line 1202
mov r8.xyz, v0.xyzx  // r8.x <- streams.PositionWS_id19.x; r8.y <- streams.PositionWS_id19.y; r8.z <- streams.PositionWS_id19.z
mov r9.xyz, r0.xyzx  // r9.x <- streams.viewWS_id61.x; r9.y <- streams.viewWS_id61.y; r9.z <- streams.viewWS_id61.z
mov r10.xyz, r6.xzwx  // r10.x <- streams.matDiffuseVisible_id62.x; r10.y <- streams.matDiffuseVisible_id62.y; r10.z <- streams.matDiffuseVisible_id62.z
mov r10.w, r7.x  // r10.w <- streams.matSpecularVisible_id64.x
mov r11.xy, r7.yzyy  // r11.x <- streams.matSpecularVisible_id64.y; r11.y <- streams.matSpecularVisible_id64.z
mov r11.z, r2.x  // r11.z <- streams.alphaRoughness_id63
mov r12.xyz, r5.xyzx  // r12.x <- streams.normalWS_id16.x; r12.y <- streams.normalWS_id16.y; r12.z <- streams.normalWS_id16.z
mov r13.y, r1.w  // r13.y <- streams.lightDirectAmbientOcclusion_id44
mov r13.xz, r2.yywy  // r13.x <- streams.lightIndex_id84; r13.z <- streams.NdotV_id65
mov r14.xyz, l(0,0,0,0)  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z
mov r4.w, l(0)  // r4.w <- i
loop 
  ige r5.w, r4.w, r3.w
  breakc_nz r5.w
  if_nz r5.w
    break 
  endif 

#line 533
  ld_indexable(buffer)(uint,uint,uint,uint) r5.w, r13.xxxx, t7.yzwx  // r5.w <- realLightIndex
  iadd r13.x, r13.x, l(1)  // r13.x <- streams.lightIndex_id84
  ishl r6.y, r5.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r15.xyzw, r6.yyyy, t8.xyzw  // r15.x <- pointLight1.x; r15.y <- pointLight1.y; r15.z <- pointLight1.z; r15.w <- pointLight1.w
  bfi r5.w, l(31), l(1), r5.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r5.wwww, t8.xyzw  // r16.x <- pointLight2.x; r16.y <- pointLight2.y; r16.z <- pointLight2.z

#line 377
  add r15.xyz, -r8.xyzx, r15.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z
  dp3 r5.w, r15.xyzx, r15.xyzx
  sqrt r6.y, r5.w  // r6.y <- lightVectorLength
  div r15.xyz, r15.xyzx, r6.yyyy  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 327
  max r6.y, r5.w, l(0.000100)
  div r6.y, l(1.000000, 1.000000, 1.000000, 1.000000), r6.y  // r6.y <- attenuation

#line 259
  mul r5.w, r15.w, r5.w  // r5.w <- factor
  mad r5.w, -r5.w, r5.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)  // r5.w <- smoothFactor
  mul r5.w, r5.w, r5.w  // r5.w <- <SmoothDistanceAttenuation_id142 return value>

#line 328
  mul r5.w, r5.w, r6.y  // r5.w <- attenuation

#line 383
  mul r16.xyz, r5.wwww, r16.xyzx  // r16.x <- streams.lightColor_id39.x; r16.y <- streams.lightColor_id39.y; r16.z <- streams.lightColor_id39.z

#line 682
  dp3 r5.w, r12.xyzx, r15.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id43
  mul r16.xyz, r5.wwww, r16.xyzx
  mul r16.xyz, r13.yyyy, r16.xyzx  // r16.x <- streams.lightColorNdotL_id40.x; r16.y <- streams.lightColorNdotL_id40.y; r16.z <- streams.lightColorNdotL_id40.z

#line 674
  add r17.xyz, r15.xyzx, r9.xyzx
  dp3 r6.y, r17.xyzx, r17.xyzx
  rsq r6.y, r6.y
  mul r17.xyz, r6.yyyy, r17.xyzx  // r17.x <- streams.H_id68.x; r17.y <- streams.H_id68.y; r17.z <- streams.H_id68.z
  dp3 r6.y, r12.xyzx, r17.xyzx
  max r6.y, r6.y, l(0.000100)  // r6.y <- streams.NdotH_id69
  dp3 r7.w, r15.xyzx, r17.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.LdotH_id70

#line 1111
  mul r15.xyz, r10.xyzx, r16.xyzx

#line 1212
  mad r15.xyz, r15.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r14.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 575
  mov r17.x, r10.w
  mov r17.yz, r11.xxyx
  add r18.xyz, -r17.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r7.w, -r7.w, l(1.000000)
  mul r8.w, r7.w, r7.w
  mul r8.w, r8.w, r8.w
  mul r7.w, r7.w, r8.w
  mad r17.xyz, r18.xyzx, r7.wwww, r17.xyzx  // r17.x <- <FresnelSchlick_id286 return value>.x; r17.y <- <FresnelSchlick_id286 return value>.y; r17.z <- <FresnelSchlick_id286 return value>.z

#line 570
  mul r7.w, r11.z, l(0.500000)  // r7.w <- k
  mad r8.w, -r11.z, l(0.500000), l(1.000000)
  mad r9.w, r5.w, r8.w, r7.w
  div r9.w, r5.w, r9.w  // r9.w <- <VisibilityhSchlickGGX_id304 return value>
  mad r7.w, r13.z, r8.w, r7.w
  div r7.w, r13.z, r7.w  // r7.w <- <VisibilityhSchlickGGX_id304 return value>

#line 780
  mul r7.w, r7.w, r9.w
  mul r5.w, r13.z, r5.w
  div r5.w, r7.w, r5.w  // r5.w <- <VisibilitySmithSchlickGGX_id306 return value>

#line 775
  mul r7.w, r11.z, r11.z  // r7.w <- alphaR2
  mul r6.y, r6.y, r6.y
  mad r8.w, r11.z, r11.z, l(-1.000000)
  mad r6.y, r6.y, r8.w, l(1.000000)
  max r6.y, r6.y, l(0.000100)
  mul r6.y, r6.y, r6.y
  mul r6.y, r6.y, l(3.141593)
  div r6.y, r7.w, r6.y  // r6.y <- <NormalDistributionGGX_id320 return value>

#line 1105
  mul r17.xyz, r5.wwww, r17.xyzx
  mul r17.xyz, r6.yyyy, r17.xyzx
  mul r16.xyz, r16.xyzx, r17.xyzx

#line 1216
  mad r14.xyz, r16.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r15.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 1202
  iadd r4.w, r4.w, l(1)

#line 1218
endloop   // r13.x <- streams.lightIndex_id84

#line 653
ushr r2.z, r2.z, l(16)  // r2.z <- <GetMaxLightCount_id515 return value>

#line 1226
mov r8.xyz, v0.xyzx
mov r9.yw, r2.xxxw  // r9.y <- streams.alphaRoughness_id63; r9.w <- streams.NdotV_id65
mov r10.xyz, r0.xyzx  // r10.x <- streams.viewWS_id61.x; r10.y <- streams.viewWS_id61.y; r10.z <- streams.viewWS_id61.z
mov r11.xyz, r6.xzwx  // r11.x <- streams.matDiffuseVisible_id62.x; r11.y <- streams.matDiffuseVisible_id62.y; r11.z <- streams.matDiffuseVisible_id62.z
mov r12.xyz, r7.xyzx  // r12.x <- streams.matSpecularVisible_id64.x; r12.y <- streams.matSpecularVisible_id64.y; r12.z <- streams.matSpecularVisible_id64.z
mov r13.yzw, r5.xxyz  // r13.y <- streams.normalWS_id16.x; r13.z <- streams.normalWS_id16.y; r13.w <- streams.normalWS_id16.z
mov r15.xyz, r14.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z
mov r4.w, r1.w  // r4.w <- streams.lightDirectAmbientOcclusion_id44
mov r5.w, r13.x  // r5.w <- streams.lightIndex_id84
mov r6.y, l(0)  // r6.y <- i
loop 
  ige r7.w, r6.y, r2.z
  breakc_nz r7.w
  if_nz r7.w
    break 
  endif 

#line 502
  ld_indexable(buffer)(uint,uint,uint,uint) r7.w, r5.wwww, t7.yzwx  // r7.w <- realLightIndex
  iadd r5.w, r5.w, l(1)  // r5.w <- streams.lightIndex_id84
  ishl r8.w, r7.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r8.wwww, t9.xyzw  // r16.x <- spotLight1.x; r16.y <- spotLight1.y; r16.z <- spotLight1.z

#line 508
  bfi r17.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r7.wwww, l(1, 2, 3, 0)
  ld_indexable(buffer)(float,float,float,float) r18.xyz, r17.xxxx, t9.xyzw  // r18.x <- spotLight2.x; r18.y <- spotLight2.y; r18.z <- spotLight2.z
  ld_indexable(buffer)(float,float,float,float) r17.xyw, r17.yyyy, t9.xywz  // r17.x <- spotLight3.x; r17.y <- spotLight3.y; r17.w <- spotLight3.z
  ld_indexable(buffer)(float,float,float,float) r19.xyz, r17.zzzz, t9.xyzw  // r19.x <- spotLight4.x; r19.y <- spotLight4.y; r19.z <- spotLight4.z

#line 349
  add r16.xyz, -r8.xyzx, r16.xyzx  // r16.x <- lightVector.x; r16.y <- lightVector.y; r16.z <- lightVector.z
  dp3 r7.w, r16.xyzx, r16.xyzx
  sqrt r8.w, r7.w  // r8.w <- lightVectorLength
  div r16.xyz, r16.xyzx, r8.wwww  // r16.x <- lightVectorNorm.x; r16.y <- lightVectorNorm.y; r16.z <- lightVectorNorm.z

#line 311
  max r8.w, r7.w, l(0.000100)
  div r8.w, l(1.000000, 1.000000, 1.000000, 1.000000), r8.w  // r8.w <- attenuation

#line 253
  mul r7.w, r17.w, r7.w  // r7.w <- factor
  mad r7.w, -r7.w, r7.w, l(1.000000)
  max r7.w, r7.w, l(0.000000)  // r7.w <- smoothFactor
  mul r7.w, r7.w, r7.w  // r7.w <- <SmoothDistanceAttenuation_id150 return value>

#line 312
  mul r7.w, r7.w, r8.w  // r7.w <- attenuation

#line 303
  dp3 r8.w, -r18.xyzx, r16.xyzx  // r8.w <- cd
  mad_sat r8.w, r8.w, r17.x, r17.y  // r8.w <- attenuation
  mul r8.w, r8.w, r8.w

#line 358
  mul r7.w, r7.w, r8.w  // r7.w <- attenuation
  mul r16.xyz, r7.wwww, r19.xyzx  // r16.x <- streams.lightColor_id39.x; r16.y <- streams.lightColor_id39.y; r16.z <- streams.lightColor_id39.z

#line 643
  dp3 r7.w, r13.yzwy, -r18.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotL_id43
  mul r16.xyz, r7.wwww, r16.xyzx
  mul r16.xyz, r4.wwww, r16.xyzx  // r16.x <- streams.lightColorNdotL_id40.x; r16.y <- streams.lightColorNdotL_id40.y; r16.z <- streams.lightColorNdotL_id40.z

#line 674
  add r17.xyz, r10.xyzx, -r18.xyzx
  dp3 r8.w, r17.xyzx, r17.xyzx
  rsq r8.w, r8.w
  mul r17.xyz, r8.wwww, r17.xyzx  // r17.x <- streams.H_id68.x; r17.y <- streams.H_id68.y; r17.z <- streams.H_id68.z
  dp3 r8.w, r13.yzwy, r17.xyzx
  max r8.w, r8.w, l(0.000100)  // r8.w <- streams.NdotH_id69
  dp3 r9.x, -r18.xyzx, r17.xyzx
  max r9.x, r9.x, l(0.000100)  // r9.x <- streams.LdotH_id70

#line 1111
  mul r17.xyz, r11.xyzx, r16.xyzx

#line 1236
  mad r17.xyz, r17.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r15.xyzx  // r17.x <- directLightingContribution.x; r17.y <- directLightingContribution.y; r17.z <- directLightingContribution.z

#line 575
  add r18.xyz, -r12.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r9.x, -r9.x, l(1.000000)
  mul r9.z, r9.x, r9.x
  mul r9.z, r9.z, r9.z
  mul r9.x, r9.z, r9.x
  mad r18.xyz, r18.xyzx, r9.xxxx, r12.xyzx  // r18.x <- <FresnelSchlick_id286 return value>.x; r18.y <- <FresnelSchlick_id286 return value>.y; r18.z <- <FresnelSchlick_id286 return value>.z

#line 570
  mul r9.x, r9.y, l(0.500000)  // r9.x <- k
  mad r9.z, -r9.y, l(0.500000), l(1.000000)
  mad r10.w, r7.w, r9.z, r9.x
  div r10.w, r7.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id304 return value>
  mad r9.x, r9.w, r9.z, r9.x
  div r9.x, r9.w, r9.x  // r9.x <- <VisibilityhSchlickGGX_id304 return value>

#line 780
  mul r9.x, r9.x, r10.w
  mul r7.w, r9.w, r7.w
  div r7.w, r9.x, r7.w  // r7.w <- <VisibilitySmithSchlickGGX_id306 return value>

#line 775
  mul r9.x, r9.y, r9.y  // r9.x <- alphaR2
  mul r8.w, r8.w, r8.w
  mad r9.z, r9.y, r9.y, l(-1.000000)
  mad r8.w, r8.w, r9.z, l(1.000000)
  max r8.w, r8.w, l(0.000100)
  mul r8.w, r8.w, r8.w
  mul r8.w, r8.w, l(3.141593)
  div r8.w, r9.x, r8.w  // r8.w <- <NormalDistributionGGX_id320 return value>

#line 1105
  mul r18.xyz, r7.wwww, r18.xyzx
  mul r18.xyz, r8.wwww, r18.xyzx
  mul r16.xyz, r16.xyzx, r18.xyzx

#line 1240
  mad r15.xyz, r16.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r17.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 1226
  iadd r6.y, r6.y, l(1)

#line 1242
endloop   // r5.w <- streams.lightIndex_id84

#line 1250
mov r8.yw, r2.xxxw  // r8.y <- streams.alphaRoughness_id63; r8.w <- streams.NdotV_id65
mov r9.xyz, r0.xyzx  // r9.x <- streams.viewWS_id61.x; r9.y <- streams.viewWS_id61.y; r9.z <- streams.viewWS_id61.z
mov r10.xyz, r6.xzwx  // r10.x <- streams.matDiffuseVisible_id62.x; r10.y <- streams.matDiffuseVisible_id62.y; r10.z <- streams.matDiffuseVisible_id62.z
mov r11.xyz, r7.xyzx  // r11.x <- streams.matSpecularVisible_id64.x; r11.y <- streams.matSpecularVisible_id64.y; r11.z <- streams.matSpecularVisible_id64.z
mov r12.xyz, r5.xyzx  // r12.x <- streams.normalWS_id16.x; r12.y <- streams.normalWS_id16.y; r12.z <- streams.normalWS_id16.z
mov r13.xyz, r15.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r4.w, r1.w
mov r5.w, l(0)  // r5.w <- i
loop 
  ige r6.y, r5.w, l(8)
  breakc_nz r6.y
  ige r6.y, r5.w, cb2[24].y
  if_nz r6.y
    break 
  endif 

#line 493
  ishl r6.y, r5.w, l(1)

#line 625
  dp3 r7.w, r12.xyzx, -cb2[r6.y + 25].xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotL_id43
  mul r14.xyz, r7.wwww, cb2[r6.y + 26].xyzx
  mul r14.xyz, r4.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id40.x; r14.y <- streams.lightColorNdotL_id40.y; r14.z <- streams.lightColorNdotL_id40.z

#line 674
  add r16.xyz, r9.xyzx, -cb2[r6.y + 25].xyzx
  dp3 r8.x, r16.xyzx, r16.xyzx
  rsq r8.x, r8.x
  mul r16.xyz, r8.xxxx, r16.xyzx  // r16.x <- streams.H_id68.x; r16.y <- streams.H_id68.y; r16.z <- streams.H_id68.z
  dp3 r8.x, r12.xyzx, r16.xyzx
  max r8.x, r8.x, l(0.000100)  // r8.x <- streams.NdotH_id69
  dp3 r6.y, -cb2[r6.y + 25].xyzx, r16.xyzx
  max r6.y, r6.y, l(0.000100)  // r6.y <- streams.LdotH_id70

#line 1111
  mul r16.xyz, r10.xyzx, r14.xyzx

#line 1260
  mad r16.xyz, r16.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r13.xyzx  // r16.x <- directLightingContribution.x; r16.y <- directLightingContribution.y; r16.z <- directLightingContribution.z

#line 575
  add r17.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r6.y, -r6.y, l(1.000000)
  mul r8.z, r6.y, r6.y

#line 776
  mul r8.xz, r8.xxzx, r8.xxzx

#line 575
  mul r6.y, r6.y, r8.z
  mad r17.xyz, r17.xyzx, r6.yyyy, r11.xyzx  // r17.x <- <FresnelSchlick_id286 return value>.x; r17.y <- <FresnelSchlick_id286 return value>.y; r17.z <- <FresnelSchlick_id286 return value>.z

#line 570
  mul r6.y, r8.y, l(0.500000)  // r6.y <- k
  mad r8.z, -r8.y, l(0.500000), l(1.000000)
  mad r9.w, r7.w, r8.z, r6.y
  div r9.w, r7.w, r9.w  // r9.w <- <VisibilityhSchlickGGX_id304 return value>
  mad r6.y, r8.w, r8.z, r6.y
  div r6.y, r8.w, r6.y  // r6.y <- <VisibilityhSchlickGGX_id304 return value>

#line 780
  mul r6.y, r6.y, r9.w
  mul r7.w, r8.w, r7.w
  div r6.y, r6.y, r7.w  // r6.y <- <VisibilitySmithSchlickGGX_id306 return value>

#line 775
  mul r7.w, r8.y, r8.y  // r7.w <- alphaR2
  mad r8.z, r8.y, r8.y, l(-1.000000)
  mad r8.x, r8.x, r8.z, l(1.000000)
  max r8.x, r8.x, l(0.000100)
  mul r8.x, r8.x, r8.x
  mul r8.x, r8.x, l(3.141593)
  div r7.w, r7.w, r8.x  // r7.w <- <NormalDistributionGGX_id320 return value>

#line 1105
  mul r17.xyz, r6.yyyy, r17.xyzx
  mul r17.xyz, r7.wwww, r17.xyzx
  mul r14.xyz, r14.xyzx, r17.xyzx

#line 1264
  mad r13.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r16.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 1250
  iadd r5.w, r5.w, l(1)

#line 1266
endloop 

#line 341
dp2 r4.w, cb2[61].xxxx, cb2[43].zzzz

#line 333
mov r8.w, l(1.000000)

#line 1274
mov r9.xyz, v0.xyzx  // r9.x <- streams.PositionWS_id19.x; r9.y <- streams.PositionWS_id19.y; r9.z <- streams.PositionWS_id19.z
mov r9.w, v2.x  // r9.w <- streams.DepthVS_id20
mov r10.yw, r2.xxxw  // r10.y <- streams.alphaRoughness_id63; r10.w <- streams.NdotV_id65
mov r11.xyz, r0.xyzx  // r11.x <- streams.viewWS_id61.x; r11.y <- streams.viewWS_id61.y; r11.z <- streams.viewWS_id61.z
mov r12.xyz, r6.xzwx  // r12.x <- streams.matDiffuseVisible_id62.x; r12.y <- streams.matDiffuseVisible_id62.y; r12.z <- streams.matDiffuseVisible_id62.z
mov r14.xyz, r7.xyzx  // r14.x <- streams.matSpecularVisible_id64.x; r14.y <- streams.matSpecularVisible_id64.y; r14.z <- streams.matSpecularVisible_id64.z
mov r15.xyz, r5.xyzx  // r15.x <- streams.normalWS_id16.x; r15.y <- streams.normalWS_id16.y; r15.z <- streams.normalWS_id16.z
mov r16.xyz, r13.xyzx  // r16.x <- directLightingContribution.x; r16.y <- directLightingContribution.y; r16.z <- directLightingContribution.z
mov r5.w, r1.w  // r5.w <- streams.lightDirectAmbientOcclusion_id44
mov r6.y, l(0)  // r6.y <- i
loop 
  ige r7.w, r6.y, l(1)
  breakc_nz r7.w
  ige r7.w, r6.y, cb2[40].w
  if_nz r7.w
    break 
  endif 

#line 607
  dp3 r7.w, r15.xyzx, -cb2[41].xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotL_id43

#line 443
  ishl r10.x, r6.y, l(2)  // r10.x <- cascadeIndexBase

#line 450
  lt r10.z, cb2[r10.x + 62].x, r9.w

#line 453
  and r10.z, r10.z, l(1)  // r10.z <- cascadeIndex

#line 450
  bfi r17.xy, l(30, 30, 0, 0), l(2, 2, 0, 0), r6.yyyy, l(1, 2, 0, 0)
  lt r11.w, cb2[r17.x + 62].x, r9.w

#line 453
  movc r10.z, r11.w, l(2), r10.z

#line 450
  lt r11.w, cb2[r17.y + 62].x, r9.w

#line 453
  movc r10.z, r11.w, l(3), r10.z

#line 340
  add r12.w, -r7.w, l(1.000000)
  max r12.w, r12.w, l(0.000000)  // r12.w <- normalOffsetScale
  mul r12.w, r4.w, r12.w

#line 457
  mad r8.xyz, r12.wwww, r15.xyzx, r9.xyzx  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 333
  bfi r12.w, l(30), l(2), r6.y, r10.z
  ishl r13.w, r10.z, l(2)
  bfi r13.w, l(30), l(4), r6.y, r13.w
  dp4 r17.x, r8.xyzw, cb2[r13.w + 44].xyzw  // r17.x <- shadowPosition.x
  dp4 r17.y, r8.xyzw, cb2[r13.w + 45].xyzw  // r17.y <- shadowPosition.y
  dp4 r14.w, r8.xyzw, cb2[r13.w + 46].xyzw  // r14.w <- shadowPosition.z
  dp4 r13.w, r8.xyzw, cb2[r13.w + 47].xyzw  // r13.w <- shadowPosition.w
  add r17.z, r14.w, -cb2[60].x  // r17.z <- shadowPosition.z
  div r17.xyz, r17.xyzx, r13.wwww

#line 269
  mad r17.xy, r17.xyxx, cb2[43].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r18.xy, r17.xyxx  // r18.x <- base_uv.x; r18.y <- base_uv.y
  add r17.xy, r17.xyxx, -r18.xyxx  // r17.x <- s; r17.y <- t
  add r18.xy, r18.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r18.xy, r18.xyxx, cb2[43].zwzz

#line 282
  mad r18.zw, -r17.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r18.w <- uw0; r18.z <- vw0
  mad r19.xy, r17.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r19.x <- uw2; r19.y <- vw2
  mad r19.zw, -r17.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r19.zw, r19.zzzw, r18.wwwz
  add r20.xy, r17.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r17.xy, r17.xyxx, r19.xyxx
  add r21.xw, r19.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r21.x <- u0; r21.w <- v0
  mul r21.yz, r20.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r21.z <- u1; r21.y <- v1
  add r20.xy, r17.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r20.x <- u2; r20.y <- v2
  mul r13.w, r18.z, r18.w
  mad r22.xyzw, r21.xwzw, cb2[43].zwzw, r18.xyxy

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r14.w, r22.xyxx, t10.xxxx, s1, r17.z  // r14.w <- <SampleTextureAndCompare_id170 return value>

#line 291
  mul r17.xy, r18.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r15.w, r22.zwzz, t10.xxxx, s1, r17.z  // r15.w <- <SampleTextureAndCompare_id170 return value>

#line 289
  mul r15.w, r15.w, r17.x
  mad r13.w, r13.w, r14.w, r15.w  // r13.w <- shadow

#line 294
  mul r17.xw, r18.zzzw, r19.xxxy
  mov r20.zw, r21.wwwy
  mad r22.xyzw, r20.xzxw, cb2[43].zwzw, r18.xyxy

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r14.w, r22.xyxx, t10.xxxx, s1, r17.z  // r14.w <- <SampleTextureAndCompare_id170 return value>

#line 290
  mad r13.w, r17.x, r14.w, r13.w
  mad r23.xyzw, r21.xyzy, cb2[43].zwzw, r18.xyxy

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r14.w, r23.xyxx, t10.xxxx, s1, r17.z

#line 291
  mad r13.w, r17.y, r14.w, r13.w

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r14.w, r23.zwzz, t10.xxxx, s1, r17.z

#line 292
  mad r13.w, r14.w, l(49.000000), r13.w

#line 295
  mul r17.xy, r19.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r14.w, r22.zwzz, t10.xxxx, s1, r17.z

#line 293
  mad r13.w, r17.x, r14.w, r13.w
  mov r21.y, r20.y
  mad r21.xyzw, r21.xyzy, cb2[43].zwzw, r18.xyxy

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r14.w, r21.xyxx, t10.xxxx, s1, r17.z

#line 294
  mad r13.w, r17.w, r14.w, r13.w

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r14.w, r21.zwzz, t10.xxxx, s1, r17.z

#line 295
  mad r13.w, r17.y, r14.w, r13.w
  mul r14.w, r19.y, r19.x
  mad r17.xy, r20.xyxx, cb2[43].zwzz, r18.xyxx

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r15.w, r17.xyxx, t10.xxxx, s1, r17.z  // r15.w <- <SampleTextureAndCompare_id170 return value>

#line 296
  mad r13.w, r14.w, r15.w, r13.w
  mul r14.w, r13.w, l(0.006944)  // r14.w <- shadow

#line 462
  iadd r15.w, r12.w, l(-1)
  add r15.w, -cb2[r15.w + 62].x, cb2[r12.w + 62].x
  movc r15.w, r10.z, r15.w, cb2[r12.w + 62].x  // r15.w <- splitSize
  add r12.w, -r9.w, cb2[r12.w + 62].x
  div r12.w, r12.w, r15.w  // r12.w <- splitDist
  lt r15.w, r12.w, l(0.200000)

#line 333
  ishl r10.x, r10.x, l(2)
  imad r10.x, r10.z, l(4), r10.x
  iadd r10.x, r10.x, l(4)
  dp4 r17.x, r8.xyzw, cb2[r10.x + 44].xyzw  // r17.x <- shadowPosition.x
  dp4 r17.y, r8.xyzw, cb2[r10.x + 45].xyzw  // r17.y <- shadowPosition.y
  dp4 r10.z, r8.xyzw, cb2[r10.x + 46].xyzw  // r10.z <- shadowPosition.z
  dp4 r8.x, r8.xyzw, cb2[r10.x + 47].xyzw  // r8.x <- shadowPosition.w
  add r17.z, r10.z, -cb2[60].x  // r17.z <- shadowPosition.z
  div r8.xyz, r17.xyzx, r8.xxxx  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 269
  mad r8.xy, r8.xyxx, cb2[43].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r10.xz, r8.xxyx  // r10.x <- base_uv.x; r10.z <- base_uv.y
  add r8.xy, r8.xyxx, -r10.xzxx  // r8.x <- s; r8.y <- t
  add r10.xz, r10.xxzx, l(-0.500000, 0.000000, -0.500000, 0.000000)
  mul r10.xz, r10.xxzx, cb2[43].zzwz

#line 282
  mad r17.xy, -r8.yxyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r17.y <- uw0; r17.x <- vw0
  mad r17.zw, r8.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r17.z <- uw2; r17.w <- vw2
  mad r18.xy, -r8.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r18.xy, r18.xyxx, r17.yxyy
  add r18.zw, r8.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000)
  div r8.xy, r8.xyxx, r17.zwzz
  add r19.xw, r18.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r19.x <- u0; r19.w <- v0
  mul r19.yz, r18.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r19.z <- u1; r19.y <- v1
  add r18.xy, r8.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r18.x <- u2; r18.y <- v2
  mad r20.xyzw, r19.xwzw, cb2[43].zwzw, r10.xzxz

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r8.x, r20.xyxx, t10.xxxx, s1, r8.z  // r8.x <- <SampleTextureAndCompare_id170 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r8.y, r20.zwzz, t10.xxxx, s1, r8.z  // r8.y <- <SampleTextureAndCompare_id170 return value>

#line 293
  mov r18.zw, r19.wwwy
  mad r20.xyzw, r18.xzxw, cb2[43].zwzw, r10.xzxz

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r16.w, r20.xyxx, t10.xxxx, s1, r8.z  // r16.w <- <SampleTextureAndCompare_id170 return value>

#line 292
  mad r21.xyzw, r19.xyzy, cb2[43].zwzw, r10.xzxz

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r18.z, r21.xyxx, t10.xxxx, s1, r8.z  // r18.z <- <SampleTextureAndCompare_id170 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r18.w, r21.zwzz, t10.xxxx, s1, r8.z  // r18.w <- <SampleTextureAndCompare_id170 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r19.w, r20.zwzz, t10.xxxx, s1, r8.z  // r19.w <- <SampleTextureAndCompare_id170 return value>

#line 294
  mov r19.y, r18.y
  mad r20.xyzw, r19.xyzy, cb2[43].zwzw, r10.xzxz

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r19.x, r20.xyxx, t10.xxxx, s1, r8.z  // r19.x <- <SampleTextureAndCompare_id170 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r19.y, r20.zwzz, t10.xxxx, s1, r8.z  // r19.y <- <SampleTextureAndCompare_id170 return value>

#line 296
  mad r10.xz, r18.xxyx, cb2[43].zzwz, r10.xxzx

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r8.z, r10.xzxx, t10.xxxx, s1, r8.z  // r8.z <- <SampleTextureAndCompare_id170 return value>

#line 464
  if_nz r15.w

#line 467
    if_z r11.w
      mul_sat r10.x, r12.w, l(5.000000)
      mad r10.z, r10.x, l(-2.000000), l(3.000000)
      mul r10.x, r10.x, r10.x
      mul r10.x, r10.x, r10.z  // r10.x <- lerpAmt

#line 288
      mul r10.z, r17.x, r17.y
      mul r8.y, r17.x, r8.y
      mul r8.y, r8.y, l(7.000000)
      mad r8.x, r10.z, r8.x, r8.y  // r8.x <- shadow

#line 294
      mul r18.xy, r17.xyxx, r17.zwzz

#line 290
      mad r8.x, r18.x, r16.w, r8.x
      mul r8.y, r17.y, r18.z
      mad r8.x, r8.y, l(7.000000), r8.x
      mad r8.x, r18.w, l(49.000000), r8.x
      mul r8.y, r17.z, r19.w
      mad r8.x, r8.y, l(7.000000), r8.x
      mad r8.x, r18.y, r19.x, r8.x
      mul r8.y, r17.w, r19.y
      mad r8.x, r8.y, l(7.000000), r8.x
      mul r8.y, r17.w, r17.z
      mad r8.x, r8.y, r8.z, r8.x
      mul r8.x, r8.x, l(0.006944)

#line 473
      mad r8.y, r13.w, l(0.006944), -r8.x
      mad r14.w, r10.x, r8.y, r8.x
    endif 
  endif   // r14.w <- shadow

#line 609
  mul r8.xyz, r14.wwww, cb2[42].xyzx
  mul r8.xyz, r7.wwww, r8.xyzx
  mul r8.xyz, r5.wwww, r8.xyzx  // r8.x <- streams.lightColorNdotL_id40.x; r8.y <- streams.lightColorNdotL_id40.y; r8.z <- streams.lightColorNdotL_id40.z

#line 674
  add r17.xyz, r11.xyzx, -cb2[41].xyzx
  dp3 r10.x, r17.xyzx, r17.xyzx
  rsq r10.x, r10.x
  mul r17.xyz, r10.xxxx, r17.xyzx  // r17.x <- streams.H_id68.x; r17.y <- streams.H_id68.y; r17.z <- streams.H_id68.z
  dp3 r10.x, r15.xyzx, r17.xyzx
  dp3 r10.z, -cb2[41].xyzx, r17.xyzx
  max r10.xz, r10.xxzx, l(0.000100, 0.000000, 0.000100, 0.000000)  // r10.x <- streams.NdotH_id69; r10.z <- streams.LdotH_id70

#line 1111
  mul r17.xyz, r8.xyzx, r12.xyzx

#line 1284
  mad r17.xyz, r17.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r16.xyzx  // r17.x <- directLightingContribution.x; r17.y <- directLightingContribution.y; r17.z <- directLightingContribution.z

#line 575
  add r18.xyz, -r14.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r10.z, -r10.z, l(1.000000)
  mul r11.w, r10.z, r10.z
  mul r11.w, r11.w, r11.w
  mul r10.z, r10.z, r11.w
  mad r18.xyz, r18.xyzx, r10.zzzz, r14.xyzx  // r18.x <- <FresnelSchlick_id286 return value>.x; r18.y <- <FresnelSchlick_id286 return value>.y; r18.z <- <FresnelSchlick_id286 return value>.z

#line 570
  mul r10.z, r10.y, l(0.500000)  // r10.z <- k
  mad r11.w, -r10.y, l(0.500000), l(1.000000)
  mad r12.w, r7.w, r11.w, r10.z
  div r12.w, r7.w, r12.w  // r12.w <- <VisibilityhSchlickGGX_id304 return value>
  mad r10.z, r10.w, r11.w, r10.z
  div r10.z, r10.w, r10.z  // r10.z <- <VisibilityhSchlickGGX_id304 return value>

#line 780
  mul r10.z, r10.z, r12.w
  mul r7.w, r10.w, r7.w
  div r7.w, r10.z, r7.w  // r7.w <- <VisibilitySmithSchlickGGX_id306 return value>

#line 775
  mul r10.z, r10.y, r10.y  // r10.z <- alphaR2
  mul r10.x, r10.x, r10.x
  mad r11.w, r10.y, r10.y, l(-1.000000)
  mad r10.x, r10.x, r11.w, l(1.000000)
  max r10.x, r10.x, l(0.000100)
  mul r10.x, r10.x, r10.x
  mul r10.x, r10.x, l(3.141593)
  div r10.x, r10.z, r10.x  // r10.x <- <NormalDistributionGGX_id320 return value>

#line 1105
  mul r18.xyz, r7.wwww, r18.xyzx
  mul r18.xyz, r10.xxxx, r18.xyzx
  mul r8.xyz, r8.xyzx, r18.xyzx

#line 1288
  mad r16.xyz, r8.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r17.xyzx  // r16.x <- directLightingContribution.x; r16.y <- directLightingContribution.y; r16.z <- directLightingContribution.z

#line 1274
  iadd r6.y, r6.y, l(1)

#line 1290
endloop 

#line 600
mul r8.xyz, r0.wwww, cb2[66].xyzx  // r8.x <- lightColor.x; r8.y <- lightColor.y; r8.z <- lightColor.z

#line 982
add r1.w, -r2.x, l(1.000000)  // r1.w <- x

#line 990
mul r5.w, r1.w, r1.w

#line 998
mul r6.y, r5.w, l(1.895000)

#line 990
mad r6.y, r1.w, l(-0.168800), r6.y
mad r7.w, r2.w, l(-4.853000), l(0.990300)
mul r8.w, r2.w, r2.w
mad r7.w, r8.w, l(8.404000), r7.w
mul r9.x, r2.w, r8.w
mad r7.w, r9.x, l(-5.069000), r7.w
min_sat r6.y, r6.y, r7.w  // r6.y <- bias

#line 998
mad r7.w, r1.w, l(1.699000), l(0.604500)
mad r7.w, r2.w, l(-0.522800), r7.w
mad r7.w, r5.w, l(-3.603000), r7.w
mul r2.w, r1.w, r2.w
mad r2.w, r2.w, l(1.404000), r7.w
mad r2.w, r8.w, l(0.193900), r2.w
mul r1.w, r1.w, r5.w
mad_sat r1.w, r1.w, l(2.661000), r2.w  // r1.w <- delta
add r1.w, -r6.y, r1.w  // r1.w <- scale
mul_sat r2.w, r7.y, l(50.000000)
mul r2.w, r2.w, r6.y  // r2.w <- bias
mad r7.xyz, r7.xyzx, r1.wwww, r2.wwww  // r7.x <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id321 return value>.x; r7.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id321 return value>.y; r7.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id321 return value>.z

#line 1092
mul r9.xyz, r8.xyzx, r7.xyzx  // r9.x <- <ComputeEnvironmentLightContribution_id711 return value>.x; r9.y <- <ComputeEnvironmentLightContribution_id711 return value>.y; r9.z <- <ComputeEnvironmentLightContribution_id711 return value>.z

#line 1302
mad r8.xyz, r6.xzwx, r8.xyzx, r9.xyzx  // r8.x <- environmentLightingContribution.x; r8.y <- environmentLightingContribution.y; r8.z <- environmentLightingContribution.z

#line 580
dp3 r1.w, r5.xyzx, cb2[76].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r5.xyzx, cb2[77].xyzx  // r2.w <- sampleDirection.y
dp3 r5.w, r5.xyzx, cb2[78].xyzx  // r5.w <- sampleDirection.z

#line 398
mul r6.y, r2.w, r2.w  // r6.y <- y2
mul r7.w, r5.w, r5.w  // r7.w <- z2

#line 403
mad r9.xyz, cb2[68].xyzx, r2.wwww, cb2[67].xyzx  // r9.x <- color.x; r9.y <- color.y; r9.z <- color.z
mad r9.xyz, cb2[69].xyzx, -r5.wwww, r9.xyzx
mad r9.xyz, cb2[70].xyzx, r1.wwww, r9.xyzx

#line 408
mul r10.xyz, r2.wwww, cb2[71].xyzx
mad r9.xyz, r10.xyzx, r1.wwww, r9.xyzx
mul r10.xyz, r2.wwww, cb2[72].xyzx
mad r9.xyz, r10.xyzx, -r5.wwww, r9.xyzx
mad r2.w, r7.w, l(3.000000), l(-1.000000)
mad r9.xyz, cb2[73].xyzx, r2.wwww, r9.xyzx
mul r10.xyz, r1.wwww, cb2[74].xyzx
mad r9.xyz, r10.xyzx, -r5.wwww, r9.xyzx
mad r1.w, r1.w, r1.w, -r6.y
mad r9.xyz, cb2[75].xyzx, r1.wwww, r9.xyzx

#line 582
mul r9.xyz, r9.xyzx, cb2[80].xxxx
mul r9.xyz, r0.wwww, r9.xyzx  // r9.x <- streams.envLightDiffuseColor_id41.x; r9.y <- streams.envLightDiffuseColor_id41.y; r9.z <- streams.envLightDiffuseColor_id41.z
dp3 r1.w, -r0.xyzx, r5.xyzx
add r1.w, r1.w, r1.w
mad r5.xyz, r5.xyzx, -r1.wwww, -r0.xyzx  // r5.x <- sampleDirection.x; r5.y <- sampleDirection.y; r5.z <- sampleDirection.z
dp3 r10.x, r5.xyzx, cb2[76].xyzx  // r10.x <- sampleDirection.x
dp3 r10.y, r5.xyzx, cb2[77].xyzx  // r10.y <- sampleDirection.y
dp3 r1.w, r5.xyzx, cb2[78].xyzx  // r1.w <- sampleDirection.z
mov r10.z, -r1.w  // r10.z <- sampleDirection.z

#line 389
sqrt r1.w, r2.x
mul r1.w, r1.w, cb2[75].w  // r1.w <- mipLevel
sample_l_indexable(texturecube)(float,float,float,float) r5.xyz, r10.xyzx, t11.xyzw, s0, r1.w  // r5.x <- <Compute_id541 return value>.x; r5.y <- <Compute_id541 return value>.y; r5.z <- <Compute_id541 return value>.z

#line 586
mul r5.xyz, r5.xyzx, cb2[80].xxxx
mul r5.xyz, r0.wwww, r5.xyzx  // r5.x <- streams.envLightSpecularColor_id42.x; r5.y <- streams.envLightSpecularColor_id42.y; r5.z <- streams.envLightSpecularColor_id42.z

#line 1310
mad r6.xyz, r6.xzwx, r9.xyzx, r8.xyzx  // r6.x <- environmentLightingContribution.x; r6.y <- environmentLightingContribution.y; r6.z <- environmentLightingContribution.z

#line 1314
mad r5.xyz, r7.xyzx, r5.xyzx, r6.xyzx  // r5.x <- environmentLightingContribution.x; r5.y <- environmentLightingContribution.y; r5.z <- environmentLightingContribution.z

#line 1317
mad r5.xyz, r16.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r5.xyzx  // r5.x <- streams.shadingColor_id66.x; r5.y <- streams.shadingColor_id66.y; r5.z <- streams.shadingColor_id66.z

#line 1087
mad r2.xw, v4.xxxy, cb1[6].zzzw, cb1[7].xxxy
sample_indexable(texture2d)(float,float,float,float) r0.w, r2.xwxx, t2.xyzw, s2  // r0.w <- <Compute_id712 return value>.x

#line 767
mad r2.xw, v4.xxxy, cb1[9].xxxy, cb1[9].zzzw
sample_indexable(texture2d)(float,float,float,float) r2.xw, r2.xwxx, t3.xzwy, s2  // r2.x <- <Compute_id716 return value>.x; r2.w <- <Compute_id716 return value>.y

#line 966
mad r6.xy, r2.xwxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r6.x <- normal.x; r6.y <- normal.y

#line 970
dp2 r1.w, r6.xyxx, r6.xyxx
add r1.w, -r1.w, l(1.000000)
max r1.w, r1.w, l(0.000000)
sqrt r6.z, r1.w  // r6.z <- normal.z

#line 751
mad r2.xw, v4.xxxy, cb1[12].yyyz, cb1[13].xxxy
sample_indexable(texture2d)(float,float,float,float) r1.w, r2.xwxx, t4.yzwx, s2  // r1.w <- <Compute_id724 return value>.x

#line 566
mad r2.xw, v4.xxxy, cb1[14].zzzw, cb1[15].xxxy
sample_indexable(texture2d)(float,float,float,float) r7.xyz, r2.xwxx, t5.xyzw, s2  // r7.x <- <Compute_id734 return value>.x; r7.y <- <Compute_id734 return value>.y; r7.z <- <Compute_id734 return value>.z

#line 730
mul r7.xyz, r7.xyzx, cb1[16].xyzx  // r7.x <- mix1.x; r7.y <- mix1.y; r7.z <- mix1.z

#line 720
dp3 r3.x, r6.xyzx, r3.xyzx
dp3 r3.y, r6.xyzx, r4.xyzx
dp3 r3.z, r6.xyzx, r1.xyzx
dp3 r1.x, r3.xyzx, r3.xyzx
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, r3.xyzx  // r1.x <- streams.normalWS_id16.x; r1.y <- streams.normalWS_id16.y; r1.z <- streams.normalWS_id16.z

#line 700
add r2.x, r1.w, l(-1.000000)
mad r2.x, cb1[13].z, r2.x, l(1.000000)  // r2.x <- streams.lightDirectAmbientOcclusion_id44
add r2.w, cb1[13].w, l(-1.000000)
mad r3.xy, cb1[14].xyxx, r2.wwww, l(1.000000, 1.000000, 0.000000, 0.000000)
mul r4.xyz, r3.xxxx, cb1[8].xyzx  // r4.x <- streams.matDiffuseVisible_id62.x; r4.y <- streams.matDiffuseVisible_id62.y; r4.z <- streams.matDiffuseVisible_id62.z
mul r8.xyz, cb1[11].xyzx, cb1[12].xxxx
mul r3.xyz, r3.yyyy, r8.xyzx  // r3.x <- streams.matSpecularVisible_id64.x; r3.y <- streams.matSpecularVisible_id64.y; r3.z <- streams.matSpecularVisible_id64.z
dp3 r2.w, r1.xyzx, r0.xyzx
max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotV_id65
add r5.w, -cb1[10].x, l(1.000000)  // r5.w <- roughness

#line 554
dp3 r6.x, r6.xyzx, r6.xyzx
sqrt r6.y, r6.x  // r6.y <- r
lt r6.z, r6.y, l(1.000000)
add r6.w, -r6.x, l(1.000000)
mul r6.w, r6.w, l(0.500000)
mul r6.x, r6.y, r6.x
mad r6.x, r6.y, l(3.000000), -r6.x
div r6.x, r6.w, r6.x  // r6.x <- roughnessAdjust
and r6.x, r6.x, r6.z

#line 706
mad r5.w, r5.w, r5.w, r6.x
max r5.w, r5.w, l(0.001000)  // r5.w <- streams.alphaRoughness_id63

#line 802
mov r6.xyz, v0.xyzx  // r6.x <- streams.PositionWS_id19.x; r6.y <- streams.PositionWS_id19.y; r6.z <- streams.PositionWS_id19.z
mov r8.xyz, r0.xyzx  // r8.x <- streams.viewWS_id61.x; r8.y <- streams.viewWS_id61.y; r8.z <- streams.viewWS_id61.z
mov r9.x, r4.x  // r9.x <- streams.matDiffuseVisible_id62.x
mov r10.xy, r4.yzyy  // r10.x <- streams.matDiffuseVisible_id62.y; r10.y <- streams.matDiffuseVisible_id62.z
mov r10.zw, r3.xxxy  // r10.z <- streams.matSpecularVisible_id64.x; r10.w <- streams.matSpecularVisible_id64.y
mov r11.x, r3.z  // r11.x <- streams.matSpecularVisible_id64.z
mov r11.y, r5.w  // r11.y <- streams.alphaRoughness_id63
mov r12.xyz, r1.xyzx  // r12.x <- streams.normalWS_id16.x; r12.y <- streams.normalWS_id16.y; r12.z <- streams.normalWS_id16.z
mov r13.xyz, r2.yxwy  // r13.x <- streams.lightIndex_id84; r13.y <- streams.lightDirectAmbientOcclusion_id44; r13.z <- streams.NdotV_id65
mov r14.xyz, l(0,0,0,0)  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z
mov r6.w, l(0)  // r6.w <- i
loop 
  ige r7.w, r6.w, r3.w
  breakc_nz r7.w
  if_nz r7.w
    break 
  endif 

#line 533
  ld_indexable(buffer)(uint,uint,uint,uint) r7.w, r13.xxxx, t7.yzwx  // r7.w <- realLightIndex
  iadd r13.x, r13.x, l(1)  // r13.x <- streams.lightIndex_id84
  ishl r8.w, r7.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r15.xyzw, r8.wwww, t8.xyzw  // r15.x <- pointLight1.x; r15.y <- pointLight1.y; r15.z <- pointLight1.z; r15.w <- pointLight1.w
  bfi r7.w, l(31), l(1), r7.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r7.wwww, t8.xyzw  // r16.x <- pointLight2.x; r16.y <- pointLight2.y; r16.z <- pointLight2.z

#line 377
  add r15.xyz, -r6.xyzx, r15.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z
  dp3 r7.w, r15.xyzx, r15.xyzx
  sqrt r8.w, r7.w  // r8.w <- lightVectorLength
  div r15.xyz, r15.xyzx, r8.wwww  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 327
  max r8.w, r7.w, l(0.000100)
  div r8.w, l(1.000000, 1.000000, 1.000000, 1.000000), r8.w  // r8.w <- attenuation

#line 259
  mul r7.w, r15.w, r7.w  // r7.w <- factor
  mad r7.w, -r7.w, r7.w, l(1.000000)
  max r7.w, r7.w, l(0.000000)  // r7.w <- smoothFactor
  mul r7.w, r7.w, r7.w  // r7.w <- <SmoothDistanceAttenuation_id142 return value>

#line 328
  mul r7.w, r7.w, r8.w  // r7.w <- attenuation

#line 383
  mul r16.xyz, r7.wwww, r16.xyzx  // r16.x <- streams.lightColor_id39.x; r16.y <- streams.lightColor_id39.y; r16.z <- streams.lightColor_id39.z

#line 682
  dp3 r7.w, r12.xyzx, r15.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotL_id43
  mul r16.xyz, r7.wwww, r16.xyzx
  mul r16.xyz, r13.yyyy, r16.xyzx  // r16.x <- streams.lightColorNdotL_id40.x; r16.y <- streams.lightColorNdotL_id40.y; r16.z <- streams.lightColorNdotL_id40.z

#line 674
  add r17.xyz, r8.xyzx, r15.xyzx
  dp3 r8.w, r17.xyzx, r17.xyzx
  rsq r8.w, r8.w
  mul r17.xyz, r8.wwww, r17.xyzx  // r17.x <- streams.H_id68.x; r17.y <- streams.H_id68.y; r17.z <- streams.H_id68.z
  dp3 r8.w, r12.xyzx, r17.xyzx
  max r8.w, r8.w, l(0.000100)  // r8.w <- streams.NdotH_id69
  dp3 r9.w, r15.xyzx, r17.xyzx
  max r9.w, r9.w, l(0.000100)  // r9.w <- streams.LdotH_id70

#line 670
  mov r9.yz, r10.xxyx
  mul r15.xyz, r16.xyzx, r9.xyzx

#line 812
  mad r15.xyz, r15.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r14.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 322
  mov r17.xy, r10.zwzz
  mov r17.z, r11.x
  add r18.xyz, -r17.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r9.y, -r9.w, l(1.000000)
  mul r9.z, r9.y, r9.y
  mul r9.z, r9.z, r9.z
  mul r9.y, r9.z, r9.y
  mad r9.yzw, r18.xxyz, r9.yyyy, r17.xxyz  // r9.y <- <FresnelSchlick_id442 return value>.x; r9.z <- <FresnelSchlick_id442 return value>.y; r9.w <- <FresnelSchlick_id442 return value>.z

#line 317
  mul r11.z, r11.y, l(0.500000)  // r11.z <- k
  mad r11.w, -r11.y, l(0.500000), l(1.000000)
  mad r12.w, r7.w, r11.w, r11.z
  div r12.w, r7.w, r12.w  // r12.w <- <VisibilityhSchlickGGX_id460 return value>
  mad r11.z, r13.z, r11.w, r11.z
  div r11.z, r13.z, r11.z  // r11.z <- <VisibilityhSchlickGGX_id460 return value>

#line 369
  mul r11.z, r11.z, r12.w
  mul r7.w, r13.z, r7.w
  div r7.w, r11.z, r7.w  // r7.w <- <VisibilitySmithSchlickGGX_id462 return value>

#line 364
  mul r11.z, r11.y, r11.y  // r11.z <- alphaR2
  mul r8.w, r8.w, r8.w
  mad r11.w, r11.y, r11.y, l(-1.000000)
  mad r8.w, r8.w, r11.w, l(1.000000)
  max r8.w, r8.w, l(0.000100)
  mul r8.w, r8.w, r8.w
  mul r8.w, r8.w, l(3.141593)
  div r8.w, r11.z, r8.w  // r8.w <- <NormalDistributionGGX_id476 return value>

#line 664
  mul r9.yzw, r7.wwww, r9.yyzw
  mul r9.yzw, r8.wwww, r9.yyzw
  mul r9.yzw, r16.xxyz, r9.yyzw

#line 816
  mad r14.xyz, r9.yzwy, l(0.250000, 0.250000, 0.250000, 0.000000), r15.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 802
  iadd r6.w, r6.w, l(1)

#line 818
endloop   // r13.x <- streams.lightIndex_id84

#line 826
mov r6.xyz, v0.xyzx
mov r8.y, r5.w  // r8.y <- streams.alphaRoughness_id63
mov r8.w, r2.w  // r8.w <- streams.NdotV_id65
mov r9.xyz, r0.xyzx  // r9.x <- streams.viewWS_id61.x; r9.y <- streams.viewWS_id61.y; r9.z <- streams.viewWS_id61.z
mov r10.xyz, r4.xyzx  // r10.x <- streams.matDiffuseVisible_id62.x; r10.y <- streams.matDiffuseVisible_id62.y; r10.z <- streams.matDiffuseVisible_id62.z
mov r11.xyz, r3.xyzx  // r11.x <- streams.matSpecularVisible_id64.x; r11.y <- streams.matSpecularVisible_id64.y; r11.z <- streams.matSpecularVisible_id64.z
mov r12.xyz, r1.xyzx
mov r13.yzw, r14.xxyz  // r13.y <- directLightingContribution.x; r13.z <- directLightingContribution.y; r13.w <- directLightingContribution.z
mov r2.y, r2.x  // r2.y <- streams.lightDirectAmbientOcclusion_id44
mov r3.w, r13.x  // r3.w <- streams.lightIndex_id84
mov r6.w, l(0)  // r6.w <- i
loop 
  ige r7.w, r6.w, r2.z
  breakc_nz r7.w
  if_nz r7.w
    break 
  endif 

#line 502
  ld_indexable(buffer)(uint,uint,uint,uint) r7.w, r3.wwww, t7.yzwx  // r7.w <- realLightIndex
  iadd r3.w, r3.w, l(1)  // r3.w <- streams.lightIndex_id84
  ishl r8.x, r7.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r8.xxxx, t9.xyzw  // r15.x <- spotLight1.x; r15.y <- spotLight1.y; r15.z <- spotLight1.z

#line 508
  bfi r16.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r7.wwww, l(1, 2, 3, 0)
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r16.xxxx, t9.xyzw  // r17.x <- spotLight2.x; r17.y <- spotLight2.y; r17.z <- spotLight2.z
  ld_indexable(buffer)(float,float,float,float) r16.xyw, r16.yyyy, t9.xywz  // r16.x <- spotLight3.x; r16.y <- spotLight3.y; r16.w <- spotLight3.z
  ld_indexable(buffer)(float,float,float,float) r18.xyz, r16.zzzz, t9.xyzw  // r18.x <- spotLight4.x; r18.y <- spotLight4.y; r18.z <- spotLight4.z

#line 349
  add r15.xyz, -r6.xyzx, r15.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z
  dp3 r7.w, r15.xyzx, r15.xyzx
  sqrt r8.x, r7.w  // r8.x <- lightVectorLength
  div r15.xyz, r15.xyzx, r8.xxxx  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 311
  max r8.x, r7.w, l(0.000100)
  div r8.x, l(1.000000, 1.000000, 1.000000, 1.000000), r8.x  // r8.x <- attenuation

#line 253
  mul r7.w, r16.w, r7.w  // r7.w <- factor
  mad r7.w, -r7.w, r7.w, l(1.000000)
  max r7.w, r7.w, l(0.000000)  // r7.w <- smoothFactor
  mul r7.w, r7.w, r7.w  // r7.w <- <SmoothDistanceAttenuation_id150 return value>

#line 312
  mul r7.w, r7.w, r8.x  // r7.w <- attenuation

#line 303
  dp3 r8.x, -r17.xyzx, r15.xyzx  // r8.x <- cd
  mad_sat r8.x, r8.x, r16.x, r16.y  // r8.x <- attenuation
  mul r8.x, r8.x, r8.x

#line 358
  mul r7.w, r7.w, r8.x  // r7.w <- attenuation
  mul r15.xyz, r7.wwww, r18.xyzx  // r15.x <- streams.lightColor_id39.x; r15.y <- streams.lightColor_id39.y; r15.z <- streams.lightColor_id39.z

#line 643
  dp3 r7.w, r12.xyzx, -r17.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotL_id43
  mul r15.xyz, r7.wwww, r15.xyzx
  mul r15.xyz, r2.yyyy, r15.xyzx  // r15.x <- streams.lightColorNdotL_id40.x; r15.y <- streams.lightColorNdotL_id40.y; r15.z <- streams.lightColorNdotL_id40.z

#line 674
  add r16.xyz, r9.xyzx, -r17.xyzx
  dp3 r8.x, r16.xyzx, r16.xyzx
  rsq r8.x, r8.x
  mul r16.xyz, r8.xxxx, r16.xyzx  // r16.x <- streams.H_id68.x; r16.y <- streams.H_id68.y; r16.z <- streams.H_id68.z
  dp3 r8.x, r12.xyzx, r16.xyzx
  dp3 r8.z, -r17.xyzx, r16.xyzx
  max r8.xz, r8.xxzx, l(0.000100, 0.000000, 0.000100, 0.000000)  // r8.x <- streams.NdotH_id69; r8.z <- streams.LdotH_id70

#line 670
  mul r16.xyz, r10.xyzx, r15.xyzx

#line 836
  mad r16.xyz, r16.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r13.yzwy  // r16.x <- directLightingContribution.x; r16.y <- directLightingContribution.y; r16.z <- directLightingContribution.z

#line 322
  add r17.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r8.z, -r8.z, l(1.000000)
  mul r9.w, r8.z, r8.z
  mul r9.w, r9.w, r9.w
  mul r8.z, r8.z, r9.w
  mad r17.xyz, r17.xyzx, r8.zzzz, r11.xyzx  // r17.x <- <FresnelSchlick_id442 return value>.x; r17.y <- <FresnelSchlick_id442 return value>.y; r17.z <- <FresnelSchlick_id442 return value>.z

#line 317
  mul r8.z, r8.y, l(0.500000)  // r8.z <- k
  mad r9.w, -r8.y, l(0.500000), l(1.000000)
  mad r10.w, r7.w, r9.w, r8.z
  div r10.w, r7.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id460 return value>
  mad r8.z, r8.w, r9.w, r8.z
  div r8.z, r8.w, r8.z  // r8.z <- <VisibilityhSchlickGGX_id460 return value>

#line 369
  mul r8.z, r8.z, r10.w
  mul r7.w, r8.w, r7.w
  div r7.w, r8.z, r7.w  // r7.w <- <VisibilitySmithSchlickGGX_id462 return value>

#line 364
  mul r8.z, r8.y, r8.y  // r8.z <- alphaR2
  mul r8.x, r8.x, r8.x
  mad r9.w, r8.y, r8.y, l(-1.000000)
  mad r8.x, r8.x, r9.w, l(1.000000)
  max r8.x, r8.x, l(0.000100)
  mul r8.x, r8.x, r8.x
  mul r8.x, r8.x, l(3.141593)
  div r8.x, r8.z, r8.x  // r8.x <- <NormalDistributionGGX_id476 return value>

#line 664
  mul r17.xyz, r7.wwww, r17.xyzx
  mul r17.xyz, r8.xxxx, r17.xyzx
  mul r15.xyz, r15.xyzx, r17.xyzx

#line 840
  mad r13.yzw, r15.xxyz, l(0.000000, 0.250000, 0.250000, 0.250000), r16.xxyz  // r13.y <- directLightingContribution.x; r13.z <- directLightingContribution.y; r13.w <- directLightingContribution.z

#line 826
  iadd r6.w, r6.w, l(1)

#line 842
endloop   // r3.w <- streams.lightIndex_id84

#line 850
mov r6.y, r5.w  // r6.y <- streams.alphaRoughness_id63
mov r6.w, r2.w  // r6.w <- streams.NdotV_id65
mov r8.xyz, r0.xyzx  // r8.x <- streams.viewWS_id61.x; r8.y <- streams.viewWS_id61.y; r8.z <- streams.viewWS_id61.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.matDiffuseVisible_id62.x; r9.y <- streams.matDiffuseVisible_id62.y; r9.z <- streams.matDiffuseVisible_id62.z
mov r10.xyz, r3.xyzx  // r10.x <- streams.matSpecularVisible_id64.x; r10.y <- streams.matSpecularVisible_id64.y; r10.z <- streams.matSpecularVisible_id64.z
mov r11.xyz, r1.xyzx  // r11.x <- streams.normalWS_id16.x; r11.y <- streams.normalWS_id16.y; r11.z <- streams.normalWS_id16.z
mov r12.xyz, r13.yzwy  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r2.y, r2.x
mov r2.z, l(0)  // r2.z <- i
loop 
  ige r3.w, r2.z, l(8)
  breakc_nz r3.w
  ige r3.w, r2.z, cb2[24].y
  if_nz r3.w
    break 
  endif 

#line 493
  ishl r3.w, r2.z, l(1)

#line 625
  dp3 r6.x, r11.xyzx, -cb2[r3.w + 25].xyzx
  max r6.x, r6.x, l(0.000100)  // r6.x <- streams.NdotL_id43
  mul r14.xyz, r6.xxxx, cb2[r3.w + 26].xyzx
  mul r14.xyz, r2.yyyy, r14.xyzx  // r14.x <- streams.lightColorNdotL_id40.x; r14.y <- streams.lightColorNdotL_id40.y; r14.z <- streams.lightColorNdotL_id40.z

#line 674
  add r15.xyz, r8.xyzx, -cb2[r3.w + 25].xyzx
  dp3 r6.z, r15.xyzx, r15.xyzx
  rsq r6.z, r6.z
  mul r15.xyz, r6.zzzz, r15.xyzx  // r15.x <- streams.H_id68.x; r15.y <- streams.H_id68.y; r15.z <- streams.H_id68.z
  dp3 r6.z, r11.xyzx, r15.xyzx
  max r6.z, r6.z, l(0.000100)  // r6.z <- streams.NdotH_id69
  dp3 r3.w, -cb2[r3.w + 25].xyzx, r15.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.LdotH_id70

#line 670
  mul r15.xyz, r9.xyzx, r14.xyzx

#line 860
  mad r15.xyz, r15.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 322
  add r16.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r7.w, r3.w, r3.w
  mul r7.w, r7.w, r7.w
  mul r3.w, r3.w, r7.w
  mad r16.xyz, r16.xyzx, r3.wwww, r10.xyzx  // r16.x <- <FresnelSchlick_id442 return value>.x; r16.y <- <FresnelSchlick_id442 return value>.y; r16.z <- <FresnelSchlick_id442 return value>.z

#line 317
  mul r3.w, r6.y, l(0.500000)  // r3.w <- k
  mad r7.w, -r6.y, l(0.500000), l(1.000000)
  mad r8.w, r6.x, r7.w, r3.w
  div r8.w, r6.x, r8.w  // r8.w <- <VisibilityhSchlickGGX_id460 return value>
  mad r3.w, r6.w, r7.w, r3.w
  div r3.w, r6.w, r3.w  // r3.w <- <VisibilityhSchlickGGX_id460 return value>

#line 369
  mul r3.w, r3.w, r8.w
  mul r6.x, r6.w, r6.x
  div r3.w, r3.w, r6.x  // r3.w <- <VisibilitySmithSchlickGGX_id462 return value>

#line 364
  mul r6.x, r6.y, r6.y  // r6.x <- alphaR2
  mul r6.z, r6.z, r6.z
  mad r7.w, r6.y, r6.y, l(-1.000000)
  mad r6.z, r6.z, r7.w, l(1.000000)
  max r6.z, r6.z, l(0.000100)
  mul r6.z, r6.z, r6.z
  mul r6.z, r6.z, l(3.141593)
  div r6.x, r6.x, r6.z  // r6.x <- <NormalDistributionGGX_id476 return value>

#line 664
  mul r16.xyz, r3.wwww, r16.xyzx
  mul r16.xyz, r6.xxxx, r16.xyzx
  mul r14.xyz, r14.xyzx, r16.xyzx

#line 864
  mad r12.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r15.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 850
  iadd r2.z, r2.z, l(1)

#line 866
endloop 

#line 333
mov r6.w, l(1.000000)

#line 874
mov r8.xyz, v0.xyzx  // r8.x <- streams.PositionWS_id19.x; r8.y <- streams.PositionWS_id19.y; r8.z <- streams.PositionWS_id19.z
mov r8.w, v2.x  // r8.w <- streams.DepthVS_id20
mov r9.y, r5.w  // r9.y <- streams.alphaRoughness_id63
mov r9.w, r2.w  // r9.w <- streams.NdotV_id65
mov r10.xyz, r0.xyzx  // r10.x <- streams.viewWS_id61.x; r10.y <- streams.viewWS_id61.y; r10.z <- streams.viewWS_id61.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matDiffuseVisible_id62.x; r11.y <- streams.matDiffuseVisible_id62.y; r11.z <- streams.matDiffuseVisible_id62.z
mov r13.xyz, r3.xyzx  // r13.x <- streams.matSpecularVisible_id64.x; r13.y <- streams.matSpecularVisible_id64.y; r13.z <- streams.matSpecularVisible_id64.z
mov r14.xyz, r1.xyzx  // r14.x <- streams.normalWS_id16.x; r14.y <- streams.normalWS_id16.y; r14.z <- streams.normalWS_id16.z
mov r15.xyz, r12.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z
mov r2.y, r2.x
mov r2.z, l(0)  // r2.z <- i
loop 
  ige r3.w, r2.z, l(1)
  breakc_nz r3.w
  ige r3.w, r2.z, cb2[40].w
  if_nz r3.w
    break 
  endif 

#line 607
  dp3 r3.w, r14.xyzx, -cb2[41].xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id43

#line 443
  ishl r7.w, r2.z, l(2)  // r7.w <- cascadeIndexBase

#line 450
  lt r9.x, cb2[r7.w + 62].x, r8.w

#line 453
  and r9.x, r9.x, l(1)  // r9.x <- cascadeIndex

#line 450
  bfi r16.xy, l(30, 30, 0, 0), l(2, 2, 0, 0), r2.zzzz, l(1, 2, 0, 0)
  lt r9.z, cb2[r16.x + 62].x, r8.w

#line 453
  movc r9.x, r9.z, l(2), r9.x

#line 450
  lt r9.z, cb2[r16.y + 62].x, r8.w

#line 453
  movc r9.x, r9.z, l(3), r9.x

#line 340
  add r10.w, -r3.w, l(1.000000)
  max r10.w, r10.w, l(0.000000)  // r10.w <- normalOffsetScale
  mul r10.w, r4.w, r10.w

#line 457
  mad r6.xyz, r10.wwww, r14.xyzx, r8.xyzx  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 333
  bfi r10.w, l(30), l(2), r2.z, r9.x
  ishl r11.w, r9.x, l(2)
  bfi r11.w, l(30), l(4), r2.z, r11.w
  dp4 r16.x, r6.xyzw, cb2[r11.w + 44].xyzw  // r16.x <- shadowPosition.x
  dp4 r16.y, r6.xyzw, cb2[r11.w + 45].xyzw  // r16.y <- shadowPosition.y
  dp4 r12.w, r6.xyzw, cb2[r11.w + 46].xyzw  // r12.w <- shadowPosition.z
  dp4 r11.w, r6.xyzw, cb2[r11.w + 47].xyzw  // r11.w <- shadowPosition.w
  add r16.z, r12.w, -cb2[60].x  // r16.z <- shadowPosition.z
  div r16.xyz, r16.xyzx, r11.wwww

#line 269
  mad r16.xy, r16.xyxx, cb2[43].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r17.xy, r16.xyxx  // r17.x <- base_uv.x; r17.y <- base_uv.y
  add r16.xy, r16.xyxx, -r17.xyxx  // r16.x <- s; r16.y <- t
  add r17.xy, r17.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r17.xy, r17.xyxx, cb2[43].zwzz

#line 282
  mad r17.zw, -r16.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r17.w <- uw0; r17.z <- vw0
  mad r18.xy, r16.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r18.x <- uw2; r18.y <- vw2
  mad r18.zw, -r16.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r18.zw, r18.zzzw, r17.wwwz
  add r19.xy, r16.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r16.xy, r16.xyxx, r18.xyxx
  add r20.xw, r18.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r20.x <- u0; r20.w <- v0
  mul r20.yz, r19.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r20.z <- u1; r20.y <- v1
  add r19.xy, r16.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r19.x <- u2; r19.y <- v2
  mul r11.w, r17.z, r17.w
  mad r21.xyzw, r20.xwzw, cb2[43].zwzw, r17.xyxy

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r12.w, r21.xyxx, t10.xxxx, s1, r16.z  // r12.w <- <SampleTextureAndCompare_id170 return value>

#line 291
  mul r16.xy, r17.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r13.w, r21.zwzz, t10.xxxx, s1, r16.z  // r13.w <- <SampleTextureAndCompare_id170 return value>

#line 289
  mul r13.w, r13.w, r16.x
  mad r11.w, r11.w, r12.w, r13.w  // r11.w <- shadow

#line 294
  mul r16.xw, r17.zzzw, r18.xxxy
  mov r19.zw, r20.wwwy
  mad r21.xyzw, r19.xzxw, cb2[43].zwzw, r17.xyxy

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r12.w, r21.xyxx, t10.xxxx, s1, r16.z  // r12.w <- <SampleTextureAndCompare_id170 return value>

#line 290
  mad r11.w, r16.x, r12.w, r11.w
  mad r22.xyzw, r20.xyzy, cb2[43].zwzw, r17.xyxy

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r12.w, r22.xyxx, t10.xxxx, s1, r16.z

#line 291
  mad r11.w, r16.y, r12.w, r11.w

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r12.w, r22.zwzz, t10.xxxx, s1, r16.z

#line 292
  mad r11.w, r12.w, l(49.000000), r11.w

#line 295
  mul r16.xy, r18.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r12.w, r21.zwzz, t10.xxxx, s1, r16.z

#line 293
  mad r11.w, r16.x, r12.w, r11.w
  mov r20.y, r19.y
  mad r20.xyzw, r20.xyzy, cb2[43].zwzw, r17.xyxy

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r12.w, r20.xyxx, t10.xxxx, s1, r16.z

#line 294
  mad r11.w, r16.w, r12.w, r11.w

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r12.w, r20.zwzz, t10.xxxx, s1, r16.z

#line 295
  mad r11.w, r16.y, r12.w, r11.w
  mul r12.w, r18.y, r18.x
  mad r16.xy, r19.xyxx, cb2[43].zwzz, r17.xyxx

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r13.w, r16.xyxx, t10.xxxx, s1, r16.z  // r13.w <- <SampleTextureAndCompare_id170 return value>

#line 296
  mad r11.w, r12.w, r13.w, r11.w
  mul r12.w, r11.w, l(0.006944)  // r12.w <- shadow

#line 462
  iadd r13.w, r10.w, l(-1)
  add r13.w, -cb2[r13.w + 62].x, cb2[r10.w + 62].x
  movc r13.w, r9.x, r13.w, cb2[r10.w + 62].x  // r13.w <- splitSize
  add r10.w, -r8.w, cb2[r10.w + 62].x
  div r10.w, r10.w, r13.w  // r10.w <- splitDist
  lt r13.w, r10.w, l(0.200000)

#line 333
  ishl r7.w, r7.w, l(2)
  imad r7.w, r9.x, l(4), r7.w
  iadd r7.w, r7.w, l(4)
  dp4 r16.x, r6.xyzw, cb2[r7.w + 44].xyzw  // r16.x <- shadowPosition.x
  dp4 r16.y, r6.xyzw, cb2[r7.w + 45].xyzw  // r16.y <- shadowPosition.y
  dp4 r9.x, r6.xyzw, cb2[r7.w + 46].xyzw  // r9.x <- shadowPosition.z
  dp4 r6.x, r6.xyzw, cb2[r7.w + 47].xyzw  // r6.x <- shadowPosition.w
  add r16.z, r9.x, -cb2[60].x  // r16.z <- shadowPosition.z
  div r6.xyz, r16.xyzx, r6.xxxx  // r6.x <- shadowPosition.x; r6.y <- shadowPosition.y; r6.z <- shadowPosition.z

#line 269
  mad r6.xy, r6.xyxx, cb2[43].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r16.xy, r6.xyxx  // r16.x <- base_uv.x; r16.y <- base_uv.y
  add r6.xy, r6.xyxx, -r16.xyxx  // r6.x <- s; r6.y <- t
  add r16.xy, r16.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r16.xy, r16.xyxx, cb2[43].zwzz

#line 282
  mad r16.zw, -r6.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r16.w <- uw0; r16.z <- vw0
  mad r17.xy, r6.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r17.x <- uw2; r17.y <- vw2
  mad r17.zw, -r6.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r17.zw, r17.zzzw, r16.wwwz
  add r18.xy, r6.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r6.xy, r6.xyxx, r17.xyxx
  add r19.xw, r17.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r19.x <- u0; r19.w <- v0
  mul r19.yz, r18.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r19.z <- u1; r19.y <- v1
  add r18.xy, r6.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r18.x <- u2; r18.y <- v2
  mad r20.xyzw, r19.xwzw, cb2[43].zwzw, r16.xyxy

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r6.x, r20.xyxx, t10.xxxx, s1, r6.z  // r6.x <- <SampleTextureAndCompare_id170 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r6.y, r20.zwzz, t10.xxxx, s1, r6.z  // r6.y <- <SampleTextureAndCompare_id170 return value>

#line 293
  mov r18.zw, r19.wwwy
  mad r20.xyzw, r18.xzxw, cb2[43].zwzw, r16.xyxy

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r7.w, r20.xyxx, t10.xxxx, s1, r6.z  // r7.w <- <SampleTextureAndCompare_id170 return value>

#line 292
  mad r21.xyzw, r19.xyzy, cb2[43].zwzw, r16.xyxy

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r9.x, r21.xyxx, t10.xxxx, s1, r6.z  // r9.x <- <SampleTextureAndCompare_id170 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r14.w, r21.zwzz, t10.xxxx, s1, r6.z  // r14.w <- <SampleTextureAndCompare_id170 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r15.w, r20.zwzz, t10.xxxx, s1, r6.z  // r15.w <- <SampleTextureAndCompare_id170 return value>

#line 294
  mov r19.y, r18.y
  mad r19.xyzw, r19.xyzy, cb2[43].zwzw, r16.xyxy

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r17.z, r19.xyxx, t10.xxxx, s1, r6.z  // r17.z <- <SampleTextureAndCompare_id170 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r17.w, r19.zwzz, t10.xxxx, s1, r6.z  // r17.w <- <SampleTextureAndCompare_id170 return value>

#line 296
  mad r16.xy, r18.xyxx, cb2[43].zwzz, r16.xyxx

#line 249
  sample_c_indexable(texture2d)(float,float,float,float) r6.z, r16.xyxx, t10.xxxx, s1, r6.z  // r6.z <- <SampleTextureAndCompare_id170 return value>

#line 464
  if_nz r13.w

#line 467
    if_z r9.z
      mul_sat r9.z, r10.w, l(5.000000)
      mad r10.w, r9.z, l(-2.000000), l(3.000000)
      mul r9.z, r9.z, r9.z
      mul r9.z, r9.z, r10.w  // r9.z <- lerpAmt

#line 288
      mul r10.w, r16.z, r16.w
      mul r6.y, r16.z, r6.y
      mul r6.y, r6.y, l(7.000000)
      mad r6.x, r10.w, r6.x, r6.y  // r6.x <- shadow

#line 294
      mul r16.xy, r16.zwzz, r17.xyxx

#line 290
      mad r6.x, r16.x, r7.w, r6.x
      mul r6.y, r9.x, r16.w
      mad r6.x, r6.y, l(7.000000), r6.x
      mad r6.x, r14.w, l(49.000000), r6.x
      mul r6.y, r15.w, r17.x
      mad r6.x, r6.y, l(7.000000), r6.x
      mad r6.x, r16.y, r17.z, r6.x
      mul r6.y, r17.y, r17.w
      mad r6.x, r6.y, l(7.000000), r6.x
      mul r6.y, r17.y, r17.x
      mad r6.x, r6.y, r6.z, r6.x
      mul r6.x, r6.x, l(0.006944)

#line 473
      mad r6.y, r11.w, l(0.006944), -r6.x
      mad r12.w, r9.z, r6.y, r6.x
    endif 
  endif   // r12.w <- shadow

#line 609
  mul r6.xyz, r12.wwww, cb2[42].xyzx
  mul r6.xyz, r3.wwww, r6.xyzx
  mul r6.xyz, r2.yyyy, r6.xyzx  // r6.x <- streams.lightColorNdotL_id40.x; r6.y <- streams.lightColorNdotL_id40.y; r6.z <- streams.lightColorNdotL_id40.z

#line 674
  add r16.xyz, r10.xyzx, -cb2[41].xyzx
  dp3 r7.w, r16.xyzx, r16.xyzx
  rsq r7.w, r7.w
  mul r16.xyz, r7.wwww, r16.xyzx  // r16.x <- streams.H_id68.x; r16.y <- streams.H_id68.y; r16.z <- streams.H_id68.z
  dp3 r7.w, r14.xyzx, r16.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotH_id69
  dp3 r9.x, -cb2[41].xyzx, r16.xyzx
  max r9.x, r9.x, l(0.000100)  // r9.x <- streams.LdotH_id70

#line 670
  mul r16.xyz, r6.xyzx, r11.xyzx

#line 884
  mad r16.xyz, r16.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r15.xyzx  // r16.x <- directLightingContribution.x; r16.y <- directLightingContribution.y; r16.z <- directLightingContribution.z

#line 322
  add r17.xyz, -r13.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r9.x, -r9.x, l(1.000000)
  mul r9.z, r9.x, r9.x
  mul r9.z, r9.z, r9.z
  mul r9.x, r9.z, r9.x
  mad r17.xyz, r17.xyzx, r9.xxxx, r13.xyzx  // r17.x <- <FresnelSchlick_id442 return value>.x; r17.y <- <FresnelSchlick_id442 return value>.y; r17.z <- <FresnelSchlick_id442 return value>.z

#line 317
  mul r9.x, r9.y, l(0.500000)  // r9.x <- k
  mad r9.z, -r9.y, l(0.500000), l(1.000000)
  mad r10.w, r3.w, r9.z, r9.x
  div r10.w, r3.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id460 return value>
  mad r9.x, r9.w, r9.z, r9.x
  div r9.x, r9.w, r9.x  // r9.x <- <VisibilityhSchlickGGX_id460 return value>

#line 369
  mul r9.x, r9.x, r10.w
  mul r3.w, r9.w, r3.w
  div r3.w, r9.x, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id462 return value>

#line 364
  mul r9.x, r9.y, r9.y  // r9.x <- alphaR2
  mul r7.w, r7.w, r7.w
  mad r9.z, r9.y, r9.y, l(-1.000000)
  mad r7.w, r7.w, r9.z, l(1.000000)
  max r7.w, r7.w, l(0.000100)
  mul r7.w, r7.w, r7.w
  mul r7.w, r7.w, l(3.141593)
  div r7.w, r9.x, r7.w  // r7.w <- <NormalDistributionGGX_id476 return value>

#line 664
  mul r17.xyz, r3.wwww, r17.xyzx
  mul r17.xyz, r7.wwww, r17.xyzx
  mul r6.xyz, r6.xyzx, r17.xyzx

#line 888
  mad r15.xyz, r6.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r16.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 874
  iadd r2.z, r2.z, l(1)

#line 890
endloop 

#line 600
mul r2.xyz, r1.wwww, cb2[66].xyzx  // r2.x <- lightColor.x; r2.y <- lightColor.y; r2.z <- lightColor.z

#line 419
add r3.w, -r5.w, l(1.000000)  // r3.w <- x

#line 427
mul r4.w, r3.w, r3.w

#line 435
mul r6.x, r4.w, l(1.895000)

#line 427
mad r6.x, r3.w, l(-0.168800), r6.x
mad r6.y, r2.w, l(-4.853000), l(0.990300)
mul r6.z, r2.w, r2.w
mad r6.y, r6.z, l(8.404000), r6.y
mul r6.w, r2.w, r6.z
mad r6.y, r6.w, l(-5.069000), r6.y
min_sat r6.x, r6.y, r6.x  // r6.x <- bias

#line 435
mad r6.y, r3.w, l(1.699000), l(0.604500)
mad r6.y, r2.w, l(-0.522800), r6.y
mad r6.y, r4.w, l(-3.603000), r6.y
mul r2.w, r2.w, r3.w
mad r2.w, r2.w, l(1.404000), r6.y
mad r2.w, r6.z, l(0.193900), r2.w
mul r3.w, r3.w, r4.w
mad_sat r2.w, r3.w, l(2.661000), r2.w  // r2.w <- delta
add r2.w, -r6.x, r2.w  // r2.w <- scale
mul_sat r3.w, r3.y, l(50.000000)
mul r3.w, r3.w, r6.x  // r3.w <- bias
mad r3.xyz, r3.xyzx, r2.wwww, r3.wwww  // r3.x <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id477 return value>.x; r3.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id477 return value>.y; r3.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id477 return value>.z

#line 591
mul r6.xyz, r2.xyzx, r3.xyzx  // r6.x <- <ComputeEnvironmentLightContribution_id879 return value>.x; r6.y <- <ComputeEnvironmentLightContribution_id879 return value>.y; r6.z <- <ComputeEnvironmentLightContribution_id879 return value>.z

#line 902
mad r2.xyz, r4.xyzx, r2.xyzx, r6.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 580
dp3 r2.w, r1.xyzx, cb2[76].xyzx  // r2.w <- sampleDirection.x
dp3 r3.w, r1.xyzx, cb2[77].xyzx  // r3.w <- sampleDirection.y
dp3 r4.w, r1.xyzx, cb2[78].xyzx  // r4.w <- sampleDirection.z

#line 398
mul r6.x, r3.w, r3.w  // r6.x <- y2
mul r6.y, r4.w, r4.w  // r6.y <- z2

#line 403
mad r8.xyz, cb2[68].xyzx, r3.wwww, cb2[67].xyzx  // r8.x <- color.x; r8.y <- color.y; r8.z <- color.z
mad r8.xyz, cb2[69].xyzx, -r4.wwww, r8.xyzx
mad r8.xyz, cb2[70].xyzx, r2.wwww, r8.xyzx

#line 408
mul r9.xyz, r3.wwww, cb2[71].xyzx
mad r8.xyz, r9.xyzx, r2.wwww, r8.xyzx
mul r9.xyz, r3.wwww, cb2[72].xyzx
mad r8.xyz, r9.xyzx, -r4.wwww, r8.xyzx
mad r3.w, r6.y, l(3.000000), l(-1.000000)
mad r6.yzw, cb2[73].xxyz, r3.wwww, r8.xxyz  // r6.y <- color.x; r6.z <- color.y; r6.w <- color.z
mul r8.xyz, r2.wwww, cb2[74].xyzx
mad r6.yzw, r8.xxyz, -r4.wwww, r6.yyzw
mad r2.w, r2.w, r2.w, -r6.x
mad r6.xyz, cb2[75].xyzx, r2.wwww, r6.yzwy  // r6.x <- color.x; r6.y <- color.y; r6.z <- color.z

#line 582
mul r6.xyz, r6.xyzx, cb2[80].xxxx
mul r6.xyz, r1.wwww, r6.xyzx  // r6.x <- streams.envLightDiffuseColor_id41.x; r6.y <- streams.envLightDiffuseColor_id41.y; r6.z <- streams.envLightDiffuseColor_id41.z
dp3 r2.w, -r0.xyzx, r1.xyzx
add r2.w, r2.w, r2.w
mad r0.xyz, r1.xyzx, -r2.wwww, -r0.xyzx  // r0.x <- sampleDirection.x; r0.y <- sampleDirection.y; r0.z <- sampleDirection.z
dp3 r1.x, r0.xyzx, cb2[76].xyzx  // r1.x <- sampleDirection.x
dp3 r1.y, r0.xyzx, cb2[77].xyzx  // r1.y <- sampleDirection.y
dp3 r0.x, r0.xyzx, cb2[78].xyzx  // r0.x <- sampleDirection.z
mov r1.z, -r0.x  // r1.z <- sampleDirection.z

#line 389
sqrt r0.x, r5.w
mul r0.x, r0.x, cb2[75].w  // r0.x <- mipLevel
sample_l_indexable(texturecube)(float,float,float,float) r0.xyz, r1.xyzx, t11.xyzw, s0, r0.x  // r0.x <- <Compute_id541 return value>.x; r0.y <- <Compute_id541 return value>.y; r0.z <- <Compute_id541 return value>.z

#line 586
mul r0.xyz, r0.xyzx, cb2[80].xxxx
mul r0.xyz, r1.wwww, r0.xyzx  // r0.x <- streams.envLightSpecularColor_id42.x; r0.y <- streams.envLightSpecularColor_id42.y; r0.z <- streams.envLightSpecularColor_id42.z

#line 910
mad r1.xyz, r4.xyzx, r6.xyzx, r2.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 914
mad r0.xyz, r3.xyzx, r0.xyzx, r1.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 917
mad r0.xyz, r15.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx  // r0.x <- streams.shadingColor_id66.x; r0.y <- streams.shadingColor_id66.y; r0.z <- streams.shadingColor_id66.z

#line 788
mad r0.xyz, r7.xyzx, cb1[17].xxxx, r0.xyzx  // r0.x <- streams.shadingColor_id66.x; r0.y <- streams.shadingColor_id66.y; r0.z <- streams.shadingColor_id66.z

#line 1184
add r0.xyz, -r5.xyzx, r0.xyzx
mad o0.xyz, r0.wwww, r0.xyzx, r5.xyzx

#line 1550
mov o0.w, cb1[8].w
ret 
// Approximately 1080 instruction slots used
***************************
*************************/
const static uint ClusterSize2_id82 = 64;
const static int TMaxLightCount_id95 = 8;
const static int TMaxLightCount_id98 = 1;
const static int TCascadeCountBase_id161 = 4;
const static int TLightCountBase_id162 = 1;
const static int TCascadeCount_id166 = 4;
const static int TLightCount_id167 = 1;
const static bool TBlendCascades_id168 = true;
const static bool TDepthRangeAuto_id169 = true;
const static bool TCascadeDebug_id170 = false;
const static int TFilterSize_id172 = 5;
const static int TOrder_id175 = 3;
const static bool TIsEnergyConservative_id219 = false;
static const float PI_id221 = 3.14159265358979323846;
const static bool TIsNormalXY1_id239 = true;
const static bool TScaleAndBias_id240 = true;
const static bool TInvertY_id241 = false;
const static bool TInvert_id244 = false;
const static bool TUseAlphaFromEmissive_id284 = false;
SamplerState LinearSampler_id133 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id135 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
Texture2D Texture_id185;
SamplerState Sampler_id186;
Texture2D Texture_id204;
Texture2D Texture_id228;
Texture2D Texture_id235;
Texture2D Texture_id250;
Texture2D Texture_id263;
Texture3D<uint2> LightClusters_id85;
Buffer<uint> LightIndices_id86;
Buffer<float4> PointLights_id90;
Buffer<float4> SpotLights_id93;
Texture2D ShadowMapTexture_id100;
TextureCube CubeMap_id178;
struct PS_STREAMS 
{
    float3 meshNormal_id14;
    float4 meshTangent_id15;
    float4 PositionWS_id19;
    float2 TexCoord_id151;
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
    float2 TexCoord_id151;
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
    float2 TexCoord_id151 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    float3 meshNormal_id14 : NORMAL;
    float4 meshTangent_id15 : TANGENT;
    float2 TexCoord_id151 : TEXCOORD0;
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
    float4 constantColor_id183;
    float2 scale_id188;
    float2 offset_id189;
    float constantFloat_id194;
    float4 constantColor_id200;
    float constantFloat_id202;
    float2 scale_id206;
    float2 offset_id207;
    float constantFloat_id209;
    float constantFloat_id211;
    float constantFloat_id213;
    float constantFloat_id215;
    float2 scale_id230;
    float2 offset_id231;
    float4 constantColor_id233;
    float2 scale_id237;
    float2 offset_id238;
    float constantFloat_id243;
    float4 constantColor_id246;
    float constantFloat_id248;
    float2 scale_id252;
    float2 offset_id253;
    float constantFloat_id255;
    float constantFloat_id257;
    float constantFloat_id259;
    float constantFloat_id261;
    float2 scale_id265;
    float2 offset_id266;
    float4 constantColor_id267;
    float constantFloat_id271;
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
    int LightCount_id97;
    DirectionalLightData Lights_id99[TMaxLightCount_id98];
    float2 ShadowMapTextureSize_id101;
    float2 ShadowMapTextureTexelSize_id102;
    float4x4 WorldToShadowCascadeUV_id163[TCascadeCountBase_id161 * TLightCountBase_id162];
    float DepthBiases_id164[TLightCountBase_id162];
    float OffsetScales_id165[TLightCountBase_id162];
    float CascadeDepthSplits_id171[TCascadeCount_id166 * TLightCount_id167];
    float Bias_id173;
    float3 AmbientLight_id174;
    float3 SphericalColors_id176[TOrder_id175 * TOrder_id175];
    float MipCount_id177;
    float4x4 SkyMatrix_id179;
    float Intensity_id180;
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
float SampleTextureAndCompare_id170(float2 position, float positionDepth)
{
    return ShadowMapTexture_id100.SampleCmp(LinearClampCompareLessEqualSampler_id135, position, positionDepth);
}
float SmoothDistanceAttenuation_id150(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id142(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float FilterShadow_id166(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 uv = position * ShadowMapTextureSize_id101;
    float2 base_uv;
    base_uv.x = floor(uv.x + 0.5);
    base_uv.y = floor(uv.y + 0.5);
    float s = (uv.x + 0.5 - base_uv.x);
    float t = (uv.y + 0.5 - base_uv.y);
    base_uv -= float2(0.5, 0.5);
    base_uv *= ShadowMapTextureTexelSize_id102;

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
        shadow += uw0 * vw0 * SampleTextureAndCompare_id170(base_uv + float2(u0, v0) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow += uw1 * vw0 * SampleTextureAndCompare_id170(base_uv + float2(u1, v0) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow += uw2 * vw0 * SampleTextureAndCompare_id170(base_uv + float2(u2, v0) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow += uw0 * vw1 * SampleTextureAndCompare_id170(base_uv + float2(u0, v1) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow += uw1 * vw1 * SampleTextureAndCompare_id170(base_uv + float2(u1, v1) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow += uw2 * vw1 * SampleTextureAndCompare_id170(base_uv + float2(u2, v1) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow += uw0 * vw2 * SampleTextureAndCompare_id170(base_uv + float2(u0, v2) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow += uw1 * vw2 * SampleTextureAndCompare_id170(base_uv + float2(u1, v2) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow += uw2 * vw2 * SampleTextureAndCompare_id170(base_uv + float2(u2, v2) * ShadowMapTextureTexelSize_id102, positionDepth);
        shadow /= 144.0f;
    }
    return shadow;
}
float GetAngleAttenuation_id152(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id151(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id150(d2, lightInvSquareRadius);
    return attenuation;
}
float VisibilityhSchlickGGX_id460(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id442(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float GetDistanceAttenuation_id143(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id142(d2, lightInvSquareRadius);
    return attenuation;
}
float ComputeShadowFromCascade_id169(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1), WorldToShadowCascadeUV_id163[cascadeIndex + lightIndex * TCascadeCountBase_id161]);
    shadowPosition.z -= DepthBiases_id164[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id166(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id168(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id102.x * offsetScale * normalOffsetScale * normal;
}
void ComputeShadow_id167(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void ProcessLight_id153(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = light.AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -light.DirectionWS;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id151(lightVector, lightInvSquareRadius);
    attenuation *= GetAngleAttenuation_id152(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightDirection;
}
float NormalDistributionGGX_id476(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    return alphaR2 / (PI_id221 * pow(max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001), 2.0f));
}
float VisibilitySmithSchlickGGX_id462(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id460(alphaR, nDotL) * VisibilityhSchlickGGX_id460(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id448(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id442(f0, 1.0f, lOrVDotH);
}
void ProcessLight_id145(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id143(lightVector, lightInvSquareRadius);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
float4 Compute_id541(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id63;
    float mipLevel = sqrt(alpha) * MipCount_id177;
    return CubeMap_id178.SampleLevel(LinearSampler_id133, direction, mipLevel);
}
float4 Compute_id536(float3 direction)
{
    float x = direction.x;
    float y = direction.y;
    float z = direction.z;
    float x2 = x * x;
    float y2 = y * y;
    float z2 = z * z;
    float3 color = SphericalColors_id176[0];

    {
        color += SphericalColors_id176[1] * y;
        color += SphericalColors_id176[2] * z;
        color += SphericalColors_id176[3] * x;

        {
            color += SphericalColors_id176[4] * y * x;
            color += SphericalColors_id176[5] * y * z;
            color += SphericalColors_id176[6] * (3.0 * z2 - 1.0);
            color += SphericalColors_id176[7] * x * z;
            color += SphericalColors_id176[8] * (x2 - y2);
        }
    }
    return float4(color, 1);
}
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id477(float3 specularColor, float alphaR, float nDotV)
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
void ComputeShadow_id161(inout PS_STREAMS streams, int lightIndex)
{
    ComputeShadow_id167(streams, lightIndex);
    int cascadeIndexBase = lightIndex * TCascadeCount_id166;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id166 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id20 > CascadeDepthSplits_id171[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float shadow = 1.0;
    float3 shadowPosition = streams.PositionWS_id19.xyz;
    shadowPosition += GetShadowPositionOffset_id168(OffsetScales_id165[lightIndex], streams.NdotL_id43, streams.normalWS_id16);
    if (cascadeIndex < TCascadeCount_id166)
    {
        shadow = ComputeShadowFromCascade_id169(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id171[cascadeIndexBase + cascadeIndex];
        float splitSize = cascadeIndex == 0 ? nextSplit : nextSplit - CascadeDepthSplits_id171[cascadeIndexBase + cascadeIndex - 1];
        float splitDist = (nextSplit - streams.DepthVS_id20) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id166 - 1)
            {
            }
            else if (TBlendCascades_id168)
            {
                float nextShadow = ComputeShadowFromCascade_id169(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }

    {
        streams.shadowColor_id76 = shadow;
    }
}
void PrepareDirectLightCore_id160(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id39 = Lights_id99[lightIndex].Color;
    streams.lightDirectionWS_id38 = -Lights_id99[lightIndex].DirectionWS;
}
void ComputeShadow_id157(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id156(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id39 = Lights_id96[lightIndex].Color;
    streams.lightDirectionWS_id38 = -Lights_id96[lightIndex].DirectionWS;
}
void ComputeShadow_id149(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id148(inout PS_STREAMS streams, int lightIndexIgnored)
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
    ProcessLight_id153(streams, spotLight);
}
float Compute_id800(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id476(streams.alphaRoughness_id63, streams.NdotH_id69);
}
float Compute_id771(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id462(streams.alphaRoughness_id63, streams.NdotL_id43, streams.NdotV_id65);
}
float3 Compute_id742(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id448(f0, streams.LdotH_id70);
}
void ComputeShadow_id141(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id140(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id86.Load(streams.lightIndex_id84);
    streams.lightIndex_id84++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id90.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id90.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id145(streams, pointLight);
}
void PrepareLightData_id144(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id79.y / (projectedDepth - ZProjection_id79.x);
    int2 shadingPosition = int2(streams.ShadingPosition_id0.xy);
    int slice = int(max(log2(depth * ClusterDepthScale_id87 + ClusterDepthBias_id88), 0));
    streams.lightData_id83 = LightClusters_id85.Load(int4(shadingPosition / ClusterSize2_id82, slice, 0));
    streams.lightIndex_id84 = streams.lightData_id83.x;
}
float GetFilterSquareRoughnessAdjustment_id414(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
float4 Compute_id736()
{
    return constantColor_id267;
}
float4 Compute_id734(inout PS_STREAMS streams)
{
    return Texture_id263.Sample(Sampler_id186, streams.TexCoord_id151 * scale_id265 + offset_id266).rgba;
}
float VisibilityhSchlickGGX_id304(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id286(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
void PrepareEnvironmentLight_id553(inout PS_STREAMS streams)
{
    float ambientAccessibility = streams.matAmbientOcclusion_id51;
    float3 sampleDirection = mul(streams.normalWS_id16, (float3x3)SkyMatrix_id179);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id41 = Compute_id536(sampleDirection).rgb * Intensity_id180 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id58.x;
    sampleDirection = reflect(-streams.viewWS_id61, streams.normalWS_id16);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id179);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id42 = Compute_id541(streams, sampleDirection).rgb * Intensity_id180 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeEnvironmentLightContribution_id879(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id477(specularColor, streams.alphaRoughness_id63, streams.NdotV_id65) * streams.envLightSpecularColor_id42;
}
float3 ComputeEnvironmentLightContribution_id830(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id547(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id174 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareDirectLight_id530(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id160(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id161(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id531()
{
    return LightCount_id97;
}
int GetMaxLightCount_id532()
{
    return TMaxLightCount_id98;
}
void PrepareDirectLights_id528()
{
}
void PrepareDirectLight_id522(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id156(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id157(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id523()
{
    return LightCount_id94;
}
int GetMaxLightCount_id524()
{
    return TMaxLightCount_id95;
}
void PrepareDirectLights_id520()
{
}
void PrepareDirectLight_id513(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id148(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id149(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id516(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
int GetMaxLightCount_id515(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
void PrepareDirectLights_id511()
{
}
float3 ComputeDirectLightContribution_id878(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    float3 fresnel = Compute_id742(streams, specularColor);
    float geometricShadowing = Compute_id771(streams);
    float normalDistribution = Compute_id800(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeDirectLightContribution_id829(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor / PI_id221 * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.x;
}
void PrepareMaterialPerDirectLight_id26(inout PS_STREAMS streams)
{
    streams.H_id68 = normalize(streams.viewWS_id61 + streams.lightDirectionWS_id38);
    streams.NdotH_id69 = max(dot(streams.normalWS_id16, streams.H_id68), 0.0001f);
    streams.LdotH_id70 = max(dot(streams.lightDirectionWS_id38, streams.H_id68), 0.0001f);
    streams.VdotH_id71 = streams.LdotH_id70;
}
void PrepareDirectLight_id503(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id140(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id141(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id507(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
int GetMaxLightCount_id506(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
void PrepareDirectLights_id505(inout PS_STREAMS streams)
{
    PrepareLightData_id144(streams);
}
void PrepareMaterialForLightingAndShading_id479(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id414(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id478(inout PS_STREAMS streams)
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
float4 Compute_id740()
{
    return float4(constantFloat_id271, constantFloat_id271, constantFloat_id271, constantFloat_id271);
}
float4 Compute_id739(inout PS_STREAMS streams)
{
    float4 tex1 = Compute_id734(streams);
    float4 tex2 = Compute_id736();
    float4 mix1 = tex1 * tex2;
    return mix1;
}
float4 Compute_id732()
{
    return float4(constantFloat_id261, constantFloat_id261, constantFloat_id261, constantFloat_id261);
}
float4 Compute_id730()
{
    return float4(constantFloat_id259, constantFloat_id259, constantFloat_id259, constantFloat_id259);
}
float4 Compute_id728()
{
    return float4(constantFloat_id257, constantFloat_id257, constantFloat_id257, constantFloat_id257);
}
float4 Compute_id726()
{
    return float4(constantFloat_id255, constantFloat_id255, constantFloat_id255, constantFloat_id255);
}
float4 Compute_id724(inout PS_STREAMS streams)
{
    return Texture_id250.Sample(Sampler_id186, streams.TexCoord_id151 * scale_id252 + offset_id253).r;
}
float4 Compute_id722()
{
    return float4(constantFloat_id248, constantFloat_id248, constantFloat_id248, constantFloat_id248);
}
float4 Compute_id720()
{
    return constantColor_id246;
}
float4 Compute_id718()
{
    return float4(constantFloat_id243, constantFloat_id243, constantFloat_id243, constantFloat_id243);
}
float4 Compute_id716(inout PS_STREAMS streams)
{
    return Texture_id235.Sample(Sampler_id186, streams.TexCoord_id151 * scale_id237 + offset_id238).rgba;
}
float4 Compute_id714()
{
    return constantColor_id233;
}
float NormalDistributionGGX_id320(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    return alphaR2 / (PI_id221 * pow(max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001), 2.0f));
}
float VisibilitySmithSchlickGGX_id306(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id304(alphaR, nDotL) * VisibilityhSchlickGGX_id304(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id292(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id286(f0, 1.0f, lOrVDotH);
}
void Compute_id955(inout PS_STREAMS streams)
{
    streams.shadingColor_id66 += streams.matEmissive_id56.rgb * streams.matEmissiveIntensity_id57;
}
void Compute_id954(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id12(streams, streams.matNormal_id45);
    ResetLightStream_id478(streams);
    PrepareMaterialForLightingAndShading_id479(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id505(streams);
        const int maxLightCount = GetMaxLightCount_id506(streams);
        int count = GetLightCount_id507(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id503(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id829(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id878(streams);
            }
        }
    }

    {
        PrepareDirectLights_id511();
        const int maxLightCount = GetMaxLightCount_id515(streams);
        int count = GetLightCount_id516(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id513(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id829(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id878(streams);
            }
        }
    }

    {
        PrepareDirectLights_id520();
        const int maxLightCount = GetMaxLightCount_id524();
        int count = GetLightCount_id523();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id522(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id829(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id878(streams);
            }
        }
    }

    {
        PrepareDirectLights_id528();
        const int maxLightCount = GetMaxLightCount_id532();
        int count = GetLightCount_id531();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id530(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id829(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id878(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id547(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id830(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id879(streams);
        }
    }

    {
        PrepareEnvironmentLight_id553(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id830(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id879(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id221 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id939(inout PS_STREAMS streams)
{
    streams.matEmissiveIntensity_id57 = Compute_id740().r;
}
void Compute_id934(inout PS_STREAMS streams)
{
    streams.matEmissive_id56 = Compute_id739(streams).rgba;
}
void Compute_id929(inout PS_STREAMS streams)
{
    streams.matCavitySpecular_id55 = Compute_id732().r;
}
void Compute_id924(inout PS_STREAMS streams)
{
    streams.matCavityDiffuse_id54 = Compute_id730().r;
}
void Compute_id919(inout PS_STREAMS streams)
{
    streams.matCavity_id53 = Compute_id728().r;
}
void Compute_id914(inout PS_STREAMS streams)
{
    streams.matAmbientOcclusionDirectLightingFactor_id52 = Compute_id726().r;
}
void Compute_id909(inout PS_STREAMS streams)
{
    streams.matAmbientOcclusion_id51 = Compute_id724(streams).r;
}
void Compute_id904(inout PS_STREAMS streams)
{
    streams.matSpecularIntensity_id50 = Compute_id722().r;
}
void Compute_id899(inout PS_STREAMS streams)
{
    streams.matSpecular_id49 = Compute_id720().rgb;
}
void Compute_id894(inout PS_STREAMS streams)
{
    float glossiness = Compute_id718().r;
    streams.matGlossiness_id48 = glossiness;
}
void Compute_id889(inout PS_STREAMS streams)
{
    float4 normal = Compute_id716(streams);

    {
        normal = (2.0f * normal) - 1.0f;
    }

    {
        normal.z = sqrt(max(0, 1.0f - (normal.x * normal.x + normal.y * normal.y)));
    }
    streams.matNormal_id45 = normal.xyz;
}
void Compute_id884(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id714();
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id321(float3 specularColor, float alphaR, float nDotV)
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
float Compute_id632(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id320(streams.alphaRoughness_id63, streams.NdotH_id69);
}
float Compute_id603(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id306(streams.alphaRoughness_id63, streams.NdotL_id43, streams.NdotV_id65);
}
float3 Compute_id574(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id292(f0, streams.LdotH_id70);
}
float GetFilterSquareRoughnessAdjustment_id258(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id492()
{
}
void Compute_id491(inout PS_STREAMS streams)
{

    {
        Compute_id884(streams);
    }

    {
        Compute_id889(streams);
    }

    {
        Compute_id894(streams);
    }

    {
        Compute_id899(streams);
    }

    {
        Compute_id904(streams);
    }

    {
        Compute_id909(streams);
    }

    {
        Compute_id914(streams);
    }

    {
        Compute_id919(streams);
    }

    {
        Compute_id924(streams);
    }

    {
        Compute_id929(streams);
    }

    {
        Compute_id934(streams);
    }

    {
        Compute_id939(streams);
    }

    {
        Compute_id954(streams);
    }

    {
        Compute_id955(streams);
    }
}
float4 Compute_id712(inout PS_STREAMS streams)
{
    return Texture_id228.Sample(Sampler_id186, streams.TexCoord_id151 * scale_id230 + offset_id231).a;
}
float3 ComputeEnvironmentLightContribution_id711(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id321(specularColor, streams.alphaRoughness_id63, streams.NdotV_id65) * streams.envLightSpecularColor_id42;
}
float3 ComputeEnvironmentLightContribution_id662(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
float3 ComputeDirectLightContribution_id710(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    float3 fresnel = Compute_id574(streams, specularColor);
    float geometricShadowing = Compute_id603(streams);
    float normalDistribution = Compute_id632(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeDirectLightContribution_id661(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor / PI_id221 * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.x;
}
void PrepareMaterialForLightingAndShading_id323(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id258(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id322(inout PS_STREAMS streams)
{
    streams.lightDirectionWS_id38 = 0;
    streams.lightColor_id39 = 0;
    streams.lightColorNdotL_id40 = 0;
    streams.envLightDiffuseColor_id41 = 0;
    streams.envLightSpecularColor_id42 = 0;
    streams.lightDirectAmbientOcclusion_id44 = 1.0f;
    streams.NdotL_id43 = 0;
}
float4 Compute_id572()
{
    return float4(constantFloat_id215, constantFloat_id215, constantFloat_id215, constantFloat_id215);
}
float4 Compute_id570()
{
    return float4(constantFloat_id213, constantFloat_id213, constantFloat_id213, constantFloat_id213);
}
float4 Compute_id568()
{
    return float4(constantFloat_id211, constantFloat_id211, constantFloat_id211, constantFloat_id211);
}
float4 Compute_id566()
{
    return float4(constantFloat_id209, constantFloat_id209, constantFloat_id209, constantFloat_id209);
}
float4 Compute_id564(inout PS_STREAMS streams)
{
    return Texture_id204.Sample(Sampler_id186, streams.TexCoord_id151 * scale_id206 + offset_id207).r;
}
float4 Compute_id562()
{
    return float4(constantFloat_id202, constantFloat_id202, constantFloat_id202, constantFloat_id202);
}
float4 Compute_id560()
{
    return constantColor_id200;
}
float4 Compute_id558()
{
    return float4(constantFloat_id194, constantFloat_id194, constantFloat_id194, constantFloat_id194);
}
float4 Compute_id556(inout PS_STREAMS streams)
{
    return Texture_id185.Sample(Sampler_id186, streams.TexCoord_id151 * scale_id188 + offset_id189).rgba;
}
float4 Compute_id554()
{
    return constantColor_id183;
}
void ResetStream_id495(inout PS_STREAMS streams)
{
    ResetStream_id492();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id1034(inout PS_STREAMS streams)
{
    float3 backupShadingColor = streams.shadingColor_id66;
    float blending = streams.matBlend_id37;
    streams.shadingColor_id66 = 0;
    Compute_id491(streams);
    streams.shadingColor_id66 = lerp(backupShadingColor, streams.shadingColor_id66, blending);
}
void Compute_id1029(inout PS_STREAMS streams)
{
    streams.matBlend_id37 = Compute_id712(streams).r;
}
void Compute_id1024(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id12(streams, streams.matNormal_id45);
    ResetLightStream_id322(streams);
    PrepareMaterialForLightingAndShading_id323(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id505(streams);
        const int maxLightCount = GetMaxLightCount_id506(streams);
        int count = GetLightCount_id507(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id503(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id661(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id710(streams);
            }
        }
    }

    {
        PrepareDirectLights_id511();
        const int maxLightCount = GetMaxLightCount_id515(streams);
        int count = GetLightCount_id516(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id513(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id661(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id710(streams);
            }
        }
    }

    {
        PrepareDirectLights_id520();
        const int maxLightCount = GetMaxLightCount_id524();
        int count = GetLightCount_id523();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id522(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id661(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id710(streams);
            }
        }
    }

    {
        PrepareDirectLights_id528();
        const int maxLightCount = GetMaxLightCount_id532();
        int count = GetLightCount_id531();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id530(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id661(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id710(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id547(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id662(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id711(streams);
        }
    }

    {
        PrepareEnvironmentLight_id553(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id662(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id711(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id221 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id1009(inout PS_STREAMS streams)
{
    streams.matCavitySpecular_id55 = Compute_id572().r;
}
void Compute_id1004(inout PS_STREAMS streams)
{
    streams.matCavityDiffuse_id54 = Compute_id570().r;
}
void Compute_id999(inout PS_STREAMS streams)
{
    streams.matCavity_id53 = Compute_id568().r;
}
void Compute_id994(inout PS_STREAMS streams)
{
    streams.matAmbientOcclusionDirectLightingFactor_id52 = Compute_id566().r;
}
void Compute_id989(inout PS_STREAMS streams)
{
    streams.matAmbientOcclusion_id51 = Compute_id564(streams).r;
}
void Compute_id984(inout PS_STREAMS streams)
{
    streams.matSpecularIntensity_id50 = Compute_id562().r;
}
void Compute_id979(inout PS_STREAMS streams)
{
    streams.matSpecular_id49 = Compute_id560().rgb;
}
void Compute_id974(inout PS_STREAMS streams)
{
    float glossiness = Compute_id558().r;
    streams.matGlossiness_id48 = glossiness;
}
void Compute_id969(inout PS_STREAMS streams)
{
    float4 normal = Compute_id556(streams);

    {
        normal = (2.0f * normal) - 1.0f;
    }

    {
        normal.z = sqrt(max(0, 1.0f - (normal.x * normal.x + normal.y * normal.y)));
    }
    streams.matNormal_id45 = normal.xyz;
}
void Compute_id964(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id554();
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id497(inout PS_STREAMS streams)
{
    ResetStream_id495(streams);
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
void Compute_id137(inout PS_STREAMS streams)
{

    {
        Compute_id964(streams);
    }

    {
        Compute_id969(streams);
    }

    {
        Compute_id974(streams);
    }

    {
        Compute_id979(streams);
    }

    {
        Compute_id984(streams);
    }

    {
        Compute_id989(streams);
    }

    {
        Compute_id994(streams);
    }

    {
        Compute_id999(streams);
    }

    {
        Compute_id1004(streams);
    }

    {
        Compute_id1009(streams);
    }

    {
        Compute_id1024(streams);
    }

    {
        Compute_id1029(streams);
    }

    {
        Compute_id1034(streams);
    }
}
void ResetStream_id136(inout PS_STREAMS streams)
{
    ResetStream_id497(streams);
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
    ResetStream_id136(streams);
    Compute_id137(streams);
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
    streams.TexCoord_id151 = __input__.TexCoord_id151;
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
    streams.TexCoord_id151 = __input__.TexCoord_id151;
    VSMain_id8(streams);
    GenerateNormal_VS_id15(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id20 = streams.DepthVS_id20;
    __output__.meshNormal_id14 = streams.meshNormal_id14;
    __output__.meshTangent_id15 = streams.meshTangent_id15;
    __output__.TexCoord_id151 = streams.TexCoord_id151;
    return __output__;
}
