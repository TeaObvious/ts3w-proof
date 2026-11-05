/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01161218 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LoadSaveManager::LoadSaveManager_ReleaseLoadSaveFileInfoHandle_Impl
   [assembly=ScriptCore token=0x060001D9; h: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Bounded PE window releases through host
   slot D8h and decrements info reference count, invoking deleting virtual method when it reaches
   zero. Normal path sets AL true even for an unknown handle; missing-host path returns AL false.
   Upper EAX is not a full bool promise. Stored body owns one byte with ZERO Listing; 64-byte raw-PE
   window only. */

undefined4
ScriptCore_LoadSaveManager__LoadSaveManager_ReleaseLoadSaveFileInfoHandle_Impl(undefined4 param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 *puVar3;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0xd8))(param_1);
  if ((puVar3 != (undefined4 *)0x0) && (iVar1 = puVar3[1], puVar3[1] = iVar1 + -1, iVar1 + -1 == 0))
  {
    puVar3[1] = 1;
    puVar3 = (undefined4 *)(**(code **)*puVar3)(1);
  }
  return CONCAT31((int3)((uint)puVar3 >> 8),1);
}

