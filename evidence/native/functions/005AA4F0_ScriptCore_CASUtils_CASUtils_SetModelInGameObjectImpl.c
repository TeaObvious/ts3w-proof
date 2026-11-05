/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011564b0 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SetModelInGameObjectImpl [assembly=ScriptCore token=0x06000333;
   modelHandle: System.UInt32, scriptHandle: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CASUtils::CASUtils_SetModelInGameObjectImpl
          (int param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 uStack_64;
  undefined **ppuStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 *puStack_54;
  int *piStack_50;
  
  if (param_1 != 0) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    puVar2 = (undefined4 *)(**(code **)(*piVar1 + 0xcc))(param_1);
    uStack_64 = 0x535064e7;
    uStack_5c = param_2;
    uStack_58 = param_3;
    ppuStack_60 = &PTR_PTR_01156868;
    puStack_54 = (undefined4 *)0x0;
    piStack_50 = (int *)0x0;
    if (puVar2 != (undefined4 *)0x0) {
      (**(code **)*puVar2)();
      piVar1 = piStack_50;
      puStack_54 = puVar2;
      if (piStack_50 != (int *)0x0) {
        piStack_50 = (int *)0x0;
        (**(code **)(*piVar1 + 4))();
      }
    }
    FUN_00693380(&uStack_64);
    if (ppuStack_60 != (undefined **)0x0) {
      (**(code **)*ppuStack_60)(&puStack_54);
    }
  }
  return;
}

