/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect.ShadowMapCaster
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = ComputeColorConstantColorLink<Material.EmissiveValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.EmissiveIntensity>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [mixin MaterialSurfaceShadingDiffuseCelShading<false,0> [{celLightFunction = MaterialCelShadingLightDefault<false>}], mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilityImplicit}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionBeckmann}]]}], MaterialSurfaceEmissiveShading<false>]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<8>, LightClusteredPointGroup, LightClusteredSpotGroup
@P Lighting.EnvironmentLights: LightSimpleAmbient, xkfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: IComputeEnvironmentColor
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: IComputeEnvironmentColor
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
cbuffer PerView [Size: 800]
@C    View_id22 => Transformation.View
@C    ViewInverse_id23 => Transformation.ViewInverse
@C    Projection_id24 => Transformation.Projection
@C    ProjectionInverse_id25 => Transformation.ProjectionInverse
@C    ViewProjection_id26 => Transformation.ViewProjection
@C    ProjScreenRay_id27 => Transformation.ProjScreenRay
@C    Eye_id28 => Transformation.Eye
@C    NearClipPlane_id82 => Camera.NearClipPlane
@C    FarClipPlane_id83 => Camera.FarClipPlane
@C    ZProjection_id84 => Camera.ZProjection
@C    ViewSize_id85 => Camera.ViewSize
@C    AspectRatio_id86 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id78 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id80 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ClusterDepthScale_id91 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id92 => LightClustered.ClusterDepthBias
@C    ClusterStride_id93 => LightClustered.ClusterStride
@C    AmbientLight_id96 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SkyMatrix_id97 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id98 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    LightClusters_id89 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id89 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id90 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id90 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id94 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id94 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id95 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id95 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 5c3160ccbf936c5e102bd9315f0f946a
@S    ShaderBaseStream => f699080594ac63c1f38140de57ce1a7b
@S    ShadingBase => b3b3b36d41adc869f767546576253178
@S    ComputeColor => 6e3e8655257003c26480195de33cbbc1
@S    TransformationBase => f1386ed2f0e8db4eb9e79a63ee23e05c
@S    NormalStream => 5d295e278c920e30e310e1979bc14a19
@S    TransformationWAndVP => 1ad0d61ab4ab5bf92b87169f094b8b17
@S    PositionStream4 => 87a2d7a46c028c1479a982866d88d067
@S    PositionHStream4 => f5c4e6d128281ef2d40fba86959205d5
@S    Transformation => 719ba8c043f4a58d7b2653b16b73f5e4
@S    NormalFromMesh => c487fad060f8b842a2903c8924c8da3e
@S    NormalBase => b70fd93cea3e78cb7e35bf33c5bc761d
@S    MaterialSurfacePixelStageCompositor => 1d6419ba7ac2d0f180564d21a0d3f8c0
@S    PositionStream => 664ed5997626578c1dfdc74402cd23f6
@S    MaterialPixelShadingStream => 28de6f1960d9c29f165f916c0adfe5a5
@S    MaterialPixelStream => 17c22a7a37d239e0ee9e8d2779c03c80
@S    MaterialStream => 83fd257dadb68d92b2e57a11122265d4
@S    IStreamInitializer => 8be0404675b438bff2babfd297fb96df
@S    LightStream => 0adb89aecbaf79fd10c51bd04847d34f
@S    DirectLightGroupArray => 9addcff5b7cb7364a8a5d87d4de45742
@S    DirectLightGroup => 92eb9d726b1937533c27d57ff97f8da5
@S    ShadowGroup => 545ec47456ee7f4472536d8a7316d02f
@S    ShadowStream => 4abbfb30b4b85e71b0f683b420977101
@S    EnvironmentLightArray => 92f59b0813153de143701e01f1da89e0
@S    EnvironmentLight => 2955a0089813452a7d835f3fa5c494a9
@S    IMaterialSurface => 14b3d59b9c516893bd7730aaa3dc225a
@S    ShadowMapCasterBase => 8499e30978d7612019e28c26288f702b
@S    LightDirectionalGroup => 7bb2cc43889ab80004ab02a83bbd02d2
@S    DirectLightGroupPerView => f728a5a7f613dcd26bc20d54908ca1b8
@S    LightDirectional => 8f8fc60cae27222c84186af6eec74080
@S    LightClusteredPointGroup => f9b1c664348f4eb9d5d38e9465e88238
@S    LightClustered => edc545d8eb90b3aab34e28252f44cfb7
@S    ScreenPositionBase => bbb64a5ce69c98293db8d516c717bec6
@S    Camera => ec417735d81c9ad1d80ca0e6d87138b0
@S    LightPoint => 9dfe0a0788419621449a7f8967281a2f
@S    LightUtil => d77cfcfacea55ef4e06d9f585be27420
@S    LightClusteredSpotGroup => 3c9c76b8cb64f527f37464f5833139b0
@S    LightSpot => 0bcf1b3e89e9a247545b91358ea8a1a5
@S    LightSimpleAmbient => e49f9babfd8d092cb681b1d8742ede93
@S    LightSkyboxShader => 8192a852735e164cbaa9a9512fa0a512
@S    IComputeEnvironmentColor => 9e5e0467c0fccc46f26afa70c63aed71
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
@S    MaterialSurfaceShadingDiffuseCelShading => fd7ea0674fb34309c429cdfa5368cf24
@S    IMaterialCelShadingLightFunction => 70757a2161508f580900500a4f91240e
@S    MaterialCelShadingLightDefault => 196b323242b05a6f36d6f91049be130b
@S    MaterialSurfaceShadingSpecularMicrofacet => b7d013f1414d67d7f1a4afd4ac068c8e
@S    BRDFMicrofacet => 98c58221f1b61f0766453f0ce60edcb0
@S    IMaterialSpecularMicrofacetFresnelFunction => be6c16bab5a59713001b43d92cde1a5a
@S    IMaterialSpecularMicrofacetVisibilityFunction => 5872403d82d7dcdfdaaf64a9f924b8dd
@S    IMaterialSpecularMicrofacetNormalDistributionFunction => a8ee1e483f2e3d59a955262211e6f903
@S    MaterialSpecularMicrofacetFresnelSchlick => 31c4aa7c7fbef53ee309a102999a200c
@S    MaterialSpecularMicrofacetVisibilityImplicit => 71acfad6c818096c1cd2e2b3e45c9b21
@S    MaterialSpecularMicrofacetNormalDistributionBeckmann => 2d9c923d1b2ff0f5bcf8bafa3ed1dd41
@S    MaterialSurfaceEmissiveShading => 8441e737217d64ffcec16b8458a149b2
***************************
*****     Stages      *****
***************************
@G    Vertex => 6f6775bd5a9c5924959a21e0173ade59
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
//   float NearClipPlane_id82;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id83;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id84;           // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id85;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id86;            // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id78;               // Offset:  400 Size:     4 [unused]
//   
//   struct
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id80[8];                  // Offset:  416 Size:   252 [unused]
//   float ClusterDepthScale_id91;      // Offset:  668 Size:     4 [unused]
//   float ClusterDepthBias_id92;       // Offset:  672 Size:     4 [unused]
//   float2 ClusterStride_id93;         // Offset:  676 Size:     8 [unused]
//   float3 AmbientLight_id96;          // Offset:  688 Size:    12 [unused]
//   float4x4 SkyMatrix_id97;           // Offset:  704 Size:    64 [unused]
//   float Intensity_id98;              // Offset:  768 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset:  784 Size:    16 [unused]
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
// POSITIONH                0   xyzw        2     NONE   float   xyzw
// DEPTH_VS                 0   x           3     NONE   float   x   
// NORMALWS                 0    yzw        3     NONE   float    yzw
// SCREENPOSITION_ID81_SEM     0   xyzw        4     NONE   float   xyzw
//
vs_4_0
dcl_constantbuffer cb0[11], immediateIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyzw
dcl_output o3.x
dcl_output o3.yzw
dcl_output o4.xyzw
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.meshNormal_id14.x; v1.y <- __input__.meshNormal_id14.y; v1.z <- __input__.meshNormal_id14.z; 
//   o4.x <- <VSMain return value>.ScreenPosition_id81.x; o4.y <- <VSMain return value>.ScreenPosition_id81.y; o4.z <- <VSMain return value>.ScreenPosition_id81.z; o4.w <- <VSMain return value>.ScreenPosition_id81.w; 
//   o3.x <- <VSMain return value>.DepthVS_id20; o3.y <- <VSMain return value>.normalWS_id16.x; o3.z <- <VSMain return value>.normalWS_id16.y; o3.w <- <VSMain return value>.normalWS_id16.z; 
//   o2.x <- <VSMain return value>.PositionH_id21.x; o2.y <- <VSMain return value>.PositionH_id21.y; o2.z <- <VSMain return value>.PositionH_id21.z; o2.w <- <VSMain return value>.PositionH_id21.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 214 "C:\_Rapporter-Xenko3D\RapporterV2\RapporterV2\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_ShadowMapCaster_9d8fe8c9ad69bb0a8113a124e62138bf.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 253
mov o0.xyzw, r0.xyzw

