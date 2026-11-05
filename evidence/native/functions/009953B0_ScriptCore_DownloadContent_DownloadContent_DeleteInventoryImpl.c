/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01181668 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_DeleteInventoryImpl [assembly=ScriptCore
   token=0x0600009D; id: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_DownloadContent__DownloadContent_DeleteInventoryImpl
               (uint param_1,undefined4 param_2)

{
  void *pvVar1;
  
  pvVar1 = DownloadContent_GetOwnerFromGlobalLink();
  FUN_00982c40((int)pvVar1);
  FUN_009b0440(param_1,param_2);
  return;
}

