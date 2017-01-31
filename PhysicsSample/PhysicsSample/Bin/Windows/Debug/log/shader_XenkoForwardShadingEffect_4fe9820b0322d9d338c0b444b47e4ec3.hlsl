/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceNormalMap<false,true,true> [{normalMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.NormalMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = ComputeColorConstantFloatLink<Material.GlossinessValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecular,rgb> [{computeColorSource = ComputeColorConstantColorLink<Material.SpecularValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecularIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.SpecularIntensityValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAmbientOcclusion,r> [{computeColorSource = ComputeColorTextureScaledOffsetDynamicSampler<Material.AmbientOcclusionMap,TEXCOORD0,Material.Sampler.i0,r,Material.TextureScale.i1,Material.TextureOffset.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAmbientOcclusionDirectLightingFactor,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.AmbientOcclusionDirectLightingFactorValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavityValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavityDiffuse,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavityDiffuseValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matCavitySpecular,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.CavitySpecularValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = mixin ComputeColorMultiply [{color1 = ComputeColorTextureScaledOffsetDynamicSampler<Material.EmissiveMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale.i2,Material.TextureOffset.i2>}, {color2 = ComputeColorConstantColorLink<Material.EmissiveValue>}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.EmissiveIntensity>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}], MaterialSurfaceEmissiveShading<false>]}]
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
cbuffer PerMaterial [Size: 160]
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
@C    scale_id172 => Material.TextureScale.i2
@C    offset_id173 => Material.TextureOffset.i2
@C    constantColor_id174 => Material.EmissiveValue
@C    constantFloat_id178 => Material.EmissiveIntensity
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
@R    Texture_id170 => Material.EmissiveMap [Stage: None, Slot: (-1--1)]
@R    Texture_id170 => Material.EmissiveMap [Stage: None, Slot: (-1--1)]
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    Sampler_id81 => Material.Sampler.i0 [Stage: Pixel, Slot: (0-0)]
@R    Texture_id80 => Material.NormalMap [Stage: Pixel, Slot: (0-0)]
@R    Texture_id157 => Material.AmbientOcclusionMap [Stage: Pixel, Slot: (1-1)]
@R    Texture_id170 => Material.EmissiveMap [Stage: Pixel, Slot: (2-2)]
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
@G    Vertex => 01e0375cb8cb17ce890d9ecba986f78e
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

#line 481 "C:\_Rapporter-Xenko3D\PhysicsSample\PhysicsSample\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_4fe9820b0322d9d338c0b444b47e4ec3.hlsl"
    dp4 r0.x, v0, c1  // PreTransformPosition_id13::streams<21>
    dp4 r0.y, v0, c2  // PreTransformPosition_id13::streams<22>
    dp4 r0.z, v0, c3  // PreTransformPosition_id13::streams<23>
    dp4 r0.w, v0, c4  // PreTransformPosition_id13::streams<24>

#line 471
    dp4 oPos.z, r0, c7  // ::VSMain<6>
    dp4 r1.x, r0, c5  // PostTransformPosition_id14::streams<25>
    dp4 r1.y, r0, c6  // PostTransformPosition_id14::streams<26>
    dp4 r1.z, r0, c8  // PostTransformPosition_id14::streams<28>

#line 481
    mov oT0, r0  // ::VSMain<0,1,2,3>

#line 544
    mad oPos.xy, r1.z, c0, r1  // ::VSMain<4,5>
    mov oPos.w, r1.z  // ::VSMain<7>

#line 548
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
#line 481 "C:\_Rapporter-Xenko3D\PhysicsSample\PhysicsSample\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_4fe9820b0322d9d338c0b444b47e4ec3.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 559
mov o0.xyzw, r0.xyzw

#line 471
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw
dp4 o1.w, r0.xyzw, cb1[19].xyzw

#line 559
mov o2.xyz, v1.xyzx
mov o3.xyzw, v2.xyzw
mov o4.xy, v3.xyxx
ret 
// Approximately 13 instruction slots used
@G    Pixel => 8c19aeccd0e40b79c9e548be7fa177b4
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
//   float2 scale_id172;                // Offset:  104 Size:     8
//   float2 offset_id173;               // Offset:  112 Size:     8
//   float4 constantColor_id174;        // Offset:  128 Size:    16
//   float constantFloat_id178;         // Offset:  144 Size:     4
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
// Texture_id170                     texture  float4          2d    2        1
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
// c3         cb1             0        10  ( FLT, FLT, FLT, FLT)
// c13        cb2            21         2  ( FLT, FLT, FLT, FLT)
//
//
// Sampler/Resource to DX9 shader sampler mappings:
//
// Target Sampler Source Sampler  Source Resource
// -------------- --------------- ----------------
// s0             s0              t0               
// s1             s0              t1               
// s2             s0              t2               
//
//
// Level9 shader bytecode:
//
    ps_2_x
    def c15, 2, -1, 1, 9.99999975e-005
    def c16, 0.999000013, 1.89499998, -0.168799996, 8.40400028
    def c17, -4.85300016, 0.9903, -5.06899977, -0.522800028
    def c18, 1.699, 0.604499996, -3.60299993, 1.40400004
    def c19, 0.193900004, 2.66100001, 50, 0
    def c20, 0.5, 3, 0, -0.00100000005
    dcl t0  // __input__<0,1,2,3>
    dcl t1.xyz  // __input__<8,9,10>
    dcl t2  // __input__<11,12,13,14>
    dcl t3.xy  // __input__<15,16>
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2

#line 265 "C:\_Rapporter-Xenko3D\PhysicsSample\PhysicsSample\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_4fe9820b0322d9d338c0b444b47e4ec3.hlsl"
    mad r0.xy, t3, c4, c4.zwzw

#line 249
    mov r1.xyz, c7  // PerMaterial::constantFloat_id155<0>, PerMaterial::scale_id159<0,1>
    mad r2.xy, t3, r1.yzzw, c8

#line 265
    texld r0, r0, s0  // ::Compute_id256<0,1,2>

#line 249
    texld r2, r2, s1  // ::Compute_id264<0>

#line 348
    mad r0.xyz, r0, c15.x, c15.y  // ::normal<0,1,2>

#line 462
    nrm r3.xyz, t1  // GetTangentMatrix_id9::streams<0,1,2>
    nrm r4.xyz, t2  // ::tangent<0,1,2>
    mul r1.yzw, r3.xzxy, r4.xyzx
    mad r1.yzw, r3.xyzx, r4.xzxy, -r1
    mul r1.yzw, r1, t2.w  // ::bitangent<0,1,2>

#line 498
    dp3 r5.y, r1.yzww, c0  // UpdateTangentToWorld_id11::streams<16>

#line 218
    mov r0.w, -r0.y

#line 498
    dp3 r5.x, r4, c0  // UpdateTangentToWorld_id11::streams<13>
    dp3 r5.z, r3, c0  // UpdateTangentToWorld_id11::streams<19>

#line 218
    dp3 r5.x, r0.xwzw, r5

#line 498
    dp3 r6.x, r4, c1  // UpdateTangentToWorld_id11::streams<14>
    dp3 r4.x, r4, c2  // UpdateTangentToWorld_id11::streams<15>
    dp3 r6.z, r3, c1  // UpdateTangentToWorld_id11::streams<20>
    dp3 r4.z, r3, c2  // UpdateTangentToWorld_id11::streams<21>
    dp3 r6.y, r1.yzww, c1  // UpdateTangentToWorld_id11::streams<17>
    dp3 r4.y, r1.yzww, c2  // UpdateTangentToWorld_id11::streams<18>

#line 218
    dp3 r5.z, r0.xwzw, r4
    dp3 r5.y, r0.xwzw, r6

#line 163
    dp3 r5.w, r0.xzww, r0.xzww
    rsq r5.w, r5.w
    rcp r5.w, r5.w  // ::r<0>

#line 218
    nrm r0.xyz, r5  // UpdateNormalFromTangentSpace_id12::streams<69,70,71>

#line 485
    add r1.yzw, -t0.xxyz, c13.xxyz
    nrm r3.xyz, r1.yzww  // Shading_id27::streams<22,23,24>

#line 201
    dp3 r0.x, r0, r3
    max r1.y, r0.x, c15.w  // PrepareMaterialForLightingAndShading_id235::streams<89>

#line 166
    mul r0.x, r5.w, r5.w
    mul r0.x, r5.w, r0.x
    mad r0.x, r5.w, c20.y, -r0.x
    rcp r0.x, r0.x
    mad r0.y, r5.w, -r5.w, c15.z
    add r0.z, r5.w, c15.y
    mul r0.y, r0.y, c20.x
    mul r0.x, r0.x, r0.y  // ::roughnessAdjust<0>
    cmp r0.x, r0.z, c20.z, r0.x  // ::roughnessAdjust<0>

#line 202
    mov r0.yz, c15
    add r0.w, r0.z, -c5.x  // ::roughness<0>
    mad r0.x, r0.w, r0.w, r0.x
    add r0.w, r0.x, c20.w

#line 140
    add r0.x, -r0.x, c15.z
    cmp r0.x, r0.w, r0.x, c16.x  // ::x<0>

#line 156
    mul r0.w, r0.x, r1.y
    mad r1.z, r0.x, c18.x, c18.y
    mad r1.z, r1.y, c17.w, r1.z

#line 148
    mul r1.w, r0.x, r0.x

#line 156
    mad r1.z, r1.w, c18.z, r1.z
    mad r0.w, r0.w, c18.w, r1.z

#line 148
    mul r1.z, r1.y, r1.y

#line 156
    mad r0.w, r1.z, c19.x, r0.w
    mul r2.y, r0.x, r1.w
    mul r1.w, r1.w, c16.y

#line 148
    mad r1.w, r0.x, c16.z, r1.w

#line 156
    mad_sat r0.x, r2.y, c19.y, r0.w  // ::delta<0>

#line 148
    mad r0.w, r1.y, c17.x, c17.y
    mul r1.y, r1.y, r1.z
    mad r0.w, r1.z, c16.w, r0.w
    mad r0.w, r1.y, c17.z, r0.w
    min_sat r2.y, r0.w, r1.w  // ::bias<0>

#line 157
    add r0.x, r0.x, -r2.y  // ::scale<0>

#line 200
    mul r1.xyz, r1.x, c6
    add r1.w, r0.y, c8.w
    mad r0.yz, c9.xxyw, r1.w, r0.z
    mul r1.xyz, r0.z, r1  // PrepareMaterialForLightingAndShading_id235::streams<46,47,48>
    mul r0.yzw, r0.y, c3.xxyz  // PrepareMaterialForLightingAndShading_id235::streams<40,41,42>

#line 158
    mul_sat r1.w, r1.y, c19.z
    mul r1.w, r1.w, r2.y  // ::bias<0>
    mad r1.xyz, r1, r0.x, r1.w  // ::EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id233<0,1,2>

#line 192
    mul r2.xyz, r2.x, c14  // ::lightColor<0,1,2>

#line 183
    mul r1.xyz, r1, r2  // ::ComputeEnvironmentLightContribution_id419<0,1,2>

#line 296
    mad r0.xyz, r0.yzww, r2, r1  // ::environmentLightingContribution<0,1,2>

#line 175
    mov r1.zw, c9  // PerMaterial::scale_id172<0,1>
    mad r1.xy, t3, r1.zwzw, c10
    texld r1, r1, s2  // ::Compute_id274<0,1,2>

#line 228
    mul r1.xyz, r1, c11  // ::mix1<0,1,2>

#line 278
    mad r0.xyz, r1, c12.x, r0  // Compute_id495::streams<25,26,27>
    mov r0.w, c3.w
    mov oC0, r0  // ::PSMain<0,1,2,3>

// approximately 91 instruction slots used (3 texture, 88 arithmetic)
ps_4_0
dcl_constantbuffer cb0[3], immediateIndexed
dcl_constantbuffer cb1[10], immediateIndexed
dcl_constantbuffer cb2[23], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_input_ps linear v0.xyz
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xy
dcl_output o0.xyzw
dcl_temps 6
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.meshNormal_id14.x; v2.y <- __input__.meshNormal_id14.y; v2.z <- __input__.meshNormal_id14.z; 
//   v3.x <- __input__.meshTangent_id15.x; v3.y <- __input__.meshTangent_id15.y; v3.z <- __input__.meshTangent_id15.z; v3.w <- __input__.meshTangent_id15.w; 
//   v4.x <- __input__.TexCoord_id82.x; v4.y <- __input__.TexCoord_id82.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 462 "C:\_Rapporter-Xenko3D\PhysicsSample\PhysicsSample\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_4fe9820b0322d9d338c0b444b47e4ec3.hlsl"
dp3 r0.x, v2.xyzx, v2.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.xyzx  // r0.x <- streams.meshNormal_id14.x; r0.y <- streams.meshNormal_id14.y; r0.z <- streams.meshNormal_id14.z
dp3 r0.w, v3.xyzx, v3.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v3.xyzx  // r1.x <- tangent.x; r1.y <- tangent.y; r1.z <- tangent.z
mul r2.xyz, r0.zxyz, r1.yzxy
mad r2.xyz, r0.yzxy, r1.zxyz, -r2.xyzx
mul r2.xyz, r2.xyzx, v3.wwww  // r2.x <- bitangent.x; r2.y <- bitangent.y; r2.z <- bitangent.z

#line 498
dp3 r3.y, r2.xyzx, cb0[0].xyzx  // r3.y <- streams.tangentToWorld_id17._m10
dp3 r3.x, r1.xyzx, cb0[0].xyzx  // r3.x <- streams.tangentToWorld_id17._m00
dp3 r3.z, r0.xyzx, cb0[0].xyzx  // r3.z <- streams.tangentToWorld_id17._m20

#line 265
mad r4.xy, v4.xyxx, cb1[1].xyxx, cb1[1].zwzz
sample r4.xyzw, r4.xyxx, t0.xyzw, s0  // r4.x <- <Compute_id256 return value>.x; r4.y <- <Compute_id256 return value>.y; r4.z <- <Compute_id256 return value>.z

#line 348
mad r4.xyz, r4.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-1.000000, -1.000000, -1.000000, 0.000000)  // r4.x <- normal.x; r4.y <- normal.y; r4.z <- normal.z

#line 218
mov r4.w, -r4.y
dp3 r3.x, r4.xwzx, r3.xyzx

#line 498
dp3 r5.x, r1.xyzx, cb0[1].xyzx  // r5.x <- streams.tangentToWorld_id17._m01
dp3 r1.x, r1.xyzx, cb0[2].xyzx  // r1.x <- streams.tangentToWorld_id17._m02
dp3 r5.z, r0.xyzx, cb0[1].xyzx  // r5.z <- streams.tangentToWorld_id17._m21
dp3 r1.z, r0.xyzx, cb0[2].xyzx  // r1.z <- streams.tangentToWorld_id17._m22
dp3 r5.y, r2.xyzx, cb0[1].xyzx  // r5.y <- streams.tangentToWorld_id17._m11
dp3 r1.y, r2.xyzx, cb0[2].xyzx  // r1.y <- streams.tangentToWorld_id17._m12

#line 218
dp3 r3.z, r4.xwzx, r1.xyzx
dp3 r3.y, r4.xwzx, r5.xyzx

#line 163
dp3 r0.x, r4.xzwx, r4.xzwx

#line 218
dp3 r0.y, r3.xyzx, r3.xyzx
rsq r0.y, r0.y
mul r0.yzw, r0.yyyy, r3.xxyz  // r0.y <- streams.normalWS_id16.x; r0.z <- streams.normalWS_id16.y; r0.w <- streams.normalWS_id16.z

#line 485
add r1.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r1.w, r1.xyzx, r1.xyzx
rsq r1.w, r1.w
mul r1.xyz, r1.wwww, r1.xyzx  // r1.x <- streams.viewWS_id61.x; r1.y <- streams.viewWS_id61.y; r1.z <- streams.viewWS_id61.z

#line 201
dp3 r0.y, r0.yzwy, r1.xyzx

#line 163
sqrt r0.z, r0.x  // r0.z <- r

#line 166
mul r0.w, r0.z, r0.x
add r0.x, -r0.x, l(1.000000)
mul r0.x, r0.x, l(0.500000)
mad r0.w, r0.z, l(3.000000), -r0.w
lt r0.z, r0.z, l(1.000000)
div r0.x, r0.x, r0.w  // r0.x <- roughnessAdjust
and r0.x, r0.x, r0.z

#line 202
add r0.z, -cb1[2].x, l(1.000000)  // r0.z <- roughness
mad r0.x, r0.z, r0.z, r0.x

#line 201
max r0.xy, r0.xyxx, l(0.001000, 0.000100, 0.000000, 0.000000)  // r0.x <- streams.alphaRoughness_id63; r0.y <- streams.NdotV_id65

#line 140
add r0.x, -r0.x, l(1.000000)  // r0.x <- x

#line 156
mul r0.z, r0.x, r0.y
mad r0.w, r0.x, l(1.699000), l(0.604500)
mad r0.w, r0.y, l(-0.522800), r0.w

#line 148
mul r1.x, r0.x, r0.x

#line 156
mad r0.w, r1.x, l(-3.603000), r0.w
mad r0.z, r0.z, l(1.404000), r0.w

#line 148
mul r0.w, r0.y, r0.y

#line 156
mad r0.z, r0.w, l(0.193900), r0.z
mul r1.y, r0.x, r1.x
mul r1.x, r1.x, l(1.895000)

#line 148
mad r0.x, r0.x, l(-0.168800), r1.x

#line 156
mad_sat r0.z, r1.y, l(2.661000), r0.z  // r0.z <- delta

#line 148
mad r1.x, r0.y, l(-4.853000), l(0.990300)
mul r0.y, r0.y, r0.w
mad r0.w, r0.w, l(8.404000), r1.x
mad r0.y, r0.y, l(-5.069000), r0.w
min_sat r0.x, r0.y, r0.x  // r0.x <- bias

#line 157
add r0.y, -r0.x, r0.z  // r0.y <- scale

#line 200
mul r1.xyz, cb1[3].xyzx, cb1[4].xxxx
add r0.z, cb1[5].w, l(-1.000000)
mad r0.zw, cb1[6].xxxy, r0.zzzz, l(0.000000, 0.000000, 1.000000, 1.000000)
mul r1.xyz, r0.wwww, r1.xyzx  // r1.x <- streams.matSpecularVisible_id64.x; r1.y <- streams.matSpecularVisible_id64.y; r1.z <- streams.matSpecularVisible_id64.z
mul r2.xyz, r0.zzzz, cb1[0].xyzx  // r2.x <- streams.matDiffuseVisible_id62.x; r2.y <- streams.matDiffuseVisible_id62.y; r2.z <- streams.matDiffuseVisible_id62.z

#line 158
mul_sat r0.z, r1.y, l(50.000000)
mul r0.x, r0.z, r0.x
mad r0.xyz, r1.xyzx, r0.yyyy, r0.xxxx  // r0.x <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id233 return value>.x; r0.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id233 return value>.y; r0.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id233 return value>.z

#line 249
mad r1.xy, v4.xyxx, cb1[4].yzyy, cb1[5].xyxx
sample r1.xyzw, r1.xyxx, t1.xyzw, s0  // r1.x <- <Compute_id264 return value>.x

#line 192
mul r1.xyz, r1.xxxx, cb2[22].xyzx  // r1.x <- lightColor.x; r1.y <- lightColor.y; r1.z <- lightColor.z

#line 183
mul r0.xyz, r0.xyzx, r1.xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id419 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id419 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id419 return value>.z

#line 296
mad r0.xyz, r2.xyzx, r1.xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 175
mad r1.xy, v4.xyxx, cb1[6].zwzz, cb1[7].xyxx
sample r1.xyzw, r1.xyxx, t2.xyzw, s0  // r1.x <- <Compute_id274 return value>.x; r1.y <- <Compute_id274 return value>.y; r1.z <- <Compute_id274 return value>.z

#line 228
mul r1.xyz, r1.xyzx, cb1[8].xyzx  // r1.x <- mix1.x; r1.y <- mix1.y; r1.z <- mix1.z

#line 278
mad o0.xyz, r1.xyzx, cb1[9].xxxx, r0.xyzx

#line 542
mov o0.w, cb1[0].w
ret 
// Approximately 83 instruction slots used
***************************
*************************/
const static bool TIsNormalXY1_id85 = false;
const static bool TScaleAndBias_id86 = true;
const static bool TInvertY_id87 = true;
const static bool TInvert_id90 = false;
const static bool TIsEnergyConservative_id182 = false;
static const float PI_id184 = 3.14159265358979323846;
const static bool TUseAlphaFromEmissive_id191 = false;
Texture2D Texture_id80;
SamplerState Sampler_id81;
Texture2D Texture_id157;
Texture2D Texture_id170;
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
    float2 scale_id172;
    float2 offset_id173;
    float4 constantColor_id174;
    float constantFloat_id178;
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
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id233(float3 specularColor, float alphaR, float nDotV)
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
float GetFilterSquareRoughnessAdjustment_id170(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
float4 Compute_id276()
{
    return constantColor_id174;
}
float4 Compute_id274(inout PS_STREAMS streams)
{
    return Texture_id170.Sample(Sampler_id81, streams.TexCoord_id82 * scale_id172 + offset_id173).rgba;
}
void ResetStream_id242()
{
}
float3 ComputeEnvironmentLightContribution_id419(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id233(specularColor, streams.alphaRoughness_id63, streams.NdotV_id65) * streams.envLightSpecularColor_id42;
}
float3 ComputeEnvironmentLightContribution_id370(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id253(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id77 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareMaterialForLightingAndShading_id235(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id170(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id234(inout PS_STREAMS streams)
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
float4 Compute_id280()
{
    return float4(constantFloat_id178, constantFloat_id178, constantFloat_id178, constantFloat_id178);
}
float4 Compute_id279(inout PS_STREAMS streams)
{
    float4 tex1 = Compute_id274(streams);
    float4 tex2 = Compute_id276();
    float4 mix1 = tex1 * tex2;
    return mix1;
}
float4 Compute_id272()
{
    return float4(constantFloat_id168, constantFloat_id168, constantFloat_id168, constantFloat_id168);
}
float4 Compute_id270()
{
    return float4(constantFloat_id166, constantFloat_id166, constantFloat_id166, constantFloat_id166);
}
float4 Compute_id268()
{
    return float4(constantFloat_id164, constantFloat_id164, constantFloat_id164, constantFloat_id164);
}
float4 Compute_id266()
{
    return float4(constantFloat_id162, constantFloat_id162, constantFloat_id162, constantFloat_id162);
}
float4 Compute_id264(inout PS_STREAMS streams)
{
    return Texture_id157.Sample(Sampler_id81, streams.TexCoord_id82 * scale_id159 + offset_id160).r;
}
float4 Compute_id262()
{
    return float4(constantFloat_id155, constantFloat_id155, constantFloat_id155, constantFloat_id155);
}
float4 Compute_id260()
{
    return constantColor_id153;
}
float4 Compute_id258()
{
    return float4(constantFloat_id89, constantFloat_id89, constantFloat_id89, constantFloat_id89);
}
float4 Compute_id256(inout PS_STREAMS streams)
{
    return Texture_id80.Sample(Sampler_id81, streams.TexCoord_id82 * scale_id83 + offset_id84).rgba;
}
float4 Compute_id254()
{
    return constantColor_id78;
}
void ResetStream_id245(inout PS_STREAMS streams)
{
    ResetStream_id242();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id495(inout PS_STREAMS streams)
{
    streams.shadingColor_id66 += streams.matEmissive_id56.rgb * streams.matEmissiveIntensity_id57;
}
void Compute_id494(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id12(streams, streams.matNormal_id45);
    ResetLightStream_id234(streams);
    PrepareMaterialForLightingAndShading_id235(streams);
    float3 directLightingContribution = 0;
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id253(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id370(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id419(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id184 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id479(inout PS_STREAMS streams)
{
    streams.matEmissiveIntensity_id57 = Compute_id280().r;
}
void Compute_id474(inout PS_STREAMS streams)
{
    streams.matEmissive_id56 = Compute_id279(streams).rgba;
}
void Compute_id469(inout PS_STREAMS streams)
{
    streams.matCavitySpecular_id55 = Compute_id272().r;
}
void Compute_id464(inout PS_STREAMS streams)
{
    streams.matCavityDiffuse_id54 = Compute_id270().r;
}
void Compute_id459(inout PS_STREAMS streams)
{
    streams.matCavity_id53 = Compute_id268().r;
}
void Compute_id454(inout PS_STREAMS streams)
{
    streams.matAmbientOcclusionDirectLightingFactor_id52 = Compute_id266().r;
}
void Compute_id449(inout PS_STREAMS streams)
{
    streams.matAmbientOcclusion_id51 = Compute_id264(streams).r;
}
void Compute_id444(inout PS_STREAMS streams)
{
    streams.matSpecularIntensity_id50 = Compute_id262().r;
}
void Compute_id439(inout PS_STREAMS streams)
{
    streams.matSpecular_id49 = Compute_id260().rgb;
}
void Compute_id434(inout PS_STREAMS streams)
{
    float glossiness = Compute_id258().r;
    streams.matGlossiness_id48 = glossiness;
}
void Compute_id429(inout PS_STREAMS streams)
{
    float4 normal = Compute_id256(streams);

    {
        normal = (2.0f * normal) - 1.0f;
    }

    {
        normal.y = -normal.y;
    }
    streams.matNormal_id45 = normal.xyz;
}
void Compute_id424(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id254();
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id247(inout PS_STREAMS streams)
{
    ResetStream_id245(streams);
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
void Compute_id80(inout PS_STREAMS streams)
{

    {
        Compute_id424(streams);
    }

    {
        Compute_id429(streams);
    }

    {
        Compute_id434(streams);
    }

    {
        Compute_id439(streams);
    }

    {
        Compute_id444(streams);
    }

    {
        Compute_id449(streams);
    }

    {
        Compute_id454(streams);
    }

    {
        Compute_id459(streams);
    }

    {
        Compute_id464(streams);
    }

    {
        Compute_id469(streams);
    }

    {
        Compute_id474(streams);
    }

    {
        Compute_id479(streams);
    }

    {
        Compute_id494(streams);
    }

    {
        Compute_id495(streams);
    }
}
void ResetStream_id79(inout PS_STREAMS streams)
{
    ResetStream_id247(streams);
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
    ResetStream_id79(streams);
    Compute_id80(streams);
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
