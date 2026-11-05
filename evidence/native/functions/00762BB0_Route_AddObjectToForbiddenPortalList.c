/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161a70 (TS3W.exe).
   ScriptCore.Route::Route_AddObjectToForbiddenPortalList [assembly=ScriptCore token=0x06001131;
   handle: System.UInt32, objectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: original PC 1.67 portal contract. Route-local list consists of full64 object GUID
   entries (stride8; compare both words). Add suppresses duplicates; remove compacts tail and
   removes one match. Route access uses vtable+0x10/+0x14 guard. Consumers include portal permission
   classifier and original TombRoomManager hidden-room planning callback. */

void __cdecl Route_AddObjectToForbiddenPortalList(uint routeHandle,ulonglong objectId)

{
  ulonglong *puVar1;
  int *piVar2;
  undefined4 *this;
  ulonglong *puVar3;
  
  if (DAT_011d50c4 == (void *)0x0) {
    return;
  }
  piVar2 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,routeHandle);
  if (piVar2 == (int *)0x0) {
    return;
  }
  (**(code **)(*piVar2 + 0x10))();
  this = (undefined4 *)FUN_0081c540((int)(piVar2 + 0x56));
  puVar1 = (ulonglong *)this[1];
  puVar3 = (ulonglong *)*this;
  if (puVar3 != puVar1) {
    do {
      if (((int)*puVar3 == (int)objectId) && (*(int *)((int)puVar3 + 4) == objectId._4_4_)) break;
      puVar3 = puVar3 + 1;
    } while (puVar3 != puVar1);
    if (puVar3 != puVar1) goto LAB_00762c33;
  }
  if (puVar1 < (ulonglong *)this[2]) {
    this[1] = puVar1 + 1;
    if (puVar1 != (ulonglong *)0x0) {
      *puVar1 = objectId;
    }
  }
  else {
    FUN_00572360(this,(undefined4 *)puVar1,(undefined4 *)&objectId);
  }
LAB_00762c33:
                    /* WARNING: Could not recover jumptable at 0x00762c3d. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar2 + 0x14))();
  return;
}

