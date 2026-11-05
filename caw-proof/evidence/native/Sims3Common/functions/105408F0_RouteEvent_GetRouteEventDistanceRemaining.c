/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteEvent_GetRouteEventDistanceRemaining. Export
   ordinal(s): 545. Entry VA: 0x105408f0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000144. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

float10 __cdecl RouteEvent_GetRouteEventDistanceRemaining(uint param_1)

{
  float fVar1;
  int *piVar2;
  
                    /* 0x5408f0  545  RouteEvent_GetRouteEventDistanceRemaining */
  if (DAT_10c78944 != (void *)0x0) {
    piVar2 = (int *)FUN_1053c150(DAT_10c78944,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)*piVar2)();
      fVar1 = (float)piVar2[0x15];
      (**(code **)(*piVar2 + 4))();
      return (float10)fVar1;
    }
  }
  return (float10)0.0;
}

