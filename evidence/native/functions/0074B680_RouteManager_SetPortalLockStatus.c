/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161d28 (TS3W.exe).
   ScriptCore.RouteManager::RouteManager_SetPortalLockStatus [assembly=ScriptCore token=0x06001076;
   lotId: System.UInt64, locked: System.Boolean; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: original PC 1.67 portal contract. Input is lot GUID64, not portal handle/object GUID.
   Finds per-lot routing graph and writes byte+0x8f; AL true only when graph found.
   Portal_GetDirectionalPermission consumes this byte to request managed callback0x3b and caches
   each direction. */

bool __cdecl RouteManager_SetPortalLockStatus(ulonglong lotId,bool locked)

{
  int iVar1;
  void *pvVar2;
  
  iVar1 = thunk_FUN_00835d40();
  if (iVar1 != 0) {
    pvVar2 = (void *)FUN_008295c0(iVar1);
    if (pvVar2 != (void *)0x0) {
      pvVar2 = LotRouteGraph_FindLotByGuid(pvVar2,lotId);
      if (pvVar2 != (void *)0x0) {
        *(bool *)((int)pvVar2 + 0x8f) = locked;
        return true;
      }
    }
  }
  return false;
}

