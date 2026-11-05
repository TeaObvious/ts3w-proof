/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162ac8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.ThumbnailManager::ThumbnailManager_InvalidateHouseholdSimThumbnail
   [assembly=ScriptCore token=0x06000177; key: Sims3.SimIFace.ResourceKey, cacheId: System.UInt64,
   groupId: System.UInt32, sizeMask: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.ThumbnailManager::ThumbnailManager_InvalidateHouseholdSimThumbnail(void)

{
  void *this;
  undefined4 *puVar1;
  undefined1 uStack00000004;
  undefined4 in_stack_00000014;
  undefined4 in_stack_00000018;
  undefined4 in_stack_0000001c;
  uint in_stack_00000020;
  undefined4 local_10 [4];
  
  this = DAT_011eec30;
  if (DAT_011eec30 != (void *)0x0) {
    puVar1 = UIResourceKey_CopyManagedToNative(&uStack00000004,local_10);
    FUN_00d60f80(this,puVar1,in_stack_00000014,in_stack_00000018,in_stack_0000001c,in_stack_00000020
                );
  }
  return;
}

