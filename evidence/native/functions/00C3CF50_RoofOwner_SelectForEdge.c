/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX roof-manager access and packed signed-byte endpoint pair. Midpoint
   candidates are filtered at endpoints through C02F70 with swap-last/retest. Ties use C3BAD0
   midpoint then at most two endpoint maxima; each nonunique result replaces input via C3C980 before
   next query. This is successive narrowing; final first survivor and source ordering are not
   current ordered-list restart parity. Descriptive analyst role, not a recovered original symbol.
    */

int __thiscall RoofOwner_SelectForEdge(void *this,char *param_1)

{
  void *this_00;
  int *piVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  char cVar4;
  undefined4 uVar5;
  float *pfVar6;
  uint uVar7;
  int iVar8;
  uint uVar9;
  float local_250;
  float local_24c;
  int local_248;
  float local_244;
  float local_240;
  int local_23c;
  float local_234;
  float local_230;
  int local_22c;
  int *local_228;
  int *local_224;
  int **local_220;
  char *local_21c;
  int *local_218;
  int local_214 [64];
  int *local_114;
  int *local_110;
  int local_100 [64];
  
  this_00 = *(void **)(*(int *)((int)this + 0x21c) + 0x240);
  if (this_00 == (void *)0x0) {
    return 0;
  }
  local_250 = (float)(int)*param_1;
  local_24c = (float)(int)param_1[1];
  local_248 = (int)param_1[2];
  local_244 = (float)(int)param_1[3];
  local_23c = (int)param_1[5];
  local_228 = local_214;
  local_220 = &local_114;
  local_240 = (float)(int)param_1[4];
  local_234 = (local_244 + local_250) * 0.5;
  local_230 = (local_24c + local_240) * 0.5;
  local_21c = "World/WallGeometry/roofArray";
  local_22c = local_248;
  local_224 = local_228;
  local_218 = local_228;
  FUN_00bee020(this_00,&local_228,&local_234);
  uVar9 = (int)local_224 - (int)local_228 >> 2;
  uVar7 = 0;
  if (uVar9 != 0) {
    do {
      piVar1 = (int *)local_228[uVar7];
      cVar4 = FUN_00c02f70(piVar1,&local_250);
      if ((cVar4 == '\0') || (cVar4 = FUN_00c02f70(piVar1,&local_244), cVar4 == '\0')) {
        puVar2 = (undefined4 *)local_224[-1];
        puVar3 = (undefined4 *)local_228[uVar7];
        if (puVar2 != puVar3) {
          if (puVar2 != (undefined4 *)0x0) {
            LOCK();
            puVar2[1] = puVar2[1] + 1;
            UNLOCK();
          }
          local_228[uVar7] = (int)puVar2;
          if (puVar3 != (undefined4 *)0x0) {
            piVar1 = puVar3 + 1;
            LOCK();
            iVar8 = *piVar1;
            *piVar1 = *piVar1 + -1;
            UNLOCK();
            if (iVar8 == 1) {
              LOCK();
              *piVar1 = 1;
              UNLOCK();
              (**(code **)*puVar3)(1);
            }
          }
        }
        local_224 = local_224 + -1;
        puVar2 = (undefined4 *)*local_224;
        if (puVar2 != (undefined4 *)0x0) {
          piVar1 = puVar2 + 1;
          LOCK();
          iVar8 = *piVar1;
          *piVar1 = *piVar1 + -1;
          UNLOCK();
          if (iVar8 == 1) {
            LOCK();
            *piVar1 = 1;
            UNLOCK();
            if (puVar2 != (undefined4 *)0x0) {
              (**(code **)*puVar2)(1);
            }
          }
        }
        uVar9 = uVar9 - 1;
      }
      else {
        uVar7 = uVar7 + 1;
      }
    } while (uVar7 < uVar9);
  }
  if (uVar9 != 0) {
    if (uVar9 == 1) {
      iVar8 = *local_228;
      FUN_00be7d50(local_228,local_224);
      if ((local_228 != (int *)0x0) && (local_228 != local_218)) {
        Memory_FreeIfNonNull(local_228);
        return iVar8;
      }
    }
    else {
      local_114 = local_100;
      local_110 = local_114;
      RoofCandidates_CollectMaximumHeightTies((int *)&local_228,&local_234,(char *)&local_114);
      if (((int)local_110 - (int)local_114 & 0xfffffffcU) != 4) {
        uVar5 = GridPoint_CompareLevelThenXZ(&local_250,&local_244);
        RoofCandidates_Assign(&local_228,&local_114);
        pfVar6 = &local_250;
        if ((char)uVar5 == '\0') {
          pfVar6 = &local_244;
        }
        RoofCandidates_CollectMaximumHeightTies((int *)&local_228,pfVar6,(char *)&local_114);
        if (((int)local_110 - (int)local_114 & 0xfffffffcU) != 4) {
          RoofCandidates_Assign(&local_228,&local_114);
          pfVar6 = &local_244;
          if ((char)uVar5 == '\0') {
            pfVar6 = &local_250;
          }
          RoofCandidates_CollectMaximumHeightTies((int *)&local_228,pfVar6,(char *)&local_114);
        }
      }
      iVar8 = *local_114;
      FUN_00c39a70((int *)&local_114);
      FUN_00c39a70((int *)&local_228);
    }
    return iVar8;
  }
  FUN_00be7d50(local_228,local_224);
  if ((local_228 != (int *)0x0) && (local_228 != local_218)) {
    Memory_FreeIfNonNull(local_228);
  }
  return 0;
}

