/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162b50 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.ThumbnailManager::ThumbnailManager_SetLotView [assembly=ScriptCore token=0x06000188;
   dir: Sims3.SimIFace.Vector3; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.ThumbnailManager::ThumbnailManager_SetLotView(void)

{
  void *this;
  float *pfVar1;
  undefined1 uStack00000004;
  undefined4 local_20 [7];
  
  this = DAT_011eec30;
  if (DAT_011eec30 != (void *)0x0) {
    pfVar1 = RouteVector_ExpandXYZWithXLane(&uStack00000004,local_20);
    FUN_00d4b7b0(this,pfVar1);
  }
  return;
}

