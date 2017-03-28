/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect.ShadowMapCaster
@P   - Material.HasSkinningPosition: True
@P Material.HasSkinningNormal: True
@P Material.HasSkinningTangent: False
@P Material.SkinningMaxBones: 56
@P Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = ComputeColorConstantFloatLink<Material.GlossinessValue>}], mixin MaterialSurfaceMetalness [{metalnessMap = ComputeColorConstantFloatLink<Material.MetalnessValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = ComputeColorConstantColorLink<Material.EmissiveValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.EmissiveIntensity>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}], MaterialSurfaceEmissiveShading<false>]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
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
cbuffer PerView [Size: 352]
@C    View_id22 => Transformation.View
@C    ViewInverse_id23 => Transformation.ViewInverse
@C    Projection_id24 => Transformation.Projection
@C    ProjectionInverse_id25 => Transformation.ProjectionInverse
@C    ViewProjection_id26 => Transformation.ViewProjection
@C    ProjScreenRay_id27 => Transformation.ProjScreenRay
@C    Eye_id28 => Transformation.Eye
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
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
@S    ShadowMapCasterBase => 8499e30978d7612019e28c26288f702b
@S    MaterialSurfaceArray => ccbac4b49ee1e91b6f7d11a29c26a658
@S    MaterialSurfaceDiffuse => 4572009ce562fa4c388af46aacc800f7
@S    IMaterialSurfacePixel => c2baefbc3fb7ad1466cc087909a23051
@S    ComputeColorConstantColorLink => a4f7de8d03608ceba6b4f128ada2b3ed
@S    MaterialSurfaceGlossinessMap => fb8774941dd1a7b0ced77715861382a4
@S    ComputeColorConstantFloatLink => a459500fd7f6c5988997e81bf766f988
@S    MaterialSurfaceMetalness => fa70dc6a8326fdbb39599023eff06cda
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
@S    MaterialSurfaceEmissiveShading => 8441e737217d64ffcec16b8458a149b2
***************************
*****     Stages      *****
***************************
@G    Vertex => 088fea5ea5e7b07bfcf13d1bbf140e6a
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
//
vs_5_0
dcl_globalFlags refactoringAllowed
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
dcl_temps 6
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.BlendIndices_id39.x; v1.y <- __input__.BlendIndices_id39.y; v1.z <- __input__.BlendIndices_id39.z; v1.w <- __input__.BlendIndices_id39.w; 
//   v2.x <- __input__.BlendWeights_id38.x; v2.y <- __input__.BlendWeights_id38.y; v2.z <- __input__.BlendWeights_id38.z; v2.w <- __input__.BlendWeights_id38.w; 
//   v3.x <- __input__.meshNormal_id14.x; v3.y <- __input__.meshNormal_id14.y; v3.z <- __input__.meshNormal_id14.z; 
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
#line 93 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_ShadowMapCaster_02bd9278bb1ddfd51285f79510053313.hlsl"
mov r0.xyz, v0.xyzx
mov r0.w, l(1.000000)

#line 79
ishl r1.xyzw, v1.xyzw, l(2, 2, 2, 2)

#line 92
mul r2.xyzw, v2.yyyy, cb0[r1.y + 29].xyzw
mad r2.xyzw, cb0[r1.x + 29].xyzw, v2.xxxx, r2.xyzw
mad r2.xyzw, cb0[r1.z + 29].xyzw, v2.zzzz, r2.xyzw
mad r2.xyzw, cb0[r1.w + 29].xyzw, v2.wwww, r2.xyzw  // r2.x <- streams.skinningBlendMatrix_id40._m03; r2.y <- streams.skinningBlendMatrix_id40._m13; r2.z <- streams.skinningBlendMatrix_id40._m23; r2.w <- streams.skinningBlendMatrix_id40._m33
dp4 r3.w, r0.xyzw, r2.xyzw  // r3.w <- blendPos.w

#line 147
mov o4.xyzw, r2.xyzw

#line 92
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

