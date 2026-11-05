/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011638b0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectDesigner_CreateDesignPresetThumbnailImpl [assembly=ScriptCore
   token=0x0600081A; index: System.UInt32, dataA: System.Byte[], dataB: System.Byte[];
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectDesigner_CreateDesignPresetThumbnailImpl
          (uint param_1,int param_2,int param_3)

{
  void *this;
  int *piVar1;
  size_t local_10;
  void *local_c;
  size_t local_8;
  void *local_4;
  
  this = (void *)FUN_00b302a0();
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_8 = 0;
  local_4 = (void *)0x0;
  if (param_2 != 0) {
    (**(code **)(*piVar1 + 0x70))(param_2,&local_4,&local_8);
  }
  local_10 = 0;
  local_c = (void *)0x0;
  if (param_3 != 0) {
    (**(code **)(*piVar1 + 0x70))(param_3,&local_c,&local_10);
  }
  FUN_00b34100(this,param_1,local_4,local_8,local_c,local_10);
  return;
}

