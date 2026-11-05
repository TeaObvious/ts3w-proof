/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 weather snapshot instruction contract. Selected default/lock contract within
   complete constructor; ECXthis, no stackargs RET, returns thisEAX. Active+8C8 andpending+924 each
   set semantic defaults: type/season0,strength1,fallSetbyte1,heatShimmerDistance-1,
   writtenremainingfloatfields0,meltingbyte0. Audio DWORDs+38/+3C andterrainWORD+40 are NOT
   initialized in the reviewed two default blocks; no all-zero-record guarantee, padding also not
   fullyinitialized. Initializescriticalsection+980, XCHGdirty9A0=0, additional
   locks/state/resources unexpanded. Full construction/admission/failure contract not established.
    */

void * __thiscall WeatherManager_Construct(void *this)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  float fVar4;
  float fVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  int *piVar10;
  undefined4 *puVar11;
  
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fb3ccc;
  *(undefined ***)this = &PTR_FUN_0108b7b8;
  *(undefined ***)((int)this + 4) = &PTR_LAB_0108b7b0;
  FUN_00c16010((undefined4 *)((int)this + 0x10));
  fVar5 = FLOAT_00fab218;
  fVar4 = FLOAT_00f998f8;
  *(float *)((int)this + 0x8cc) = FLOAT_00f998f8;
  *(undefined4 *)((int)this + 0x8d0) = 0;
  *(undefined4 *)((int)this + 0x8d8) = 0;
  *(undefined4 *)((int)this + 0x8dc) = 0;
  *(undefined4 *)((int)this + 0x8e0) = 0;
  *(undefined4 *)((int)this + 0x8e4) = 0;
  *(undefined4 *)((int)this + 0x8e8) = 0;
  *(undefined4 *)((int)this + 0x8f0) = 0;
  *(undefined1 *)((int)this + 0x8f4) = 1;
  *(undefined4 *)((int)this + 0x8f8) = 0;
  *(float *)((int)this + 0x8fc) = fVar5;
  *(undefined4 *)((int)this + 0x90c) = 0;
  *(undefined4 *)((int)this + 0x910) = 0;
  *(undefined4 *)((int)this + 0x914) = 0;
  *(undefined4 *)((int)this + 0x918) = 0;
  *(undefined4 *)((int)this + 0x91c) = 0;
  *(undefined4 *)((int)this + 0x920) = 0;
  *(undefined4 *)((int)this + 0x8c8) = 0;
  *(undefined4 *)((int)this + 0x8d4) = 0;
  *(undefined1 *)((int)this + 0x8ec) = 0;
  *(undefined4 *)((int)this + 0x924) = 0;
  *(float *)((int)this + 0x928) = fVar4;
  *(undefined4 *)((int)this + 0x92c) = 0;
  *(undefined4 *)((int)this + 0x930) = 0;
  *(undefined4 *)((int)this + 0x934) = 0;
  *(undefined4 *)((int)this + 0x938) = 0;
  *(undefined4 *)((int)this + 0x93c) = 0;
  *(undefined4 *)((int)this + 0x940) = 0;
  *(undefined4 *)((int)this + 0x944) = 0;
  *(undefined1 *)((int)this + 0x948) = 0;
  *(undefined4 *)((int)this + 0x94c) = 0;
  *(undefined1 *)((int)this + 0x950) = 1;
  *(undefined4 *)((int)this + 0x954) = 0;
  *(float *)((int)this + 0x958) = fVar5;
  *(undefined4 *)((int)this + 0x968) = 0;
  *(undefined4 *)((int)this + 0x96c) = 0;
  *(undefined4 *)((int)this + 0x970) = 0;
  *(undefined4 *)((int)this + 0x974) = 0;
  *(undefined4 *)((int)this + 0x978) = 0;
  *(undefined4 *)((int)this + 0x97c) = 0;
  InitializeCriticalSection((LPCRITICAL_SECTION)((int)this + 0x980));
  LOCK();
  *(undefined4 *)((int)this + 0x9a0) = 0;
  UNLOCK();
  InitializeCriticalSection((LPCRITICAL_SECTION)((int)this + 0x9a8));
  InitializeCriticalSection((LPCRITICAL_SECTION)((int)this + 0x9c8));
  fVar4 = FLOAT_00f998f8;
  *(undefined1 *)((int)this + 0x9e8) = 0;
  *(undefined4 *)((int)this + 0x9ec) = 0;
  *(float *)((int)this + 0x9f0) = fVar4;
  *(undefined4 *)((int)this + 0x9f4) = 0;
  *(undefined4 *)((int)this + 0x9f8) = 0;
  *(undefined4 *)((int)this + 0x9fc) = 0;
  *(undefined4 *)((int)this + 0xa00) = 0;
  *(undefined4 *)((int)this + 0xa04) = 0;
  *(undefined4 *)((int)this + 0xa08) = 0;
  *(undefined4 *)((int)this + 0xa0c) = 0;
  *(undefined1 *)((int)this + 0xa10) = 0;
  *(undefined4 *)((int)this + 0xa14) = 0;
  *(undefined1 *)((int)this + 0xa18) = 1;
  *(undefined4 *)((int)this + 0xa1c) = 0;
  *(undefined4 *)((int)this + 0xa30) = 0;
  *(undefined4 *)((int)this + 0xa34) = 0;
  *(undefined4 *)((int)this + 0xa38) = 0;
  *(undefined4 *)((int)this + 0xa3c) = 0;
  *(undefined4 *)((int)this + 0xa40) = 0;
  *(undefined4 *)((int)this + 0xa44) = 0;
  fVar5 = FLOAT_00fab218;
  *(float *)((int)this + 0xa20) = FLOAT_00fab218;
  *(undefined4 *)((int)this + 0xa48) = 0;
  *(float *)((int)this + 0xa4c) = fVar4;
  *(undefined4 *)((int)this + 0xa50) = 0;
  *(undefined4 *)((int)this + 0xa54) = 0;
  *(undefined4 *)((int)this + 0xa58) = 0;
  *(undefined4 *)((int)this + 0xa5c) = 0;
  *(undefined4 *)((int)this + 0xa60) = 0;
  *(undefined4 *)((int)this + 0xa64) = 0;
  *(undefined4 *)((int)this + 0xa68) = 0;
  *(undefined1 *)((int)this + 0xa6c) = 0;
  *(undefined4 *)((int)this + 0xa70) = 0;
  *(undefined1 *)((int)this + 0xa74) = 1;
  *(undefined4 *)((int)this + 0xa78) = 0;
  *(float *)((int)this + 0xa7c) = fVar5;
  *(undefined4 *)((int)this + 0xa8c) = 0;
  *(undefined4 *)((int)this + 0xa90) = 0;
  *(undefined4 *)((int)this + 0xa94) = 0;
  *(undefined4 *)((int)this + 0xa98) = 0;
  *(undefined4 *)((int)this + 0xa9c) = 0;
  *(undefined4 *)((int)this + 0xaa0) = 0;
  *(undefined4 *)((int)this + 0xaa4) = 0;
  *(float *)((int)this + 0xaa8) = fVar4;
  *(undefined4 *)((int)this + 0xaac) = 0;
  *(undefined4 *)((int)this + 0xab0) = 0;
  *(undefined4 *)((int)this + 0xab4) = 0;
  *(undefined4 *)((int)this + 0xab8) = 0;
  *(undefined4 *)((int)this + 0xabc) = 0;
  *(undefined4 *)((int)this + 0xac0) = 0;
  *(undefined4 *)((int)this + 0xac4) = 0;
  *(undefined1 *)((int)this + 0xac8) = 0;
  *(undefined4 *)((int)this + 0xacc) = 0;
  *(undefined1 *)((int)this + 0xad0) = 1;
  *(undefined4 *)((int)this + 0xad4) = 0;
  *(float *)((int)this + 0xad8) = fVar5;
  *(undefined4 *)((int)this + 0xae8) = 0;
  *(undefined4 *)((int)this + 0xaec) = 0;
  *(undefined4 *)((int)this + 0xaf0) = 0;
  *(undefined4 *)((int)this + 0xaf4) = 0;
  *(undefined4 *)((int)this + 0xaf8) = 0;
  *(undefined4 *)((int)this + 0xafc) = 0;
  *(undefined1 *)((int)this + 0xb04) = 0;
  *(undefined1 *)((int)this + 0xb05) = 0;
  FUN_00b63910((void *)((int)this + 0xb08),"Lot/Terrain/RainPuddlesMap");
  FUN_00b63910((void *)((int)this + 0xb4c),"Lot/Terrain/SnowMeltingMap");
  uVar9 = DAT_0106f8c8;
  uVar8 = _DAT_00ff96d0;
  uVar7 = _DAT_00febf60;
  uVar6 = DAT_00fbc938;
  uVar3 = DAT_00f998f4;
  *(undefined1 *)((int)this + 0xb90) = 0;
  *(undefined4 *)((int)this + 0xb98) = 0xffffffff;
  *(undefined4 *)((int)this + 0xb9c) = 0xffffffff;
  *(undefined1 *)((int)this + 0xba0) = 1;
  *(undefined4 *)((int)this + 0xba4) = uVar9;
  *(undefined4 *)((int)this + 0xba8) = uVar3;
  *(undefined4 *)((int)this + 0xbac) = uVar8;
  *(undefined4 *)((int)this + 0xbb0) = uVar6;
  *(undefined4 *)((int)this + 0xbb4) = uVar7;
  *(undefined1 *)((int)this + 3000) = 1;
  *(undefined4 *)((int)this + 0xbbc) = uVar9;
  *(undefined4 *)((int)this + 0xbc0) = uVar3;
  *(undefined4 *)((int)this + 0xbc4) = uVar8;
  *(undefined4 *)((int)this + 0xbc8) = uVar6;
  *(undefined4 *)((int)this + 0xbcc) = uVar7;
  *(undefined4 *)((int)this + 0xbd4) = uVar9;
  *(undefined1 *)((int)this + 0xbd0) = 1;
  *(undefined4 *)((int)this + 0xbd8) = uVar3;
  *(undefined4 *)((int)this + 0xbdc) = uVar8;
  *(undefined4 *)((int)this + 0xbe0) = uVar6;
  *(undefined4 *)((int)this + 0xbe4) = uVar7;
  *(undefined1 *)((int)this + 0xbe8) = 1;
  *(undefined1 *)((int)this + 0xbe9) = 1;
  *(undefined1 *)((int)this + 0xbea) = 1;
  *(undefined1 *)((int)this + 0xbeb) = 1;
  *(undefined4 *)((int)this + 0xbec) = 0;
  *(undefined4 *)((int)this + 0xbf0) = 0;
  *(undefined4 *)((int)this + 0xbf4) = 0;
  *(undefined1 *)((int)this + 0xbf8) = 0;
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x18))(L"Weather",15000);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x28))((int)this + 0xb04,L"_Debug Weather Controls On/Off");
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x34))((int)this + 0xa48,L"Precipitation Type",0,6,1);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))
              ((int)this + 0xa4c,L"Precipitation Strength",0,0x3f800000,_DAT_0106e6ec);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))((int)this + 0xa50,L"Frost Amount",0,0x3f800000,DAT_00f998e8);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))
              ((int)this + 0xa60,L"Snow Thickness Amount",0,0x3f800000,DAT_0106d788);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))((int)this + 0xa68,L"Wetness Amount",0,0x3f800000,DAT_00f998e8);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))
              ((int)this + 0xa64,L"Snow Road Tracks Depth",0,0x3f800000,DAT_0106d788);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x28))((int)this + 0xa6c,L"Snow is Melting");
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x28))((int)this + 0xa74,L"Tree Leaf to Twig Fall Style On/Off");
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))((int)this + 0xa70,L"Tree Leaf to Twig",0,0x3f800000,DAT_00f998e8)
    ;
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))((int)this + 0xa78,L"Tree Fall Colors",0,0x3f800000,DAT_00f998e8);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))((int)this + 0xa90,L"PondFreezeAmount",0,0x3f800000,DAT_00f998e8);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))
              ((int)this + 0xa7c,L"Heat Shimmer Dist",FLOAT_00fab218,DAT_00fdf488,DAT_00f998f4);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))
              ((int)this + 0xa98,L"Cloudiness Target",0,DAT_00fb3f7c,_DAT_0106e6ec);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))
              ((int)this + 0xa58,L"Sunrise Time Offset",DAT_00fee558,DAT_00fb3f7c,0);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))
              ((int)this + 0xa5c,L"Sunset Time Offset",DAT_00fee558,DAT_00fb3f7c,0);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))((int)this + 0xa94,L"World Leaves Amount",0,0x3f800000,0);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))(&DAT_01192d84,L"Snow bump scale",0,DAT_00f998f4,DAT_00f998e8);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x28))((undefined1 *)((int)this + 3000),L"Precipitation Fog On/Off");
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))
              ((int)this + 0xbbc,L"Precipitation Fog Influence",0,0x3f800000,FLOAT_00fb35b4);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))
              ((int)this + 0xbc0,L"Precipitation Fog Start Distance",_DAT_0106e6ec,DAT_010f6bf4,
               FLOAT_00fb35b4);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))
              ((int)this + 0xbc4,L"Precipitation Fog Fade In Distance",_DAT_0106e6ec,DAT_00f99974,
               FLOAT_00fb35b4);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))
              ((int)this + 0xbc8,L"Precipitation Fog Internal Start",0,DAT_00f99974,FLOAT_00fb35b4);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))
              ((int)this + 0xbcc,L"Precipitation Fog Internal Fade In",0,DAT_00f99974,FLOAT_00fb35b4
              );
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x30))
              ((int)this + 0xa8c,L"Precipitation Fog Strength",0,0x3f800000,FLOAT_00fb35b4);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x18))(0,0x7fffffff);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x18))(L"Weather Effects",0x3a99);
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x28))((int)this + 0xbe8,L"Terrain rain drops enabled");
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x28))((int)this + 0xbe9,L"Roof rain drips enabled");
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x28))((int)this + 0xbea,L"Footstep effects enabled");
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x28))((int)this + 0xbeb,L"Leaf fall enabled");
  }
  piVar10 = (int *)FUN_005a08d0();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 0x18))(0,0x7fffffff);
  }
  piVar10 = (int *)FUN_0044c4f0();
  if (piVar10 != (int *)0x0) {
    iVar1 = (int)this + 4;
    (**(code **)(*piVar10 + 0x24))(iVar1,0x8a643ff,0,0);
    (**(code **)(*piVar10 + 0x24))(iVar1,0xde844be,0,0);
    (**(code **)(*piVar10 + 0x24))(iVar1,0xe616228,0,0);
  }
  puVar11 = (undefined4 *)FUN_004e4500(0x38,"World/Weathermanager",0);
  if (puVar11 == (undefined4 *)0x0) {
    puVar11 = (undefined4 *)0x0;
  }
  else {
    puVar11 = (undefined4 *)FUN_00d66940(puVar11);
  }
  puVar2 = *(undefined4 **)((int)this + 0xbf4);
  if (puVar11 != puVar2) {
    if (puVar11 != (undefined4 *)0x0) {
      puVar11[1] = puVar11[1] + 1;
    }
    *(undefined4 **)((int)this + 0xbf4) = puVar11;
    if ((puVar2 != (undefined4 *)0x0) &&
       (iVar1 = puVar2[1], puVar2[1] = iVar1 + -1, iVar1 + -1 == 0)) {
      puVar2[1] = 1;
      (**(code **)*puVar2)(1);
    }
  }
  return this;
}

