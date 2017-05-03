/**************************
***** Compiler Parameters *****
***************************
@P EffectName: SkyboxShader
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id72 => SpriteBase.MatrixTransform
cbuffer Globals [Size: 288]
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
@C    Intensity_id74 => SkyboxShader.Intensity
@C    ProjectionInverse_id76 => SkyboxShader.ProjectionInverse
@C    ViewInverse_id77 => SkyboxShader.ViewInverse
@C    SkyMatrix_id78 => SkyboxShader.SkyMatrix
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    Globals => Globals [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id43 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    CubeMap_id75 => SkyboxShader.CubeMap [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    SkyboxShader => 6e4df091a78c67cf075f263856c1717a
@S    SpriteBase => a411b8f5112d9bc821268e8c81e1a94c
@S    ShaderBase => 5c3160ccbf936c5e102bd9315f0f946a
@S    ShaderBaseStream => f699080594ac63c1f38140de57ce1a7b
@S    Texturing => a9d9ee1fb9a68af7ce6b12291686faea
@S    SkyboxStream => 193e2cf769fa590b72735b9cfd66b2e7
***************************
*****     Stages      *****
***************************
@G    Vertex => 4fe0c03d47813df08a4a21d244c6fdcc
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
//   float Intensity_id74;              // Offset:   80 Size:     4 [unused]
//   float4x4 ProjectionInverse_id76;   // Offset:   96 Size:    64
//   float4x4 ViewInverse_id77;         // Offset:  160 Size:    64
//   float4x4 SkyMatrix_id78;           // Offset:  224 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// PerDraw                           cbuffer      NA          NA    0        1
// Globals                           cbuffer      NA          NA    1        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// SKYBOXVIEWDIRECTION_ID73_SEM     0   xyz         1     NONE   float   xyz 
//
vs_4_0
dcl_constantbuffer cb0[4], immediateIndexed
dcl_constantbuffer cb1[17], immediateIndexed
dcl_input v0.xyzw
dcl_output_siv o0.xyzw, position
dcl_output o1.xyz
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id71.x; v0.y <- __input__.Position_id71.y; v0.z <- __input__.Position_id71.z; v0.w <- __input__.Position_id71.w; 
//   o1.x <- <VSMain return value>.skyboxViewDirection_id73.x; o1.y <- <VSMain return value>.skyboxViewDirection_id73.y; o1.z <- <VSMain return value>.skyboxViewDirection_id73.z; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 133 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_SkyboxShader_b654c29d77841ee90d171b8251745885.hlsl"
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.ShadingPosition_id0.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.ShadingPosition_id0.y
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.ShadingPosition_id0.w

#line 157
mov o0.xyw, r0.xyxw

#line 149
div r0.xy, r0.xyxx, r0.wwww  // r0.x <- screenPosition.x; r0.y <- screenPosition.y
mov r0.zw, l(0,0,1.000000,1.000000)
dp4 r1.x, r0.xyww, cb1[6].xyzw  // r1.x <- directionVS.x
dp4 r1.y, r0.xyww, cb1[7].xyzw  // r1.y <- directionVS.y
dp4 r1.z, r0.xyzw, cb1[8].xyzw  // r1.z <- directionVS.z
dp3 r0.x, r1.xyzx, cb1[10].xyzx  // r0.x <- directionWS.x
dp3 r0.y, r1.xyzx, cb1[11].xyzx  // r0.y <- directionWS.y
dp3 r0.z, r1.xyzx, cb1[12].xyzx  // r0.z <- directionWS.z
dp3 o1.x, r0.xyzx, cb1[14].xyzx
dp3 o1.y, r0.xyzx, cb1[15].xyzx
dp3 o1.z, r0.xyzx, cb1[16].xyzx

#line 157
ret 
// Approximately 17 instruction slots used
@G    Pixel => 1d63b67745ebb4b84a1fcd4b4cfd31de
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
//   float Intensity_id74;              // Offset:   80 Size:     4
//   float4x4 ProjectionInverse_id76;   // Offset:   96 Size:    64 [unused]
//   float4x4 ViewInverse_id77;         // Offset:  160 Size:    64 [unused]
//   float4x4 SkyMatrix_id78;           // Offset:  224 Size:    64 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// LinearSampler_id43                sampler      NA          NA    0        1
// CubeMap_id75                      texture  float4        cube    0        1
// Globals                           cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// SKYBOXVIEWDIRECTION_ID73_SEM     0   xyz         1     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_4_0
dcl_constantbuffer cb0[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texturecube (float,float,float,float) t0
dcl_input_ps linear v1.xyz
dcl_output o0.xyzw
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.skyboxViewDirection_id73.x; v1.y <- __input__.skyboxViewDirection_id73.y; v1.z <- __input__.skyboxViewDirection_id73.z; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 127 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_SkyboxShader_b654c29d77841ee90d171b8251745885.hlsl"
dp3 r0.x, v1.xyzx, v1.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v1.xyzx  // r0.x <- samplingDir.x; r0.y <- samplingDir.y; r0.z <- samplingDir.z
mov r0.w, -r0.z
sample r0.xyzw, r0.xywx, t0.xyzw, s0  // r0.x <- color.x; r0.y <- color.y; r0.z <- color.z
mul o0.xyz, r0.xyzx, cb0[5].xxxx

#line 142
mov o0.w, l(1.000000)
ret 
// Approximately 8 instruction slots used
***************************
*************************/
Texture2D Texture0_id13;
Texture2D Texture1_id15;
Texture2D Texture2_id17;
Texture2D Texture3_id19;
Texture2D Texture4_id21;
Texture2D Texture5_id23;
Texture2D Texture6_id25;
Texture2D Texture7_id27;
Texture2D Texture8_id29;
Texture2D Texture9_id31;
TextureCube TextureCube0_id33;
TextureCube TextureCube1_id34;
TextureCube TextureCube2_id35;
TextureCube TextureCube3_id36;
Texture3D Texture3D0_id37;
Texture3D Texture3D1_id38;
Texture3D Texture3D2_id39;
Texture3D Texture3D3_id40;
SamplerState Sampler_id41;
SamplerState PointSampler_id42 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id43 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id44 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id45 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id46 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id47 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id48 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id49 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id50 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id51;
SamplerState Sampler1_id52;
SamplerState Sampler2_id53;
SamplerState Sampler3_id54;
SamplerState Sampler4_id55;
SamplerState Sampler5_id56;
SamplerState Sampler6_id57;
SamplerState Sampler7_id58;
SamplerState Sampler8_id59;
SamplerState Sampler9_id60;
TextureCube CubeMap_id75;
struct PS_STREAMS 
{
    float3 skyboxViewDirection_id73;
    float4 ColorTarget_id1;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id1 : SV_Target0;
};
struct VS_STREAMS 
{
    float4 Position_id71;
    float4 ShadingPosition_id0;
    float3 skyboxViewDirection_id73;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float3 skyboxViewDirection_id73 : SKYBOXVIEWDIRECTION_ID73_SEM;
};
struct VS_INPUT 
{
    float4 Position_id71 : POSITION;
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
    float Intensity_id74;
    float4x4 ProjectionInverse_id76;
    float4x4 ViewInverse_id77;
    float4x4 SkyMatrix_id78;
};
float4 Shading_id4(inout PS_STREAMS streams)
{
    float3 samplingDir = normalize(streams.skyboxViewDirection_id73);
    float3 color = CubeMap_id75.Sample(LinearSampler_id43, float3(samplingDir.x, samplingDir.y, -samplingDir.z)).rgb;
    return float4(color * Intensity_id74, 1.0);
}
void VSMain_id2(inout VS_STREAMS streams)
{
    streams.ShadingPosition_id0 = mul(streams.Position_id71, MatrixTransform_id72);
}
PS_OUTPUT PSMain(VS_OUTPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.skyboxViewDirection_id73 = __input__.skyboxViewDirection_id73;
    streams.ColorTarget_id1 = Shading_id4(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id1 = streams.ColorTarget_id1;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id71 = __input__.Position_id71;
    VSMain_id2(streams);
    float4 screenPosition = streams.ShadingPosition_id0 / streams.ShadingPosition_id0.w;
    float4 position = float4(screenPosition.x, screenPosition.y, 1.0f, 1.0f);
    float3 directionVS = mul(position, ProjectionInverse_id76).xyz;
    float3 directionWS = mul(float4(directionVS, 0), ViewInverse_id77).xyz;
    streams.skyboxViewDirection_id73 = mul(directionWS, (float3x3)SkyMatrix_id78);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.skyboxViewDirection_id73 = streams.skyboxViewDirection_id73;
    return __output__;
}