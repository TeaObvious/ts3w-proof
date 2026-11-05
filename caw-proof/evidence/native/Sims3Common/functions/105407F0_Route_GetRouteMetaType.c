/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetRouteMetaType. Export ordinal(s): 660.
   Entry VA: 0x105407f0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600019B. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl Route_GetRouteMetaType(uint param_1)

{
  int iVar1;
  int *piVar2;
  
                    /* 0x5407f0  660  Route_GetRouteMetaType */
  if (DAT_10c78944 != (void *)0x0) {
    piVar2 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x10))();
      iVar1 = piVar2[0x7c];
      (**(code **)(*piVar2 + 0x14))();
      return iVar1;
    }
  }
  return 0;
}

