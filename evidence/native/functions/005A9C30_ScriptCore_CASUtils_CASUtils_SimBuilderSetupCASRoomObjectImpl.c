/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156440 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimBuilderSetupCASRoomObjectImpl [assembly=ScriptCore
   token=0x06000330; handle: System.UInt32, objectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.CASUtils::CASUtils_SimBuilderSetupCASRoomObjectImpl(void)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 local_60;
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  
  iVar2 = FUN_00937570();
  puVar3 = (undefined4 *)FUN_00937f80(iVar2);
  if (puVar3 != (undefined4 *)0x0) {
    piVar1 = puVar3 + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    local_58 = puVar3[2];
    local_54 = puVar3[3];
    local_60 = 0x4878bc4;
    local_5c = (undefined4 *)0x0;
    local_50 = 0x18;
    local_4c = 0x10;
    FUN_00693380(&local_60);
    if (local_5c != (undefined4 *)0x0) {
      (**(code **)*local_5c)(&local_50);
    }
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
  return;
}

