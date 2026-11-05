/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161e08 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SACS::SACS_SetActorImpl [assembly=ScriptCore token=0x06000D60; driverHandle:
   System.UInt32, actorHash: System.UInt32, actorObjectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_SACS__SACS_SetActorImpl(int param_1,int param_2,int param_3)

{
  int iVar1;
  int *piVar2;
  void *this;
  void *this_00;
  undefined4 *puVar3;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar2 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    if ((param_2 == 0) && (param_3 == 0)) {
      FUN_00803c60(this,param_1,(void *)0x0);
      return;
    }
    this_00 = ObjectRegistry_GetGlobal();
    puVar3 = ObjectRegistry_FindBorrowed(this_00,CONCAT44(param_3,param_2));
    if (puVar3 != (undefined4 *)0x0) {
      LOCK();
      puVar3[1] = puVar3[1] + 1;
      UNLOCK();
    }
    FUN_00803c60(this,param_1,puVar3);
    if (puVar3 != (undefined4 *)0x0) {
      piVar2 = puVar3 + 1;
      LOCK();
      iVar1 = *piVar2;
      *piVar2 = *piVar2 + -1;
      UNLOCK();
      if (iVar1 == 1) {
        LOCK();
        *piVar2 = 1;
        UNLOCK();
        (**(code **)*puVar3)(1);
      }
    }
  }
  return;
}

