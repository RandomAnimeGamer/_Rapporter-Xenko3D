/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.DiffuseMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>
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
cbuffer PerMaterial [Size: 16]
@C    scale_id84 => Material.TextureScale
@C    offset_id85 => Material.TextureOffset
cbuffer PerView [Size: 416]
@C    View_id22 => Transformation.View
@C    ViewInverse_id23 => Transformation.ViewInverse
@C    Projection_id24 => Transformation.Projection
@C    ProjectionInverse_id25 => Transformation.ProjectionInverse
@C    ViewProjection_id26 => Transformation.ViewProjection
@C    ProjScreenRay_id27 => Transformation.ProjScreenRay
@C    Eye_id28 => Transformation.Eye
@C    LightCount_id77 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id79 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    AmbientLight_id80 => LightSimpleAmbient.AmbientLight.environmentLights[0]
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
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
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
@S    LightDirectionalGroup => 7bb2cc43889ab80004ab02a83bbd02d2
@S    DirectLightGroupPerView => f728a5a7f613dcd26bc20d54908ca1b8
@S    LightDirectional => 8f8fc60cae27222c84186af6eec74080
@S    LightSimpleAmbient => 6d68fc78fb5b5ad232c5ec44f6d90e31
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
@G    Vertex => 14e156a2c0d5048cb447c01a5563d495
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
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64
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
//   int LightCount_id77;               // Offset:  352 Size:     4 [unused]
//   
//   struct
//   {
//       
//       float3 DirectionWS;            // Offset:  368
//       float3 Color;                  // Offset:  384
//
//   } Lights_id79;                     // Offset:  368 Size:    28 [unused]
//   float3 AmbientLight_id80;          // Offset:  400 Size:    12 [unused]
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
// TEXCOORD                 0   xy          2     NONE   float   xy  
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
//
// Constant buffer to DX9 shader constant mappings:
//
// Target Reg Buffer  Start Reg # of Regs        Data Conversion
// ---------- ------- --------- --------- ----------------------
// c1         cb0             0         4  ( FLT, FLT, FLT, FLT)
// c5         cb0             8         3  ( FLT, FLT, FLT, FLT)
// c8         cb1            16         4  ( FLT, FLT, FLT, FLT)
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
    dcl_texcoord2 v2  // __input__<7,8>

#line 306 "C:\_Rapporter-Xenko3D\PhysicsSample\PhysicsSample\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_c030e79accc8fe0e691a941a8afc4d38.hlsl"
    dp4 r0.x, v0, c1  // PreTransformPosition_id13::streams<14>
    dp4 r0.y, v0, c2  // PreTransformPosition_id13::streams<15>
    dp4 r0.z, v0, c3  // PreTransformPosition_id13::streams<16>
    dp4 r0.w, v0, c4  // PreTransformPosition_id13::streams<17>

#line 296
    dp4 oPos.z, r0, c10  // ::VSMain<6>

#line 339
    dp3 oT1.x, v1, c5  // ::VSMain<8>
    dp3 oT1.y, v1, c6  // ::VSMain<9>
    dp3 oT1.z, v1, c7  // ::VSMain<10>

#line 296
    dp4 r1.x, r0, c8  // PostTransformPosition_id14::streams<18>
    dp4 r1.y, r0, c9  // PostTransformPosition_id14::streams<19>
    dp4 r1.z, r0, c11  // PostTransformPosition_id14::streams<21>

#line 306
    mov oT0, r0  // ::VSMain<0,1,2,3>

#line 358
    mad oPos.xy, r1.z, c0, r1  // ::VSMain<4,5>
    mov oPos.w, r1.z  // ::VSMain<7>

#line 363
    mov oT2.xy, v2  // ::VSMain<11,12>

// approximately 15 instruction slots used
vs_4_0
dcl_constantbuffer cb0[11], immediateIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input v2.xy
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyz
dcl_output o3.xy
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.meshNormal_id14.x; v1.y <- __input__.meshNormal_id14.y; v1.z <- __input__.meshNormal_id14.z; 
//   v2.x <- __input__.TexCoord_id83.x; v2.y <- __input__.TexCoord_id83.y; 
//   o3.x <- <VSMain return value>.TexCoord_id83.x; o3.y <- <VSMain return value>.TexCoord_id83.y; 
//   o2.x <- <VSMain return value>.normalWS_id16.x; o2.y <- <VSMain return value>.normalWS_id16.y; o2.z <- <VSMain return value>.normalWS_id16.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 306 "C:\_Rapporter-Xenko3D\PhysicsSample\PhysicsSample\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_c030e79accc8fe0e691a941a8afc4d38.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 371
mov o0.xyzw, r0.xyzw

#line 296
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw
dp4 o1.w, r0.xyzw, cb1[19].xyzw

#line 339
dp3 o2.x, v1.xyzx, cb0[8].xyzx
dp3 o2.y, v1.xyzx, cb0[9].xyzx
dp3 o2.z, v1.xyzx, cb0[10].xyzx

