/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* Verified PC 1.67 registration table at 0x011817d0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_SetSimSavedCallbackImpl [assembly=ScriptCore
   token=0x060000B3; simSavedCallback: ScriptCore.DownloadContent+SimSavedCallback;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_DownloadContent__DownloadContent_SetSimSavedCallbackImpl(undefined4 param_1)

{
  void *pvVar1;
  
  pvVar1 = DownloadContent_GetOwnerFromGlobalLink();
  if ((pvVar1 != (void *)0x0) && (*(int *)((int)pvVar1 + 0x664) != 0)) {
    StoreSimSavedCallbackWord(param_1);
  }
  return;
}

