/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01161200 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LoadSaveManager::LoadSaveManager_GetCurrentGameGuid_Impl [assembly=ScriptCore
   token=0x060001D6; ; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Bounded PE window obtains manager and
   returns its +58h qword in EDX:EAX, with zero when manager unavailable. Stored body owns one byte
   and has ZERO actual Listing instructions; 48-byte raw-PE window remains bounded without body
   repair. */

undefined8 ScriptCore_LoadSaveManager__LoadSaveManager_GetCurrentGameGuid_Impl(void)

{
  int iVar1;
  
  iVar1 = GetGlobalInterfacePointer_11D5BBC();
  if (iVar1 != 0) {
    iVar1 = FUN_00aa99c0();
    if (iVar1 != 0) {
      return *(undefined8 *)(iVar1 + 0x58);
    }
  }
  return 0;
}