#line 371
mov o3.xy, v2.xyxx
ret 
// Approximately 14 instruction slots used
@G    Pixel => 576ebc08979af95f77d1b06eac3c5865
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
// cbuffer PerView
// {
//
//   float4x4 View_id22;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id23;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id24;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id25;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id26;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id27;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id28;                   // Offset:  336 Size:    16 [unused]
//   int LightCount_id77;               // Offset:  352 Size:     4
//   
//   struct
//   {
//       
//       float3 DirectionWS;            // Offset:  368
//       float3 Color;                  // Offset:  384
//
//   } Lights_id79;                     // Offset:  368 Size:    28
//   float3 AmbientLight_id80;          // Offset:  400 Size:    12
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
// PerView                           cbuffer      NA          NA    1        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float       
// SV_Position              0   xyzw        1      POS   float       
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// TEXCOORD                 0   xy          3     NONE   float   xy  
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
// c0         cb0             0         1  ( FLT, FLT, FLT, FLT)
// c1         cb1            22         1  ( INT, FLT, FLT, FLT)
// c2         cb1            23         3  ( FLT, FLT, FLT, FLT)
//
//
// Sampler/Resource to DX9 shader sampler mappings:
//
// Target Sampler Source Sampler  Source Resource
// -------------- --------------- ----------------
// s0             s0              t0               
//
//
// Level9 shader bytecode:
//
    ps_2_x
    def c5, 9.99999975e-005, 1, 0, 0
    dcl t1.xyz  // __input__<8,9,10>
    dcl t2.xy  // __input__<11,12>
    dcl_2d s0

#line 335 "C:\_Rapporter-Xenko3D\PhysicsSample\PhysicsSample\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_c030e79accc8fe0e691a941a8afc4d38.hlsl"
    nrm r0.xyz, t1  // GenerateNormal_PS_id18::streams<0,1,2>

#line 157
    dp3 r0.x, r0, -c2
    max r1.w, r0.x, c5.x  // PrepareDirectLight_id89::streams<72>
    mul r0.xyz, r1.w, c3  // PrepareDirectLight_id89::streams<62,63,64>

#line 197
    mad r1.xy, t2, c0, c0.zwzw
    texld r1, r1, s0  // ::Compute_id98<0,1,2,3>

#line 145
    mul r0.xyz, r0, r1

#line 239
    mul r0.xyz, r0, c5.y
    mov r0.w, c5.z
    cmp r0.xyz, -c1.x, r0.w, r0
    mad r1.xyz, r1, c4, r0  // Compute_id138::streams<12,13,14>
    mov oC0, r1  // ::PSMain<0,1,2,3>

// approximately 14 instruction slots used (1 texture, 13 arithmetic)
ps_4_0
dcl_constantbuffer cb0[1], immediateIndexed
dcl_constantbuffer cb1[26], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xy
dcl_output o0.xyzw
dcl_temps 6
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id16.x; v2.y <- __input__.normalWS_id16.y; v2.z <- __input__.normalWS_id16.z; 
//   v3.x <- __input__.TexCoord_id83.x; v3.y <- __input__.TexCoord_id83.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 335 "C:\_Rapporter-Xenko3D\PhysicsSample\PhysicsSample\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_c030e79accc8fe0e691a941a8afc4d38.hlsl"
dp3 r0.x, v2.xyzx, v2.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.xyzx  // r0.x <- streams.normalWS_id16.x; r0.y <- streams.normalWS_id16.y; r0.z <- streams.normalWS_id16.z

#line 197
mad r1.xy, v3.xyxx, cb0[0].xyxx, cb0[0].zwzz
sample r1.xyzw, r1.xyxx, t0.xyzw, s0  // r1.x <- <Compute_id98 return value>.x; r1.y <- <Compute_id98 return value>.y; r1.z <- <Compute_id98 return value>.z; r1.w <- <Compute_id98 return value>.w

#line 216
mov r2.xyz, r0.xyzx  // r2.x <- streams.normalWS_id16.x; r2.y <- streams.normalWS_id16.y; r2.z <- streams.normalWS_id16.z
mov r3.xyz, r1.xyzx  // r3.x <- streams.matDiffuseVisible_id62.x; r3.y <- streams.matDiffuseVisible_id62.y; r3.z <- streams.matDiffuseVisible_id62.z
mov r4.xyz, l(0,0,0,0)  // r4.x <- directLightingContribution.x; r4.y <- directLightingContribution.y; r4.z <- directLightingContribution.z
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r2.w, r0.w, l(1)
  breakc_nz r2.w
  ige r2.w, r0.w, cb1[22].x
  if_nz r2.w
    break 
  endif 

#line 157
  dp3 r2.w, r2.xyzx, -cb1[23].xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id43
  mul r5.xyz, r2.wwww, cb1[24].xyzx  // r5.x <- streams.lightColorNdotL_id40.x; r5.y <- streams.lightColorNdotL_id40.y; r5.z <- streams.lightColorNdotL_id40.z

#line 145
  mul r5.xyz, r3.xyzx, r5.xyzx

#line 226
  mad r4.xyz, r5.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r4.xyzx

#line 216
  iadd r0.w, r0.w, l(1)

#line 228
endloop 

