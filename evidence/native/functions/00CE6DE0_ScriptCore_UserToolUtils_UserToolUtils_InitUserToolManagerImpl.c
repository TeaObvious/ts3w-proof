/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01189dc8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_InitUserToolManagerImpl [assembly=ScriptCore
   token=0x06000BE0; ; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UserToolUtils__UserToolUtils_InitUserToolManagerImpl(void)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  
  puVar4 = (undefined4 *)FUN_004e4500(0x1d8,"UserTool/UserToolManager",0);
  if (puVar4 == (undefined4 *)0x0) {
    puVar4 = (undefined4 *)0x0;
  }
  else {
    puVar4 = UserToolManager_InitializeDefaults(puVar4);
  }
  puVar3 = *(undefined4 **)(DAT_011ee718 + 8);
  puVar5 = (undefined4 *)(DAT_011ee718 + 8);
  if (puVar4 != puVar3) {
    if (puVar4 != (undefined4 *)0x0) {
      LOCK();
      puVar4[1] = puVar4[1] + 1;
      UNLOCK();
    }
    *puVar5 = puVar4;
    if (puVar3 != (undefined4 *)0x0) {
      piVar1 = puVar3 + 1;
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
  }
  FUN_00cef510(*(int *)(DAT_011ee718 + 8));
  return;
}

