/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161d20 (TS3W.exe).
   ScriptCore.RouteManager::RouteManager_SetPortalAgeGenderFlags [assembly=ScriptCore
   token=0x06001075; objId: System.UInt64, ageGenderFlags: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: original PC 1.67 portal contract. All portals for object are updated: DWORD+0x78=uint32
   input, DWORD+0x7c=0. This API cannot preserve high AGS bits; AddPortal and location variations
   accept full64 flags. */

bool __cdecl
ScriptCore.RouteManager::RouteManager_SetPortalAgeGenderFlags(ulonglong objectId,uint agsLow)

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
  if ((this == (void *)0x0) || (pvVar4 == (void *)0x0)) {
    return false;
  }
  local_10 = (int *)0x0;
  local_c = (int *)0x0;
  local_8 = 0;
  local_4 = "Routing/SetPortalCost";
  LotRouteGraph_CollectObjectPortals(this,pvVar4,objectId,&local_10);
  piVar2 = local_c;
  bVar6 = local_10 != local_c;
  for (piVar5 = local_10; piVar1 = local_10, piVar5 != local_c; piVar5 = piVar5 + 1) {
    iVar3 = *piVar5;
    *(uint *)(iVar3 + 0x78) = agsLow;
    *(undefined4 *)(iVar3 + 0x7c) = 0;
  }
  for (; piVar1 < piVar2; piVar1 = piVar1 + 1) {
    if ((int *)*piVar1 != (int *)0x0) {
      (**(code **)(*(int *)*piVar1 + 4))();
    }
  }
  if (local_10 != (int *)0x0) {
    Memory_FreeIfNonNull(local_10);
  }
  return bVar6;
}

