/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 weather-resource static comparison. Retain current whole-function name: concrete
   parent class/phase is not authenticated. ECX owner: clear byte+248, initialize nine
   texture-parameter proxy slots starting+250 in18hex-byte strides. Full selected calls pair
   SkyReflection with WaterSkyBoxReflectionPlaceholder and retained handle+328, and
   SkyReflectionBlurry with the wide blurry placeholder at proxy+2C8. Ends with B5E970(owner,0),
   whose complete effects remain outside this window. No cube/sampler/pixel/manager-lifetime claim.
    */

void __fastcall FUN_00b5eaa0(void *param_1)

{
  *(undefined1 *)((int)param_1 + 0x248) = 0;
  ShaderTextureBinding_RequestWithTemporaryHandle
            ((void *)((int)param_1 + 0x250),"Level1NormalMap",L"seaWaterSigned");
  ShaderTextureBinding_RequestWithTemporaryHandle
            ((void *)((int)param_1 + 0x268),"Level2NormalMap",L"seaWaterSigned");
  ShaderTextureBinding_RequestWithTemporaryHandle
            ((void *)((int)param_1 + 0x280),"Level3NormalMap",L"seaWaterSigned");
  ShaderTextureBinding_RequestWithTemporaryHandle
            ((void *)((int)param_1 + 0x298),"WaterColorTexture",L"WaterColor");
  ShaderTextureBinding_RequestAndPublish
            ((void *)((int)param_1 + 0x2b0),"SkyReflection",L"WaterSkyBoxReflectionPlaceholder",
             (uint *)((int)param_1 + 0x328));
  ShaderTextureBinding_RequestWithTemporaryHandle
            ((void *)((int)param_1 + 0x2c8),"SkyReflectionBlurry",
             L"WaterSkyBoxReflectionPlaceholderBlurry");
  ShaderTextureBinding_RequestWithTemporaryHandle
            ((void *)((int)param_1 + 0x2e0),"MipLevelTex",L"WaterMipSampler");
  ShaderTextureBinding_RequestWithTemporaryHandle
            ((void *)((int)param_1 + 0x2f8),"WaterNoiseMap",L"WaterWaveNoise");
  ShaderTextureBinding_RequestWithTemporaryHandle
            ((void *)((int)param_1 + 0x310),"WaterSunSpecular",L"WaterSunSpecular");
  FUN_00b5e970(param_1,'\0');
  return;
}

