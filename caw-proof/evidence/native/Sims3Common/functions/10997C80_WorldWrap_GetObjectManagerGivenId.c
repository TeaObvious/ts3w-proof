/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetObjectManagerGivenId. Export
   ordinal(s): 2643. Entry VA: 0x10997c80. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004B4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int * __cdecl
WorldWrap_GetObjectManagerGivenId(void *param_1,int param_2,int param_3,undefined4 *param_4)

{
  int *piVar1;
  undefined4 uVar2;
  
                    /* 0x997c80  2643  WorldWrap_GetObjectManagerGivenId */
  if (param_1 == (void *)0x0) {
    return (int *)0x0;
  }
  piVar1 = FUN_10234ba0(param_1,param_2,param_3,(int *)0x0);
  if (piVar1 == (int *)0x0) {
    *param_4 = 0;
    return (int *)0x0;
  }
  uVar2 = (**(code **)(*piVar1 + 0x40))();
  *param_4 = uVar2;
  return piVar1;
}

