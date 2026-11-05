/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162a68 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.ThumbnailManager::ThumbnailManager_AddPose [assembly=ScriptCore token=0x0600016B; key:
   Sims3.SimIFace.ResourceKey; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_ThumbnailManager__ThumbnailManager_AddPose(void)

{
  void *this;
  undefined4 *puVar1;
  undefined1 uStack00000004;
  undefined4 auStack_10 [4];
  
  this = DAT_011eec30;
  if (DAT_011eec30 != (void *)0x0) {
    puVar1 = UIResourceKey_CopyManagedToNative(&uStack00000004,auStack_10);
    FUN_00d58290(this,puVar1);
  }
  return;
}

