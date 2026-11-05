/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011972b0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_EnableSceneDraw [assembly=ScriptCore token=0x06000268; enable:
   System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_GameUtils__GameUtils_EnableSceneDraw(char param_1)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  
  piVar1 = (int *)FUN_004e4500(0x14,"Scripting/SceneDrawEnabler",0);
  if (piVar1 == (int *)0x0) {
    piVar1 = (int *)0x0;
  }
  else {
    *piVar1 = (int)&PTR_LAB_00ff4a78;
    LOCK();
    piVar1[1] = 0;
    UNLOCK();
    piVar1[2] = (int)&PTR_LAB_00fa2b8c;
    piVar3 = piVar1 + 3;
    *piVar3 = (int)&PTR_FUN_00f9b454;
    *piVar1 = (int)&PTR_LAB_010f31d8;
    *(char *)(piVar1 + 4) = param_1;
    piVar1[2] = (int)&PTR_LAB_010f31c8;
    *piVar3 = (int)&PTR_LAB_010f31bc;
    (**(code **)(*piVar1 + 4))();
    piVar2 = (int *)MessageDispatch_GetCurrent();
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x1c))(0xb577aa16,piVar3,0,piVar1 + 2);
    }
  }
  if (param_1 != '\0') {
    piVar3 = (int *)FUN_007693a0();
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 0x1c))(0x8ef0462,0,0,0);
    }
    piVar3 = (int *)MessageDispatch_GetCurrent();
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 0x1c))(0x8ef0462,0,0,0);
    }
  }
  if (piVar1 == (int *)0x0) {
    return;
  }
  (**(code **)(*piVar1 + 8))();
  return;
}

