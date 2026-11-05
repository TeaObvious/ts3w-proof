/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011816a0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_SetPackageEnabledImpl [assembly=ScriptCore
   token=0x060000AF; packageId: Sims3.SimIFace.PackageId, bEnabled: System.Boolean;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.DownloadContent::DownloadContent_SetPackageEnabledImpl(void)

{
  void *this;
  undefined4 uVar1;
  undefined1 uStack00000004;
  undefined1 auStack_28 [12];
  undefined4 uStack_1c;
  undefined4 local_10 [4];
  
  uStack_1c = 0x995452;
  FUN_0076bff0(&uStack00000004,local_10);
  this = DownloadContent_GetOwnerFromGlobalLink();
  if (this == (void *)0x0) {
    return 1;
  }
  FUN_00500c90(auStack_28,local_10);
  uVar1 = FUN_00988490(this);
  return uVar1;
}

