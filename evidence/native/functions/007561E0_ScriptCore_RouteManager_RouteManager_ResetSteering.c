/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161d98 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.RouteManager::RouteManager_ResetSteering [assembly=ScriptCore token=0x06001084; objId:
   System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC1.67 selected lifetime closure: cdeclGUIDlo/high/plainRET; nonzeroID resolves borrowedobject,
   explicitly atomicallyretains it, resets routingcomponent ifpresent, then atomicallyreleases and
   invokesvirtualdestructor1 atlastreference. Pointer identity/lifetime and weakhostrecognition are
   different mechanisms; no originalmanaged weakreference or worldepoch protocol inferred. */

void __cdecl ScriptCore.RouteManager::RouteManager_ResetSteering(int param_1,int param_2)

{
  int *piVar1;
  int iVar2;
  void *pvVar3;
  undefined4 *this;
  
  if (param_1 != 0 || param_2 != 0) {
    pvVar3 = ObjectRegistry_GetGlobal();
    this = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(param_2,param_1));
    if (this != (undefined4 *)0x0) {
      piVar1 = this + 1;
      LOCK();
      *piVar1 = *piVar1 + 1;
      UNLOCK();
      pvVar3 = Object_GetComponentByMask(this,DAT_011ea138);
      if (pvVar3 != (void *)0x0) {
        FUN_009537b0((int)pvVar3);
      }
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*this)(1);
      }
    }
  }
  return;
}

