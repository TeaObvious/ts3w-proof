/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011817c8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_GetContentSourceImpl [assembly=ScriptCore
   token=0x060000B2; sourceKey: Sims3.SimIFace.ResourceKey; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.DownloadContent::DownloadContent_GetContentSourceImpl(void)

{
  undefined4 *puVar1;
  undefined1 uStack00000004;
  undefined4 local_10 [4];
  
  puVar1 = UIResourceKey_CopyManagedToNative(&uStack00000004,local_10);
  FUN_00993d10(puVar1);
  return;
}

