/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161d00 (TS3W.exe).
   ScriptCore.RouteManager::RouteManager_AddStairPortals [assembly=ScriptCore token=0x06001071;
   objId: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: original PC 1.67 portal contract. Full GUID64 passed to routing manager; kind3. Native
   helper returns number of changed portals; wrapper SETA AL after TEST returns whether count is
   nonzero. Missing manager returns false. Pool/platform registrations intentionally share entry. */

bool __cdecl RouteManager_AddStairPortals(ulonglong objectId)

{
  void *this;
  uint uVar1;
  
  uVar1 = 0;
  this = (void *)thunk_FUN_00835d40();
  if (this != (void *)0x0) {
    uVar1 = RoutingManager_AddStairPortals(this,objectId);
  }
  return uVar1 != 0;
}

