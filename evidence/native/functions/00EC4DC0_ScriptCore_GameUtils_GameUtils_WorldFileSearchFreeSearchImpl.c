/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011970c0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_WorldFileSearchFreeSearchImpl [assembly=ScriptCore
   token=0x06000228; handle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.GameUtils::GameUtils_WorldFileSearchFreeSearchImpl(uint param_1)

{
  int *piVar1;
  undefined4 *allocation;
  
  if ((param_1 & 0xff000000) == 0x40000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    allocation = (undefined4 *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (allocation != (undefined4 *)0x0) {
      piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
      (**(code **)(*piVar1 + 0xd8))(param_1);
      FUN_00ca0570((int *)allocation[8],(int *)allocation[9]);
      if ((void *)allocation[8] != (void *)0x0) {
        Memory_FreeIfNonNull((void *)allocation[8]);
      }
      FUN_00456ec0(allocation);
      Memory_FreeIfNonNull(allocation);
    }
  }
  return;
}

