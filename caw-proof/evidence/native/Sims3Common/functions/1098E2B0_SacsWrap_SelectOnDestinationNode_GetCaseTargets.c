/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_SelectOnDestinationNode_GetCaseTargets;
   SacsWrap_SelectOnParameterNode_GetCaseTargets. Export ordinal(s): 2176; 2182. Entry VA:
   0x1098e2b0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000E15; CSHostWrap:0x06000E28.
   This is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl
SacsWrap_SelectOnDestinationNode_GetCaseTargets(uint param_1,int param_2,uint param_3,int param_4)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  undefined4 *puVar5;
  uint uVar6;
  int *piVar7;
  undefined4 *local_28 [2];
  undefined1 local_20 [4];
  int *local_1c;
  uint local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  iVar3 = param_4;
                    /* 0x98e2b0  2176  SacsWrap_SelectOnDestinationNode_GetCaseTargets
                       0x98e2b0  2182  SacsWrap_SelectOnParameterNode_GetCaseTargets */
  uVar6 = param_1;
  if ((param_1 != 0) && ((param_3 == 0 || (param_4 != 0)))) {
    local_10 = DAT_10acb0d4;
    local_c = _DAT_10aadffc;
    local_4 = "Animation/SACSWrap";
    local_18 = 1;
    local_1c = &DAT_10c571f8;
    local_14 = 0;
    local_8 = 0;
    param_1 = SacsWrap_SelectOnDestinationNode_GetCaseValue(param_1,param_2);
    piVar4 = (int *)FUN_105f0e90((void *)(uVar6 + 0x30),local_28,&param_1);
    piVar7 = &DAT_10c571f8;
    if (*piVar4 != *(int *)(*(int *)(uVar6 + 0x34) + *(int *)(uVar6 + 0x38) * 4)) {
      FUN_105e5890(local_20,(void *)(*piVar4 + 4));
      piVar7 = local_1c;
    }
    puVar5 = (undefined4 *)*piVar7;
    piVar4 = piVar7;
    if (puVar5 == (undefined4 *)0x0) {
      piVar4 = piVar7 + 1;
      iVar2 = piVar7[1];
      while (iVar2 == 0) {
        piVar4 = piVar4 + 1;
        iVar2 = *piVar4;
      }
      puVar5 = (undefined4 *)*piVar4;
    }
    local_28[0] = (undefined4 *)piVar7[local_18];
    uVar6 = 0;
    while (puVar5 != local_28[0]) {
      if (uVar6 < param_3) {
        *(undefined4 *)(iVar3 + uVar6 * 4) = *puVar5;
      }
      uVar6 = uVar6 + 1;
      puVar5 = (undefined4 *)puVar5[1];
      while (puVar5 == (undefined4 *)0x0) {
        piVar1 = piVar4 + 1;
        piVar4 = piVar4 + 1;
        puVar5 = (undefined4 *)*piVar1;
      }
    }
    FUN_105eb910((int)piVar7,local_18);
    local_14 = 0;
    if (1 < local_18) {
      FUN_10918e90((int)local_1c);
    }
    return uVar6;
  }
  return 0;
}