#line 204
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- streams.ShadingPosition_id0.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- streams.ShadingPosition_id0.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- streams.ShadingPosition_id0.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- streams.ShadingPosition_id0.w

#line 253
mov o1.xyzw, r1.xyzw
mov o2.xyzw, r1.xyzw
mov o4.xyzw, r1.xyzw
mov o3.x, r1.w

#line 227
dp3 o3.y, v1.xyzx, cb0[8].xyzx
dp3 o3.z, v1.xyzx, cb0[9].xyzx
dp3 o3.w, v1.xyzx, cb0[10].xyzx

#line 253
ret 
// Approximately 17 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id79 = 8;
Texture2D Texture0_id106;
Texture2D Texture1_id108;
Texture2D Texture2_id110;
Texture2D Texture3_id112;
Texture2D Texture4_id114;
Texture2D Texture5_id116;
Texture2D Texture6_id118;
Texture2D Texture7_id120;
Texture2D Texture8_id122;
Texture2D Texture9_id124;
TextureCube TextureCube0_id126;
TextureCube TextureCube1_id127;
TextureCube TextureCube2_id128;
TextureCube TextureCube3_id129;
Texture3D Texture3D0_id130;
Texture3D Texture3D1_id131;
Texture3D Texture3D2_id132;
Texture3D Texture3D3_id133;
SamplerState Sampler_id134;
SamplerState PointSampler_id135 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id136 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id137 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id138 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id139 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id140 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id141 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id142 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id143 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id144;
SamplerState Sampler1_id145;
SamplerState Sampler2_id146;
SamplerState Sampler3_id147;
SamplerState Sampler4_id148;
SamplerState Sampler5_id149;
SamplerState Sampler6_id150;
SamplerState Sampler7_id151;
SamplerState Sampler8_id152;
SamplerState Sampler9_id153;
Texture3D<uint2> LightClusters_id89;
Buffer<uint> LightIndices_id90;
Buffer<float4> PointLights_id94;
Buffer<float4> SpotLights_id95;
struct VS_STREAMS 
{
    float4 Position_id18;
    float3 meshNormal_id14;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float4 PositionH_id21;
    float DepthVS_id20;
    float3 normalWS_id16;
    float4 ScreenPosition_id81;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id19 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float4 PositionH_id21 : POSITIONH;
    float DepthVS_id20 : DEPTH_VS;
    float3 normalWS_id16 : NORMALWS;
    float4 ScreenPosition_id81 : SCREENPOSITION_ID81_SEM;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    float3 meshNormal_id14 : NORMAL;
};
struct DirectionalLightData 
{
    float3 DirectionWS;
    float3 Color;
};
struct PointLightData 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct PointLightDataInternal 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct SpotLightData 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
struct SpotLightDataInternal 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
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
    float4 constantColor_id101;
    float4 constantColor_id164;
    float constantFloat_id166;
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
    float NearClipPlane_id82 = 1.0f;
    float FarClipPlane_id83 = 100.0f;
    float2 ZProjection_id84;
    float2 ViewSize_id85;
    float AspectRatio_id86;
    float4 _padding_PerView_Default;
    int LightCount_id78;
    DirectionalLightData Lights_id80[TMaxLightCount_id79];
    float ClusterDepthScale_id91;
    float ClusterDepthBias_id92;
    float2 ClusterStride_id93;
    float3 AmbientLight_id96;
    float4x4 SkyMatrix_id97;
    float Intensity_id98;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id107;
    float2 Texture1TexelSize_id109;
    float2 Texture2TexelSize_id111;
    float2 Texture3TexelSize_id113;
    float2 Texture4TexelSize_id115;
    float2 Texture5TexelSize_id117;
    float2 Texture6TexelSize_id119;
    float2 Texture7TexelSize_id121;
    float2 Texture8TexelSize_id123;
    float2 Texture9TexelSize_id125;
};
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
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
void BaseTransformVS_id7(inout VS_STREAMS streams)
{
    PreTransformPosition_id13(streams);
    TransformPosition_id5();
    PostTransformPosition_id14(streams);
}
void VSMain_id0()
{
}
void GenerateNormal_VS_id19(inout VS_STREAMS streams)
{
    streams.normalWS_id16 = mul(streams.meshNormal_id14, (float3x3)WorldInverseTranspose_id31);
}
void VSMain_id8(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id7(streams);
}
void VSMain_id16(inout VS_STREAMS streams)
{
    VSMain_id8(streams);
    GenerateNormal_VS_id19(streams);
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id18 = __input__.Position_id18;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    VSMain_id16(streams);
    streams.ScreenPosition_id81 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.PositionH_id21 = streams.PositionH_id21;
    __output__.DepthVS_id20 = streams.DepthVS_id20;
    __output__.normalWS_id16 = streams.normalWS_id16;
    __output__.ScreenPosition_id81 = streams.ScreenPosition_id81;
    return __output__;
}
