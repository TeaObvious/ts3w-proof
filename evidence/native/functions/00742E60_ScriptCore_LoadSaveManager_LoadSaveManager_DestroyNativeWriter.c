/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01161238 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LoadSaveManager::LoadSaveManager_DestroyNativeWriter [assembly=ScriptCore
   token=0x060001DD; nativeWriter: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Resolves typed writer through host
   release/lookup machinery, calls storage cleanup 007D41F0 and separately releases its allocation.
   Cleanup does not itself free the writer allocation. Invalid/unavailable paths retain original
   early returns. */

void __cdecl ScriptCore.LoadSaveManager::LoadSaveManager_DestroyNativeWriter(uint param_1)

{
  int *piVar1;
  undefined4 *allocation;
  
  if ((param_1 >> 0x18 == 0x42) || (param_1 >> 0x18 == 0x44)) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    allocation = (undefined4 *)(**(code **)(*piVar1 + 0xd8))(param_1);
    if (allocation != (undefined4 *)0x0) {
      PersistWriter_ReleaseOwnedStorage(allocation);
      Memory_FreeIfNonNull(allocation);
    }
  }
  return;
}

