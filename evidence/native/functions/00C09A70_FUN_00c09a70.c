/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 weather-resource static comparison. Retain current whole-function name: this is a
   distinct owner layout, not proved the same class as B5EAA0. ECX owner: clear byte+80; initialize
   nine texture-parameter proxy slots starting+88 in18hex-byte strides. Nonblurry reflection at+E8
   retains handle+160; blurry parameter/resource pair at+100 uses temporary-handle helperC88F00. No
   full parent class/phase, cube/sampler/pixel or lifecycle claim. */

void __fastcall FUN_00c09a70(int param_1)

{
  *(undefined1 *)(param_1 + 0x80) = 0;
  ShaderTextureBinding_RequestWithTemporaryHandle
            ((void *)(param_1 + 0x88),"Level1NormalMap",L"seaWaterSigned");
  ShaderTextureBinding_RequestWithTemporaryHandle
            ((void *)(param_1 + 0xa0),"Level2NormalMap",L"seaWaterSigned");
  ShaderTextureBinding_RequestWithTemporaryHandle
            ((void *)(param_1 + 0xb8),"Level3NormalMap",L"seaWaterSigned");
  ShaderTextureBinding_RequestWithTemporaryHandle
            ((void *)(param_1 + 0xd0),"WaterColorTexture",L"WaterColor");
  ShaderTextureBinding_RequestAndPublish
            ((void *)(param_1 + 0xe8),"SkyReflection",L"WaterSkyBoxReflectionPlaceholder",
             (uint *)(param_1 + 0x160));
  ShaderTextureBinding_RequestWithTemporaryHandle
            ((void *)(param_1 + 0x100),"SkyReflectionBlurry",
             L"WaterSkyBoxReflectionPlaceholderBlurry");
  ShaderTextureBinding_RequestWithTemporaryHandle
            ((void *)(param_1 + 0x118),"MipLevelTex",L"WaterMipSampler");
  ShaderTextureBinding_RequestWithTemporaryHandle
            ((void *)(param_1 + 0x130),"WaterNoiseMap",L"WaterWaveNoise");
  ShaderTextureBinding_RequestWithTemporaryHandle
            ((void *)(param_1 + 0x148),"WaterSunSpecular",L"WaterSunSpecular");
  return;
}

