/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_RandomNode_GetSliceTargets. Export
   ordinal(s): 2165. Entry VA: 0x1098dcb0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000DF4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl SacsWrap_RandomNode_GetSliceTargets(void *param_1,int param_2,uint param_3,int param_4)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  int *piVar5;
  uint uVar6;
  undefined1 local_20 [4];
  int *local_1c;
  uint local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
                    /* 0x98dcb0  2165  SacsWrap_RandomNode_GetSliceTargets */
  if ((param_1 != (void *)0x0) && ((param_3 == 0 || (param_4 != 0)))) {
    local_10 = DAT_10acb0d4;
    local_c = _DAT_10aadffc;
    local_4 = "Animation/SACSWrap";
    local_18 = 1;
    local_1c = &DAT_10c571f8;
    local_14 = 0;
    local_8 = 0;
    FUN_105e9750(param_1,param_2,local_20);
    puVar4 = (undefined4 *)*local_1c;
    piVar5 = local_1c;
    if (puVar4 == (undefined4 *)0x0) {
      piVar5 = local_1c + 1;
      iVar2 = local_1c[1];
      while (iVar2 == 0) {
        piVar5 = piVar5 + 1;
        iVar2 = *piVar5;
      }
      puVar4 = (undefined4 *)*piVar5;
    }
    puVar3 = (undefined4 *)local_1c[local_18];
    uVar6 = 0;
    while (puVar4 != puVar3) {
      if (uVar6 < param_3) {
        *(undefined4 *)(param_4 + uVar6 * 4) = *puVar4;
      }
      uVar6 = uVar6 + 1;
      puVar4 = (undefined4 *)puVar4[1];
      while (puVar4 == (undefined4 *)0x0) {
        piVar1 = piVar5 + 1;
        piVar5 = piVar5 + 1;
        puVar4 = (undefined4 *)*piVar1;
      }
    }
    FUN_105eb910((int)local_1c,local_18);
    local_14 = 0;
    if (1 < local_18) {
      FUN_10918e90((int)local_1c);
    }
    return uVar6;
  }
  return 0;
}