#line 147
mov o0.xyzw, r0.xyzw
mov o1.xyzw, r2.xyzw

#line 110
dp3 r2.x, v3.xyzx, r2.xyzx

#line 147
mov o2.xyzw, r4.xyzw

#line 110
dp3 r2.y, v3.xyzx, r4.xyzx

#line 147
mov o3.xyzw, r1.xyzw

#line 110
dp3 r2.z, v3.xyzx, r1.xyzx
dp3 r1.x, r2.xyzx, r2.xyzx
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, r2.xyzx  // r1.x <- streams.meshNormal_id14.x; r1.y <- streams.meshNormal_id14.y; r1.z <- streams.meshNormal_id14.z

#line 100
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- streams.ShadingPosition_id0.w

#line 147
mov o5.xyzw, r1.xyzw
mov o8.xyz, r1.xyzx

#line 100
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- streams.ShadingPosition_id0.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- streams.ShadingPosition_id0.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- streams.ShadingPosition_id0.z

#line 147
mov o6.xyzw, r1.xyzw
mov o7.xyzw, r1.xyzw
ret 
// Approximately 44 instruction slots used
***************************
*************************/
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
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    uint4 BlendIndices_id39 : BLENDINDICES;
    float4 BlendWeights_id38 : BLENDWEIGHT;
    float3 meshNormal_id14 : NORMAL;
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
    float4 constantColor_id80;
    float constantFloat_id82;
    float constantFloat_id85;
    float4 constantColor_id148;
    float constantFloat_id150;
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
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id91;
    float2 Texture1TexelSize_id93;
    float2 Texture2TexelSize_id95;
    float2 Texture3TexelSize_id97;
    float2 Texture4TexelSize_id99;
    float2 Texture5TexelSize_id101;
    float2 Texture6TexelSize_id103;
    float2 Texture7TexelSize_id105;
    float2 Texture8TexelSize_id107;
    float2 Texture9TexelSize_id109;
};
void PreTransformPosition_id4()
{
}
float4x4 GetBlendMatrix_id21(int index)
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
void PreTransformPosition_id22(inout VS_STREAMS streams)
{
    PreTransformPosition_id13(streams);
    streams.skinningBlendMatrix_id40 = GetBlendMatrix_id21(streams.BlendIndices_id39[0]) * streams.BlendWeights_id38[0] + GetBlendMatrix_id21(streams.BlendIndices_id39[1]) * streams.BlendWeights_id38[1] + GetBlendMatrix_id21(streams.BlendIndices_id39[2]) * streams.BlendWeights_id38[2] + GetBlendMatrix_id21(streams.BlendIndices_id39[3]) * streams.BlendWeights_id38[3];
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
void PreTransformPosition_id23(inout VS_STREAMS streams)
{
    PreTransformPosition_id22(streams);
    streams.meshNormal_id14 = normalize(mul(streams.meshNormal_id14, (float3x3)streams.skinningBlendMatrix_id40));
}
void BaseTransformVS_id7(inout VS_STREAMS streams)
{
    PreTransformPosition_id23(streams);
    TransformPosition_id5();
    PostTransformPosition_id14(streams);
}
void VSMain_id0()
{
}
void GenerateNormal_VS_id24(inout VS_STREAMS streams)
{
    streams.normalWS_id16 = streams.meshNormal_id14;
}
void VSMain_id8(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id7(streams);
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id18 = __input__.Position_id18;
    streams.BlendIndices_id39 = __input__.BlendIndices_id39;
    streams.BlendWeights_id38 = __input__.BlendWeights_id38;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    VSMain_id8(streams);
    GenerateNormal_VS_id24(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.skinningBlendMatrix_id40 = streams.skinningBlendMatrix_id40;
    __output__.meshNormal_id14 = streams.meshNormal_id14;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.PositionH_id21 = streams.PositionH_id21;
    __output__.DepthVS_id20 = streams.DepthVS_id20;
    __output__.normalWS_id16 = streams.normalWS_id16;
    return __output__;
}
