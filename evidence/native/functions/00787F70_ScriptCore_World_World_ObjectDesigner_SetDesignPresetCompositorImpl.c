/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011638a8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectDesigner_SetDesignPresetCompositorImpl [assembly=ScriptCore
   token=0x06000819; data: System.Byte[]; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectDesigner_SetDesignPresetCompositorImpl(undefined4 param_1)

{
  void *this;
  int *piVar1;
  undefined4 local_8;
  undefined4 local_4;
  
  this = (void *)FUN_00b302a0();
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_8 = 0;
  local_4 = 0;
  (**(code **)(*piVar1 + 0x70))(param_1);
  FUN_00b30310(this,&local_8,(size_t)&local_4);
  return;
}

