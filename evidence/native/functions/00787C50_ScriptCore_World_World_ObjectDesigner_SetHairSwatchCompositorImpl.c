/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163808 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_SetHairSwatchCompositorImpl [assembly=ScriptCore
   token=0x06000806; data: System.Byte[]; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.World::World_ObjectDesigner_SetHairSwatchCompositorImpl(undefined4 param_1)

{
  void *this;
  int *piVar1;
  undefined4 local_8;
  undefined4 local_4;
  
  this = (void *)ProductPresets_GetGlobalOwner();
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_8 = 0;
  local_4 = 0;
  (**(code **)(*piVar1 + 0x70))(param_1);
  FUN_00b303f0(this,&local_8,(size_t)&local_4);
  return;
}

