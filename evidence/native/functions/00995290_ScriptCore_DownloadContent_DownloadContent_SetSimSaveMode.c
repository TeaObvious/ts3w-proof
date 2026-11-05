/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01181748 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_SetSimSaveMode [assembly=ScriptCore token=0x06000098;
   mode: System.UInt16; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_DownloadContent__DownloadContent_SetSimSaveMode(undefined2 param_1)

{
  void *pvVar1;
  
  pvVar1 = DownloadContent_GetOwnerFromGlobalLink();
  if (*(void **)((int)pvVar1 + 0x664) != (void *)0x0) {
    FUN_009c8ac0(*(void **)((int)pvVar1 + 0x664),param_1);
  }
  return;
}

