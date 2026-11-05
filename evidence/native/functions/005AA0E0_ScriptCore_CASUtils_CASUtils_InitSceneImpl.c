/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01156538 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_InitSceneImpl [assembly=ScriptCore token=0x06000344; winHandle:
   System.UInt32, callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CASUtils::CASUtils_InitSceneImpl(uint param_1,undefined4 param_2)

{
  int *piVar1;
  int *piVar2;
  undefined4 *this;
  int *piVar3;
  uint unaff_EBX;
  int *piVar4;
  undefined8 uVar5;
  undefined1 auStack_26 [6];
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  undefined1 uStack_10;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar5 = (**(code **)(*piVar1 + 0x118))();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar4 = (int *)(**(code **)(*piVar4 + 0xcc))(param_1);
    if (piVar4 == (int *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = (int *)(**(code **)(*piVar4 + 0xc))(0x39a436f);
    }
    if (piVar4 != (int *)0x0) {
      (**(code **)*piVar4)();
      piVar2 = (int *)MessageDispatch_GetCurrent();
      this = FUN_0076ae20();
      if ((this != (undefined4 *)0x0) &&
         (piVar3 = FUN_005a7970(this,(int)uVar5,(int)((ulonglong)uVar5 >> 0x20),piVar4),
         piVar3 != (int *)0x0)) {
        (**(code **)(*piVar3 + 4))();
        (**(code **)(*piVar1 + 0x120))(uVar5,0xffffffff,param_2,0);
        (**(code **)(*piVar2 + 0x1c))(0x30290f0,piVar3,0,0);
        (**(code **)(*piVar1 + 0x11c))();
        (**(code **)(*piVar3 + 8))();
        (**(code **)(*piVar4 + 4))();
        return;
      }
    }
  }
  else {
    piVar4 = (int *)0x0;
  }
  appuStack_20[0] = &PTR_FUN_00fba6f4;
  uStack_10 = 0;
  uStack_16 = 1;
  uStack_18 = 0;
  (**(code **)(*piVar1 + 0x130))(param_2,uVar5,appuStack_20,0);
  if ((unaff_EBX & 4) != 0) {
    FUN_004f5760(auStack_26 + -0xe,'\0');
  }
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 4))();
  }
  return;
}

