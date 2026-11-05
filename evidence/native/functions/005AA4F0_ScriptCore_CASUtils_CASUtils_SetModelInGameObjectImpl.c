/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011564b0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  byte abStack_64 [4];
  undefined **ppuStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 *puStack_54;
  int *piStack_50;
  
  if (param_1 != 0) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    puVar2 = (undefined4 *)(**(code **)(*piVar1 + 0xcc))(param_1);
    abStack_64[0] = 0xe7;
    abStack_64[1] = 100;
    abStack_64[2] = 0x50;
    abStack_64[3] = 0x53;
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
    RenderCommand_EnqueueIfDispatcherExists(abStack_64);
    if (ppuStack_60 != (undefined **)0x0) {
      (**(code **)*ppuStack_60)(&puStack_54);
    }
  }
  return;
}

