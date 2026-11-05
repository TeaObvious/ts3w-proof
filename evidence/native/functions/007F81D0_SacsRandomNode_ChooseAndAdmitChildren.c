/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst note (PC1.67 SACS migration contract): PC1.67: ECX node, five physical stack words,
   RET14, no declared success result. VTable01020D00 has type getter007FE000 (02EEDB70) at+38,
   reader007FA1E0 at+18 and this walk at+24. Allocates four signed-byte history entries
   initialized7F. Node+44 enables immediate-previous exclusion and probability-dependent
   recent-history rejection. Total+40, 36-byte outcome stride. Samples004FAA60 or uses half-total
   when00588BE0 nonzero; scans weights backwards from last to index0, subtracting until <=0.
   Dispatches selected child set via007F4770 then shifts history. Float-looking pointer temporaries
   in decompiler are wrong types: MOVSS/SUBSS/DIVSS and MOVSX byte establish numeric widths. Current
   C# forward/clamped/no-history selection is not equivalent. Threshold policy constants and RNG
   distribution remain bounded, not inferred from their names. */

void __thiscall
SacsRandomNode_ChooseAndAdmitChildren
          (int param_1,void *param_2,undefined4 param_3,int param_4,undefined4 param_5,int *param_6)

{
  int *piVar1;
  char *pcVar2;
  char cVar3;
  int *piVar4;
  int iVar5;
  uint uVar6;
  int *piVar7;
  uint uVar8;
  uint *puVar9;
  uint uVar10;
  uint uVar11;
  float10 fVar12;
  float fVar13;
  
  if (*param_6 == 0) {
    piVar4 = FUN_004e6f20(DAT_011cc864,4,0);
    *(undefined1 *)piVar4 = 0x7f;
    *(undefined1 *)((int)piVar4 + 1) = 0x7f;
    *(undefined1 *)((int)piVar4 + 2) = 0x7f;
    *(undefined1 *)((int)piVar4 + 3) = 0x7f;
    *param_6 = (int)piVar4;
  }
  pcVar2 = (char *)*param_6;
  param_6 = *(int **)(param_1 + 0x40);
  uVar11 = (uint)*pcVar2;
  if ((*(char *)(param_1 + 0x44) != '\0') &&
     (uVar11 < (uint)((*(int *)(param_1 + 0x34) - *(int *)(param_1 + 0x30)) / 0x24))) {
    param_6 = (int *)((float)param_6 - *(float *)(*(int *)(param_1 + 0x30) + uVar11 * 0x24));
  }
  do {
    cVar3 = FUN_00588be0();
    if (cVar3 == '\0') {
      fVar12 = TreeVariation_DrawUniform((int *)(param_4 + 100));
      fVar13 = (float)(fVar12 * (float10)(float)param_6);
    }
    else {
      fVar13 = (float)param_6 * 0.5;
    }
    uVar10 = (*(int *)(param_1 + 0x34) - *(int *)(param_1 + 0x30)) / 0x24 - 1;
    if (uVar10 != 0) {
      iVar5 = uVar10 * 0x24;
      do {
        if (((*(char *)(param_1 + 0x44) == '\0') || (uVar10 != uVar11)) &&
           (fVar13 = fVar13 - *(float *)(iVar5 + *(int *)(param_1 + 0x30)), fVar13 <= 0.0)) break;
        uVar10 = uVar10 - 1;
        iVar5 = iVar5 + -0x24;
      } while (uVar10 != 0);
    }
    fVar13 = *(float *)(*(int *)(param_1 + 0x30) + uVar10 * 0x24) / *(float *)(param_1 + 0x40);
    uVar8 = 0;
    if (0.05 <= fVar13) {
      if (0.1 <= fVar13) {
        if (0.15 <= fVar13) {
          if (fVar13 < 0.2) {
            uVar8 = 1;
          }
        }
        else {
          uVar8 = 2;
        }
      }
      else {
        uVar8 = 3;
      }
    }
    else {
      uVar8 = 4;
    }
    if ((*(char *)(param_1 + 0x44) != '\0') &&
       (uVar6 = (*(int *)(param_1 + 0x34) - *(int *)(param_1 + 0x30)) / 0x24 - 1, uVar6 < uVar8)) {
      uVar8 = uVar6;
    }
    uVar6 = 0;
    if (uVar8 == 0) {
LAB_007f8363:
      iVar5 = *(int *)(*(int *)(param_1 + 0x30) + 0xc + uVar10 * 0x24);
      piVar7 = *(int **)(*(int *)(param_1 + 0x30) + uVar10 * 0x24 + 8);
      piVar4 = piVar7 + iVar5;
      piVar1 = piVar7 + iVar5;
      puVar9 = (uint *)*piVar7;
      if (puVar9 == (uint *)0x0) {
        piVar7 = piVar7 + 1;
        iVar5 = *piVar7;
        while (iVar5 == 0) {
          piVar7 = piVar7 + 1;
          iVar5 = *piVar7;
        }
        puVar9 = (uint *)*piVar7;
      }
      FUN_007f4770(param_2,puVar9,(uint)piVar7,(uint *)*piVar4,piVar1);
      cVar3 = *pcVar2;
      *pcVar2 = (char)uVar10;
      pcVar2[3] = pcVar2[2];
      pcVar2[2] = pcVar2[1];
      pcVar2[1] = cVar3;
      return;
    }
    while ((int)pcVar2[uVar6] != uVar10) {
      uVar6 = uVar6 + 1;
      if (uVar8 <= uVar6) goto LAB_007f8363;
    }
  } while( true );
}

