/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteEvent_GetRouteEventType. Export ordinal(s):
   549. Entry VA: 0x1053e830. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600013F. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined2 __cdecl RouteEvent_GetRouteEventType(uint param_1)

{
  int iVar1;
  int *piVar2;
  
                    /* 0x53e830  549  RouteEvent_GetRouteEventType */
  if (DAT_10c78944 != (void *)0x0) {
    piVar2 = (int *)FUN_1053c150(DAT_10c78944,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)*piVar2)();
      iVar1 = piVar2[6];
      (**(code **)(*piVar2 + 4))();
      return (short)iVar1;
    }
  }
  return 0;
}

