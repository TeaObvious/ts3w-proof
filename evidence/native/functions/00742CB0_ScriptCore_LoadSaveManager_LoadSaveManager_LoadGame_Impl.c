/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011611f0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LoadSaveManager::LoadSaveManager_LoadGame_Impl [assembly=ScriptCore token=0x060001D4;
   h: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Bounded PE window resolves info and
   dispatches manager Load through 00AAFB40, returning low-byte bool. Stored body owns one byte and
   has ZERO actual Listing instructions; 80-byte raw-PE window remains bounded without body repair.
    */

bool ScriptCore_LoadSaveManager__LoadSaveManager_LoadGame_Impl(undefined4 param_1)

{
  bool bVar1;
  int *piVar2;
  void *this;
  undefined4 *puVar3;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar2 == (int *)0x0) {
    return false;
  }
  this = (void *)FUN_00aa99c0();
  if (this != (void *)0x0) {
    puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if (puVar3 != (undefined4 *)0x0) {
      bVar1 = LoadSaveManager_DispatchLoad(this,puVar3);
      return bVar1;
    }
  }
  return false;
}

