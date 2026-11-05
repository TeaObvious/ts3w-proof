/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011972f0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_WaitForTextureCompositor [assembly=ScriptCore token=0x06000270;
   callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_GameUtils__GameUtils_WaitForTextureCompositor(undefined4 param_1)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  undefined8 uVar4;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar4 = (**(code **)(*piVar1 + 0x118))();
  piVar2 = (int *)FUN_004e4500(0x18,"Scripting/ScriptCompositorRequestsCompletedNotifier",0);
  if (piVar2 == (int *)0x0) {
    return;
  }
  *piVar2 = (int)&PTR_LAB_00ff4a78;
  LOCK();
  piVar2[1] = 0;
  UNLOCK();
  piVar2[2] = (int)&PTR_LAB_00fa2b8c;
  piVar2[3] = (int)&PTR_FUN_00f9b454;
  piVar2[5] = (int)((ulonglong)uVar4 >> 0x20);
  *piVar2 = (int)&PTR_LAB_010f3244;
  piVar2[2] = (int)&PTR_LAB_010f3234;
  piVar2[3] = (int)&PTR_LAB_010f3228;
  piVar2[4] = (int)uVar4;
  (**(code **)(*piVar2 + 4))();
  piVar3 = (int *)MessageDispatch_GetCurrent();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x1c))(0xd4a8e5cc,piVar2 + 3,0,piVar2 + 2);
  }
  (**(code **)(*piVar1 + 0x120))(uVar4,0xffffffff,param_1,0);
  (**(code **)(*piVar1 + 0x11c))();
  (**(code **)(*piVar2 + 8))();
  return;
}

