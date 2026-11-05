/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RigResource_BuildRigAndWriteToFile. Export
   ordinal(s): 2044. Entry VA: 0x1098bb80. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000A47. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
RigResource_BuildRigAndWriteToFile
          (char *param_1,int param_2,uint param_3,LPCSTR param_4,undefined4 param_5,char param_6)

{
  void *this;
  int *piVar1;
  char *pcVar2;
  bool bVar3;
  char cVar4;
  int iVar5;
  char *pcVar6;
  undefined4 uVar7;
  uint uVar8;
  undefined4 *puVar9;
  uint uVar10;
  int *piVar11;
  undefined ***pppuVar12;
  int **ppiVar13;
  uint local_398;
  int *local_394;
  int *local_390;
  int *local_38c;
  undefined4 local_388;
  char *local_384;
  uint local_380;
  int local_37c;
  int local_378;
  undefined4 local_374;
  char *local_370;
  int local_36c;
  uint local_364;
  float local_360;
  undefined4 uStack_35c;
  undefined4 uStack_358;
  undefined4 uStack_354;
  undefined4 local_350;
  undefined4 uStack_34c;
  undefined4 uStack_348;
  undefined4 uStack_344;
  undefined4 local_340;
  undefined4 uStack_33c;
  undefined4 uStack_338;
  undefined4 uStack_334;
  undefined4 local_330;
  undefined4 uStack_32c;
  undefined4 uStack_328;
  undefined4 uStack_324;
  undefined **local_318 [26];
  float local_2b0;
  undefined4 uStack_2ac;
  undefined4 uStack_2a8;
  undefined4 uStack_2a4;
  undefined4 local_2a0;
  undefined4 uStack_29c;
  undefined4 uStack_298;
  undefined4 uStack_294;
  undefined4 local_290;
  undefined4 uStack_28c;
  undefined4 uStack_288;
  undefined4 uStack_284;
  undefined4 local_280;
  undefined4 uStack_27c;
  undefined4 uStack_278;
  undefined4 uStack_274;
  undefined4 local_264 [11];
  int local_238 [141];
  
                    /* 0x98bb80  2044  RigResource_BuildRigAndWriteToFile */
  FUN_103721b0(local_318);
  local_318[0] = &PTR_FUN_10b96f9c;
  local_390 = (int *)0x0;
  local_38c = (int *)0x0;
  local_388 = 0;
  local_384 = "Animation/RigResource/IkChains";
  FUN_10377c40(local_264);
  FUN_10372090(local_318,param_1);
  local_398 = 0;
  if (param_3 != 0) {
    puVar9 = (undefined4 *)(param_2 + 0x24);
    do {
      iVar5 = FUN_10372da0((int)local_318);
      piVar1 = local_38c;
      piVar11 = local_390;
      if (iVar5 == -1) {
        for (; piVar11 < piVar1; piVar11 = piVar11 + 0x13) {
          if (*piVar11 != 0) {
            FUN_10918e90(*piVar11);
          }
        }
        if (local_390 != (int *)0x0) {
          FUN_10918e90((int)local_390);
        }
        FUN_10372210(local_318);
        return 0xffffffff;
      }
      iVar5 = FUN_10371680(local_318,iVar5);
      pcVar2 = (char *)puVar9[-9];
      do {
        pcVar6 = pcVar2;
        pcVar2 = pcVar6 + 1;
      } while (*pcVar6 != '\0');
      FUN_1000e8a0((void *)(iVar5 + 0x40),(char *)puVar9[-9],pcVar6);
      *(undefined4 *)(iVar5 + 0x58) = puVar9[-8];
      uStack_354 = puVar9[-3];
      uStack_358 = puVar9[-4];
      uStack_35c = puVar9[-5];
      local_360 = (float)puVar9[-6];
      uStack_334 = puVar9[1];
      uStack_338 = *puVar9;
      uStack_33c = puVar9[-1];
      local_340 = puVar9[-2];
      uStack_344 = puVar9[5];
      uStack_348 = puVar9[4];
      uStack_34c = puVar9[3];
      local_350 = puVar9[2];
      uStack_324 = puVar9[9];
      uStack_328 = puVar9[8];
      uStack_32c = puVar9[7];
      local_330 = puVar9[6];
      local_2b0 = local_360;
      uStack_2ac = uStack_35c;
      uStack_2a8 = uStack_358;
      uStack_2a4 = uStack_354;
      local_2a0 = local_340;
      uStack_29c = uStack_33c;
      uStack_298 = uStack_338;
      uStack_294 = uStack_334;
      local_290 = local_350;
      uStack_28c = uStack_34c;
      uStack_288 = uStack_348;
      uStack_284 = uStack_344;
      local_280 = local_330;
      uStack_27c = uStack_32c;
      uStack_278 = uStack_328;
      uStack_274 = uStack_324;
      FUN_103738a0((void *)(iVar5 + 0x10),&local_2b0);
      if (puVar9[-7] != 0) {
        *(uint *)(iVar5 + 0x60) = *(uint *)(iVar5 + 0x60) & 0xffffffdf | 0x40;
      }
      local_398 = local_398 + 1;
      puVar9 = puVar9 + 0x13;
    } while (local_398 < param_3);
  }
  uVar7 = FUN_10372d20(local_318,param_6);
  piVar1 = local_38c;
  piVar11 = local_390;
  if ((char)uVar7 == '\0') {
    for (; piVar11 < piVar1; piVar11 = piVar11 + 0x13) {
      if (*piVar11 != 0) {
        FUN_10918e90(*piVar11);
      }
    }
    if (local_390 != (int *)0x0) {
      FUN_10918e90((int)local_390);
    }
    FUN_10372210(local_318);
    return 0xffffffff;
  }
  if (param_6 != '\0') {
    local_37c = 0;
    local_378 = 0;
    local_374 = 0;
    local_370 = "Animation/RigHelper/IKChain";
    local_36c = 1;
    FUN_10379be0(&local_37c,local_318);
    if (local_36c == 0) {
      uVar10 = local_378 - local_37c >> 2;
      local_364 = uVar10;
      if (uVar10 != 0) {
        FUN_10378b30(&local_390,uVar10);
        local_380 = 0;
        if (uVar10 != 0) {
          local_398 = 0;
          do {
            this = *(void **)(local_37c + local_380 * 4);
            piVar11 = (int *)(local_398 + (int)local_390);
            uVar10 = FUN_103797f0((int)this);
            FUN_105066d0(piVar11,uVar10);
            iVar5 = FUN_103797f0((int)this);
            if (iVar5 != 0) {
              uVar10 = 0;
              do {
                iVar5 = *piVar11;
                puVar9 = (undefined4 *)FUN_103797c0(this,uVar10);
                uVar7 = FUN_10379750(puVar9);
                *(undefined4 *)(iVar5 + uVar10 * 4) = uVar7;
                uVar10 = uVar10 + 1;
                uVar8 = FUN_103797f0((int)this);
              } while (uVar10 < uVar8);
            }
            local_394 = piVar11 + 4;
            uVar10 = 0;
            do {
              puVar9 = FUN_10379b70(this,&local_330,uVar10);
              iVar5 = FUN_10379750(puVar9);
              *local_394 = iVar5;
              FUN_10379800((int)&local_330);
              local_394 = local_394 + 1;
              uVar10 = uVar10 + 1;
            } while (uVar10 < 0xb);
            puVar9 = (undefined4 *)FUN_103797a0(this,&local_350);
            iVar5 = FUN_10379750(puVar9);
            piVar11[0x11] = iVar5;
            Animation_SetMissingAnimationCallback();
            puVar9 = (undefined4 *)FUN_10379760(this,&local_340);
            iVar5 = FUN_10379750(puVar9);
            piVar11[0xf] = iVar5;
            Animation_SetMissingAnimationCallback();
            puVar9 = (undefined4 *)FUN_10379780(this,&local_360);
            iVar5 = FUN_10379750(puVar9);
            piVar11[0x10] = iVar5;
            Animation_SetMissingAnimationCallback();
            local_398 = local_398 + 0x4c;
            local_380 = local_380 + 1;
          } while (local_380 < local_364);
        }
      }
    }
    else if (local_36c == 2) {
      FUN_1098bad0(&local_37c);
      FUN_10378270((int *)&local_390);
      FUN_10372210(local_318);
      return 0xffffffff;
    }
    FUN_1098bad0(&local_37c);
  }
  FUN_109107d0(local_238,param_4);
  bVar3 = FUN_10910380(local_238,2,2,1,0);
  if (bVar3) {
    ppiVar13 = &local_390;
    pppuVar12 = local_318;
    puVar9 = FUN_105cc2a0(&local_37c,local_238,1);
    cVar4 = FUN_10377fb0(puVar9,pppuVar12,(int *)ppiVar13);
    FUN_105ca900((int)&local_37c);
    FUN_10910890(local_238);
    FUN_10378270((int *)&local_390);
    FUN_10372210(local_318);
    if (cVar4 == '\0') {
      return 0xffffffff;
    }
    return 0;
  }
  FUN_10910890(local_238);
  piVar1 = local_38c;
  for (piVar11 = local_390; piVar11 < piVar1; piVar11 = piVar11 + 0x13) {
    if (*piVar11 != 0) {
      FUN_10918e90(*piVar11);
    }
  }
  if (local_390 != (int *)0x0) {
    FUN_10918e90((int)local_390);
  }
  FUN_10372210(local_318);
  return 0xffffffff;
}

