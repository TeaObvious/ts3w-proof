/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156438 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimBuilderAttachToSceneObjectImpl [assembly=ScriptCore
   token=0x0600032F; handle: System.UInt32, objectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CASUtils::CASUtils_SimBuilderAttachToSceneObjectImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  undefined4 *this;
  void *this_00;
  undefined4 uStack_64;
  undefined4 *puStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if (piVar2 != (int *)0x0) {
      iVar3 = FUN_00937570();
      this = (undefined4 *)FUN_00937f80(iVar3);
      if (this != (undefined4 *)0x0) {
        piVar1 = this + 1;
        LOCK();
        *piVar1 = *piVar1 + 1;
        UNLOCK();
        piVar2[0x7e] = this[2];
        piVar2[0x7f] = this[3];
        uStack_5c = this[2];
        uStack_58 = this[3];
        uStack_64 = 0x4878bc4;
        puStack_60 = (undefined4 *)0x0;
        uStack_54 = 0x200011;
        uStack_50 = 0x200010;
        FUN_00693380(&uStack_64);
        FUN_005e1990(piVar2);
        this_00 = (void *)FUN_00934260(this,DAT_011ea2a8);
        if (this_00 != (void *)0x0) {
          FUN_0095e070(this_00,0x3a97a3bc);
        }
        if (puStack_60 != (undefined4 *)0x0) {
          (**(code **)*puStack_60)(&uStack_54);
        }
        LOCK();
        iVar3 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if (iVar3 == 1) {
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

