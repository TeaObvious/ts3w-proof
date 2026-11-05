/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_SetMinimumDistanceForBoatTravel.
   Export ordinal(s): 601. Entry VA: 0x1053c1e0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000B7. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl RouteManager_SetMinimumDistanceForBoatTravel(undefined4 param_1)

{
  int iVar1;
  
                    /* 0x53c1e0  601  RouteManager_SetMinimumDistanceForBoatTravel */
  iVar1 = thunk_FUN_10627370();
  if (iVar1 != 0) {
    *(undefined4 *)(iVar1 + 0x96c) = param_1;
  }
  return;
}

