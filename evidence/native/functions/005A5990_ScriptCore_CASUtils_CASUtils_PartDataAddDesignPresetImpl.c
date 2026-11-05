/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01156250 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_PartDataAddDesignPresetImpl [assembly=ScriptCore token=0x060002E5;
   partKey: Sims3.SimIFace.ResourceKey, preset: System.String; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.CASUtils::CASUtils_PartDataAddDesignPresetImpl(void)

{
  int *piVar1;
  void *this;
  short *psVar2;
  undefined4 in_stack_00000014;
  uint auStack_c [3];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)ProductPresets_GetGlobalOwner();
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(in_stack_00000014);
  if (psVar2 == (short *)0x0) {
    return;
  }
  FUN_00b328e0(this,auStack_c + -2,psVar2,0,0);
  return;
}

