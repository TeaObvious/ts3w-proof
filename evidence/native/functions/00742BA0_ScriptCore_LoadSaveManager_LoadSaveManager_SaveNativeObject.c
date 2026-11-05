/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01161228 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LoadSaveManager::LoadSaveManager_SaveNativeObject [assembly=ScriptCore
   token=0x060001DB; nativeReader: System.UInt32, objectHandle: System.UInt32; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Physical stack supplies writer and
   object handles, despite the projected one-parameter prototype. Accepts writer high tag 42h or
   44h, resolves through host slot CCh and invokes writer slot +4 with the object handle; invalid
   paths return FFFFFFFFh. Constructor vtable binds that slot to 007D4360, whose conversion precedes
   pointer deduplication. */

undefined4 __cdecl ScriptCore.LoadSaveManager::LoadSaveManager_SaveNativeObject(uint param_1)

{
  int *piVar1;
  undefined4 uVar2;
  
  if ((param_1 >> 0x18 == 0x42) || (param_1 >> 0x18 == 0x44)) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      uVar2 = (**(code **)(*piVar1 + 4))(param_1);
      return uVar2;
    }
  }
  return 0xffffffff;
}

