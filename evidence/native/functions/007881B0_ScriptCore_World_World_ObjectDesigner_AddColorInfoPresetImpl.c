/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011638d0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectDesigner_AddColorInfoPresetImpl [assembly=ScriptCore
   token=0x06000825; key: Sims3.SimIFace.ResourceKey, data: System.Byte[]; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.World::World_ObjectDesigner_AddColorInfoPresetImpl(undefined4 param_1)

{
  void *this;
  int *piVar1;
  undefined4 in_stack_00000014;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 uStack_10;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  this = (void *)FUN_00b302a0();
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_18 = 0;
  local_14 = 0;
  (**(code **)(*piVar1 + 0x70))(in_stack_00000014,&local_14,&local_18);
  local_18 = param_1;
  local_14 = uStack_8;
  uStack_10 = uStack_4;
  FUN_00b30fc0(this,&stack0xffffffe4);
  return;
}

