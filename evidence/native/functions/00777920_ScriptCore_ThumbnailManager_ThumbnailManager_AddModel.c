/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162a88 (original PC 1.67 TS3W.exe).
   ScriptCore.ThumbnailManager::ThumbnailManager_AddModel [assembly=ScriptCore token=0x06000171;
   modelHandle: System.UInt32; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.ThumbnailManager::ThumbnailManager_AddModel(int param_1)

{
  int *piVar1;
  
  if (param_1 != 0) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    if (piVar1 != (int *)0x0) {
      piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
      if ((piVar1 != (int *)0x0) && (DAT_011eec30 != (void *)0x0)) {
        FUN_00d54850(DAT_011eec30,piVar1);
      }
    }
  }
  return;
}

