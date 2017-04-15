/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.HasSkinningPosition: True
@P Material.HasSkinningNormal: True
@P Material.HasSkinningTangent: False
@P Material.SkinningMaxBones: 56
@P Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.DiffuseMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.EnvironmentLights: LightConstantWhite
@P SceneEditorParameters.IsEffectCompiling: True
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
cbuffer PerMaterial [Size: 16]
@C    scale_id84 => Material.TextureScale
@C    offset_id85 => Material.TextureOffset
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
@R    Texture_id81 => Material.DiffuseMap [Stage: None, Slot: (-1--1)]
@R    Texture_id81 => Material.DiffuseMap [Stage: None, Slot: (-1--1)]
@R    Sampler_id82 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Sampler_id82 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    Sampler_id82 => Material.Sampler.i0 [Stage: Pixel, Slot: (0-0)]
@R    Texture_id81 => Material.DiffuseMap [Stage: Pixel, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Pixel, Slot: (0-0)]
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
@S    LightConstantWhite => 4c3eb306135aa44f78bdeac9f57081b4
@S    MaterialSurfaceArray => ccbac4b49ee1e91b6f7d11a29c26a658
@S    MaterialSurfaceDiffuse => 4572009ce562fa4c388af46aacc800f7
@S    IMaterialSurfacePixel => c2baefbc3fb7ad1466cc087909a23051
@S    ComputeColorTextureScaledOffsetDynamicSampler => 36853d1a7bd080d8e9e9c5137a104b79
@S    DynamicTexture => 74e692ca9cc93b6cc6965bc380e07efe
@S    DynamicSampler => 0e1b689d1f965f3f34ae76abdf34dea7
@S    DynamicTextureStream => 546b0c40a42b4fe0e5613396b0ed4d66
@S    MaterialSurfaceLightingAndShading => 4faacd53863c0b5c65d23ad20797d27c
@S    Math => 5bdf39e412cac464ebbce340da34bca1
@S    IMaterialSurfaceShading => 7aecb9db43b53094f40d49ae22406a18
@S    MaterialSurfaceShadingDiffuseLambert => 66ea94572ee9f10a2e305608a7d69dad
***************************
*****     Stages      *****
***************************
@G    Vertex => a459f94148203cb54d1a214e8b2b4d3c
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
// TEXCOORD                 0   xy          4     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// TEXCOORD                 0   xy          3     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[250], dynamicIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyz
dcl_input v1.xyzw
dcl_input v2.xyzw
dcl_input v3.xyz
dcl_input v4.xy
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyz
dcl_output o3.xy
dcl_temps 5
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.BlendIndices_id39.x; v1.y <- __input__.BlendIndices_id39.y; v1.z <- __input__.BlendIndices_id39.z; v1.w <- __input__.BlendIndices_id39.w; 
//   v2.x <- __input__.BlendWeights_id38.x; v2.y <- __input__.BlendWeights_id38.y; v2.z <- __input__.BlendWeights_id38.z; v2.w <- __input__.BlendWeights_id38.w; 
//   v3.x <- __input__.meshNormal_id14.x; v3.y <- __input__.meshNormal_id14.y; v3.z <- __input__.meshNormal_id14.z; 
//   v4.x <- __input__.TexCoord_id83.x; v4.y <- __input__.TexCoord_id83.y; 
//   o3.x <- <VSMain return value>.TexCoord_id83.x; o3.y <- <VSMain return value>.TexCoord_id83.y; 
//   o2.x <- <VSMain return value>.normalWS_id16.x; o2.y <- <VSMain return value>.normalWS_id16.y; o2.z <- <VSMain return value>.normalWS_id16.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 222 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\RapporterV2.Game\log\shader_XenkoForwardShadingEffect_dfbee3c556bb5d6ff07552960eac1c9e.hlsl"
mov r0.xyz, v0.xyzx
mov r0.w, l(1.000000)

#line 161
ishl r1.xyzw, v1.xyzw, l(2, 2, 2, 2)

