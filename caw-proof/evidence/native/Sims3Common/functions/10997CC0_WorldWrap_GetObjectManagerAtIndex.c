/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetObjectManagerAtIndex. Export
   ordinal(s): 2642. Entry VA: 0x10997cc0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004B5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int * __cdecl WorldWrap_GetObjectManagerAtIndex(void *param_1,uint param_2,undefined4 *param_3)

{
  int *piVar1;
  undefined4 uVar2;
  
                    /* 0x997cc0  2642  WorldWrap_GetObjectManagerAtIndex */
  if (param_1 == (void *)0x0) {
    return (int *)0x0;
  }
  piVar1 = (int *)FUN_10234c80(param_1,param_2);
  if (piVar1 == (int *)0x0) {
    *param_3 = 0;
    return (int *)0x0;
  }
  uVar2 = (**(code **)(*piVar1 + 0x40))();
  *param_3 = uVar2;
  return piVar1;
}

