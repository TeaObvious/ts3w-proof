/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163b58 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_DesignModeSwap_GetPatternKeyImpl [assembly=ScriptCore token=0x0600086D;
   handle: System.UInt32, variableHash: System.UInt32; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 *
ScriptCore_World__World_DesignModeSwap_GetPatternKeyImpl(undefined4 *param_1,uint param_2)

{
  int *piVar1;
  void *this;
  undefined4 unaff_ESI;
  undefined4 uStack_10;
  uint uStack_c;
  undefined4 uStack_8;
  
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((param_2 & 0xff000000) == 0x45000000) {
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_2);
    if (this != (void *)0x0) {
      DesignSwap_ReservePatternResource(this,(uint *)((int)register0x00000010 + -0x14));
      *param_1 = uStack_c;
      param_1[1] = uStack_8;
      param_1[2] = unaff_ESI;
      param_1[3] = uStack_10;
    }
  }
  return param_1;
}

