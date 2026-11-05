/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162a90 (original PC 1.67 TS3W.exe).
   ScriptCore.ThumbnailManager::ThumbnailManager_AddSimBuilder [assembly=ScriptCore
   token=0x06000172; simBuilderHandle: System.UInt32; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.ThumbnailManager::ThumbnailManager_AddSimBuilder(int param_1)

{
  int *piVar1;
  undefined4 uVar2;
  
  if (param_1 != 0) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    if (DAT_011eec30 != (void *)0x0) {
      FUN_00d58490(DAT_011eec30,uVar2);
    }
  }
  return;
}

