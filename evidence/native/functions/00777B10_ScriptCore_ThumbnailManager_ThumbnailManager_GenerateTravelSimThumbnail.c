/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162b28 (original PC 1.67 TS3W.exe).
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
  undefined4 local_10 [4];
  
  this = DAT_011eec30;
  if (DAT_011eec30 == (void *)0x0) {
    return in_EAX & 0xffffff00;
  }
  FUN_0076c0e0(&stack0x00000004,local_10);
  uVar1 = FUN_00d4d5a0(this);
  return uVar1;
}

