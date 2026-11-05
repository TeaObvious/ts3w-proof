/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01161220 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LoadSaveManager::LoadSaveManager_LoadNativeObject [assembly=ScriptCore
   token=0x060001DA; nativeReader: System.UInt32, saveIndex: System.Int32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Physical stack supplies reader handle
   and signed index, despite the projected one-parameter prototype. Requires high-byte tag 41h,
   resolves through host slot CCh and invokes reader slot +8; invalid paths return FFFFFFFFh.
   Separate reader target 007D3CB0 has no existing function export: its 96-byte raw-PE window is
   bounded evidence only, not owned Listing coverage. */

undefined4 __cdecl ScriptCore.LoadSaveManager::LoadSaveManager_LoadNativeObject(uint param_1)

{
  int *piVar1;
  undefined4 uVar2;
  
  if ((param_1 & 0xff000000) == 0x41000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      uVar2 = (**(code **)(*piVar1 + 8))(param_1);
      return uVar2;
    }
  }
  return 0xffffffff;
}

