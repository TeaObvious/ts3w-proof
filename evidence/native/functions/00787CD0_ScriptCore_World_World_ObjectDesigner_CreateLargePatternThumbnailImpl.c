/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163828 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_CreateLargePatternThumbnailImpl [assembly=ScriptCore
   token=0x0600080A; compositorID: System.UInt64, patternHashId: System.UInt64, data: System.Byte[];
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectDesigner_CreateLargePatternThumbnailImpl
          (uint param_1,uint param_2,void *param_3,size_t param_4,int param_5)

{
  void *this;
  int *piVar1;
  undefined4 local_8;
  undefined4 local_4;
  
  this = (void *)ProductPresets_GetGlobalOwner();
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_8 = 0;
  local_4 = 0;
  if (param_5 != 0) {
    (**(code **)(*piVar1 + 0x70))(param_5,&local_4,&local_8);
  }
  FUN_00b33f60(this,param_1,param_2,param_3,param_4);
  return;
}