#line 221
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

#line 255
dp3 r3.x, v3.xyzx, r3.xyzx

#line 221
mul r4.xyzw, v2.yyyy, cb0[r1.y + 27].xyzw
mad r4.xyzw, cb0[r1.x + 27].xyzw, v2.xxxx, r4.xyzw
mad r4.xyzw, cb0[r1.z + 27].xyzw, v2.zzzz, r4.xyzw
mad r4.xyzw, cb0[r1.w + 27].xyzw, v2.wwww, r4.xyzw  // r4.x <- streams.skinningBlendMatrix_id40._m01; r4.y <- streams.skinningBlendMatrix_id40._m11; r4.z <- streams.skinningBlendMatrix_id40._m21; r4.w <- streams.skinningBlendMatrix_id40._m31
dp4 r2.y, r0.xyzw, r4.xyzw  // r2.y <- blendPos.y

#line 255
dp3 r3.y, v3.xyzx, r4.xyzx

#line 221
mul r4.xyzw, v2.yyyy, cb0[r1.y + 28].xyzw
mad r4.xyzw, cb0[r1.x + 28].xyzw, v2.xxxx, r4.xyzw
mad r4.xyzw, cb0[r1.z + 28].xyzw, v2.zzzz, r4.xyzw
mad r1.xyzw, cb0[r1.w + 28].xyzw, v2.wwww, r4.xyzw  // r1.x <- streams.skinningBlendMatrix_id40._m02; r1.y <- streams.skinningBlendMatrix_id40._m12; r1.z <- streams.skinningBlendMatrix_id40._m22; r1.w <- streams.skinningBlendMatrix_id40._m32
dp4 r2.z, r0.xyzw, r1.xyzw  // r2.z <- blendPos.z

#line 255
dp3 r3.z, v3.xyzx, r1.xyzx

#line 223
div r0.xyzw, r2.xyzw, r2.wwww  // r0.x <- blendPos.x; r0.y <- blendPos.y; r0.z <- blendPos.z; r0.w <- blendPos.w

#line 322
mov o0.xyzw, r0.xyzw

#line 245
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw
dp4 o1.w, r0.xyzw, cb1[19].xyzw

#line 255
dp3 r0.x, r3.xyzx, r3.xyzx
rsq r0.x, r0.x
mul o2.xyz, r0.xxxx, r3.xyzx

#line 322
mov o3.xy, v4.xyxx
ret 
// Approximately 37 instruction slots used
@G    Pixel => 995bca961aff6b5fffcf91d529b1c681
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float2 scale_id84;                 // Offset:    0 Size:     8
//   float2 offset_id85;                // Offset:    8 Size:     8
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// Sampler_id82                      sampler      NA          NA    0        1
// Texture_id81                      texture  float4          2d    0        1
// PerMaterial                       cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float       
// SV_Position              0   xyzw        1      POS   float       
// NORMALWS                 0   xyz         2     NONE   float       
// TEXCOORD                 0   xy          3     NONE   float   xy  
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
dcl_constantbuffer cb0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v3.xy
dcl_output o0.xyzw
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id16.x; v2.y <- __input__.normalWS_id16.y; v2.z <- __input__.normalWS_id16.z; 
//   v3.x <- __input__.TexCoord_id83.x; v3.y <- __input__.TexCoord_id83.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 152 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\RapporterV2.Game\log\shader_XenkoForwardShadingEffect_dfbee3c556bb5d6ff07552960eac1c9e.hlsl"
mad r0.xy, v3.xyxx, cb0[0].xyxx, cb0[0].zwzz
sample_indexable(texture2d)(float,float,float,float) o0.xyzw, r0.xyxx, t0.xyzw, s0

