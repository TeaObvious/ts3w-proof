/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011611e8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LoadSaveManager::LoadSaveManager_ResetSaveLocation_Impl [assembly=ScriptCore
   token=0x060001D3; ; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Bounded PE window dispatches
   ResetSaveLocation through manager helper 00AADAE0. It is not the named-save write entry. Stored
   body owns one byte and has ZERO actual Listing instructions; 32-byte raw-PE window remains
   bounded without body repair. */

void ScriptCore_LoadSaveManager__LoadSaveManager_ResetSaveLocation_Impl(void)

{
  int iVar1;
  
  iVar1 = FUN_00aa99c0();
  if (iVar1 != 0) {
    FUN_00aadae0(iVar1);
    return;
  }
  return;
}

