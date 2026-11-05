/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01156440 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_SimBuilderSetupCASRoomObjectImpl [assembly=ScriptCore
   token=0x06000330; handle: System.UInt32, objectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.CASUtils::CASUtils_SimBuilderSetupCASRoomObjectImpl(void)

{
  int *piVar1;
  int iVar2;
  void *this;
  undefined4 *puVar3;
  undefined4 in_stack_00000008;
  undefined4 in_stack_0000000c;
  byte local_60 [4];
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  
  this = ObjectRegistry_GetGlobal();
  puVar3 = ObjectRegistry_FindBorrowed(this,CONCAT44(in_stack_0000000c,in_stack_00000008));
  if (puVar3 != (undefined4 *)0x0) {
    piVar1 = puVar3 + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    local_58 = puVar3[2];
    local_54 = puVar3[3];
    local_60[0] = 0xc4;
    local_60[1] = 0x8b;
    local_60[2] = 0x87;
    local_60[3] = 4;
    local_5c = (undefined4 *)0x0;
    local_50 = 0x18;
    local_4c = 0x10;
    RenderCommand_EnqueueIfDispatcherExists(local_60);
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

