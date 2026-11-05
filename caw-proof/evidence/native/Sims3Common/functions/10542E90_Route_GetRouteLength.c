/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetRouteLength. Export ordinal(s): 659.
   Entry VA: 0x10542e90. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000190. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

float10 __cdecl Route_GetRouteLength(uint param_1)

{
  int *piVar1;
  float10 fVar2;
  
                    /* 0x542e90  659  Route_GetRouteLength */
  if (DAT_10c78944 != (void *)0x0) {
    piVar1 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x10))();
      fVar2 = FUN_10541230((int)piVar1);
      (**(code **)(*piVar1 + 0x14))();
      return (float10)(float)fVar2;
    }
  }
  return (float10)0;
}

