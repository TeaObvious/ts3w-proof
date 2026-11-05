/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161c20 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_SetMinimumDistanceForBoatTravel [assembly=ScriptCore
   token=0x0600104F; minDistanceForBoatTravel: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_RouteManager__RouteManager_SetMinimumDistanceForBoatTravel(undefined4 param_1)

{
  int iVar1;
  
  iVar1 = thunk_FUN_00835d40();
  if (iVar1 != 0) {
    *(undefined4 *)(iVar1 + 0x96c) = param_1;
  }
  return;
}

