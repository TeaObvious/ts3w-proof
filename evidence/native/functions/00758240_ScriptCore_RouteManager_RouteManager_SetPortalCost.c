/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161d18 (TS3W.exe).
   ScriptCore.RouteManager::RouteManager_SetPortalCost [assembly=ScriptCore token=0x06001074; objId:
   System.UInt64, cost: System.Single; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: original PC 1.67 portal contract. Finds object owner lot and every graph portal owned by
   full object GUID. Writes float32 portal+0x2c on each; returns whether list is nonempty. Wrapper
   contains no cost clamping. Graph edge evaluator treats costs >=1000000 as blocked. */

bool __cdecl ScriptCore.RouteManager::RouteManager_SetPortalCost(ulonglong objectId,float cost)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  void *this;
  void *pvVar4;
  int *piVar5;
  bool bVar6;
  int *local_10;
  int *local_c;
  undefined4 local_8;
  char *local_4;
  
  iVar3 = thunk_FUN_00835d40();
  if (iVar3 == 0) {
    this = (void *)0x0;
  }
  else {
    this = (void *)FUN_008295c0(iVar3);
  }
  pvVar4 = ObjectRegistry_GetGlobal();
  if (((pvVar4 == (void *)0x0) ||
      (pvVar4 = ObjectRegistry_FindBorrowed(pvVar4,objectId), pvVar4 == (void *)0x0)) ||
     (piVar5 = (int *)FUN_0068f130((int)pvVar4), piVar5 == (int *)0x0)) {
    pvVar4 = (void *)0x0;
  }
  else {
    pvVar4 = (void *)(**(code **)(*piVar5 + 0xc))(0x90566b0e);
  }
  if ((this != (void *)0x0) && (pvVar4 != (void *)0x0)) {
    local_10 = (int *)0x0;
    local_c = (int *)0x0;
    local_8 = 0;
    local_4 = "Routing/SetPortalCost";
    LotRouteGraph_CollectObjectPortals(this,pvVar4,objectId,&local_10);
    piVar2 = local_c;
    bVar6 = local_10 != local_c;
    for (piVar5 = local_10; piVar1 = local_10, piVar5 != local_c; piVar5 = piVar5 + 1) {
      *(float *)(*piVar5 + 0x2c) = cost;
    }
    for (; piVar1 < piVar2; piVar1 = piVar1 + 1) {
      if ((int *)*piVar1 != (int *)0x0) {
        (**(code **)(*(int *)*piVar1 + 4))();
      }
    }
    if (local_10 != (int *)0x0) {
      FUN_004e44e0((int)local_10);
    }
    return bVar6;
  }
  return false;
}

