/**************************
***** Compiler Parameters *****
***************************
@P EffectName: LightStreakEffect
@P   - LightStreak.Count: 4
@P LightStreak.AnamorphicCount: 1
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id72 => SpriteBase.MatrixTransform
cbuffer Globals [Size: 176]
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
@C    TapOffsetsWeights_id75 => LightStreakShader.TapOffsetsWeights
@C    Direction_id76 => LightStreakShader.Direction
@C    ColorAberrationCoefficients_id77 => LightStreakShader.ColorAberrationCoefficients
@C    AnamorphicOffsetsWeight_id78 => LightStreakShader.AnamorphicOffsetsWeight
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
@S    LightStreakShader => b26ffd779d1533253004183c69c34965
@S    ImageEffectShader => 31376a3f3da836cbe499b1374d52b9a7
@S    SpriteBase => a411b8f5112d9bc821268e8c81e1a94c
@S    ShaderBase => 5c3160ccbf936c5e102bd9315f0f946a
@S    ShaderBaseStream => f699080594ac63c1f38140de57ce1a7b
@S    Texturing => a9d9ee1fb9a68af7ce6b12291686faea
***************************
*****     Stages      *****
***************************
@G    Vertex => 7b8af58dd24be2684728cc0b8599ce6f
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
vs_4_0
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
#line 99 "C:\_Rapporter-Xenko3D\FirstPersonShooter2\FirstPersonShooter2\Bin\Windows\Debug\log\shader_LightStreakEffect_9b0c3b6e92f3e9a89ff1c07251f9fda0.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 103
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => d4f1eaee82168b463fab58438654508c
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
//   float2 TapOffsetsWeights_id75[4];  // Offset:   80 Size:    56
//   float2 Direction_id76;             // Offset:  136 Size:     8
//   float3 ColorAberrationCoefficients_id77;// Offset:  144 Size:    12
//   float3 AnamorphicOffsetsWeight_id78;// Offset:  160 Size:    12
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
ps_4_0
dcl_constantbuffer cb0[11], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 4
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id61.x; v1.y <- __input__.TexCoord_id61.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 56 "C:\_Rapporter-Xenko3D\FirstPersonShooter2\FirstPersonShooter2\Bin\Windows\Debug\log\shader_LightStreakEffect_9b0c3b6e92f3e9a89ff1c07251f9fda0.hlsl"
mul r0.xy, cb0[0].xyxx, cb0[8].zwzz  // r0.x <- direction.x; r0.y <- direction.y

#line 67
mad r0.zw, r0.xxxy, cb0[6].xxxx, v1.xxxy
mad r0.zw, cb0[10].xxxy, cb0[0].xxxy, r0.zzzw  // r0.z <- tapUV.x; r0.w <- tapUV.y
lt r1.xy, r0.zwzz, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r1.zw, l(0.000000, 0.000000, 1.000000, 1.000000), r0.zzzw
sample r2.xyzw, r0.zwzz, t0.xyzw, s0  // r2.x <- tapColor.x; r2.y <- tapColor.y; r2.z <- tapColor.z
or r0.z, r1.z, r1.x
or r0.z, r1.y, r0.z
or r0.z, r1.w, r0.z

#line 72
movc r1.xyz, r0.zzzz, l(0,0,0,0), r2.xyzx  // r1.x <- tapColor.x; r1.y <- tapColor.y; r1.z <- tapColor.z

#line 76
mul r1.w, r1.y, cb0[9].y  // r1.w <- tapColor.y

#line 79
mul r1.xyz, r1.xwzx, cb0[10].zzzz  // r1.y <- tapColor.y
mul r1.xyz, r1.xyzx, cb0[6].yyyy

#line 67
mad r0.zw, r0.xxxy, cb0[5].xxxx, v1.xxxy
mad r0.zw, cb0[10].xxxy, cb0[0].xxxy, r0.zzzw  // r0.z <- tapUV.x; r0.w <- tapUV.y
lt r2.xy, r0.zwzz, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r2.zw, l(0.000000, 0.000000, 1.000000, 1.000000), r0.zzzw
sample r3.xyzw, r0.zwzz, t0.xyzw, s0  // r3.x <- tapColor.x; r3.y <- tapColor.y; r3.z <- tapColor.z
or r0.z, r2.z, r2.x
or r0.z, r2.y, r0.z
or r0.z, r2.w, r0.z

#line 72
movc r2.yzw, r0.zzzz, l(0,0,0,0), r3.xxyz  // r2.y <- tapColor.x; r2.z <- tapColor.y; r2.w <- tapColor.z
mul r2.x, r2.y, cb0[9].x  // r2.x <- tapColor.x

#line 79
mul r2.xyz, r2.xzwx, cb0[10].zzzz  // r2.y <- tapColor.y; r2.z <- tapColor.z
mad r1.xyz, r2.xyzx, cb0[5].yyyy, r1.xyzx  // r1.x <- color.x; r1.y <- color.y; r1.z <- color.z

#line 67
mad r0.zw, r0.xxxy, cb0[7].xxxx, v1.xxxy
mad r0.xy, r0.xyxx, cb0[8].xxxx, v1.xyxx
mad r0.xy, cb0[10].xyxx, cb0[0].xyxx, r0.xyxx  // r0.x <- tapUV.x; r0.y <- tapUV.y
mad r0.zw, cb0[10].xxxy, cb0[0].xxxy, r0.zzzw  // r0.z <- tapUV.x; r0.w <- tapUV.y
lt r2.xy, r0.zwzz, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r2.zw, l(0.000000, 0.000000, 1.000000, 1.000000), r0.zzzw
sample r3.xyzw, r0.zwzz, t0.xyzw, s0  // r3.x <- tapColor.x; r3.y <- tapColor.y; r3.z <- tapColor.z
or r0.z, r2.z, r2.x
or r0.z, r2.y, r0.z
or r0.z, r2.w, r0.z

#line 72
movc r2.xyz, r0.zzzz, l(0,0,0,0), r3.xyzx  // r2.x <- tapColor.x; r2.y <- tapColor.y; r2.z <- tapColor.z

#line 78
mul r2.w, r2.z, cb0[9].z  // r2.w <- tapColor.z
mul r2.xyz, r2.xywx, cb0[10].zzzz  // r2.z <- tapColor.z
mad r1.xyz, r2.xyzx, cb0[7].yyyy, r1.xyzx

#line 69
lt r0.zw, r0.xxxy, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r2.xy, l(1.000000, 1.000000, 0.000000, 0.000000), r0.xyxx
sample r3.xyzw, r0.xyxx, t0.xyzw, s0  // r3.x <- tapColor.x; r3.y <- tapColor.y; r3.z <- tapColor.z

#line 79
mul r3.xyz, r3.xyzx, cb0[10].zzzz
mul r3.xyz, r3.xyzx, cb0[8].yyyy

#line 69
or r0.x, r0.z, r2.x
or r0.x, r0.w, r0.x
or r0.x, r2.y, r0.x

#line 80
movc r0.xyz, r0.xxxx, l(0,0,0,0), r3.xyzx
add o0.xyz, r0.xyzx, r1.xyzx

#line 92
mov o0.w, l(1.000000)
ret 
// Approximately 51 instruction slots used
***************************
*************************/
const static int TapCount_id73 = 4;
const static int AnamorphicCount_id74 = 1;
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
    float2 TapOffsetsWeights_id75[TapCount_id73];
    float2 Direction_id76;
    float3 ColorAberrationCoefficients_id77;
    float3 AnamorphicOffsetsWeight_id78[AnamorphicCount_id74];
};
float4 Shading_id3(inout PS_STREAMS streams)
{
    float2 direction = Direction_id76 * Texture0TexelSize_id14;
    float3 color = float3(0.0, 0.0, 0.0);

    [unroll]
    for (int anamorphic = 0; anamorphic < AnamorphicCount_id74; anamorphic++)
    {
        float2 textOffset = AnamorphicOffsetsWeight_id78[anamorphic].xy * Texture0TexelSize_id14;

        [unroll]
        for (int i = 0; i < TapCount_id73; i++)
        {
            float2 tapUV = streams.TexCoord_id61 + direction * TapOffsetsWeights_id75[i].x + textOffset;
            float3 tapColor = Texture0_id13.Sample(LinearSampler_id43, tapUV).rgb;
            if (tapUV.x < 0 || tapUV.x > 1 || tapUV.y < 0 || tapUV.y > 1)
            {
                tapColor = float3(0.0, 0.0, 0.0);
            }
            if (i == 0)
                tapColor.r *= ColorAberrationCoefficients_id77.r;
            else if (i == 1)
                tapColor.g *= ColorAberrationCoefficients_id77.g;
            else if (i == 2)
                tapColor.b *= ColorAberrationCoefficients_id77.b;
            tapColor *= AnamorphicOffsetsWeight_id78[anamorphic].z;
            color += tapColor * TapOffsetsWeights_id75[i].y;
        }
    }
    return float4(color, 1);
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
