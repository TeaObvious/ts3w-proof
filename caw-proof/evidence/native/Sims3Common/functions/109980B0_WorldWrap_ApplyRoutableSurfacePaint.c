/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_ApplyRoutableSurfacePaint. Export
   ordinal(s): 2608. Entry VA: 0x109980b0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004EB. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldWrap_ApplyRoutableSurfacePaint(float param_1,float *param_2)

{
  uint uVar1;
  void *this;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  float fVar7;
  int iStack_14;
  float fStack_c;
  int iStack_8;
  uint uStack_4;
  
  if (((*(int *)((int)param_1 + 0x54) != 0) &&
      (this = (void *)FUN_106b6a50(*(int *)((int)param_1 + 0x54)), this != (void *)0x0)) &&
     (iStack_8 = FUN_10409fe0((int)param_1), iStack_8 != 0)) {
    fVar7 = param_2[4];
    uVar4 = (int)fVar7 - 1U & ~(uint)fVar7;
    if (uVar4 == 0) {
      iVar5 = (int)fVar7 / 2;
    }
    else {
      iVar5 = (int)fVar7 / 2 + -1;
    }
    iVar5 = iVar5 + (int)*param_2;
    iVar2 = (int)fVar7 / 2;
    iStack_14 = iVar2;
    if (uVar4 != 0) {
      iStack_14 = iVar2 + -1;
    }
    iStack_14 = iStack_14 + (int)param_2[1];
    uVar4 = (int)*param_2 - iVar2;
    if ((int)uVar4 <= iVar5) {
      uVar6 = (int)param_2[1] - iVar2;
      uVar1 = uVar6;
      uStack_4 = uVar6;
      do {
        for (; (int)uVar1 <= iStack_14; uVar1 = uVar1 + 1) {
          param_1 = 0.0;
          fVar7 = _DAT_10b310ec;
          if ((param_2[7] == 1.4013e-45) || (fVar7 = DAT_10acb0d4, param_2[7] == 2.8026e-45)) {
            param_1 = fVar7;
          }
          fStack_c = param_1;
          uVar3 = FUN_102032b0(param_2,uVar4,uVar1,&fStack_c);
          if (((char)uVar3 != '\0') &&
             ((uVar3 = FUN_10068640(iStack_8), (char)uVar3 == '\0' ||
              (uVar3 = FUN_10203440(this,uVar4,uVar1,&fStack_c), (char)uVar3 != '\0')))) {
            FUN_101f1d00(this,uVar4,uVar1,0,param_1);
          }
          uVar6 = uStack_4;
        }
        uVar4 = uVar4 + 1;
        uVar1 = uVar6;
      } while ((int)uVar4 <= iVar5);
    }
    FUN_101f0490((int)this);
    return;
  }
  return;
}

