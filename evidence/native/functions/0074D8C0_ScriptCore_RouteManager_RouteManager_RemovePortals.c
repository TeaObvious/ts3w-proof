/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161d10 (TS3W.exe).
   ScriptCore.RouteManager::RouteManager_RemovePortals [assembly=ScriptCore token=0x06001073; objId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: original PC 1.67 portal contract. Resolves original object and owner lot then delegates
   removal for full GUID; AL false if required object/owner/graph missing. */

bool __cdecl ScriptCore.RouteManager::RouteManager_RemovePortals(ulonglong objectId)

{
  undefined1 uVar1;
  int iVar2;
  void *this;
  void *pvVar3;
  int *piVar4;
  
  iVar2 = thunk_FUN_00835d40();
  if (iVar2 == 0) {
    this = (void *)0x0;
  }
  else {
    this = (void *)FUN_008295c0(iVar2);
  }
  pvVar3 = ObjectRegistry_GetGlobal();
  if (pvVar3 != (void *)0x0) {
    pvVar3 = ObjectRegistry_FindBorrowed(pvVar3,objectId);
    if (pvVar3 != (void *)0x0) {
      piVar4 = (int *)FUN_0068f130((int)pvVar3);
      if (piVar4 != (int *)0x0) {
        iVar2 = (**(code **)(*piVar4 + 0xc))(0x90566b0e);
        goto LAB_0074d914;
      }
    }
  }
  iVar2 = 0;
LAB_0074d914:
  if ((this != (void *)0x0) && (iVar2 != 0)) {
    uVar1 = FUN_0063a200(this,iVar2,(int)objectId,objectId._4_4_);
    return (bool)uVar1;
  }
  return false;
}

