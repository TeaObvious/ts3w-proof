/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01197340 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_SetScreenPostProcessOverride [assembly=ScriptCore
   token=0x06000242; style: System.Int32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_GameUtils__GameUtils_SetScreenPostProcessOverride(undefined4 param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  
  piVar1 = (int *)MessageDispatch_GetCurrent();
  if (piVar1 != (int *)0x0) {
    puVar2 = (undefined4 *)FUN_004e4500(0x10,"Services/GameHost",0);
    if (puVar2 == (undefined4 *)0x0) {
      puVar2 = (undefined4 *)0x0;
    }
    else {
      *puVar2 = &PTR_FUN_00f9b454;
      puVar2[1] = &PTR_LAB_00ff4a78;
      LOCK();
      puVar2[2] = 0;
      UNLOCK();
      *puVar2 = &PTR_LAB_010f31b0;
      puVar2[1] = &PTR_LAB_010f31a0;
      puVar2[3] = param_1;
    }
    (**(code **)(*piVar1 + 0x1c))(0xba89b123,puVar2,0,0);
  }
  return;
}

