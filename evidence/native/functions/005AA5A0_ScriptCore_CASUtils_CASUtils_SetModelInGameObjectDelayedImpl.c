/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011564b8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_SetModelInGameObjectDelayedImpl [assembly=ScriptCore
   token=0x06000334; modelHandle: System.UInt32, scriptHandle: System.UInt64, finishedCallback:
   System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CASUtils::CASUtils_SetModelInGameObjectDelayedImpl
          (int param_1,int param_2,int param_3,int param_4)

{
  int *piVar1;
  int *piVar2;
  undefined4 *puVar3;
  byte abStack_64 [4];
  undefined **ppuStack_60;
  int iStack_5c;
  int iStack_58;
  undefined4 *puStack_54;
  int *piStack_50;
  int *piStack_4c;
  
  if (param_1 != 0) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0xcc))(param_1);
    abStack_64[0] = 0x75;
    abStack_64[1] = 0xe3;
    abStack_64[2] = 0xbb;
    abStack_64[3] = 0x85;
    iStack_5c = param_2;
    iStack_58 = param_3;
    ppuStack_60 = &PTR_PTR_0115686c;
    puStack_54 = (undefined4 *)0x0;
    piStack_50 = (int *)0x0;
    piStack_4c = (int *)0x0;
    if (puVar3 != (undefined4 *)0x0) {
      (**(code **)*puVar3)();
      piVar2 = piStack_50;
      puStack_54 = puVar3;
      if (piStack_50 != (int *)0x0) {
        piStack_50 = (int *)0x0;
        (**(code **)(*piVar2 + 4))();
      }
    }
    piVar2 = (int *)FUN_004e4500(0x18,"CAS/CASSwapReadyCallback",0);
    if (piVar2 == (int *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      *piVar2 = (int)&PTR_AddAtomicReference_00fdf874;
      LOCK();
      piVar2[1] = 0;
      UNLOCK();
      piVar2[2] = param_4;
      *piVar2 = (int)&PTR_AddAtomicReference_00fdf8a0;
      piVar2[4] = param_2;
      piVar2[5] = param_3;
      (**(code **)*piVar2)();
    }
    piVar1 = piStack_4c;
    if (piVar2 != piStack_4c) {
      if (piVar2 != (int *)0x0) {
        (**(code **)*piVar2)();
      }
      piStack_4c = piVar2;
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 4))();
      }
    }
    RenderCommand_EnqueueIfDispatcherExists(abStack_64);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
    }
    if (ppuStack_60 != (undefined **)0x0) {
      (**(code **)*ppuStack_60)(&puStack_54);
    }
  }
  return;
}

