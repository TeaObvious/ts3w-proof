/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Type propagation algorithm not settling */



/* Verified PC 1.67 registration table at 0x011637e0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_SetNewCompositorImpl [assembly=ScriptCore
   token=0x06000800; paramHash: System.UInt32, data: System.Byte[]; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectDesigner_SetNewCompositorImpl(undefined4 param_1,undefined4 param_2)

{
  void *this;
  int *piVar1;
  uint local_8 [2];
  
  this = (void *)ProductPresets_GetGlobalOwner();
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_8[0] = 0;
  local_8[1] = 0;
  (**(code **)(*piVar1 + 0x70))(param_2);
  if (0 < (int)(local_8 + 1)) {
    FUN_00b34e50(this,local_8[0],local_8,(size_t)(local_8 + 1));
  }
  return;
}

