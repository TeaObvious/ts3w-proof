/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011637e8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_GetPatternKeyImpl [assembly=ScriptCore token=0x06000802;
   hashId: System.UInt32; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * ScriptCore_World__World_ObjectDesigner_GetPatternKeyImpl(undefined4 *param_1)

{
  void *this;
  uint uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  this = (void *)ProductPresets_GetGlobalOwner();
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  FUN_00b35fe0(this,&uStack_10);
  param_1[2] = uStack_10;
  *param_1 = uStack_8;
  param_1[3] = uStack_c;
  param_1[1] = uStack_4;
  return param_1;
}

