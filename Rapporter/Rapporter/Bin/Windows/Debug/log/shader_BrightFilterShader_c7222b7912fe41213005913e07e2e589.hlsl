/**************************
***** Compiler Parameters *****
***************************
@P EffectName: BrightFilterShader
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id72 => SpriteBase.MatrixTransform
cbuffer Globals [Size: 96]
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
@C    ColorModulator_id73 => BrightFilterShader.ColorModulator
@C    BrightPassThreshold_id74 => BrightFilterShader.BrightPassThreshold
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PointSampler_id42 => Texturing.PointSampler [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id13 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    BrightFilterShader => 6512f1d8340cf3985d54dd8fea85425d
@S    ImageEffectShader => 31376a3f3da836cbe499b1374d52b9a7
@S    SpriteBase => a411b8f5112d9bc821268e8c81e1a94c
@S    ShaderBase => 5c3160ccbf936c5e102bd9315f0f946a
@S    ShaderBaseStream => f699080594ac63c1f38140de57ce1a7b
@S    Texturing => a9d9ee1fb9a68af7ce6b12291686faea
@S    LuminanceUtils => ddf03a665f55106a9ecfa090212a1f1d
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
#line 75 "C:\_Rapporter-Xenko3D\Rapporter\Rapporter\Bin\Windows\Debug\log\shader_BrightFilterShader_c7222b7912fe41213005913e07e2e589.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 79
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 6e04b6b94c8a0238fd734a1762e12329
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id14;     // Offset:    0 Size:     8 [unused]
//   float2 Texture1TexelSize_id16;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id18;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id20;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id22;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id24;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id26;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id28;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id30;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id32;     // Offset:   72 Size:     8 [unused]
//   float3 ColorModulator_id73;        // Offset:   80 Size:    12
//   float BrightPassThreshold_id74;    // Offset:   92 Size:     4
//      = 0x40000000 
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// PointSampler_id42                 sampler      NA          NA    0        1
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
dcl_constantbuffer cb0[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id61.x; v1.y <- __input__.TexCoord_id61.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 56 "C:\_Rapporter-Xenko3D\Rapporter\Rapporter\Bin\Windows\Debug\log\shader_BrightFilterShader_c7222b7912fe41213005913e07e2e589.hlsl"
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t0.xyzw, s0  // r0.x <- color.x; r0.y <- color.y; r0.z <- color.z

#line 52
dp3 r0.w, r0.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
max r0.w, r0.w, l(0.000100)  // r0.w <- <Luma_id4 return value>

#line 58
lt r0.w, r0.w, cb0[5].w
movc r0.w, r0.w, l(0), l(1.000000)
mul r0.xyz, r0.wwww, r0.xyzx
mul o0.xyz, r0.xyzx, cb0[5].xyzx

#line 68
mov o0.w, l(1.000000)
ret 
// Approximately 9 instruction slots used
***************************
*************************/
Texture2D Texture0_id13;
SamplerState PointSampler_id42 
{
    Filter = MIN_MAG_MIP_POINT;
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
    float3 ColorModulator_id73;
    float BrightPassThreshold_id74 = 2.0f;
};
static float Luma_id4(float3 color)
{
    return max(dot(color, float3(0.299, 0.587, 0.114)), 0.0001);
}
float4 Shading_id3(inout PS_STREAMS streams)
{
    float3 color = Texture0_id13.Sample(PointSampler_id42, streams.TexCoord_id61).rgb;
    float luminance = Luma_id4(color);
    color *= luminance < BrightPassThreshold_id74 ? 0.0f : 1.0f;
    return float4(color * ColorModulator_id73, 1.0);
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
