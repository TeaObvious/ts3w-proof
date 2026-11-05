/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* ECX owner; no stack args. First-byte latch and two cached literal descriptor-mask gates;
   registers names when global registry exists, then 31 ordered tagged DDS requests, followed by
   volume creation. Inner 8000 gate only exists in registry-nonnull branch. No aggregate readiness
   or managed catch. SnowUnderTrees slot1B0 receives EP08 primary then conditional base request. */

void __fastcall WeatherResources_InitializeBindingsAndRequests(char *param_1)

{
  void *this;
  char cVar1;
  undefined4 uVar2;
  uint uVar3;
  char *pcVar4;
  char local_80 [128];
  
  if ((*param_1 != '\0') ||
     ((cVar1 = CachedGlobalMask8000_Query(), cVar1 == '\0' &&
      (cVar1 = CachedGlobalMask100000_Query(), cVar1 == '\0')))) {
    return;
  }
  *param_1 = '\x01';
  this = DAT_011d8530;
  if (DAT_011d8530 != (void *)0x0) {
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(DAT_011d8530,"GlobalWeatherParams",4,1);
    *(undefined4 *)(param_1 + 0x40) = uVar2;
    uVar3 = 1;
    pcVar4 = param_1 + 0x44;
    do {
      uVar3 = uVar3 + 1;
      FUN_004f30c0((int)local_80,"GlobalWeatherParams%d");
      uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,local_80,4,1);
      *(undefined4 *)pcVar4 = uVar2;
      pcVar4 = pcVar4 + 4;
    } while (uVar3 < 3);
    cVar1 = CachedGlobalMask8000_Query();
    if (cVar1 == '\0') {
      return;
    }
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"XrayCursorParams",4,1);
    *(undefined4 *)(param_1 + 0x60) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"PrecipitationParams",4,1);
    *(undefined4 *)(param_1 + 0x80) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"ObjectWeatherParams",4,1);
    *(undefined4 *)(param_1 + 0xa0) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"WindowFrostTexture",1,5);
    *(undefined4 *)(param_1 + 0xa4) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"RoofWeatherParams",4,1);
    *(undefined4 *)(param_1 + 0xe4) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"RoofSnowNormalMap",4,5);
    *(undefined4 *)(param_1 + 0xc0) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"ObjectSnowNormalMap",4,5);
    *(undefined4 *)(param_1 + 0xe8) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"ObjectSnowSideTexture",4,5);
    *(undefined4 *)(param_1 + 0xec) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"ObjectSnowSideNormalMap",4,5);
    *(undefined4 *)(param_1 + 0xf0) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"ObjectSnowEdgeTexture",4,5);
    *(undefined4 *)(param_1 + 0xf4) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"TerrainSnowNormalMap",4,5);
    *(undefined4 *)(param_1 + 0xc4) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"TerrainSnowDiffuseMap",1,5);
    *(undefined4 *)(param_1 + 200) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"permTexture",1,5);
    *(undefined4 *)(param_1 + 0xcc) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"permTexture2d",1,5);
    *(undefined4 *)(param_1 + 0xd0) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"permGradTexture",1,5);
    *(undefined4 *)(param_1 + 0xd4) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"gradTexture",1,5);
    *(undefined4 *)(param_1 + 0xd8) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"gradTexture4d",1,5);
    *(undefined4 *)(param_1 + 0xdc) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"permGrad4dTexture",1,5);
    *(undefined4 *)(param_1 + 0xe0) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"RoadSnowTexture",1,5);
    *(undefined4 *)(param_1 + 0xf8) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"TireTracksTextureD",1,5);
    *(undefined4 *)(param_1 + 0xfc) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"TireTracksTextureN",1,5);
    *(undefined4 *)(param_1 + 0x100) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"TireTracksIntersectionTextureD",1,5);
    *(undefined4 *)(param_1 + 0x104) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"TireTracksIntersectionTextureN",1,5);
    *(undefined4 *)(param_1 + 0x108) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"IcePatchesTexture",1,5);
    *(undefined4 *)(param_1 + 0x10c) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"IceCracksTexture",1,5);
    *(undefined4 *)(param_1 + 0x110) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"IceCracksNormalMap",1,5);
    *(undefined4 *)(param_1 + 0x114) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"SnowDoorAlphaMap",1,5);
    *(undefined4 *)(param_1 + 0x118) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"SnowDoorNormalMap",1,5);
    *(undefined4 *)(param_1 + 0x11c) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"NoiseVolumeMap",1,5);
    *(undefined4 *)(param_1 + 0x120) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"RainPuddleNoiseMap",1,5);
    *(undefined4 *)(param_1 + 0x124) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"RainDrops",1,5);
    *(undefined4 *)(param_1 + 0x128) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"SkyReflectionForRain",1,5);
    *(undefined4 *)(param_1 + 300) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"ExteriorProbeForRain",1,5);
    *(undefined4 *)(param_1 + 0x130) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"SnowMeltingMap",1,5);
    *(undefined4 *)(param_1 + 0x134) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"SnowMeltingNoiseMap",1,5);
    *(undefined4 *)(param_1 + 0x138) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"SnowUnderTreesNormalMap",1,5);
    *(undefined4 *)(param_1 + 0x13c) = uVar2;
    uVar2 = ShaderParameterRegistry_RegisterNamedRow(this,"WorldLeavesTexture",1,5);
    *(undefined4 *)(param_1 + 0x140) = uVar2;
  }
  WeatherResources_SubmitNamedDdsSlot
            ((uint *)(param_1 + 0x144),(wint_t *)L"EP08_frostWindowOverlay",0x10);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x164),(wint_t *)L"permTexture",1);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x168),(wint_t *)L"permTexture2d",1);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x16c),(wint_t *)L"permGradTexture",1);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x170),(wint_t *)L"gradTexture",1);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x174),(wint_t *)L"gradTexture4d",1);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x178),(wint_t *)L"permGrad4dTexture",1);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x148),(wint_t *)L"snowNormal1",1);
  WeatherResources_SubmitNamedDdsSlot
            ((uint *)(param_1 + 0x14c),(wint_t *)L"EP08_terrainSnow_n",0x10);
  WeatherResources_SubmitNamedDdsSlot
            ((uint *)(param_1 + 0x150),(wint_t *)L"EP08_terrainSnow_d",0x10);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x154),(wint_t *)L"snowNormal2",1);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x158),(wint_t *)L"EP08_snowSide",0x10);
  WeatherResources_SubmitNamedDdsSlot
            ((uint *)(param_1 + 0x15c),(wint_t *)L"EP08_snowSideNormalMap",0x10);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x17c),(wint_t *)L"EP08_roadSnow",0x10);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x180),(wint_t *)L"EP08_tireTracks_d",0x10)
  ;
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x184),(wint_t *)L"EP08_tireTracks_n",0x10)
  ;
  WeatherResources_SubmitNamedDdsSlot
            ((uint *)(param_1 + 0x188),(wint_t *)L"EP08_roadIntersectionTracks_d",0x10);
  WeatherResources_SubmitNamedDdsSlot
            ((uint *)(param_1 + 0x18c),(wint_t *)L"EP08_roadIntersectionTracks_n",0x10);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 400),(wint_t *)L"EP08_icePatches",0x10);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x194),(wint_t *)L"EP08_iceCracks",0x10);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x198),(wint_t *)L"frozen_pond_nm",1);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x1b8),(wint_t *)L"EP08_snowDoor_d",0x10);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x1bc),(wint_t *)L"EP08_snowDoor_n",0x10);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x19c),(wint_t *)L"EP08_puddles",0x10);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x1a0),(wint_t *)L"EP08_rainDrops",0x10);
  WeatherResources_SubmitNamedDdsSlot
            ((uint *)(param_1 + 0x1a4),(wint_t *)L"WaterSkyBoxReflectionPlaceholder",1);
  WeatherResources_SubmitNamedDdsSlot
            ((uint *)(param_1 + 0x1a8),(wint_t *)L"EP08_snowMelting_d",0x10);
  WeatherResources_SubmitNamedDdsSlot
            ((uint *)(param_1 + 0x1ac),(wint_t *)L"EP08_snowMeltingNoise_d",0x10);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x1b4),(wint_t *)L"leafPuddle3_d",0x10);
  WeatherResources_SubmitNamedDdsSlot
            ((uint *)(param_1 + 0x1b0),(wint_t *)L"EP08_snowUnderTrees_n",0x10);
  WeatherResources_SubmitNamedDdsSlot((uint *)(param_1 + 0x1b0),(wint_t *)L"snowNormal2",1);
  WeatherResources_CreateNoiseVolume((int)param_1);
  return;
}

