/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TreeComponent_GetKey. Export ordinal(s): 2541.
   Entry VA: 0x1097fb40. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000654. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * __cdecl TreeComponent_GetKey(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  
                    /* 0x97fb40  2541  TreeComponent_GetKey */
  if (param_2 != 0) {
    iVar2 = FUN_10342370(param_2);
    *param_1 = *(undefined4 *)(iVar2 + 8);
    iVar2 = FUN_10342370(param_2);
    param_1[1] = *(undefined4 *)(iVar2 + 0xc);
    puVar3 = (undefined4 *)FUN_10342370(param_2);
    uVar1 = *puVar3;
    param_1[3] = puVar3[1];
    param_1[2] = uVar1;
    return param_1;
  }
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  return param_1;
}

