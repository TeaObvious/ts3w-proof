/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01181718 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_DeleteCustomSim [assembly=ScriptCore
   token=0x06000096; key: Sims3.SimIFace.ResourceKey; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

char ScriptCore.DownloadContent::DownloadContent_DeleteCustomSim(void)

{
  char cVar1;
  void *pvVar2;
  undefined1 uStack00000004;
  undefined4 local_10 [4];
  
  UIResourceKey_CopyManagedToNative(&uStack00000004,local_10);
  pvVar2 = DownloadContent_GetOwnerFromGlobalLink();
  if ((pvVar2 == (void *)0x0) || (*(void **)((int)pvVar2 + 0x664) == (void *)0x0)) {
    return '\0';
  }
  cVar1 = FUN_009c9900(*(void **)((int)pvVar2 + 0x664),local_10);
  return cVar1;
}

