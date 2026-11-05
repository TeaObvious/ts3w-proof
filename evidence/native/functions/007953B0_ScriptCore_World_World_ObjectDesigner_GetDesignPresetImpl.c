/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163898 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_GetDesignPresetImpl [assembly=ScriptCore token=0x06000814;
   index: System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.World::World_ObjectDesigner_GetDesignPresetImpl(int *param_1)

{
  char cVar1;
  void *this;
  int *piVar2;
  void *unaff_ESI;
  undefined4 unaff_EDI;
  undefined1 local_34 [4];
  undefined1 *local_30;
  undefined1 *local_2c;
  undefined **local_28;
  char *local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  this = (void *)ProductPresets_GetGlobalOwner();
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_30 = &DAT_011c8e54;
  local_2c = &DAT_011c8e54;
  local_24 = "World/WorldHost";
  local_28 = (undefined **)&DAT_011c8e56;
  cVar1 = FUN_00b33680(this,param_1,(int *)&local_30);
  if (cVar1 == '\0') {
    if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (undefined1 *)0x0))
    {
      Memory_FreeIfNonNull(local_30);
    }
    return 0;
  }
  local_20[0] = &PTR_FUN_0100886c;
  local_16 = 0x13;
  local_18 = 0xb;
  FUN_004f59c0(local_20,0x13,9,&local_30,0x10,1);
  (**(code **)(*piVar2 + 0x50))(local_20,local_34);
  local_28 = &PTR_FUN_00fba6f4;
  if (((uint)local_20[0] & 4) != 0) {
    FUN_004f5760(&local_28,'\0');
  }
  if ((2 < (int)((int)local_30 - (int)unaff_ESI & 0xfffffffeU)) && (unaff_ESI != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_ESI);
  }
  return unaff_EDI;
}

