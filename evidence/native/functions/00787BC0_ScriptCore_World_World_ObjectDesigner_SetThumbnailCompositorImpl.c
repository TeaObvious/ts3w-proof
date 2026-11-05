/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163800 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_SetThumbnailCompositorImpl [assembly=ScriptCore
   token=0x06000805; compositorID: System.UInt64, dataSmall: System.Byte[], dataLarge:
   System.Byte[]; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectDesigner_SetThumbnailCompositorImpl
          (undefined4 param_1,undefined4 param_2,size_t param_3)

{
  void *this;
  int *piVar1;
  undefined4 unaff_EBX;
  undefined1 auStack_28 [12];
  undefined4 uStack_10;
  undefined4 local_8;
  undefined4 local_4;
  
  this = (void *)ProductPresets_GetGlobalOwner();
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_8 = 0;
  local_4 = 0;
  (**(code **)(*piVar1 + 0x70))();
  (**(code **)(*piVar1 + 0x70))(param_1,auStack_28 + 0x10,auStack_28 + 0xc);
  FUN_00b36180(this,unaff_EBX,uStack_10,(void *)0x0,(size_t)&local_8,&local_4,param_3);
  return;
}

