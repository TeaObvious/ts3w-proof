/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162b50 (original PC 1.67 TS3W.exe).
   ScriptCore.ThumbnailManager::ThumbnailManager_SetLotView [assembly=ScriptCore token=0x06000188;
   dir: Sims3.SimIFace.Vector3; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.ThumbnailManager::ThumbnailManager_SetLotView(void)

{
  void *this;
  undefined4 *puVar1;
  undefined4 local_20 [7];
  
  this = DAT_011eec30;
  if (DAT_011eec30 != (void *)0x0) {
    puVar1 = (undefined4 *)FUN_0076c050(&stack0x00000004,local_20);
    FUN_00d4b7b0(this,puVar1);
  }
  return;
}

