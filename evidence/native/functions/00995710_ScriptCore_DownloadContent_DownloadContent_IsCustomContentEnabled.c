/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011817f0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_IsCustomContentEnabled [assembly=ScriptCore
   token=0x060000B4; ; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 ScriptCore_DownloadContent__DownloadContent_IsCustomContentEnabled(void)

{
  void *pvVar1;
  
  pvVar1 = DownloadContent_GetOwnerFromGlobalLink();
  if (pvVar1 == (void *)0x0) {
    return 0;
  }
  return *(undefined1 *)((int)pvVar1 + 0xd5);
}

