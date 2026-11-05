/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetNumPaths. Export ordinal(s): 643. Entry
   VA: 0x10548250. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000182. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl Route_GetNumPaths(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  
  if ((DAT_10c78944 != (void *)0x0) &&
     (piVar2 = (int *)FUN_1053c0f0(DAT_10c78944,param_1), piVar2 != (int *)0x0)) {
    (**(code **)(*piVar2 + 0x10))();
    iVar3 = 0;
    for (piVar1 = (int *)piVar2[0x38]; piVar1 != piVar2 + 0x38; piVar1 = (int *)*piVar1) {
      iVar3 = iVar3 + 1;
    }
    (**(code **)(*piVar2 + 0x14))();
    return iVar3;
  }
  return 0;
}

