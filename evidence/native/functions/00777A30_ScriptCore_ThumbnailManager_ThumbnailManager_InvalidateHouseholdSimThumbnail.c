/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162ac8 (original PC 1.67 TS3W.exe).
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
  undefined4 in_stack_00000014;
  undefined4 in_stack_00000018;
  undefined4 in_stack_0000001c;
  uint in_stack_00000020;
  undefined4 local_10 [4];
  
  this = DAT_011eec30;
  if (DAT_011eec30 != (void *)0x0) {
    puVar1 = (undefined4 *)FUN_0076c0e0(&stack0x00000004,local_10);
    FUN_00d60f80(this,puVar1,in_stack_00000014,in_stack_00000018,in_stack_0000001c,in_stack_00000020
                );
  }
  return;
}

