/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Physical ECX roof receiver and three stack words, RET12. First stack byte selects stride1/2; second word is output vector; third unused in this stored body. Four outside-grid traversals use +74/+78 dimensions, virtual+28 x87 samples, side-directed endpoint writes and vector append fallbackBFB130. Actual C has false unaffected register/return-address aliases because stored prototype is incomplete. Do not infer output pointer from C or prove concrete vtable/analytic/hidden emitter equivalence.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00BFC450_FUN_00bfc450.asm
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 __fastcall FUN_00bfc450(int *param_1)

{
  int iVar1;
  float *pfVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  uint uVar6;
  float unaff_EBX;
  float unaff_EBP;
  uint uVar7;
  uint uVar8;
  float10 fVar9;
  float fVar10;
  float fVar11;
  void *unaff_retaddr;
  uint uVar12;
  float local_40;
  float fStack_34;
  uint auStack_28 [2];
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  float fStack_10;
  float fStack_c;
  undefined4 uStack_8;
  int iStack_4;
  
  (**(code **)(*param_1 + 0x28))(0,0);
  auStack_28[0] = 0;
  auStack_28[1] = param_1[0x1d] + -1;
  iStack_4 = ((char)iStack_4 != '\0') + 1;
  local_40 = 0.0;
  fVar4 = _DAT_00f9b5b4;
  do {
    uVar12 = auStack_28[(int)local_40];
    fVar3 = (float)(int)uVar12;
    if ((int)uVar12 < 0) {
      fVar3 = fVar3 + FLOAT_00f99948;
    }
    uVar7 = 0;
    fVar3 = fVar3 * fVar4 + unaff_EBX;
    if (param_1[0x1e] != 1) {
      do {
        fVar11 = (float)(int)uVar7;
        if ((int)uVar7 < 0) {
          fVar11 = fVar11 + FLOAT_00f99948;
        }
        fVar10 = (float)(iStack_4 + -1 + uVar7 + 1);
        fVar11 = fVar11 * fVar4 + unaff_EBP;
        fVar5 = (float)(int)fVar10;
        if ((int)fVar10 < 0) {
          fVar5 = fVar5 + FLOAT_00f99948;
        }
        fStack_34 = unaff_EBP + fVar5 * fVar4;
        (**(code **)(*param_1 + 0x28))(uVar12,uVar7);
        fVar9 = (float10)(**(code **)(*param_1 + 0x28))(uStack_8,uVar7 + 1);
        pfVar2 = *(float **)((int)unaff_retaddr + 4);
        if (local_40 == 0.0) {
          fStack_1c = fVar10;
          fStack_18 = fVar11;
          fVar10 = (float)fVar9;
          fVar11 = fStack_34;
        }
        else {
          fStack_1c = (float)fVar9;
          fStack_18 = fStack_34;
        }
        fStack_20 = fVar3;
        fStack_10 = fVar10;
        fStack_14 = fVar3;
        fStack_c = fVar11;
        if (pfVar2 < *(float **)((int)unaff_retaddr + 8)) {
          *(float **)((int)unaff_retaddr + 4) = pfVar2 + 6;
          if (pfVar2 != (float *)0x0) {
            *pfVar2 = fVar3;
            pfVar2[1] = fStack_1c;
            pfVar2[2] = fStack_18;
            pfVar2[5] = fVar11;
            pfVar2[4] = fVar10;
            pfVar2[3] = fVar3;
          }
        }
        else {
          FUN_00bfb130(unaff_retaddr,pfVar2,&fStack_20);
        }
        uVar7 = uVar7 + iStack_4;
        fVar4 = _DAT_00f9b5b4;
      } while (uVar7 < param_1[0x1e] - 1U);
    }
    local_40 = (float)((int)local_40 + 1);
  } while ((uint)local_40 < 2);
  auStack_28[0] = 0;
  auStack_28[1] = param_1[0x1e] + -1;
  uVar12 = 0;
  do {
    uVar7 = auStack_28[uVar12];
    fVar3 = (float)(int)uVar7;
    if ((int)uVar7 < 0) {
      fVar3 = fVar3 + FLOAT_00f99948;
    }
    uVar8 = 0;
    fVar3 = fVar3 * fVar4 + unaff_EBP;
    uVar6 = uVar7;
    if (param_1[0x1d] != 1) {
      do {
        fVar11 = (float)(int)uVar8;
        if ((int)uVar8 < 0) {
          fVar11 = fVar11 + FLOAT_00f99948;
        }
        iVar1 = iStack_4 + -1 + uVar8 + 1;
        fVar11 = fVar11 * fVar4 + unaff_EBX;
        fVar10 = (float)iVar1;
        if (iVar1 < 0) {
          fVar10 = fVar10 + FLOAT_00f99948;
        }
        fVar4 = fVar10 * fVar4 + unaff_EBX;
        fVar9 = (float10)(**(code **)(*param_1 + 0x28))(uVar8,uVar7);
        unaff_EBP = (float)fVar9;
        fVar9 = (float10)(**(code **)(*param_1 + 0x28))(uVar8 + 1,fStack_34);
        fStack_34 = (float)fVar9;
        pfVar2 = *(float **)((int)unaff_retaddr + 4);
        if (uVar12 == 1) {
          fStack_20 = fVar11;
          fStack_1c = local_40;
          fVar11 = fVar4;
          fStack_10 = fStack_34;
        }
        else {
          fStack_20 = fVar4;
          fStack_1c = fStack_34;
          fStack_10 = local_40;
        }
        fStack_18 = fVar3;
        fStack_14 = fVar11;
        fStack_c = fVar3;
        if (pfVar2 < *(float **)((int)unaff_retaddr + 8)) {
          *(float **)((int)unaff_retaddr + 4) = pfVar2 + 6;
          if (pfVar2 != (float *)0x0) {
            *pfVar2 = fStack_20;
            pfVar2[1] = fStack_1c;
            pfVar2[2] = fVar3;
            pfVar2[5] = fVar3;
            pfVar2[4] = fStack_10;
            pfVar2[3] = fVar11;
          }
        }
        else {
          FUN_00bfb130(unaff_retaddr,pfVar2,&fStack_20);
        }
        uVar8 = uVar8 + iStack_4;
        uVar6 = param_1[0x1d] - 1;
        fVar4 = _DAT_00f9b5b4;
      } while (uVar8 < uVar6);
    }
    uVar12 = uVar12 + 1;
  } while (uVar12 < 2);
  return CONCAT31((int3)(uVar6 >> 8),1);
}