#line 134
mul r0.xyz, r1.xyzx, cb1[25].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id101 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id101 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id101 return value>.z

#line 239
mad o0.xyz, r4.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 356
mov o0.w, r1.w
ret 
// Approximately 27 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id78 = 1;
static const float PI_id88 = 3.14159265358979323846;
const static bool TIsEnergyConservative_id89 = false;
Texture2D Texture_id81;
SamplerState Sampler_id82;
struct PS_STREAMS 
{
    float3 normalWS_id16;
    float4 PositionWS_id19;
    float2 TexCoord_id83;
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
    float3 lightDirectionWS_id38;
    float3 lightColor_id39;
    float3 lightColorNdotL_id40;
    float3 envLightDiffuseColor_id41;
    float3 envLightSpecularColor_id42;
    float lightDirectAmbientOcclusion_id44;
    float NdotL_id43;
    float NdotV_id65;
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
    float2 TexCoord_id83;
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
    float3 meshNormal_id14 : NORMAL;
    float2 TexCoord_id83 : TEXCOORD0;
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
    int LightCount_id77;
    DirectionalLightData Lights_id79[TMaxLightCount_id78];
    float3 AmbientLight_id80;
};
void ComputeShadow_id50(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id49(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id39 = Lights_id79[lightIndex].Color;
    streams.lightDirectionWS_id38 = -Lights_id79[lightIndex].DirectionWS;
}
float GetFilterSquareRoughnessAdjustment_id67(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id78()
{
}
float3 ComputeEnvironmentLightContribution_id101(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id97(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id80 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
float3 ComputeDirectLightContribution_id100(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor / PI_id88 * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.x;
}
void PrepareMaterialPerDirectLight_id27(inout PS_STREAMS streams)
{
    streams.H_id68 = normalize(streams.viewWS_id61 + streams.lightDirectionWS_id38);
    streams.NdotH_id69 = max(dot(streams.normalWS_id16, streams.H_id68), 0.0001f);
    streams.LdotH_id70 = max(dot(streams.lightDirectionWS_id38, streams.H_id68), 0.0001f);
    streams.VdotH_id71 = streams.LdotH_id70;
}
void PrepareDirectLight_id89(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id49(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id50(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id90()
{
    return LightCount_id77;
}
int GetMaxLightCount_id91()
{
    return TMaxLightCount_id78;
}
void PrepareDirectLights_id87()
{
}
void PrepareMaterialForLightingAndShading_id77(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id67(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id76(inout PS_STREAMS streams)
{
    streams.lightDirectionWS_id38 = 0;
    streams.lightColor_id39 = 0;
    streams.lightColorNdotL_id40 = 0;
    streams.envLightDiffuseColor_id41 = 0;
    streams.envLightSpecularColor_id42 = 0;
    streams.lightDirectAmbientOcclusion_id44 = 1.0f;
    streams.NdotL_id43 = 0;
}
void UpdateNormalFromTangentSpace_id19(float3 normalInTangentSpace)
{
}
float4 Compute_id98(inout PS_STREAMS streams)
{
    return Texture_id81.Sample(Sampler_id82, streams.TexCoord_id83 * scale_id84 + offset_id85).rgba;
}
void ResetStream_id81(inout PS_STREAMS streams)
{
    ResetStream_id78();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id138(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id19(streams.matNormal_id45);
    ResetLightStream_id76(streams);
    PrepareMaterialForLightingAndShading_id77(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id87();
        const int maxLightCount = GetMaxLightCount_id91();
        int count = GetLightCount_id90();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id89(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id100(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id97(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id101(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id88 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id123(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id98(streams);
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id83(inout PS_STREAMS streams)
{
    ResetStream_id81(streams);
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
void Compute_id46(inout PS_STREAMS streams)
{

    {
        Compute_id123(streams);
    }

    {
        Compute_id138(streams);
    }
}
void ResetStream_id45(inout PS_STREAMS streams)
{
    ResetStream_id83(streams);
    streams.shadingColorAlpha_id67 = 1.0f;
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
float4 Shading_id28(inout PS_STREAMS streams)
{
    streams.viewWS_id61 = normalize(Eye_id28.xyz - streams.PositionWS_id19.xyz);
    streams.shadingColor_id66 = 0;
    ResetStream_id45(streams);
    Compute_id46(streams);
    return float4(streams.shadingColor_id66, streams.shadingColorAlpha_id67);
}
void PSMain_id1()
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
    streams.ColorTarget_id1 = Shading_id28(streams);
}
void GenerateNormal_PS_id18(inout PS_STREAMS streams)
{
    streams.normalWS_id16 = normalize(streams.normalWS_id16);
}
void GenerateNormal_VS_id17(inout VS_STREAMS streams)
{
    streams.normalWS_id16 = mul(streams.meshNormal_id14, (float3x3)WorldInverseTranspose_id31);
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
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    streams.TexCoord_id83 = __input__.TexCoord_id83;
    VSMain_id8(streams);
    GenerateNormal_VS_id17(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id16 = streams.normalWS_id16;
    __output__.TexCoord_id83 = streams.TexCoord_id83;
    return __output__;
}
