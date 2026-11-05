/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_SetTravellingEventInterval. Export
   ordinal(s): 611. Entry VA: 0x1053e740. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000E3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
RouteManager_SetTravellingEventInterval(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  void *pvVar2;
  
                    /* 0x53e740  611  RouteManager_SetTravellingEventInterval */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    pvVar2 = (void *)FUN_1072abb0(iVar1);
    if (pvVar2 != (void *)0x0) {
      pvVar2 = (void *)FUN_10726da0(pvVar2,DAT_10c8d978);
      if (pvVar2 != (void *)0x0) {
        FUN_10744ac0(pvVar2,param_3);
      }
    }
  }
  return;
}

