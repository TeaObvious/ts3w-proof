/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01156228 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_PartDataGetNameImpl [assembly=ScriptCore token=0x060002E7; partKey:
   Sims3.SimIFace.ResourceKey; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.CASUtils::CASUtils_PartDataGetNameImpl
          (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int allocation;
  void *pvVar1;
  int *piVar2;
  int local_40 [4];
  void *local_30 [2];
  undefined **local_28 [2];
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  undefined4 uStack_4;
  
  allocation = param_1;
  FUN_007d9770(local_40);
  pvVar1 = FUN_004f3c90(local_30,local_40);
  local_20[0] = &PTR_FUN_0100886c;
  local_16 = 0x13;
  local_18 = 0xb;
  FUN_004f59c0(local_20,0x13,9,pvVar1,0x10,1);
  if ((2 < (int)((int)local_28[0] - (int)local_30[0] & 0xfffffffeU)) && (local_30[0] != (void *)0x0)
     ) {
    Memory_FreeIfNonNull(local_30[0]);
  }
  param_1 = 0;
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  (**(code **)(*piVar2 + 0x50))(local_20,&param_1);
  local_28[0] = &PTR_FUN_00fba6f4;
  if (((uint)local_20[0] & 4) != 0) {
    FUN_004f5760(local_28,'\0');
  }
  if ((1 < local_40[0] - allocation) && (allocation != 0)) {
    Memory_FreeIfNonNull((void *)allocation);
  }
  return uStack_4;
}

