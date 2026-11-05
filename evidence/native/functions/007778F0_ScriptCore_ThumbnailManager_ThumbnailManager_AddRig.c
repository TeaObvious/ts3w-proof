/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162a80 (original PC 1.67 TS3W.exe).
   ScriptCore.ThumbnailManager::ThumbnailManager_AddRig [assembly=ScriptCore token=0x06000170; key:
   Sims3.SimIFace.ResourceKey; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.ThumbnailManager::ThumbnailManager_AddRig(void)

{
  void *this;
  int iVar1;
  undefined4 local_10 [4];
  
  this = DAT_011eec30;
  if (DAT_011eec30 != (void *)0x0) {
    iVar1 = FUN_0076c0e0(&stack0x00000004,local_10);
    FUN_00d58360(this,iVar1);
  }
  return;
}

