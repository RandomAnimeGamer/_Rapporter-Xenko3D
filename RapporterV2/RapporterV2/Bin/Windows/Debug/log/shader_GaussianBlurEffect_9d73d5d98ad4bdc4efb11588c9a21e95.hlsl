/**************************
***** Compiler Parameters *****
***************************
@P EffectName: GaussianBlurEffect
@P   - GaussianBlur.VerticalBlur: False
@P GaussianBlur.Count: 3
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id72 => SpriteBase.MatrixTransform
cbuffer Globals [Size: 128]
@C    Texture0TexelSize_id14 => Texturing.Texture0TexelSize
@C    Texture1TexelSize_id16 => Texturing.Texture1TexelSize
@C    Texture2TexelSize_id18 => Texturing.Texture2TexelSize
@C    Texture3TexelSize_id20 => Texturing.Texture3TexelSize
@C    Texture4TexelSize_id22 => Texturing.Texture4TexelSize
@C    Texture5TexelSize_id24 => Texturing.Texture5TexelSize
@C    Texture6TexelSize_id26 => Texturing.Texture6TexelSize
@C    Texture7TexelSize_id28 => Texturing.Texture7TexelSize
@C    Texture8TexelSize_id30 => Texturing.Texture8TexelSize
@C    Texture9TexelSize_id32 => Texturing.Texture9TexelSize
@C    OffsetsWeights_id75 => GaussianBlurShader.OffsetsWeights
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    LinearSampler_id43 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id13 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    GaussianBlurShader => b348e5912605e8ca3318942e6291bd95
@S    ImageEffectShader => 31376a3f3da836cbe499b1374d52b9a7
@S    SpriteBase => a411b8f5112d9bc821268e8c81e1a94c
@S    ShaderBase => 5c3160ccbf936c5e102bd9315f0f946a
@S    ShaderBaseStream => f699080594ac63c1f38140de57ce1a7b
@S    Texturing => a9d9ee1fb9a68af7ce6b12291686faea
***************************
*****     Stages      *****
***************************
@G    Vertex => 79eb7ff071584feaa45b858a38e87b6a
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 MatrixTransform_id72;     // Offset:    0 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// PerDraw                           cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[4], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xy
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
//
// Initial variable locations:
//   v0.x <- __input__.Position_id71.x; v0.y <- __input__.Position_id71.y; v0.z <- __input__.Position_id71.z; v0.w <- __input__.Position_id71.w; 
//   v1.x <- __input__.TexCoord_id61.x; v1.y <- __input__.TexCoord_id61.y; 
//   o1.x <- <VSMain return value>.TexCoord_id61.x; o1.y <- <VSMain return value>.TexCoord_id61.y; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 78 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_GaussianBlurEffect_9d73d5d98ad4bdc4efb11588c9a21e95.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 82
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => caa43d9c4f3f2b1d62454df5484e35a2
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id14;     // Offset:    0 Size:     8
//   float2 Texture1TexelSize_id16;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id18;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id20;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id22;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id24;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id26;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id28;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id30;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id32;     // Offset:   72 Size:     8 [unused]
//   float2 OffsetsWeights_id75[3];     // Offset:   80 Size:    40
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// LinearSampler_id43                sampler      NA          NA    0        1
// Texture0_id13                     texture  float4          2d    0        1
// Globals                           cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
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
dcl_constantbuffer cb0[8], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 3
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id61.x; v1.y <- __input__.TexCoord_id61.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 54 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_GaussianBlurEffect_9d73d5d98ad4bdc4efb11588c9a21e95.hlsl"
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t0.xyzw, s0
mul r1.xy, cb0[0].xyxx, l(1.000000, 0.000000, 0.000000, 0.000000)  // r1.x <- direction.x; r1.y <- direction.y

#line 59
mad r1.zw, -r1.xxxy, cb0[6].xxxx, v1.xxxy
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.zwzz, t0.xyzw, s0
mul r2.xyz, r2.xyzx, cb0[6].yyyy
mad r0.xyz, r0.xyzx, cb0[5].yyyy, r2.xyzx  // r0.x <- value.x; r0.y <- value.y; r0.z <- value.z
mad r1.zw, r1.xxxy, cb0[6].xxxx, v1.xxxy
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.zwzz, t0.xyzw, s0
mad r0.xyz, r2.xyzx, cb0[6].yyyy, r0.xyzx
mad r1.zw, -r1.xxxy, cb0[7].xxxx, v1.xxxy
mad r1.xy, r1.xyxx, cb0[7].xxxx, v1.xyxx
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t0.xyzw, s0
mad r0.xyz, r1.xyzx, cb0[7].yyyy, r0.xyzx
mad o0.xyz, r2.xyzx, cb0[7].yyyy, r0.xyzx

#line 71
mov o0.w, l(1.000000)
ret 
// Approximately 17 instruction slots used
***************************
*************************/
const static int BlurCount_id73 = 3;
const static bool IsVertical_id74 = false;
Texture2D Texture0_id13;
SamplerState LinearSampler_id43 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
struct PS_STREAMS 
{
    float2 TexCoord_id61;
    float4 ColorTarget_id1;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id1 : SV_Target0;
};
struct VS_STREAMS 
{
    float4 Position_id71;
    float2 TexCoord_id61;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id61 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id71 : POSITION;
    float2 TexCoord_id61 : TEXCOORD0;
};
cbuffer PerDraw 
{
    float4x4 MatrixTransform_id72;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id14;
    float2 Texture1TexelSize_id16;
    float2 Texture2TexelSize_id18;
    float2 Texture3TexelSize_id20;
    float2 Texture4TexelSize_id22;
    float2 Texture5TexelSize_id24;
    float2 Texture6TexelSize_id26;
    float2 Texture7TexelSize_id28;
    float2 Texture8TexelSize_id30;
    float2 Texture9TexelSize_id32;
    float2 OffsetsWeights_id75[BlurCount_id73];
};
float4 Shading_id3(inout PS_STREAMS streams)
{
    float2 direction = (IsVertical_id74 ? float2(0, 1) : float2(1, 0)) * Texture0TexelSize_id14;
    float3 value = Texture0_id13.Sample(LinearSampler_id43, streams.TexCoord_id61).rgb * OffsetsWeights_id75[0].y;

    [unroll]
    for (int i = 1; i < BlurCount_id73; i++)
    {
        value += Texture0_id13.Sample(LinearSampler_id43, streams.TexCoord_id61 - direction * OffsetsWeights_id75[i].x).rgb * OffsetsWeights_id75[i].y;
        value += Texture0_id13.Sample(LinearSampler_id43, streams.TexCoord_id61 + direction * OffsetsWeights_id75[i].x).rgb * OffsetsWeights_id75[i].y;
    }
    return float4(value, 1);
}
PS_OUTPUT PSMain(VS_OUTPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id61 = __input__.TexCoord_id61;
    streams.ColorTarget_id1 = Shading_id3(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id1 = streams.ColorTarget_id1;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id71 = __input__.Position_id71;
    streams.TexCoord_id61 = __input__.TexCoord_id61;
    streams.ShadingPosition_id0 = mul(streams.Position_id71, MatrixTransform_id72);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.TexCoord_id61 = streams.TexCoord_id61;
    return __output__;
}
