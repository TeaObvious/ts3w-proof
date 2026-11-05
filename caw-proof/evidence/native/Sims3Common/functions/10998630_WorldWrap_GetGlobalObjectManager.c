/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetGlobalObjectManager. Export
   ordinal(s): 2631. Entry VA: 0x10998630. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004C5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int * __cdecl WorldWrap_GetGlobalObjectManager(int param_1,undefined4 *param_2)

{
  int *piVar1;
  undefined4 uVar2;
  
                    /* 0x998630  2631  WorldWrap_GetGlobalObjectManager */
  if (param_1 == 0) {
    return (int *)0x0;
  }
  piVar1 = *(int **)(param_1 + 0xb0);
  if (piVar1 == (int *)0x0) {
    *param_2 = 0;
    return (int *)0x0;
  }
  uVar2 = (**(code **)(*piVar1 + 0x40))();
  *param_2 = uVar2;
  return piVar1;
}

