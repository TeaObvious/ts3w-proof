/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162b70 (original PC 1.67 TS3W.exe).
   ScriptCore.ThumbnailManager::ThumbnailManager_IsCheatSaveSimFaceEnabled [assembly=ScriptCore
   token=0x0600018C; ; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 ScriptCore_ThumbnailManager__ThumbnailManager_IsCheatSaveSimFaceEnabled(void)

{
  undefined1 uVar1;
  
  if (DAT_011eec30 != 0) {
    uVar1 = FUN_00d4ae80(DAT_011eec30);
    return uVar1;
  }
  return 0;
}

