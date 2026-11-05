/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162b28 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.ThumbnailManager::ThumbnailManager_GenerateTravelSimThumbnail [assembly=ScriptCore
   token=0x06000184; key: Sims3.SimIFace.ResourceKey, cacheId: System.UInt64, sizeMask:
   System.UInt32, technique: System.Byte; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore.ThumbnailManager::ThumbnailManager_GenerateTravelSimThumbnail(void)

{
  void *this;
  uint in_EAX;
  uint uVar1;
  undefined1 uStack00000004;
  undefined4 local_10 [4];
  
  this = DAT_011eec30;
  if (DAT_011eec30 == (void *)0x0) {
    return in_EAX & 0xffffff00;
  }
  UIResourceKey_CopyManagedToNative(&uStack00000004,local_10);
  uVar1 = FUN_00d4d5a0(this);
  return uVar1;
}

