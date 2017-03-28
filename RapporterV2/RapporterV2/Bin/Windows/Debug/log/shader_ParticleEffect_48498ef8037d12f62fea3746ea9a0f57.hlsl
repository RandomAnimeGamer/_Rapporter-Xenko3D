/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ParticleEffect
@P   - ParticleBase.UsesSoftEdge: 0
@P ParticleBase.BaseColor: mixin ComputeColorMultiply [{color1 = ComputeColorConstantColorLink<ParticleBase.EmissiveValue>}, {color2 = mixin ComputeColorMultiply [{color1 = ComputeColorTextureScaledOffsetDynamicSampler<ParticleBase.EmissiveMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}, {color2 = ComputeColorFromStream<COLOR0,rgba>}]}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerMaterial [Size: 64]
@C    ColorScale_id90 => ParticleBase.ColorScale
@C    AlphaAdditive_id91 => ParticleBase.AlphaAdditive
@C    ZOffset_id92 => ParticleBase.ZOffset
@C    SoftEdgeInverseDistance_id93 => ParticleBase.SoftEdgeInverseDistance
@C    constantColor_id95 => ParticleBase.EmissiveValue
@C    scale_id99 => Material.TextureScale
@C    offset_id100 => Material.TextureOffset
cbuffer PerView [Size: 256]
@C    NearClipPlane_id0 => Camera.NearClipPlane
@C    FarClipPlane_id1 => Camera.FarClipPlane
@C    ZProjection_id2 => Camera.ZProjection
@C    ViewSize_id3 => Camera.ViewSize
@C    AspectRatio_id4 => Camera.AspectRatio
@C    ViewMatrix_id77 => ParticleUtilities.ViewMatrix
@C    ProjectionMatrix_id78 => ParticleUtilities.ProjectionMatrix
@C    ViewProjectionMatrix_id79 => ParticleUtilities.ViewProjectionMatrix
@C    ViewFrustum_id80 => ParticleUtilities.ViewFrustum
@C    Viewport_id81 => ParticleUtilities.Viewport
***************************
******  Resources    ******
***************************
@R    Texture_id96 => ParticleBase.EmissiveMap [Stage: None, Slot: (-1--1)]
@R    Texture_id96 => ParticleBase.EmissiveMap [Stage: None, Slot: (-1--1)]
@R    Sampler_id97 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Sampler_id97 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    DepthStencil_id63 => DepthBase.DepthStencil [Stage: None, Slot: (-1--1)]
@R    DepthStencil_id63 => DepthBase.DepthStencil [Stage: None, Slot: (-1--1)]
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerMaterial => PerMaterial [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    Sampler_id97 => Material.Sampler.i0 [Stage: Pixel, Slot: (0-0)]
@R    Texture_id96 => ParticleBase.EmissiveMap [Stage: Pixel, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ParticleBase => 2c33b8501feaf0fb409f5ff6833b1332
@S    DepthBase => f11f98d638eb186cd6fcafb55a9c5478
@S    Camera => ec417735d81c9ad1d80ca0e6d87138b0
@S    Texturing => a9d9ee1fb9a68af7ce6b12291686faea
@S    ShaderBase => 5c3160ccbf936c5e102bd9315f0f946a
@S    ShaderBaseStream => f699080594ac63c1f38140de57ce1a7b
@S    ParticleUtilities => a2a0c9f46338c65dacfb335bd11cd385
@S    ParticleComputeColorShader => 5ebc3ef31ad9520218fcd9dc3801294c
@S    ComputeColor => 6e3e8655257003c26480195de33cbbc1
@S    ComputeColorMultiply => 4609285caa8d3d20440e3ecad99b1075
@S    ComputeColorConstantColorLink => a4f7de8d03608ceba6b4f128ada2b3ed
@S    ComputeColorTextureScaledOffsetDynamicSampler => 36853d1a7bd080d8e9e9c5137a104b79
@S    DynamicTexture => 74e692ca9cc93b6cc6965bc380e07efe
@S    DynamicSampler => 0e1b689d1f965f3f34ae76abdf34dea7
@S    DynamicTextureStream => 546b0c40a42b4fe0e5613396b0ed4d66
@S    ComputeColorFromStream => e668facac273a7ffe1f0256fa701180f
***************************
*****     Stages      *****
***************************
@G    Vertex => 8bcb5a061b9002af1343c52f6fa9c889
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float4 ColorScale_id90;            // Offset:    0 Size:    16 [unused]
//   float AlphaAdditive_id91;          // Offset:   16 Size:     4 [unused]
//   float ZOffset_id92;                // Offset:   20 Size:     4
//   float SoftEdgeInverseDistance_id93;// Offset:   24 Size:     4 [unused]
//   float4 constantColor_id95;         // Offset:   32 Size:    16 [unused]
//   float2 scale_id99;                 // Offset:   48 Size:     8 [unused]
//   float2 offset_id100;               // Offset:   56 Size:     8 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float NearClipPlane_id0;           // Offset:    0 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id1;            // Offset:    4 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id2;            // Offset:    8 Size:     8 [unused]
//   float2 ViewSize_id3;               // Offset:   16 Size:     8 [unused]
//   float AspectRatio_id4;             // Offset:   24 Size:     4 [unused]
//   float4x4 ViewMatrix_id77;          // Offset:   32 Size:    64
//   float4x4 ProjectionMatrix_id78;    // Offset:   96 Size:    64
//   float4x4 ViewProjectionMatrix_id79;// Offset:  160 Size:    64 [unused]
//   float4 ViewFrustum_id80;           // Offset:  224 Size:    16 [unused]
//   float4 Viewport_id81;              // Offset:  240 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// PerMaterial                       cbuffer      NA          NA    0        1
// PerView                           cbuffer      NA          NA    1        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
// COLOR                    0   xyzw        2     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// Z_DEPTH_VALUE            0   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// COLOR                    0   xyzw        2     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[2], immediateIndexed
dcl_constantbuffer cb1[10], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xy
dcl_input v2.xyzw
dcl_output_siv o0.xyzw, position
dcl_output o1.x
dcl_output o1.yz
dcl_output o2.xyzw
dcl_temps 3
//
// Initial variable locations:
//   v0.x <- __input__.Position_id86.x; v0.y <- __input__.Position_id86.y; v0.z <- __input__.Position_id86.z; v0.w <- __input__.Position_id86.w; 
//   v1.x <- __input__.TexCoord_id53.x; v1.y <- __input__.TexCoord_id53.y; 
//   v2.x <- __input__.LocalColor_id101.x; v2.y <- __input__.LocalColor_id101.y; v2.z <- __input__.LocalColor_id101.z; v2.w <- __input__.LocalColor_id101.w; 
//   o2.x <- <VSMain return value>.LocalColor_id101.x; o2.y <- <VSMain return value>.LocalColor_id101.y; o2.z <- <VSMain return value>.LocalColor_id101.z; o2.w <- <VSMain return value>.LocalColor_id101.w; 
//   o1.x <- <VSMain return value>.ZDepth_id87; o1.y <- <VSMain return value>.TexCoord_id53.x; o1.z <- <VSMain return value>.TexCoord_id53.y; 
//   o0.x <- <VSMain return value>.ShadingPosition_id64.x; o0.y <- <VSMain return value>.ShadingPosition_id64.y; o0.z <- <VSMain return value>.ShadingPosition_id64.z; o0.w <- <VSMain return value>.ShadingPosition_id64.w
//
#line 149 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_ParticleEffect_48498ef8037d12f62fea3746ea9a0f57.hlsl"
mov r0.w, l(1.000000)

#line 144
dp4 r1.z, v0.xyzw, cb1[4].xyzw  // r1.z <- viewPos.z

#line 147
add r0.z, r1.z, cb0[1].y  // r0.z <- viewPos.z

#line 144
dp4 r1.x, v0.xyzw, cb1[2].xyzw  // r1.x <- viewPos.x
dp4 r1.y, v0.xyzw, cb1[3].xyzw  // r1.y <- viewPos.y

#line 149
mov r0.xy, r1.xyxx
dp4 r2.x, r0.xyzw, cb1[8].xyzw  // r2.x <- viewProjPos.z
dp4 r0.x, r0.xyzw, cb1[9].xyzw  // r0.x <- viewProjPos.w

#line 156
mov o1.x, r0.z

#line 150
div r0.x, r2.x, r0.x

#line 144
dp4 r1.w, v0.xyzw, cb1[5].xyzw  // r1.w <- viewPos.w
dp4 r0.y, r1.xyzw, cb1[9].xyzw  // r0.y <- streams.ShadingPosition_id64.w

#line 150
mul o0.z, r0.y, r0.x

#line 156
mov o0.w, r0.y

#line 145
dp4 o0.x, r1.xyzw, cb1[6].xyzw
dp4 o0.y, r1.xyzw, cb1[7].xyzw

#line 156
mov o1.yz, v1.xxyx
mov o2.xyzw, v2.xyzw
ret 
// Approximately 19 instruction slots used
@G    Pixel => a8472e35a0a6c9f65a590809bc3c704a
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float4 ColorScale_id90;            // Offset:    0 Size:    16
//   float AlphaAdditive_id91;          // Offset:   16 Size:     4
//   float ZOffset_id92;                // Offset:   20 Size:     4 [unused]
//   float SoftEdgeInverseDistance_id93;// Offset:   24 Size:     4 [unused]
//   float4 constantColor_id95;         // Offset:   32 Size:    16
//   float2 scale_id99;                 // Offset:   48 Size:     8
//   float2 offset_id100;               // Offset:   56 Size:     8
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// Sampler_id97                      sampler      NA          NA    0        1
// Texture_id96                      texture  float4          2d    0        1
// PerMaterial                       cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// Z_DEPTH_VALUE            0   x           1     NONE   float       
// TEXCOORD                 0    yz         1     NONE   float    yz 
// COLOR                    0   xyzw        2     NONE   float   xyzw
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
dcl_constantbuffer cb0[4], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.yz
dcl_input_ps linear v2.xyzw
dcl_output o0.xyzw
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id64.x; v0.y <- __input__.ShadingPosition_id64.y; v0.z <- __input__.ShadingPosition_id64.z; v0.w <- __input__.ShadingPosition_id64.w; 
//   v1.x <- __input__.ZDepth_id87; v1.y <- __input__.TexCoord_id53.x; v1.z <- __input__.TexCoord_id53.y; 
//   v2.x <- __input__.LocalColor_id101.x; v2.y <- __input__.LocalColor_id101.y; v2.z <- __input__.LocalColor_id101.z; v2.w <- __input__.LocalColor_id101.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id65.x; o0.y <- <PSMain return value>.ColorTarget_id65.y; o0.z <- <PSMain return value>.ColorTarget_id65.z; o0.w <- <PSMain return value>.ColorTarget_id65.w
//
#line 85 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_ParticleEffect_48498ef8037d12f62fea3746ea9a0f57.hlsl"
mad r0.xy, v1.yzyy, cb0[3].xyxx, cb0[3].zwzz
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.xyxx, t0.xyzw, s0  // r0.x <- <Compute_id14 return value>.x; r0.y <- <Compute_id14 return value>.y; r0.z <- <Compute_id14 return value>.z; r0.w <- <Compute_id14 return value>.w

#line 91
mul r0.xyzw, r0.xyzw, v2.xyzw  // r0.x <- mix1.x; r0.y <- mix1.y; r0.z <- mix1.z; r0.w <- mix1.w

#line 102
mul r0.xyzw, r0.xyzw, cb0[2].xyzw  // r0.x <- mix1.x; r0.y <- mix1.y; r0.z <- mix1.z; r0.w <- mix1.w

#line 117
mul r0.xyzw, r0.xyzw, cb0[0].xyzw  // r0.x <- finalColor.x; r0.y <- finalColor.y; r0.z <- finalColor.z; r0.w <- finalColor.w

#line 131
mul o0.w, r0.w, cb0[1].x

#line 135
mov o0.xyz, r0.xyzx
ret 
// Approximately 8 instruction slots used
***************************
*************************/
static const float GelfondConst_id82 = 23.1406926327792690;
static const float GelfondSchneiderConst_id83 = 2.6651441426902251;
SamplerState PointSampler_id34 
{
    Filter = MIN_MAG_MIP_POINT;
};
Texture2D Texture_id96;
SamplerState Sampler_id97;
Texture2D DepthStencil_id63;
struct PS_STREAMS 
{
    float2 TexCoord_id53;
    float4 LocalColor_id101;
    float4 ShadingPosition_id64;
    float ZDepth_id87;
    float4 ColorTarget_id65;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id65 : SV_Target0;
};
struct VS_STREAMS 
{
    float4 Position_id86;
    float2 TexCoord_id53;
    float4 LocalColor_id101;
    float4 ShadingPosition_id64;
    float ZDepth_id87;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id64 : SV_Position;
    float ZDepth_id87 : Z_DEPTH_VALUE;
    float2 TexCoord_id53 : TEXCOORD0;
    float4 LocalColor_id101 : COLOR0;
};
struct VS_INPUT 
{
    float4 Position_id86 : POSITION;
    float2 TexCoord_id53 : TEXCOORD0;
    float4 LocalColor_id101 : COLOR0;
};
cbuffer PerMaterial 
{
    float4 ColorScale_id90;
    float AlphaAdditive_id91;
    float ZOffset_id92;
    float SoftEdgeInverseDistance_id93;
    float4 constantColor_id95;
    float2 scale_id99;
    float2 offset_id100;
};
cbuffer PerView 
{
    float NearClipPlane_id0 = 1.0f;
    float FarClipPlane_id1 = 100.0f;
    float2 ZProjection_id2;
    float2 ViewSize_id3;
    float AspectRatio_id4;
    float4x4 ViewMatrix_id77;
    float4x4 ProjectionMatrix_id78;
    float4x4 ViewProjectionMatrix_id79;
    float4 ViewFrustum_id80;
    float4 Viewport_id81;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id6;
    float2 Texture1TexelSize_id8;
    float2 Texture2TexelSize_id10;
    float2 Texture3TexelSize_id12;
    float2 Texture4TexelSize_id14;
    float2 Texture5TexelSize_id16;
    float2 Texture6TexelSize_id18;
    float2 Texture7TexelSize_id20;
    float2 Texture8TexelSize_id22;
    float2 Texture9TexelSize_id24;
};
float4 Compute_id16(inout PS_STREAMS streams)
{
    return streams.LocalColor_id101.rgba;
}
float4 Compute_id14(inout PS_STREAMS streams)
{
    return Texture_id96.Sample(Sampler_id97, streams.TexCoord_id53 * scale_id99 + offset_id100).rgba;
}
float4 Compute_id19(inout PS_STREAMS streams)
{
    float4 tex1 = Compute_id14(streams);
    float4 tex2 = Compute_id16(streams);
    float4 mix1 = tex1 * tex2;
    return mix1;
}
float4 Compute_id12()
{
    return constantColor_id95;
}
float4 Compute_id11(inout PS_STREAMS streams)
{
    float4 tex1 = Compute_id12();
    float4 tex2 = Compute_id19(streams);
    float4 mix1 = tex1 * tex2;
    return mix1;
}
float4 Shading_id9()
{
    return ColorScale_id90;
}
float GetLinearDepth_id7(float z)
{
    float fastA = -ProjectionMatrix_id78._33;
    float fastB = ProjectionMatrix_id78._43;
    return fastB / (z - fastA);
}
float4 Shading_id10(inout PS_STREAMS streams)
{
    float4 finalColor = Shading_id9() * Compute_id11(streams);
    return finalColor;
}
PS_OUTPUT PSMain(VS_OUTPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.ShadingPosition_id64 = __input__.ShadingPosition_id64;
    streams.ZDepth_id87 = __input__.ZDepth_id87;
    streams.TexCoord_id53 = __input__.TexCoord_id53;
    streams.LocalColor_id101 = __input__.LocalColor_id101;
    float4 colorTarget = Shading_id10(streams);

    {
    }
    colorTarget.a *= AlphaAdditive_id91;
    streams.ColorTarget_id65 = colorTarget;
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id65 = streams.ColorTarget_id65;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id86 = __input__.Position_id86;
    streams.TexCoord_id53 = __input__.TexCoord_id53;
    streams.LocalColor_id101 = __input__.LocalColor_id101;
    float4 worldPos = streams.Position_id86;
    float4 viewPos = mul(worldPos, ViewMatrix_id77);
    streams.ShadingPosition_id64 = mul(viewPos, ProjectionMatrix_id78);
    viewPos.w = 1;
    viewPos.z += ZOffset_id92;
    streams.ZDepth_id87 = viewPos.z;
    float4 viewProjPos = mul(viewPos, ProjectionMatrix_id78);
    streams.ShadingPosition_id64.z = (viewProjPos.z / viewProjPos.w) * streams.ShadingPosition_id64.w;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id64 = streams.ShadingPosition_id64;
    __output__.ZDepth_id87 = streams.ZDepth_id87;
    __output__.TexCoord_id53 = streams.TexCoord_id53;
    __output__.LocalColor_id101 = streams.LocalColor_id101;
    return __output__;
}
