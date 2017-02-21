/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceNormalMap<false,true,true> [{normalMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.NormalMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = ComputeColorConstantFloatLink<Material.GlossinessValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecular,rgb> [{computeColorSource = ComputeColorConstantColorLink<Material.SpecularValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecularIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.SpecularIntensityValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAmbientOcclusion,r> [{computeColorSource = ComputeColorTextureScaledOffsetDynamicSampler<Material.AmbientOcclusionMap,TEXCOORD0,Material.Sampler.i0,r,Material.TextureScale.i1,Material.TextureOffset.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAmbientOcclusionDirectLightingFactor,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.AmbientOcclusionDirectLightingFactorValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavityValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavityDiffuse,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavityDiffuseValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavitySpecular,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavitySpecularValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}], mixin MaterialSurfaceSetStreamFromComputeColor<matBlend,r> [{computeColorSource = ComputeColorTextureScaledOffsetDynamicSampler<Material.BlendMap,TEXCOORD0,Material.Sampler.i0,a,Material.TextureScale.i5,Material.TextureOffset.i5>}], mixin MaterialSurfaceShadingBlend [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue.i1>}], mixin MaterialSurfaceNormalMap<false,true,true> [{normalMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.NormalMap.i1,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale.i2,Material.TextureOffset.i2>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = ComputeColorConstantFloatLink<Material.GlossinessValue.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecular,rgb> [{computeColorSource = ComputeColorConstantColorLink<Material.SpecularValue.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecularIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.SpecularIntensityValue.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAmbientOcclusion,r> [{computeColorSource = ComputeColorTextureScaledOffsetDynamicSampler<Material.AmbientOcclusionMap.i1,TEXCOORD0,Material.Sampler.i0,r,Material.TextureScale.i3,Material.TextureOffset.i3>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAmbientOcclusionDirectLightingFactor,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.AmbientOcclusionDirectLightingFactorValue.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavityValue.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavityDiffuse,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavityDiffuseValue.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavitySpecular,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavitySpecularValue.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = mixin ComputeColorMultiply [{color1 = ComputeColorTextureScaledOffsetDynamicSampler<Material.EmissiveMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale.i4,Material.TextureOffset.i4>}, {color2 = ComputeColorConstantColorLink<Material.EmissiveValue>}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.EmissiveIntensity>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}], MaterialSurfaceEmissiveShading<false>]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Material.HasNormalMap: True
@P Lighting.DirectLightGroups: 
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
cbuffer PerMaterial [Size: 288]
@C    constantColor_id78 => Material.DiffuseValue
@C    scale_id83 => Material.TextureScale
@C    offset_id84 => Material.TextureOffset
@C    constantFloat_id89 => Material.GlossinessValue
@C    constantColor_id153 => Material.SpecularValue
@C    constantFloat_id155 => Material.SpecularIntensityValue
@C    scale_id159 => Material.TextureScale.i1
@C    offset_id160 => Material.TextureOffset.i1
@C    constantFloat_id162 => Material.AmbientOcclusionDirectLightingFactorValue
@C    constantFloat_id164 => Material.CavityValue
@C    constantFloat_id166 => Material.CavityDiffuseValue
@C    constantFloat_id168 => Material.CavitySpecularValue
@C    scale_id183 => Material.TextureScale.i5
@C    offset_id184 => Material.TextureOffset.i5
@C    constantColor_id186 => Material.DiffuseValue.i1
@C    scale_id190 => Material.TextureScale.i2
@C    offset_id191 => Material.TextureOffset.i2
@C    constantFloat_id196 => Material.GlossinessValue.i1
@C    constantColor_id199 => Material.SpecularValue.i1
@C    constantFloat_id201 => Material.SpecularIntensityValue.i1
@C    scale_id205 => Material.TextureScale.i3
@C    offset_id206 => Material.TextureOffset.i3
@C    constantFloat_id208 => Material.AmbientOcclusionDirectLightingFactorValue.i1
@C    constantFloat_id210 => Material.CavityValue.i1
@C    constantFloat_id212 => Material.CavityDiffuseValue.i1
@C    constantFloat_id214 => Material.CavitySpecularValue.i1
@C    scale_id218 => Material.TextureScale.i4
@C    offset_id219 => Material.TextureOffset.i4
@C    constantColor_id220 => Material.EmissiveValue
@C    constantFloat_id224 => Material.EmissiveIntensity
cbuffer PerView [Size: 368]
@C    View_id22 => Transformation.View
@C    ViewInverse_id23 => Transformation.ViewInverse
@C    Projection_id24 => Transformation.Projection
@C    ProjectionInverse_id25 => Transformation.ProjectionInverse
@C    ViewProjection_id26 => Transformation.ViewProjection
@C    ProjScreenRay_id27 => Transformation.ProjScreenRay
@C    Eye_id28 => Transformation.Eye
@C    AmbientLight_id77 => LightSimpleAmbient.AmbientLight.environmentLights[0]
***************************
******  Resources    ******
***************************
@R    Texture_id80 => Material.NormalMap [Stage: None, Slot: (-1--1)]
@R    Texture_id80 => Material.NormalMap [Stage: None, Slot: (-1--1)]
@R    Sampler_id81 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Sampler_id81 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Texture_id157 => Material.AmbientOcclusionMap [Stage: None, Slot: (-1--1)]
@R    Texture_id157 => Material.AmbientOcclusionMap [Stage: None, Slot: (-1--1)]
@R    Texture_id181 => Material.BlendMap [Stage: None, Slot: (-1--1)]
@R    Texture_id181 => Material.BlendMap [Stage: None, Slot: (-1--1)]
@R    Texture_id188 => Material.NormalMap.i1 [Stage: None, Slot: (-1--1)]
@R    Texture_id188 => Material.NormalMap.i1 [Stage: None, Slot: (-1--1)]
@R    Texture_id203 => Material.AmbientOcclusionMap.i1 [Stage: None, Slot: (-1--1)]
@R    Texture_id203 => Material.AmbientOcclusionMap.i1 [Stage: None, Slot: (-1--1)]
@R    Texture_id216 => Material.EmissiveMap [Stage: None, Slot: (-1--1)]
@R    Texture_id216 => Material.EmissiveMap [Stage: None, Slot: (-1--1)]
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    Sampler_id81 => Material.Sampler.i0 [Stage: Pixel, Slot: (0-0)]
@R    Texture_id80 => Material.NormalMap [Stage: Pixel, Slot: (0-0)]
@R    Texture_id157 => Material.AmbientOcclusionMap [Stage: Pixel, Slot: (1-1)]
@R    Texture_id181 => Material.BlendMap [Stage: Pixel, Slot: (2-2)]
@R    Texture_id188 => Material.NormalMap.i1 [Stage: Pixel, Slot: (3-3)]
@R    Texture_id203 => Material.AmbientOcclusionMap.i1 [Stage: Pixel, Slot: (4-4)]
@R    Texture_id216 => Material.EmissiveMap [Stage: Pixel, Slot: (5-5)]
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
@S    LightSimpleAmbient => 6d68fc78fb5b5ad232c5ec44f6d90e31
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
@S    Texturing => a9d9ee1fb9a68af7ce6b12291686faea
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
@G    Vertex => 292f44d4901bb65d45c6e29b281034e6
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
//   float3 AmbientLight_id77;          // Offset:  352 Size:    12 [unused]
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
// NORMAL                   0   xyz         2     NONE   float   xyz 
// TANGENT                  0   xyzw        3     NONE   float   xyzw
// TEXCOORD                 0   xy          4     NONE   float   xy  
//
//
// Constant buffer to DX9 shader constant mappings:
//
// Target Reg Buffer  Start Reg # of Regs        Data Conversion
// ---------- ------- --------- --------- ----------------------
// c1         cb0             0         4  ( FLT, FLT, FLT, FLT)
// c5         cb1            16         4  ( FLT, FLT, FLT, FLT)
//
//
// Runtime generated constant mappings:
//
// Target Reg                               Constant Description
// ---------- --------------------------------------------------
// c0                              Vertex Shader position offset
//
//
// Level9 shader bytecode:
//
    vs_2_x
    dcl_texcoord v0  // __input__<0,1,2,3>
    dcl_texcoord1 v1  // __input__<4,5,6>
    dcl_texcoord2 v2  // __input__<7,8,9,10>
    dcl_texcoord3 v3  // __input__<11,12>

#line 744 "C:\_Rapporter-Xenko3D\PhysicsSample\PhysicsSample\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_a09c1bbe9093084f9c75eefcefaee945.hlsl"
    dp4 r0.x, v0, c1  // PreTransformPosition_id13::streams<21>
    dp4 r0.y, v0, c2  // PreTransformPosition_id13::streams<22>
    dp4 r0.z, v0, c3  // PreTransformPosition_id13::streams<23>
    dp4 r0.w, v0, c4  // PreTransformPosition_id13::streams<24>

#line 734
    dp4 oPos.z, r0, c7  // ::VSMain<6>
    dp4 r1.x, r0, c5  // PostTransformPosition_id14::streams<25>
    dp4 r1.y, r0, c6  // PostTransformPosition_id14::streams<26>
    dp4 r1.z, r0, c8  // PostTransformPosition_id14::streams<28>

#line 744
    mov oT0, r0  // ::VSMain<0,1,2,3>

#line 807
    mad oPos.xy, r1.z, c0, r1  // ::VSMain<4,5>
    mov oPos.w, r1.z  // ::VSMain<7>

#line 811
    mov oT1.xyz, v1  // ::VSMain<8,9,10>
    mov oT2, v2  // ::VSMain<11,12,13,14>
    mov oT3.xy, v3  // ::VSMain<15,16>

// approximately 14 instruction slots used
vs_4_0
dcl_constantbuffer cb0[4], immediateIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input v2.xyzw
dcl_input v3.xy
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_output o4.xy
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.meshNormal_id14.x; v1.y <- __input__.meshNormal_id14.y; v1.z <- __input__.meshNormal_id14.z; 
//   v2.x <- __input__.meshTangent_id15.x; v2.y <- __input__.meshTangent_id15.y; v2.z <- __input__.meshTangent_id15.z; v2.w <- __input__.meshTangent_id15.w; 
//   v3.x <- __input__.TexCoord_id82.x; v3.y <- __input__.TexCoord_id82.y; 
//   o4.x <- <VSMain return value>.TexCoord_id82.x; o4.y <- <VSMain return value>.TexCoord_id82.y; 
//   o3.x <- <VSMain return value>.meshTangent_id15.x; o3.y <- <VSMain return value>.meshTangent_id15.y; o3.z <- <VSMain return value>.meshTangent_id15.z; o3.w <- <VSMain return value>.meshTangent_id15.w; 
//   o2.x <- <VSMain return value>.meshNormal_id14.x; o2.y <- <VSMain return value>.meshNormal_id14.y; o2.z <- <VSMain return value>.meshNormal_id14.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 744 "C:\_Rapporter-Xenko3D\PhysicsSample\PhysicsSample\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_a09c1bbe9093084f9c75eefcefaee945.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 822
mov o0.xyzw, r0.xyzw

#line 734
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw
dp4 o1.w, r0.xyzw, cb1[19].xyzw

#line 822
mov o2.xyz, v1.xyzx
mov o3.xyzw, v2.xyzw
mov o4.xy, v3.xyxx
ret 
// Approximately 13 instruction slots used
@G    Pixel => 605e5feb4c113ac51eb1f79a3ad2368a
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
//   float4 constantColor_id78;         // Offset:    0 Size:    16
//   float2 scale_id83;                 // Offset:   16 Size:     8
//   float2 offset_id84;                // Offset:   24 Size:     8
//   float constantFloat_id89;          // Offset:   32 Size:     4
//   float4 constantColor_id153;        // Offset:   48 Size:    16
//   float constantFloat_id155;         // Offset:   64 Size:     4
//   float2 scale_id159;                // Offset:   68 Size:     8
//   float2 offset_id160;               // Offset:   80 Size:     8
//   float constantFloat_id162;         // Offset:   88 Size:     4 [unused]
//   float constantFloat_id164;         // Offset:   92 Size:     4
//   float constantFloat_id166;         // Offset:   96 Size:     4
//   float constantFloat_id168;         // Offset:  100 Size:     4
//   float2 scale_id183;                // Offset:  104 Size:     8
//   float2 offset_id184;               // Offset:  112 Size:     8
//   float4 constantColor_id186;        // Offset:  128 Size:    16
//   float2 scale_id190;                // Offset:  144 Size:     8
//   float2 offset_id191;               // Offset:  152 Size:     8
//   float constantFloat_id196;         // Offset:  160 Size:     4
//   float4 constantColor_id199;        // Offset:  176 Size:    16
//   float constantFloat_id201;         // Offset:  192 Size:     4
//   float2 scale_id205;                // Offset:  196 Size:     8
//   float2 offset_id206;               // Offset:  208 Size:     8
//   float constantFloat_id208;         // Offset:  216 Size:     4 [unused]
//   float constantFloat_id210;         // Offset:  220 Size:     4
//   float constantFloat_id212;         // Offset:  224 Size:     4
//   float constantFloat_id214;         // Offset:  228 Size:     4
//   float2 scale_id218;                // Offset:  232 Size:     8
//   float2 offset_id219;               // Offset:  240 Size:     8
//   float4 constantColor_id220;        // Offset:  256 Size:    16
//   float constantFloat_id224;         // Offset:  272 Size:     4
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
//   float3 AmbientLight_id77;          // Offset:  352 Size:    12
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// Sampler_id81                      sampler      NA          NA    0        1
// Texture_id80                      texture  float4          2d    0        1
// Texture_id157                     texture  float4          2d    1        1
// Texture_id181                     texture  float4          2d    2        1
// Texture_id188                     texture  float4          2d    3        1
// Texture_id203                     texture  float4          2d    4        1
// Texture_id216                     texture  float4          2d    5        1
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
// SV_Position              0   xyzw        1      POS   float       
// NORMAL                   0   xyz         2     NONE   float   xyz 
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
//
// Constant buffer to DX9 shader constant mappings:
//
// Target Reg Buffer  Start Reg # of Regs        Data Conversion
// ---------- ------- --------- --------- ----------------------
// c0         cb0             0         3  ( FLT, FLT, FLT, FLT)
// c3         cb1             0        18  ( FLT, FLT, FLT, FLT)
// c21        cb2            21         2  ( FLT, FLT, FLT, FLT)
//
//
// Sampler/Resource to DX9 shader sampler mappings:
//
// Target Sampler Source Sampler  Source Resource
// -------------- --------------- ----------------
// s0             s0              t0               
// s1             s0              t1               
// s2             s0              t2               
// s3             s0              t3               
// s4             s0              t4               
// s5             s0              t5               
//
//
// Level9 shader bytecode:
//
    ps_2_x
    def c23, 2, -1, 1, 9.99999975e-005
    def c24, 0.999000013, 1.89499998, -0.168799996, 8.40400028
    def c25, -4.85300016, 0.9903, -5.06899977, -0.522800028
    def c26, 1.699, 0.604499996, -3.60299993, 1.40400004
    def c27, 0.193900004, 2.66100001, 50, 0
    def c28, 0.5, 3, 0, -0.00100000005
    dcl t0  // __input__<0,1,2,3>
    dcl t1.xyz  // __input__<8,9,10>
    dcl t2  // __input__<11,12,13,14>
    dcl t3.xy  // __input__<15,16>
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5

#line 279 "C:\_Rapporter-Xenko3D\PhysicsSample\PhysicsSample\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_a09c1bbe9093084f9c75eefcefaee945.hlsl"
    mad r0.xy, t3, c12, c12.zwzw

#line 263
    mov r1.xyz, c15  // PerMaterial::constantFloat_id201<0>, PerMaterial::scale_id205<0,1>
    mad r2.xy, t3, r1.yzzw, c16

#line 279
    texld r0, r0, s3  // ::Compute_id606<0,1,2>

#line 263
    texld r2, r2, s4  // ::Compute_id614<0>

#line 357
    mad r0.xyz, r0, c23.x, c23.y  // ::normal<0,1,2>

#line 232
    mov r0.w, -r0.y

#line 180
    dp3 r0.y, r0.xzww, r0.xzww
    rsq r0.y, r0.y
    rcp r0.y, r0.y  // ::r<0>

#line 183
    mul r1.y, r0.y, r0.y
    mul r1.y, r0.y, r1.y
    mad r1.y, r0.y, c28.y, -r1.y
    rcp r1.y, r1.y
    mad r1.z, r0.y, -r0.y, c23.z
    add r1.w, r0.y, c23.y
    mul r0.y, r1.z, c28.x
    mul r0.y, r1.y, r0.y  // ::roughnessAdjust<0>
    cmp r0.y, r1.w, c28.z, r0.y  // ::roughnessAdjust<0>

#line 216
    mov r1.yz, c23
    add r1.w, r1.z, -c13.x  // ::roughness<0>
    mad r1.w, r1.w, r1.w, r0.y
    add r0.y, r1.w, c28.w

#line 157
    add r1.w, -r1.w, c23.z
    cmp r1.w, r0.y, r1.w, c24.x  // ::x<0>

#line 173
    mad r0.y, r1.w, c26.x, c26.y

#line 725
    nrm r3.xyz, t1  // GetTangentMatrix_id9::streams<0,1,2>
    nrm r4.xyz, t2  // ::tangent<0,1,2>
    mul r2.yzw, r3.xzxy, r4.xyzx
    mad r2.yzw, r3.xyzx, r4.xzxy, -r2
    mul r2.yzw, r2, t2.w  // ::bitangent<0,1,2>

#line 761
    dp3 r5.y, r2.yzww, c0  // UpdateTangentToWorld_id11::streams<16>
    dp3 r5.x, r4, c0  // UpdateTangentToWorld_id11::streams<13>
    dp3 r5.z, r3, c0  // UpdateTangentToWorld_id11::streams<19>

#line 232
    dp3 r6.x, r0.xwzw, r5

#line 761
    dp3 r7.x, r4, c1  // UpdateTangentToWorld_id11::streams<14>
    dp3 r4.x, r4, c2  // UpdateTangentToWorld_id11::streams<15>
    dp3 r7.z, r3, c1  // UpdateTangentToWorld_id11::streams<20>
    dp3 r4.z, r3, c2  // UpdateTangentToWorld_id11::streams<21>
    dp3 r7.y, r2.yzww, c1  // UpdateTangentToWorld_id11::streams<17>
    dp3 r4.y, r2.yzww, c2  // UpdateTangentToWorld_id11::streams<18>

#line 232
    dp3 r6.y, r0.xwzw, r7
    dp3 r6.z, r0.xwzw, r4
    nrm r3.xyz, r6  // UpdateNormalFromTangentSpace_id12::streams<69,70,71>

#line 748
    add r0.xzw, -t0.xyyz, c21.xyyz
    nrm r6.xyz, r0.xzww  // Shading_id27::streams<22,23,24>

#line 215
    dp3 r4.w, r3, r6
    max r5.w, r4.w, c23.w  // PrepareMaterialForLightingAndShading_id419::streams<89>

#line 173
    mad r4.w, r5.w, c25.w, r0.y

#line 165
    mul r6.w, r1.w, r1.w

#line 173
    mad r4.w, r6.w, c26.z, r4.w
    mul r7.w, r1.w, r5.w
    mad r4.w, r7.w, c26.w, r4.w

#line 165
    mul r7.w, r5.w, r5.w

#line 173
    mad r4.w, r7.w, c27.x, r4.w
    mul r0.x, r1.w, r6.w
    mul r6.w, r6.w, c24.y

#line 165
    mad r1.w, r1.w, c24.z, r6.w

#line 173
    mad_sat r4.w, r0.x, c27.y, r4.w  // ::delta<0>

#line 165
    mad r6.w, r5.w, c25.x, c25.y
    mul r5.w, r5.w, r7.w
    mad r6.w, r7.w, c24.w, r6.w
    mad r5.w, r5.w, c25.z, r6.w
    min_sat r6.w, r5.w, r1.w  // ::bias<0>

#line 174
    add r1.w, r4.w, -r6.w  // ::scale<0>

#line 214
    mul r0.xyz, r1.x, c14
    add r0.w, r1.y, c16.w
    mad r2.yz, c17.xxyw, r0.w, r1.z
    mul r0.xyz, r0, r2.z  // PrepareMaterialForLightingAndShading_id419::streams<46,47,48>
    mul r2.yzw, r2.y, c11.xxyz  // PrepareMaterialForLightingAndShading_id419::streams<40,41,42>

#line 175
    mul_sat r0.w, r0.y, c27.z
    mul r0.w, r0.w, r6.w  // ::bias<0>
    mad r0.xyz, r0, r1.w, r0.w  // ::EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id417<0,1,2>

#line 206
    mul r3.xyz, r2.x, c22  // ::lightColor<0,1,2>

#line 197
    mul r0.xyz, r0, r3  // ::ComputeEnvironmentLightContribution_id769<0,1,2>

#line 305
    mad r0.xyz, r2.yzww, r3, r0  // ::environmentLightingContribution<0,1,2>

#line 192
    mov r2.zw, c17  // PerMaterial::scale_id218<0,1>
    mad r2.xy, t3, r2.zwzw, c18

#line 532
    mad r3.xy, t3, c4, c4.zwzw

#line 192
    texld r2, r2, s5  // ::Compute_id624<0,1,2>

#line 532
    texld r3, r3, s0  // ::Compute_id446<0,1,2>

#line 242
    mul r2.xyz, r2, c19  // ::mix1<0,1,2>

#line 287
    mad r0.xyz, r2, c20.x, r0  // Compute_id845::streams<25,26,27>

#line 615
    mad r2.xyz, r3, c23.x, c23.y  // ::normal<0,1,2>

#line 232
    mov r2.w, -r2.y
    dp3 r3.x, r2.xwzw, r5
    dp3 r3.y, r2.xwzw, r7
    dp3 r3.z, r2.xwzw, r4

#line 396
    dp3 r0.w, r2.xzww, r2.xzww
    rsq r0.w, r0.w
    rcp r0.w, r0.w  // ::r<0>

#line 232
    nrm r2.xyz, r3  // UpdateNormalFromTangentSpace_id12::streams<69,70,71>

#line 483
    dp3 r1.x, r2, r6
    max r2.x, r1.x, c23.w  // PrepareMaterialForLightingAndShading_id263::streams<89>

#line 399
    mul r1.x, r0.w, r0.w
    mul r1.x, r0.w, r1.x
    mad r1.x, r0.w, c28.y, -r1.x
    rcp r1.x, r1.x
    mad r1.w, r0.w, -r0.w, c23.z
    add r0.w, r0.w, c23.y
    mul r1.w, r1.w, c28.x
    mul r1.x, r1.x, r1.w  // ::roughnessAdjust<0>
    cmp r0.w, r0.w, c28.z, r1.x  // ::roughnessAdjust<0>

#line 484
    add r1.x, r1.z, -c5.x  // ::roughness<0>
    mad r0.w, r1.x, r1.x, r0.w
    add r1.x, r0.w, c28.w

#line 373
    add r0.w, -r0.w, c23.z
    cmp r0.w, r1.x, r0.w, c24.x  // ::x<0>

#line 389
    mul r1.x, r0.w, r2.x
    mad r1.w, r0.w, c26.x, c26.y
    mad r1.w, r2.x, c25.w, r1.w

#line 381
    mul r2.y, r0.w, r0.w

#line 389
    mad r1.w, r2.y, c26.z, r1.w
    mad r1.x, r1.x, c26.w, r1.w

#line 381
    mul r1.w, r2.x, r2.x

#line 389
    mad r1.x, r1.w, c27.x, r1.x
    mul r2.z, r0.w, r2.y
    mul r2.y, r2.y, c24.y

#line 381
    mad r0.w, r0.w, c24.z, r2.y

#line 389
    mad_sat r1.x, r2.z, c27.y, r1.x  // ::delta<0>

#line 381
    mad r2.y, r2.x, c25.x, c25.y
    mul r2.x, r2.x, r1.w
    mad r1.w, r1.w, c24.w, r2.y
    mad r1.w, r2.x, c25.z, r1.w
    min_sat r2.x, r1.w, r0.w  // ::bias<0>

#line 390
    add r0.w, r1.x, -r2.x  // ::scale<0>

#line 482
    mov r3.xyz, c7  // PerMaterial::constantFloat_id155<0>, PerMaterial::scale_id159<0,1>
    mul r2.yzw, r3.x, c6.xxyz
    add r1.x, r1.y, c8.w
    mad r1.xy, c9, r1.x, r1.z
    mul r1.yzw, r1.y, r2  // PrepareMaterialForLightingAndShading_id263::streams<46,47,48>
    mul r2.yzw, r1.x, c3.xxyz  // PrepareMaterialForLightingAndShading_id263::streams<40,41,42>

#line 391
    mul_sat r1.x, r1.z, c27.z
    mul r1.x, r1.x, r2.x  // ::bias<0>
    mad r1.xyz, r1.yzww, r0.w, r1.x  // ::EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id261<0,1,2>

#line 516
    mad r3.xy, t3, r3.yzzw, c8

#line 466
    mov r3.zw, c9  // PerMaterial::scale_id183<0,1>
    mad r4.xy, t3, r3.zwzw, c10

#line 516
    texld r3, r3, s1  // ::Compute_id454<0>

#line 466
    texld r4, r4, s2  // ::Compute_id602<0>

#line 206
    mul r3.xyz, r3.x, c22  // ::lightColor<0,1,2>

#line 471
    mul r1.xyz, r1, r3  // ::ComputeEnvironmentLightContribution_id601<0,1,2>

#line 571
    mad r1.xyz, r2.yzww, r3, r1  // ::environmentLightingContribution<0,1,2>

#line 549
    lrp r2.xyz, r4.w, r0, r1  // Compute_id924::streams<25,26,27>
    mov r2.w, c11.w
    mov oC0, r2  // ::PSMain<0,1,2,3>

// approximately 156 instruction slots used (6 texture, 150 arithmetic)
ps_4_0
dcl_constantbuffer cb0[3], immediateIndexed
dcl_constantbuffer cb1[18], immediateIndexed
dcl_constantbuffer cb2[23], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_input_ps linear v0.xyz
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xy
dcl_output o0.xyzw
dcl_temps 8
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.meshNormal_id14.x; v2.y <- __input__.meshNormal_id14.y; v2.z <- __input__.meshNormal_id14.z; 
//   v3.x <- __input__.meshTangent_id15.x; v3.y <- __input__.meshTangent_id15.y; v3.z <- __input__.meshTangent_id15.z; v3.w <- __input__.meshTangent_id15.w; 
//   v4.x <- __input__.TexCoord_id82.x; v4.y <- __input__.TexCoord_id82.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 748 "C:\_Rapporter-Xenko3D\PhysicsSample\PhysicsSample\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_a09c1bbe9093084f9c75eefcefaee945.hlsl"
add r0.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx  // r0.x <- streams.viewWS_id61.x; r0.y <- streams.viewWS_id61.y; r0.z <- streams.viewWS_id61.z

#line 725
dp3 r0.w, v2.xyzx, v2.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v2.xyzx  // r1.x <- streams.meshNormal_id14.x; r1.y <- streams.meshNormal_id14.y; r1.z <- streams.meshNormal_id14.z
dp3 r0.w, v3.xyzx, v3.xyzx
rsq r0.w, r0.w
mul r2.xyz, r0.wwww, v3.xyzx  // r2.x <- tangent.x; r2.y <- tangent.y; r2.z <- tangent.z
mul r3.xyz, r1.zxyz, r2.yzxy
mad r3.xyz, r1.yzxy, r2.zxyz, -r3.xyzx
mul r3.xyz, r3.xyzx, v3.wwww  // r3.x <- bitangent.x; r3.y <- bitangent.y; r3.z <- bitangent.z

#line 761
dp3 r4.y, r3.xyzx, cb0[0].xyzx  // r4.y <- streams.tangentToWorld_id17._m10
dp3 r4.x, r2.xyzx, cb0[0].xyzx  // r4.x <- streams.tangentToWorld_id17._m00
dp3 r4.z, r1.xyzx, cb0[0].xyzx  // r4.z <- streams.tangentToWorld_id17._m20

#line 279
mad r5.xy, v4.xyxx, cb1[9].xyxx, cb1[9].zwzz
sample r5.xyzw, r5.xyxx, t3.xyzw, s0  // r5.x <- <Compute_id606 return value>.x; r5.y <- <Compute_id606 return value>.y; r5.z <- <Compute_id606 return value>.z

#line 357
mad r5.xyz, r5.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-1.000000, -1.000000, -1.000000, 0.000000)  // r5.x <- normal.x; r5.y <- normal.y; r5.z <- normal.z

#line 232
mov r5.w, -r5.y
dp3 r6.x, r5.xwzx, r4.xyzx

#line 761
dp3 r7.x, r2.xyzx, cb0[1].xyzx  // r7.x <- streams.tangentToWorld_id17._m01
dp3 r2.x, r2.xyzx, cb0[2].xyzx  // r2.x <- streams.tangentToWorld_id17._m02
dp3 r7.z, r1.xyzx, cb0[1].xyzx  // r7.z <- streams.tangentToWorld_id17._m21
dp3 r2.z, r1.xyzx, cb0[2].xyzx  // r2.z <- streams.tangentToWorld_id17._m22
dp3 r7.y, r3.xyzx, cb0[1].xyzx  // r7.y <- streams.tangentToWorld_id17._m11
dp3 r2.y, r3.xyzx, cb0[2].xyzx  // r2.y <- streams.tangentToWorld_id17._m12

#line 232
dp3 r6.y, r5.xwzx, r7.xyzx
dp3 r6.z, r5.xwzx, r2.xyzx

#line 180
dp3 r0.w, r5.xzwx, r5.xzwx

#line 232
dp3 r1.x, r6.xyzx, r6.xyzx
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, r6.xyzx  // r1.x <- streams.normalWS_id16.x; r1.y <- streams.normalWS_id16.y; r1.z <- streams.normalWS_id16.z

#line 215
dp3 r1.x, r1.xyzx, r0.xyzx
max r1.x, r1.x, l(0.000100)  // r1.x <- streams.NdotV_id65

#line 180
sqrt r1.y, r0.w  // r1.y <- r

#line 183
mul r1.z, r0.w, r1.y
add r0.w, -r0.w, l(1.000000)
mul r0.w, r0.w, l(0.500000)
mad r1.z, r1.y, l(3.000000), -r1.z
lt r1.y, r1.y, l(1.000000)
div r0.w, r0.w, r1.z  // r0.w <- roughnessAdjust
and r0.w, r0.w, r1.y

#line 216
add r1.y, -cb1[10].x, l(1.000000)  // r1.y <- roughness
mad r0.w, r1.y, r1.y, r0.w
max r0.w, r0.w, l(0.001000)  // r0.w <- streams.alphaRoughness_id63

#line 157
add r0.w, -r0.w, l(1.000000)  // r0.w <- x

#line 173
mad r1.y, r0.w, l(1.699000), l(0.604500)
mad r1.y, r1.x, l(-0.522800), r1.y

#line 165
mul r1.z, r0.w, r0.w

#line 173
mad r1.y, r1.z, l(-3.603000), r1.y
mul r1.w, r0.w, r1.x
mad r1.y, r1.w, l(1.404000), r1.y

#line 165
mul r1.w, r1.x, r1.x

#line 173
mad r1.y, r1.w, l(0.193900), r1.y
mul r2.w, r0.w, r1.z
mul r1.z, r1.z, l(1.895000)

#line 165
mad r0.w, r0.w, l(-0.168800), r1.z

#line 173
mad_sat r1.y, r2.w, l(2.661000), r1.y  // r1.y <- delta

#line 165
mad r1.z, r1.x, l(-4.853000), l(0.990300)
mul r1.x, r1.x, r1.w
mad r1.z, r1.w, l(8.404000), r1.z
mad r1.x, r1.x, l(-5.069000), r1.z
min_sat r0.w, r0.w, r1.x  // r0.w <- bias

#line 174
add r1.x, -r0.w, r1.y  // r1.x <- scale

#line 214
mul r1.yzw, cb1[11].xxyz, cb1[12].xxxx
add r2.w, cb1[13].w, l(-1.000000)
mad r3.xy, cb1[14].xyxx, r2.wwww, l(1.000000, 1.000000, 0.000000, 0.000000)
mul r1.yzw, r1.yyzw, r3.yyyy  // r1.y <- streams.matSpecularVisible_id64.x; r1.z <- streams.matSpecularVisible_id64.y; r1.w <- streams.matSpecularVisible_id64.z
mul r3.xyz, r3.xxxx, cb1[8].xyzx  // r3.x <- streams.matDiffuseVisible_id62.x; r3.y <- streams.matDiffuseVisible_id62.y; r3.z <- streams.matDiffuseVisible_id62.z

#line 175
mul_sat r2.w, r1.z, l(50.000000)
mul r0.w, r0.w, r2.w
mad r1.xyz, r1.yzwy, r1.xxxx, r0.wwww  // r1.x <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id417 return value>.x; r1.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id417 return value>.y; r1.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id417 return value>.z

#line 263
mad r5.xy, v4.xyxx, cb1[12].yzyy, cb1[13].xyxx
sample r5.xyzw, r5.xyxx, t4.xyzw, s0  // r5.x <- <Compute_id614 return value>.x

#line 206
mul r5.xyz, r5.xxxx, cb2[22].xyzx  // r5.x <- lightColor.x; r5.y <- lightColor.y; r5.z <- lightColor.z

#line 197
mul r1.xyz, r1.xyzx, r5.xyzx  // r1.x <- <ComputeEnvironmentLightContribution_id769 return value>.x; r1.y <- <ComputeEnvironmentLightContribution_id769 return value>.y; r1.z <- <ComputeEnvironmentLightContribution_id769 return value>.z

#line 305
mad r1.xyz, r3.xyzx, r5.xyzx, r1.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 192
mad r3.xy, v4.xyxx, cb1[14].zwzz, cb1[15].xyxx
sample r3.xyzw, r3.xyxx, t5.xyzw, s0  // r3.x <- <Compute_id624 return value>.x; r3.y <- <Compute_id624 return value>.y; r3.z <- <Compute_id624 return value>.z

#line 242
mul r3.xyz, r3.xyzx, cb1[16].xyzx  // r3.x <- mix1.x; r3.y <- mix1.y; r3.z <- mix1.z

#line 287
mad r1.xyz, r3.xyzx, cb1[17].xxxx, r1.xyzx  // r1.x <- streams.shadingColor_id66.x; r1.y <- streams.shadingColor_id66.y; r1.z <- streams.shadingColor_id66.z

#line 532
mad r3.xy, v4.xyxx, cb1[1].xyxx, cb1[1].zwzz
sample r3.xyzw, r3.xyxx, t0.xyzw, s0  // r3.x <- <Compute_id446 return value>.x; r3.y <- <Compute_id446 return value>.y; r3.z <- <Compute_id446 return value>.z

#line 615
mad r3.xyz, r3.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-1.000000, -1.000000, -1.000000, 0.000000)  // r3.x <- normal.x; r3.y <- normal.y; r3.z <- normal.z

#line 232
mov r3.w, -r3.y
dp3 r4.x, r3.xwzx, r4.xyzx
dp3 r4.y, r3.xwzx, r7.xyzx
dp3 r4.z, r3.xwzx, r2.xyzx

#line 396
dp3 r0.w, r3.xzwx, r3.xzwx

#line 232
dp3 r1.w, r4.xyzx, r4.xyzx
rsq r1.w, r1.w
mul r2.xyz, r1.wwww, r4.xyzx  // r2.x <- streams.normalWS_id16.x; r2.y <- streams.normalWS_id16.y; r2.z <- streams.normalWS_id16.z

#line 483
dp3 r0.x, r2.xyzx, r0.xyzx

#line 396
sqrt r0.y, r0.w  // r0.y <- r

#line 399
mul r0.z, r0.y, r0.w
add r0.w, -r0.w, l(1.000000)
mul r0.w, r0.w, l(0.500000)
mad r0.z, r0.y, l(3.000000), -r0.z
lt r0.y, r0.y, l(1.000000)
div r0.z, r0.w, r0.z  // r0.z <- roughnessAdjust
and r0.y, r0.z, r0.y  // r0.y <- roughnessAdjust

#line 484
add r0.z, -cb1[2].x, l(1.000000)  // r0.z <- roughness
mad r0.y, r0.z, r0.z, r0.y

#line 483
max r0.xy, r0.xyxx, l(0.000100, 0.001000, 0.000000, 0.000000)  // r0.x <- streams.NdotV_id65; r0.y <- streams.alphaRoughness_id63

#line 373
add r0.y, -r0.y, l(1.000000)  // r0.y <- x

#line 389
mul r0.z, r0.y, r0.x
mad r0.w, r0.y, l(1.699000), l(0.604500)
mad r0.w, r0.x, l(-0.522800), r0.w

#line 381
mul r1.w, r0.y, r0.y

#line 389
mad r0.w, r1.w, l(-3.603000), r0.w
mad r0.z, r0.z, l(1.404000), r0.w

#line 381
mul r0.w, r0.x, r0.x

#line 389
mad r0.z, r0.w, l(0.193900), r0.z
mul r2.x, r0.y, r1.w
mul r1.w, r1.w, l(1.895000)

#line 381
mad r0.y, r0.y, l(-0.168800), r1.w

#line 389
mad_sat r0.z, r2.x, l(2.661000), r0.z  // r0.z <- delta

#line 381
mad r1.w, r0.x, l(-4.853000), l(0.990300)
mul r0.x, r0.x, r0.w
mad r0.w, r0.w, l(8.404000), r1.w
mad r0.x, r0.x, l(-5.069000), r0.w
min_sat r0.x, r0.x, r0.y  // r0.x <- bias

#line 390
add r0.y, -r0.x, r0.z  // r0.y <- scale

#line 482
mul r2.xyz, cb1[3].xyzx, cb1[4].xxxx
add r0.z, cb1[5].w, l(-1.000000)
mad r0.zw, cb1[6].xxxy, r0.zzzz, l(0.000000, 0.000000, 1.000000, 1.000000)
mul r2.xyz, r0.wwww, r2.xyzx  // r2.x <- streams.matSpecularVisible_id64.x; r2.y <- streams.matSpecularVisible_id64.y; r2.z <- streams.matSpecularVisible_id64.z
mul r3.xyz, r0.zzzz, cb1[0].xyzx  // r3.x <- streams.matDiffuseVisible_id62.x; r3.y <- streams.matDiffuseVisible_id62.y; r3.z <- streams.matDiffuseVisible_id62.z

#line 391
mul_sat r0.z, r2.y, l(50.000000)
mul r0.x, r0.z, r0.x
mad r0.xyz, r2.xyzx, r0.yyyy, r0.xxxx  // r0.x <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id261 return value>.x; r0.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id261 return value>.y; r0.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id261 return value>.z

#line 516
mad r2.xy, v4.xyxx, cb1[4].yzyy, cb1[5].xyxx
sample r2.xyzw, r2.xyxx, t1.xyzw, s0  // r2.x <- <Compute_id454 return value>.x

#line 206
mul r2.xyz, r2.xxxx, cb2[22].xyzx  // r2.x <- lightColor.x; r2.y <- lightColor.y; r2.z <- lightColor.z

#line 471
mul r0.xyz, r0.xyzx, r2.xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id601 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id601 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id601 return value>.z

#line 571
mad r0.xyz, r3.xyzx, r2.xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 549
add r1.xyz, -r0.xyzx, r1.xyzx

#line 466
mad r2.xy, v4.xyxx, cb1[6].zwzz, cb1[7].xyxx
sample r2.xyzw, r2.xyxx, t2.xyzw, s0  // r2.w <- <Compute_id602 return value>.x

#line 549
mad o0.xyz, r2.wwww, r1.xyzx, r0.xyzx

#line 805
mov o0.w, cb1[8].w
ret 
// Approximately 143 instruction slots used
***************************
*************************/
const static bool TIsEnergyConservative_id172 = false;
static const float PI_id174 = 3.14159265358979323846;
const static bool TIsNormalXY1_id192 = false;
const static bool TScaleAndBias_id193 = true;
const static bool TInvertY_id194 = true;
const static bool TInvert_id197 = false;
const static bool TUseAlphaFromEmissive_id237 = false;
Texture2D Texture_id80;
SamplerState Sampler_id81;
Texture2D Texture_id157;
Texture2D Texture_id181;
Texture2D Texture_id188;
Texture2D Texture_id203;
Texture2D Texture_id216;
struct PS_STREAMS 
{
    float3 meshNormal_id14;
    float4 meshTangent_id15;
    float4 PositionWS_id19;
    float2 TexCoord_id82;
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
    float2 TexCoord_id82;
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
    float3 meshNormal_id14 : NORMAL;
    float4 meshTangent_id15 : TANGENT;
    float2 TexCoord_id82 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    float3 meshNormal_id14 : NORMAL;
    float4 meshTangent_id15 : TANGENT;
    float2 TexCoord_id82 : TEXCOORD0;
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
    float4 constantColor_id78;
    float2 scale_id83;
    float2 offset_id84;
    float constantFloat_id89;
    float4 constantColor_id153;
    float constantFloat_id155;
    float2 scale_id159;
    float2 offset_id160;
    float constantFloat_id162;
    float constantFloat_id164;
    float constantFloat_id166;
    float constantFloat_id168;
    float2 scale_id183;
    float2 offset_id184;
    float4 constantColor_id186;
    float2 scale_id190;
    float2 offset_id191;
    float constantFloat_id196;
    float4 constantColor_id199;
    float constantFloat_id201;
    float2 scale_id205;
    float2 offset_id206;
    float constantFloat_id208;
    float constantFloat_id210;
    float constantFloat_id212;
    float constantFloat_id214;
    float2 scale_id218;
    float2 offset_id219;
    float4 constantColor_id220;
    float constantFloat_id224;
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
    float3 AmbientLight_id77;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id96;
    float2 Texture1TexelSize_id98;
    float2 Texture2TexelSize_id100;
    float2 Texture3TexelSize_id102;
    float2 Texture4TexelSize_id104;
    float2 Texture5TexelSize_id106;
    float2 Texture6TexelSize_id108;
    float2 Texture7TexelSize_id110;
    float2 Texture8TexelSize_id112;
    float2 Texture9TexelSize_id114;
};
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id417(float3 specularColor, float alphaR, float nDotV)
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
float GetFilterSquareRoughnessAdjustment_id354(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
float4 Compute_id626()
{
    return constantColor_id220;
}
float4 Compute_id624(inout PS_STREAMS streams)
{
    return Texture_id216.Sample(Sampler_id81, streams.TexCoord_id82 * scale_id218 + offset_id219).rgba;
}
float3 ComputeEnvironmentLightContribution_id769(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id417(specularColor, streams.alphaRoughness_id63, streams.NdotV_id65) * streams.envLightSpecularColor_id42;
}
float3 ComputeEnvironmentLightContribution_id720(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id443(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id77 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareMaterialForLightingAndShading_id419(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id354(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id418(inout PS_STREAMS streams)
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
float4 Compute_id630()
{
    return float4(constantFloat_id224, constantFloat_id224, constantFloat_id224, constantFloat_id224);
}
float4 Compute_id629(inout PS_STREAMS streams)
{
    float4 tex1 = Compute_id624(streams);
    float4 tex2 = Compute_id626();
    float4 mix1 = tex1 * tex2;
    return mix1;
}
float4 Compute_id622()
{
    return float4(constantFloat_id214, constantFloat_id214, constantFloat_id214, constantFloat_id214);
}
float4 Compute_id620()
{
    return float4(constantFloat_id212, constantFloat_id212, constantFloat_id212, constantFloat_id212);
}
float4 Compute_id618()
{
    return float4(constantFloat_id210, constantFloat_id210, constantFloat_id210, constantFloat_id210);
}
float4 Compute_id616()
{
    return float4(constantFloat_id208, constantFloat_id208, constantFloat_id208, constantFloat_id208);
}
float4 Compute_id614(inout PS_STREAMS streams)
{
    return Texture_id203.Sample(Sampler_id81, streams.TexCoord_id82 * scale_id205 + offset_id206).r;
}
float4 Compute_id612()
{
    return float4(constantFloat_id201, constantFloat_id201, constantFloat_id201, constantFloat_id201);
}
float4 Compute_id610()
{
    return constantColor_id199;
}
float4 Compute_id608()
{
    return float4(constantFloat_id196, constantFloat_id196, constantFloat_id196, constantFloat_id196);
}
float4 Compute_id606(inout PS_STREAMS streams)
{
    return Texture_id188.Sample(Sampler_id81, streams.TexCoord_id82 * scale_id190 + offset_id191).rgba;
}
float4 Compute_id604()
{
    return constantColor_id186;
}
void Compute_id845(inout PS_STREAMS streams)
{
    streams.shadingColor_id66 += streams.matEmissive_id56.rgb * streams.matEmissiveIntensity_id57;
}
void Compute_id844(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id12(streams, streams.matNormal_id45);
    ResetLightStream_id418(streams);
    PrepareMaterialForLightingAndShading_id419(streams);
    float3 directLightingContribution = 0;
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id443(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id720(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id769(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id174 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id829(inout PS_STREAMS streams)
{
    streams.matEmissiveIntensity_id57 = Compute_id630().r;
}
void Compute_id824(inout PS_STREAMS streams)
{
    streams.matEmissive_id56 = Compute_id629(streams).rgba;
}
void Compute_id819(inout PS_STREAMS streams)
{
    streams.matCavitySpecular_id55 = Compute_id622().r;
}
void Compute_id814(inout PS_STREAMS streams)
{
    streams.matCavityDiffuse_id54 = Compute_id620().r;
}
void Compute_id809(inout PS_STREAMS streams)
{
    streams.matCavity_id53 = Compute_id618().r;
}
void Compute_id804(inout PS_STREAMS streams)
{
    streams.matAmbientOcclusionDirectLightingFactor_id52 = Compute_id616().r;
}
void Compute_id799(inout PS_STREAMS streams)
{
    streams.matAmbientOcclusion_id51 = Compute_id614(streams).r;
}
void Compute_id794(inout PS_STREAMS streams)
{
    streams.matSpecularIntensity_id50 = Compute_id612().r;
}
void Compute_id789(inout PS_STREAMS streams)
{
    streams.matSpecular_id49 = Compute_id610().rgb;
}
void Compute_id784(inout PS_STREAMS streams)
{
    float glossiness = Compute_id608().r;
    streams.matGlossiness_id48 = glossiness;
}
void Compute_id779(inout PS_STREAMS streams)
{
    float4 normal = Compute_id606(streams);

    {
        normal = (2.0f * normal) - 1.0f;
    }

    {
        normal.y = -normal.y;
    }
    streams.matNormal_id45 = normal.xyz;
}
void Compute_id774(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id604();
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id261(float3 specularColor, float alphaR, float nDotV)
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
float GetFilterSquareRoughnessAdjustment_id198(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id432()
{
}
void Compute_id431(inout PS_STREAMS streams)
{

    {
        Compute_id774(streams);
    }

    {
        Compute_id779(streams);
    }

    {
        Compute_id784(streams);
    }

    {
        Compute_id789(streams);
    }

    {
        Compute_id794(streams);
    }

    {
        Compute_id799(streams);
    }

    {
        Compute_id804(streams);
    }

    {
        Compute_id809(streams);
    }

    {
        Compute_id814(streams);
    }

    {
        Compute_id819(streams);
    }

    {
        Compute_id824(streams);
    }

    {
        Compute_id829(streams);
    }

    {
        Compute_id844(streams);
    }

    {
        Compute_id845(streams);
    }
}
float4 Compute_id602(inout PS_STREAMS streams)
{
    return Texture_id181.Sample(Sampler_id81, streams.TexCoord_id82 * scale_id183 + offset_id184).a;
}
float3 ComputeEnvironmentLightContribution_id601(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id261(specularColor, streams.alphaRoughness_id63, streams.NdotV_id65) * streams.envLightSpecularColor_id42;
}
float3 ComputeEnvironmentLightContribution_id552(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareMaterialForLightingAndShading_id263(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id198(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id262(inout PS_STREAMS streams)
{
    streams.lightDirectionWS_id38 = 0;
    streams.lightColor_id39 = 0;
    streams.lightColorNdotL_id40 = 0;
    streams.envLightDiffuseColor_id41 = 0;
    streams.envLightSpecularColor_id42 = 0;
    streams.lightDirectAmbientOcclusion_id44 = 1.0f;
    streams.NdotL_id43 = 0;
}
float4 Compute_id462()
{
    return float4(constantFloat_id168, constantFloat_id168, constantFloat_id168, constantFloat_id168);
}
float4 Compute_id460()
{
    return float4(constantFloat_id166, constantFloat_id166, constantFloat_id166, constantFloat_id166);
}
float4 Compute_id458()
{
    return float4(constantFloat_id164, constantFloat_id164, constantFloat_id164, constantFloat_id164);
}
float4 Compute_id456()
{
    return float4(constantFloat_id162, constantFloat_id162, constantFloat_id162, constantFloat_id162);
}
float4 Compute_id454(inout PS_STREAMS streams)
{
    return Texture_id157.Sample(Sampler_id81, streams.TexCoord_id82 * scale_id159 + offset_id160).r;
}
float4 Compute_id452()
{
    return float4(constantFloat_id155, constantFloat_id155, constantFloat_id155, constantFloat_id155);
}
float4 Compute_id450()
{
    return constantColor_id153;
}
float4 Compute_id448()
{
    return float4(constantFloat_id89, constantFloat_id89, constantFloat_id89, constantFloat_id89);
}
float4 Compute_id446(inout PS_STREAMS streams)
{
    return Texture_id80.Sample(Sampler_id81, streams.TexCoord_id82 * scale_id83 + offset_id84).rgba;
}
float4 Compute_id444()
{
    return constantColor_id78;
}
void ResetStream_id435(inout PS_STREAMS streams)
{
    ResetStream_id432();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id924(inout PS_STREAMS streams)
{
    float3 backupShadingColor = streams.shadingColor_id66;
    float blending = streams.matBlend_id37;
    streams.shadingColor_id66 = 0;
    Compute_id431(streams);
    streams.shadingColor_id66 = lerp(backupShadingColor, streams.shadingColor_id66, blending);
}
void Compute_id919(inout PS_STREAMS streams)
{
    streams.matBlend_id37 = Compute_id602(streams).r;
}
void Compute_id914(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id12(streams, streams.matNormal_id45);
    ResetLightStream_id262(streams);
    PrepareMaterialForLightingAndShading_id263(streams);
    float3 directLightingContribution = 0;
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id443(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id552(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id601(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id174 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id899(inout PS_STREAMS streams)
{
    streams.matCavitySpecular_id55 = Compute_id462().r;
}
void Compute_id894(inout PS_STREAMS streams)
{
    streams.matCavityDiffuse_id54 = Compute_id460().r;
}
void Compute_id889(inout PS_STREAMS streams)
{
    streams.matCavity_id53 = Compute_id458().r;
}
void Compute_id884(inout PS_STREAMS streams)
{
    streams.matAmbientOcclusionDirectLightingFactor_id52 = Compute_id456().r;
}
void Compute_id879(inout PS_STREAMS streams)
{
    streams.matAmbientOcclusion_id51 = Compute_id454(streams).r;
}
void Compute_id874(inout PS_STREAMS streams)
{
    streams.matSpecularIntensity_id50 = Compute_id452().r;
}
void Compute_id869(inout PS_STREAMS streams)
{
    streams.matSpecular_id49 = Compute_id450().rgb;
}
void Compute_id864(inout PS_STREAMS streams)
{
    float glossiness = Compute_id448().r;
    streams.matGlossiness_id48 = glossiness;
}
void Compute_id859(inout PS_STREAMS streams)
{
    float4 normal = Compute_id446(streams);

    {
        normal = (2.0f * normal) - 1.0f;
    }

    {
        normal.y = -normal.y;
    }
    streams.matNormal_id45 = normal.xyz;
}
void Compute_id854(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id444();
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id437(inout PS_STREAMS streams)
{
    ResetStream_id435(streams);
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
void Compute_id122(inout PS_STREAMS streams)
{

    {
        Compute_id854(streams);
    }

    {
        Compute_id859(streams);
    }

    {
        Compute_id864(streams);
    }

    {
        Compute_id869(streams);
    }

    {
        Compute_id874(streams);
    }

    {
        Compute_id879(streams);
    }

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
        Compute_id914(streams);
    }

    {
        Compute_id919(streams);
    }

    {
        Compute_id924(streams);
    }
}
void ResetStream_id121(inout PS_STREAMS streams)
{
    ResetStream_id437(streams);
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
    ResetStream_id121(streams);
    Compute_id122(streams);
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
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    streams.meshTangent_id15 = __input__.meshTangent_id15;
    streams.TexCoord_id82 = __input__.TexCoord_id82;
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
    streams.TexCoord_id82 = __input__.TexCoord_id82;
    VSMain_id8(streams);
    GenerateNormal_VS_id15(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.meshNormal_id14 = streams.meshNormal_id14;
    __output__.meshTangent_id15 = streams.meshTangent_id15;
    __output__.TexCoord_id82 = streams.TexCoord_id82;
    return __output__;
}
