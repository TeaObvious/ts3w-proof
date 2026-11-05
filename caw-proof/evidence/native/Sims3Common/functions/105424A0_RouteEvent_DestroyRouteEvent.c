/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteEvent_DestroyRouteEvent. Export ordinal(s):
   540. Entry VA: 0x105424a0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600013E. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl RouteEvent_DestroyRouteEvent(uint param_1)

{
                    /* 0x5424a0  540  RouteEvent_DestroyRouteEvent */
  if ((DAT_10c78944 != (void *)0x0) && ((param_1 & 0xff000000) == 0x26000000)) {
    FUN_1053f020(DAT_10c78944,param_1);
  }
  return;
}

