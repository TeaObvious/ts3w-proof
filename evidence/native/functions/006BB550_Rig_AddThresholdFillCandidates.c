/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst PC1.67 local light rig contract. ECXrig+vector RET4. Sums each48bytereccandidatefloat+28
   if COMISSvalue,stored.01 thenNOTJB: finite>=.01included, unorderedexcluded, sourceorder retained.
   Reads threshold viaaccessor7E51A0(11D1BB8). Only threshold>sum ordered enters; setsrigflagsbit0
   beforelookup. ComputesSSEfloat1-sum/threshold, positivevalueelse+0, x87FSQRT thenfloatstore.
   Lookup keyE23C85D8 through6E9640/6AD190; missingpreset leavesflagset butnoappend. Foundpreset
   suppliesFOUR rows directionbase+10,colorsbase+50,stride10; calls candidateinitializer
   withcolors*sqrtfactor andonesmultiplier,payload0, thenkind+2C=2; append48bytes each.
   Fullpresetidentity/initialization/allocator remainunexpanded; thisreviewdoesnotproveNoLightname,
   globaldefaults orliteralbrightnesscoefficients. */

void __thiscall Rig_AddThresholdFillCandidates(void *this,void *candidateVector)

{
  undefined4 *puVar1;
  uint uVar2;
  void *this_00;
  int iVar3;
  uint uVar4;
  float *pfVar5;
  float fVar6;
  float local_78;
  float local_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60 [5];
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  fVar6 = 0.0;
  uVar2 = (*(int *)((int)candidateVector + 4) - *(int *)candidateVector) / 0x30;
  uVar4 = 0;
  local_78 = 0.0;
  if (3 < (int)uVar2) {
    pfVar5 = (float *)(*(int *)candidateVector + 0x58);
    iVar3 = (uVar2 - 4 >> 2) + 1;
    uVar4 = iVar3 * 4;
    do {
      if (0.01 <= pfVar5[-0xc]) {
        fVar6 = pfVar5[-0xc] + fVar6;
      }
      if (0.01 <= *pfVar5) {
        fVar6 = *pfVar5 + fVar6;
      }
      if (0.01 <= pfVar5[0xc]) {
        fVar6 = pfVar5[0xc] + fVar6;
      }
      if (0.01 <= pfVar5[0x18]) {
        fVar6 = pfVar5[0x18] + fVar6;
      }
      pfVar5 = pfVar5 + 0x30;
      iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    local_78 = fVar6;
  }
  if (uVar4 < uVar2) {
    pfVar5 = (float *)(uVar4 * 0x30 + 0x28 + *(int *)candidateVector);
    iVar3 = uVar2 - uVar4;
    do {
      if (0.01 <= *pfVar5) {
        local_78 = *pfVar5 + local_78;
      }
      pfVar5 = pfVar5 + 0xc;
      iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
  }
  pfVar5 = (float *)FUN_007e51a0(&DAT_011d1bb8);
  fVar6 = *pfVar5;
  if (local_78 < fVar6) {
    *(byte *)((int)this + 0x224) = *(byte *)((int)this + 0x224) | 1;
    local_78 = 1.0 - local_78 / fVar6;
    local_74 = 0.0;
    pfVar5 = &local_78;
    if (local_78 <= 0.0) {
      pfVar5 = &local_74;
    }
    iVar3 = -0x1dc37a28;
    local_74 = SQRT(*pfVar5);
    this_00 = (void *)FUN_006e9640();
    pfVar5 = (float *)CustomLightRigCatalog_FindReadyName(this_00,iVar3);
    if (pfVar5 != (float *)0x0) {
      local_60[0] = 1.0;
      local_60[1] = 1.0;
      local_60[2] = 1.0;
      local_60[3] = 1.0;
      local_70 = local_74;
      fStack_6c = local_74;
      fStack_68 = local_74;
      fStack_64 = local_74;
      iVar3 = 4;
      do {
        FUN_006bc2d0((int)&local_40);
        local_60[4] = pfVar5[0x14] * local_70;
        fStack_4c = pfVar5[0x15] * fStack_6c;
        fStack_48 = pfVar5[0x16] * fStack_68;
        fStack_44 = pfVar5[0x17] * fStack_64;
        RigCandidate_InitializeScaled(&local_40,pfVar5 + 4,local_60 + 4,local_60,0);
        puVar1 = *(undefined4 **)((int)candidateVector + 4);
        local_14 = 2;
        if (puVar1 < *(undefined4 **)((int)candidateVector + 8)) {
          *(undefined4 **)((int)candidateVector + 4) = puVar1 + 0xc;
          if (puVar1 != (undefined4 *)0x0) {
            *puVar1 = local_40;
            puVar1[1] = uStack_3c;
            puVar1[2] = uStack_38;
            puVar1[3] = uStack_34;
            puVar1[4] = local_30;
            puVar1[5] = uStack_2c;
            puVar1[6] = uStack_28;
            puVar1[7] = uStack_24;
            puVar1[8] = local_20;
            puVar1[9] = local_1c;
            puVar1[10] = local_18;
            puVar1[0xb] = 2;
          }
        }
        else {
          FUN_006bace0(candidateVector,puVar1,&local_40);
        }
        iVar3 = iVar3 + -1;
        pfVar5 = pfVar5 + 4;
      } while (iVar3 != 0);
    }
  }
  return;
}

