/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01161208 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LoadSaveManager::LoadSaveManager_GetCurrentSaveGameInfo_Impl [assembly=ScriptCore
   token=0x060001D7; ; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Bounded PE window observes manager
   current-info pointer, increments reference count and registers type 40h when present. Stored body
   owns one byte and has ZERO actual Listing instructions; 64-byte raw-PE window is not a full
   stored body. */

undefined4 ScriptCore_LoadSaveManager__LoadSaveManager_GetCurrentSaveGameInfo_Impl(void)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    iVar2 = FUN_00aa99c0();
    if (iVar2 != 0) {
      iVar2 = ReadDwordOffset18_531F70(iVar2);
      if (iVar2 != 0) {
        *(int *)(iVar2 + 4) = *(int *)(iVar2 + 4) + 1;
        uVar3 = (**(code **)(*piVar1 + 200))(iVar2,0x40);
        return uVar3;
      }
    }
  }
  return 0;
}

