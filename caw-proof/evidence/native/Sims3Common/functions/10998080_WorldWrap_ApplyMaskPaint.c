/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_ApplyMaskPaint. Export ordinal(s):
   2607. Entry VA: 0x10998080. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004E8. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl WorldWrap_ApplyMaskPaint(int param_1,float *param_2)

{
  float fVar1;
  float fVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  uint uVar7;
  int iVar8;
  int iVar9;
  float fStack_2c;
  int iStack_28;
  int iStack_24;
  int aiStack_20 [2];
  float fStack_18;
  float fStack_c;
  int iStack_8;
  int iStack_4;
  
  if (((*(int *)(param_1 + 0x54) != 0) &&
      (iStack_28 = FUN_106b6a50(*(int *)(param_1 + 0x54)), iStack_28 != 0)) &&
     (iVar5 = FUN_10409fe0(param_1), iVar5 != 0)) {
    fVar2 = param_2[4];
    fVar1 = param_2[1];
    uVar7 = (int)fVar2 - 1U & ~(uint)fVar2;
    if (uVar7 == 0) {
      iVar5 = (int)fVar2 / 2;
    }
    else {
      iVar5 = (int)fVar2 / 2 + -1;
    }
    iVar5 = iVar5 + (int)*param_2;
    iVar8 = (int)fVar2 / 2;
    iVar3 = iVar8 + -1;
    if (uVar7 == 0) {
      iVar3 = iVar8;
    }
    fStack_c = param_2[7];
    iVar9 = (int)*param_2 - iVar8;
    aiStack_20[0] = iStack_28;
    if (iVar9 <= iVar5) {
      iVar8 = (int)fVar1 - iVar8;
      iVar4 = iVar8;
      iStack_24 = iVar8;
      do {
        for (; iVar4 <= iVar3 + (int)fVar1; iVar4 = iVar4 + 1) {
          fStack_2c = 0.0;
          uVar6 = FUN_102032b0(param_2,iVar9,iVar4,&fStack_2c);
          if ((char)uVar6 != '\0') {
            fStack_18 = fStack_2c;
            iStack_8 = iVar9;
            iStack_4 = iVar4;
            FUN_10203100(aiStack_20);
          }
          iVar8 = iStack_24;
        }
        iVar9 = iVar9 + 1;
        iVar4 = iVar8;
      } while (iVar9 <= iVar5);
    }
    FUN_101f0490(iStack_28);
    return;
  }
  return;
}

