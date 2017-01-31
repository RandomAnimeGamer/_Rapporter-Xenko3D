/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matDiffuseSpecularAlphaBlend,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.DiffuseSpecularAlphaBlendValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matAlphaBlendColor,rgb> [{computeColorSource = ComputeColorConstantColorLink<Material.AlphaBlendColorValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}], MaterialSurfaceDiffuseSpecularAlphaBlendColor]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
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
cbuffer PerMaterial [Size: 48]
@C    constantColor_id78 => Material.DiffuseValue
@C    constantFloat_id141 => Material.DiffuseSpecularAlphaBlendValue
@C    constantColor_id143 => Material.AlphaBlendColorValue
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
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
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
@S    LightSimpleAmbient => 6d68fc78fb5b5ad232c5ec44f6d90e31
@S    MaterialSurfaceArray => ccbac4b49ee1e91b6f7d11a29c26a658
@S    MaterialSurfaceDiffuse => 4572009ce562fa4c388af46aacc800f7
@S    IMaterialSurfacePixel => c2baefbc3fb7ad1466cc087909a23051
@S    ComputeColorConstantColorLink => a4f7de8d03608ceba6b4f128ada2b3ed
@S    MaterialSurfaceSetStreamFromComputeColor => 1d00f7d823647b307a55871a0b3eba09
@S    IMaterialSurfaceVertex => 8e13e0524d4025cb811c673aeb77f45b
@S    MaterialVertexStream => fe2d4e2abe57231a93785fe59684b199
@S    MaterialDisplacementStream => 5112948b0773a844410cc7c3df78184a
@S    IMaterialSurfaceDomain => a787b7e989be07714532cd1ffc35ef2a
@S    MaterialDomainStream => 8be905888c6f3153139bc1fa900fdf5f
@S    MaterialTessellationStream => 87652904dbe93d91999520c7e41f52a1
@S    Texturing => a9d9ee1fb9a68af7ce6b12291686faea
@S    ComputeColorConstantFloatLink => a459500fd7f6c5988997e81bf766f988
@S    MaterialSurfaceLightingAndShading => 4faacd53863c0b5c65d23ad20797d27c
@S    Math => 5bdf39e412cac464ebbce340da34bca1
@S    IMaterialSurfaceShading => 7aecb9db43b53094f40d49ae22406a18
@S    MaterialSurfaceShadingDiffuseLambert => 66ea94572ee9f10a2e305608a7d69dad
@S    MaterialSurfaceDiffuseSpecularAlphaBlendColor => e029cbc0eae8d0982044aa3f553641da
***************************
*****     Stages      *****
***************************
@G    Vertex => 39935a9558864a5f4bdcd4cbed72ba81
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
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// NORMALWS                 0   xyz         2     NONE   float   xyz 
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

#line 274 "C:\_Rapporter-Xenko3D\PhysicsSample\PhysicsSample\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_bbd33dff40d8cae04f9022a14fc0440c.hlsl"
    dp4 r0.x, v0, c1  // PreTransformPosition_id13::streams<12>
    dp4 r0.y, v0, c2  // PreTransformPosition_id13::streams<13>
    dp4 r0.z, v0, c3  // PreTransformPosition_id13::streams<14>
    dp4 r0.w, v0, c4  // PreTransformPosition_id13::streams<15>

#line 264
    dp4 oPos.z, r0, c10  // ::VSMain<6>

#line 307
    dp3 oT1.x, v1, c5  // ::VSMain<8>
    dp3 oT1.y, v1, c6  // ::VSMain<9>
    dp3 oT1.z, v1, c7  // ::VSMain<10>

#line 264
    dp4 r1.x, r0, c8  // PostTransformPosition_id14::streams<16>
    dp4 r1.y, r0, c9  // PostTransformPosition_id14::streams<17>
    dp4 r1.z, r0, c11  // PostTransformPosition_id14::streams<19>

#line 274
    mov oT0, r0  // ::VSMain<0,1,2,3>

#line 325
    mad oPos.xy, r1.z, c0, r1  // ::VSMain<4,5>
    mov oPos.w, r1.z  // ::VSMain<7>

// approximately 14 instruction slots used
vs_4_0
dcl_constantbuffer cb0[11], immediateIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyz
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.meshNormal_id14.x; v1.y <- __input__.meshNormal_id14.y; v1.z <- __input__.meshNormal_id14.z; 
//   o2.x <- <VSMain return value>.normalWS_id16.x; o2.y <- <VSMain return value>.normalWS_id16.y; o2.z <- <VSMain return value>.normalWS_id16.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 274 "C:\_Rapporter-Xenko3D\PhysicsSample\PhysicsSample\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_bbd33dff40d8cae04f9022a14fc0440c.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 336
mov o0.xyzw, r0.xyzw

#line 264
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw
dp4 o1.w, r0.xyzw, cb1[19].xyzw

#line 307
dp3 o2.x, v1.xyzx, cb0[8].xyzx
dp3 o2.y, v1.xyzx, cb0[9].xyzx
dp3 o2.z, v1.xyzx, cb0[10].xyzx

