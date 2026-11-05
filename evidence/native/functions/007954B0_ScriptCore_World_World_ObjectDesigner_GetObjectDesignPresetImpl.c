/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163948 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_GetObjectDesignPresetImpl [assembly=ScriptCore
   token=0x0600082D; scriptHandle: System.UInt64; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.World::World_ObjectDesigner_GetObjectDesignPresetImpl
          (undefined4 *param_1,undefined4 param_2)

{
  void *this;
  int *piVar1;
  short *psVar2;
  void *unaff_ESI;
  undefined4 unaff_EDI;
  undefined1 local_34 [4];
  int local_30 [2];
  undefined **local_28;
  char *local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  this = (void *)ProductPresets_GetGlobalOwner();
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  psVar2 = (short *)FUN_00b31c40(this,param_1,param_2);
  if (psVar2 == (short *)0x0) {
    return 0;
  }
  local_30[0] = 0;
  local_30[1] = 0;
  local_28 = (undefined **)0x0;
  local_24 = "World/WorldHost";
  FUN_0040b590(local_30,psVar2);
  local_20[0] = &PTR_FUN_0100886c;
  local_16 = 0x13;
  local_18 = 0xb;
  FUN_004f59c0(local_30 + 4,0x13,9,local_30,0x10,1);
  (**(code **)(*piVar1 + 0x50))(local_30 + 4,local_34);
  local_28 = &PTR_FUN_00fba6f4;
  if (((uint)local_20[0] & 4) != 0) {
    FUN_004f5760(local_30 + 2,'\0');
  }
  if ((2 < (int)(local_30[0] - (int)unaff_ESI & 0xfffffffeU)) && (unaff_ESI != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_ESI);
  }
  return unaff_EDI;
}

