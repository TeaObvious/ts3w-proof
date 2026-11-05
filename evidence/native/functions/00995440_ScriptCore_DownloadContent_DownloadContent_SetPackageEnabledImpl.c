/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011816a0 (original PC 1.67 TS3W.exe).
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
  undefined1 auStack_28 [12];
  undefined4 uStack_1c;
  undefined4 local_10 [4];
  
  uStack_1c = 0x995452;
  FUN_0076bff0(&stack0x00000004,local_10);
  this = (void *)FUN_00982e60();
  if (this != (void *)0x0) {
    FUN_00500c90(auStack_28,local_10);
    uVar1 = FUN_00988490(this);
    return uVar1;
  }
  return 1;
}

