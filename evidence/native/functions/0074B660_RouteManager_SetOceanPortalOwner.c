/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161d08 (TS3W.exe).
   ScriptCore.RouteManager::RouteManager_SetOceanPortalOwner [assembly=ScriptCore token=0x06001072;
   objId: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: original PC 1.67 portal contract. Full GUID64 forwarded if manager exists. Original AL
   is always1 even if manager is absent; do not infer owner assignment from boolean alone. */

bool __cdecl RouteManager_SetOceanPortalOwner(ulonglong objectId)

{
  void *this;
  
  this = (void *)thunk_FUN_00835d40();
  if (this != (void *)0x0) {
    FUN_00828f40(this,(undefined4)objectId,objectId._4_4_);
  }
  return true;
}

