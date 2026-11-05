/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162b68 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.ThumbnailManager::ThumbnailManager_SetCheatSaveSimFace [assembly=ScriptCore
   token=0x0600018B; bEnable: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_ThumbnailManager__ThumbnailManager_SetCheatSaveSimFace(void)

{
  byte *in_stack_00000004;
  
  if (DAT_011eec30 != 0) {
    PayloadCleanup_NoOperation(in_stack_00000004);
  }
  return;
}

