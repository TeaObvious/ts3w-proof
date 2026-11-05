/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01156438 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_SimBuilderAttachToSceneObjectImpl [assembly=ScriptCore
   token=0x0600032F; handle: System.UInt32, objectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CASUtils::CASUtils_SimBuilderAttachToSceneObjectImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  void *pvVar4;
  undefined4 *this;
  undefined4 in_stack_00000008;
  undefined4 in_stack_0000000c;
  byte abStack_64 [4];
  undefined4 *puStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar3 = (int *)(**(code **)(*piVar3 + 0xcc))(param_1);
    if (piVar3 != (int *)0x0) {
      pvVar4 = ObjectRegistry_GetGlobal();
      this = ObjectRegistry_FindBorrowed(pvVar4,CONCAT44(in_stack_0000000c,in_stack_00000008));
      if (this != (undefined4 *)0x0) {
        piVar1 = this + 1;
        LOCK();
        *piVar1 = *piVar1 + 1;
        UNLOCK();
        piVar3[0x7e] = this[2];
        piVar3[0x7f] = this[3];
        uStack_5c = this[2];
        uStack_58 = this[3];
        abStack_64[0] = 0xc4;
        abStack_64[1] = 0x8b;
        abStack_64[2] = 0x87;
        abStack_64[3] = 4;
        puStack_60 = (undefined4 *)0x0;
        uStack_54 = 0x200011;
        uStack_50 = 0x200010;
        RenderCommand_EnqueueIfDispatcherExists(abStack_64);
        FUN_005e1990(piVar3);
        pvVar4 = Object_GetComponentByMask(this,DAT_011ea2a8);
        if (pvVar4 != (void *)0x0) {
          ObjectLightRig_StoreCustomKeyAndNotify(pvVar4,0x3a97a3bc);
        }
        if (puStack_60 != (undefined4 *)0x0) {
          (**(code **)*puStack_60)(&uStack_54);
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
  }
  return;
}

