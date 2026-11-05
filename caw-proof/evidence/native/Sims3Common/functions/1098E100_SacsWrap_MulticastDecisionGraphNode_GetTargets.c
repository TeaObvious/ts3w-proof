/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_MulticastDecisionGraphNode_GetTargets.
   Export ordinal(s): 2140. Entry VA: 0x1098e100. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000DE4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl SacsWrap_MulticastDecisionGraphNode_GetTargets(int param_1,uint param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  int *piVar4;
  undefined4 *puVar5;
  uint *puVar6;
  uint uVar7;
  undefined1 local_20 [4];
  int *local_1c;
  uint local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
                    /* 0x98e100  2140  SacsWrap_MulticastDecisionGraphNode_GetTargets */
  if ((param_1 != 0) && ((param_2 == 0 || (param_3 != 0)))) {
    piVar4 = *(int **)(param_1 + 0x34);
    local_10 = DAT_10acb0d4;
    local_c = _DAT_10aadffc;
    local_4 = "Animation/SACSWrap";
    local_18 = 1;
    local_1c = &DAT_10c571f8;
    local_14 = 0;
    local_8 = 0;
    puVar5 = (undefined4 *)(*(int *)(param_1 + 0x34) + *(int *)(param_1 + 0x38) * 4);
    puVar6 = (uint *)*piVar4;
    if (puVar6 == (uint *)0x0) {
      piVar4 = piVar4 + 1;
      iVar2 = *piVar4;
      while (iVar2 == 0) {
        piVar4 = piVar4 + 1;
        iVar2 = *piVar4;
      }
      puVar6 = (uint *)*piVar4;
    }
    FUN_105e5740(local_20,puVar6,(uint)piVar4,(uint *)*puVar5,puVar5);
    puVar5 = (undefined4 *)*local_1c;
    piVar4 = local_1c;
    if (puVar5 == (undefined4 *)0x0) {
      piVar4 = local_1c + 1;
      iVar2 = local_1c[1];
      while (iVar2 == 0) {
        piVar4 = piVar4 + 1;
        iVar2 = *piVar4;
      }
      puVar5 = (undefined4 *)*piVar4;
    }
    puVar3 = (undefined4 *)local_1c[local_18];
    uVar7 = 0;
    while (puVar5 != puVar3) {
      if (uVar7 < param_2) {
        *(undefined4 *)(param_3 + uVar7 * 4) = *puVar5;
      }
      uVar7 = uVar7 + 1;
      puVar5 = (undefined4 *)puVar5[1];
      while (puVar5 == (undefined4 *)0x0) {
        piVar1 = piVar4 + 1;
        piVar4 = piVar4 + 1;
        puVar5 = (undefined4 *)*piVar1;
      }
    }
    FUN_105eb910((int)local_1c,local_18);
    local_14 = 0;
    if (1 < local_18) {
      FUN_10918e90((int)local_1c);
    }
    return uVar7;
  }
  return 0;
}