#line 305
ret 
// Approximately 3 instruction slots used
***************************
*************************/
static const float PI_id88 = 3.14159265358979323846;
const static bool TIsEnergyConservative_id89 = false;
Texture2D Texture_id81;
SamplerState Sampler_id82;
struct PS_STREAMS 
{
    float3 normalWS_id16;
    float4 PositionWS_id19;
    float2 TexCoord_id83;
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
    float2 TexCoord_id83;
    float4x4 skinningBlendMatrix_id40;
    float4 PositionH_id21;
    float DepthVS_id20;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float3 normalWS_id16;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id19 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id16 : NORMALWS;
    float2 TexCoord_id83 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    uint4 BlendIndices_id39 : BLENDINDICES;
    float4 BlendWeights_id38 : BLENDWEIGHT;
    float3 meshNormal_id14 : NORMAL;
    float2 TexCoord_id83 : TEXCOORD0;
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
    float2 scale_id84;
    float2 offset_id85;
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
float GetFilterSquareRoughnessAdjustment_id60(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id49);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id71()
{
}
void PreTransformPosition_id4()
{
}
float3 ComputeEnvironmentLightContribution_id84(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id66;
    return diffuseColor * streams.envLightDiffuseColor_id45;
}
void PrepareEnvironmentLight_id80(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id45 = 1;
    streams.envLightSpecularColor_id46 = 1;
}
void PrepareMaterialForLightingAndShading_id70(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id48 = lerp(1.0, streams.matAmbientOcclusion_id55, streams.matAmbientOcclusionDirectLightingFactor_id56);
    streams.matDiffuseVisible_id66 = streams.matDiffuse_id51.rgb * lerp(1.0f, streams.matCavity_id57, streams.matCavityDiffuse_id58) * streams.matDiffuseSpecularAlphaBlend_id62.r * streams.matAlphaBlendColor_id63;
    streams.matSpecularVisible_id68 = streams.matSpecular_id53.rgb * streams.matSpecularIntensity_id54 * lerp(1.0f, streams.matCavity_id57, streams.matCavitySpecular_id59) * streams.matDiffuseSpecularAlphaBlend_id62.g * streams.matAlphaBlendColor_id63;
    streams.NdotV_id69 = max(dot(streams.normalWS_id16, streams.viewWS_id65), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id52;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id60(streams, streams.matNormal_id49);
    streams.alphaRoughness_id67 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id69(inout PS_STREAMS streams)
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
float4 Compute_id81(inout PS_STREAMS streams)
{
    return Texture_id81.Sample(Sampler_id82, streams.TexCoord_id83 * scale_id84 + offset_id85).rgba;
}
void ResetStream_id74(inout PS_STREAMS streams)
{
    ResetStream_id71();
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
void Compute_id121(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id19(streams.matNormal_id49);
    ResetLightStream_id69(streams);
    PrepareMaterialForLightingAndShading_id70(streams);
    float3 directLightingContribution = 0;
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id80(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id84(streams);
        }
    }
    streams.shadingColor_id70 += directLightingContribution * PI_id88 + environmentLightingContribution;
    streams.shadingColorAlpha_id71 = streams.matDiffuse_id51.a;
}
void Compute_id106(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id81(streams);
    streams.matDiffuse_id51 = colorBase;
    streams.matColorBase_id50 = colorBase;
}
void ResetStream_id76(inout PS_STREAMS streams)
{
    ResetStream_id74(streams);
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
void Compute_id47(inout PS_STREAMS streams)
{

    {
        Compute_id106(streams);
    }

    {
        Compute_id121(streams);
    }
}
void ResetStream_id46(inout PS_STREAMS streams)
{
    ResetStream_id76(streams);
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
    ResetStream_id46(streams);
    Compute_id47(streams);
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
    streams.normalWS_id16 = __input__.normalWS_id16;
    streams.TexCoord_id83 = __input__.TexCoord_id83;
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
    streams.TexCoord_id83 = __input__.TexCoord_id83;
    VSMain_id8(streams);
    GenerateNormal_VS_id23(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id16 = streams.normalWS_id16;
    __output__.TexCoord_id83 = streams.TexCoord_id83;
    return __output__;
}
