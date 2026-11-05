/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161e08 (original PC 1.67 TS3W.exe).
   ScriptCore.SACS::SACS_SetActorImpl [assembly=ScriptCore token=0x06000D60; driverHandle:
   System.UInt32, actorHash: System.UInt32, actorObjectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_SACS__SACS_SetActorImpl(int param_1,int param_2,int param_3)

{
  int *piVar1;
  void *this;
  int iVar2;
  undefined4 *puVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    if ((param_2 == 0) && (param_3 == 0)) {
      FUN_00803c60(this,param_1,(void *)0x0);
      return;
    }
    iVar2 = FUN_00937570();
    puVar3 = (undefined4 *)FUN_00937f80(iVar2);
    if (puVar3 != (undefined4 *)0x0) {
      LOCK();
      puVar3[1] = puVar3[1] + 1;
      UNLOCK();
    }
    FUN_00803c60(this,param_1,puVar3);
    if (puVar3 != (undefined4 *)0x0) {
      piVar1 = puVar3 + 1;
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*puVar3)(1);
      }
    }
  }
  return;
}