#line 336
ret 
// Approximately 13 instruction slots used
@G    Pixel => 62bbedbce965e74ea062ec177f80cbf9
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id78;         // Offset:    0 Size:    16
//   float constantFloat_id141;         // Offset:   16 Size:     4
//   float4 constantColor_id143;        // Offset:   32 Size:    16
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
//   float3 AmbientLight_id77;          // Offset:  352 Size:    12
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
// POSITION_WS              0   xyzw        0     NONE   float       
// SV_Position              0   xyzw        1      POS   float       
// NORMALWS                 0   xyz         2     NONE   float       
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
// c3         cb1            22         1  ( FLT, FLT, FLT, FLT)
//
//
// Level9 shader bytecode:
//
    ps_2_x

#line 170 "C:\_Rapporter-Xenko3D\PhysicsSample\PhysicsSample\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_bbd33dff40d8cae04f9022a14fc0440c.hlsl"
    mov r0, c0  // PerMaterial::constantColor_id78<0,1,2,3>
    mul r0, r0, c1.x  // Compute_id166::streams<53>

#line 131
    mul r1.xyz, r0, c2  // PrepareMaterialForLightingAndShading_id92::streams<25,26,27>

#line 120
    mul r0.xyz, r1, c3  // ::ComputeEnvironmentLightContribution_id118<0,1,2>
    mov oC0, r0  // ::PSMain<0,1,2,3>

// approximately 5 instruction slots used
ps_4_0
dcl_constantbuffer cb0[3], immediateIndexed
dcl_constantbuffer cb1[23], immediateIndexed
dcl_output o0.xyzw
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id16.x; v2.y <- __input__.normalWS_id16.y; v2.z <- __input__.normalWS_id16.z; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 131 "C:\_Rapporter-Xenko3D\PhysicsSample\PhysicsSample\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_bbd33dff40d8cae04f9022a14fc0440c.hlsl"
mul r0.xyz, cb0[0].xyzx, cb0[1].xxxx
mul r0.xyz, r0.xyzx, cb0[2].xyzx  // r0.x <- streams.matDiffuseVisible_id62.x; r0.y <- streams.matDiffuseVisible_id62.y; r0.z <- streams.matDiffuseVisible_id62.z

#line 120
mul o0.xyz, r0.xyzx, cb1[22].xyzx

#line 170
mul o0.w, cb0[0].w, cb0[1].x

#line 323
ret 
// Approximately 5 instruction slots used
***************************
*************************/
static const float PI_id146 = 3.14159265358979323846;
const static bool TIsEnergyConservative_id147 = false;
struct PS_STREAMS 
{
    float3 normalWS_id16;
    float4 PositionWS_id19;
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
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
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
};
cbuffer PerMaterial 
{
    float4 constantColor_id78;
    float constantFloat_id141;
    float4 constantColor_id143;
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
    float2 Texture0TexelSize_id84;
    float2 Texture1TexelSize_id86;
    float2 Texture2TexelSize_id88;
    float2 Texture3TexelSize_id90;
    float2 Texture4TexelSize_id92;
    float2 Texture5TexelSize_id94;
    float2 Texture6TexelSize_id96;
    float2 Texture7TexelSize_id98;
    float2 Texture8TexelSize_id100;
    float2 Texture9TexelSize_id102;
};
float GetFilterSquareRoughnessAdjustment_id82(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id99()
{
}
float3 ComputeEnvironmentLightContribution_id118(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id110(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id77 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareMaterialForLightingAndShading_id92(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id82(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id91(inout PS_STREAMS streams)
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
float4 Compute_id115()
{
    return constantColor_id143;
}
float4 Compute_id113()
{
    return float4(constantFloat_id141, constantFloat_id141, constantFloat_id141, constantFloat_id141);
}
float4 Compute_id111()
{
    return constantColor_id78;
}
void ResetStream_id102(inout PS_STREAMS streams)
{
    ResetStream_id99();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id166(inout PS_STREAMS streams)
{
    streams.shadingColorAlpha_id67 = lerp(0, streams.shadingColorAlpha_id67, streams.matDiffuseSpecularAlphaBlend_id58.r);
}
void Compute_id165(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id19(streams.matNormal_id45);
    ResetLightStream_id91(streams);
    PrepareMaterialForLightingAndShading_id92(streams);
    float3 directLightingContribution = 0;
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id110(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id118(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id146 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id150(inout PS_STREAMS streams)
{
    streams.matAlphaBlendColor_id59 = Compute_id115().rgb;
}
void Compute_id145(inout PS_STREAMS streams)
{
    streams.matDiffuseSpecularAlphaBlend_id58 = Compute_id113().r;
}
void Compute_id140(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id111();
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id104(inout PS_STREAMS streams)
{
    ResetStream_id102(streams);
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
void Compute_id51(inout PS_STREAMS streams)
{

    {
        Compute_id140(streams);
    }

    {
        Compute_id145(streams);
    }

    {
        Compute_id150(streams);
    }

    {
        Compute_id165(streams);
    }

    {
        Compute_id166(streams);
    }
}
void ResetStream_id50(inout PS_STREAMS streams)
{
    ResetStream_id104(streams);
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
    ResetStream_id50(streams);
    Compute_id51(streams);
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
    VSMain_id8(streams);
    GenerateNormal_VS_id17(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id16 = streams.normalWS_id16;
    return __output__;
}
