/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011638b0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  
  this = (void *)ProductPresets_GetGlobalOwner();
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

