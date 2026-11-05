/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163848 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_GetCurrentPatternImpl [assembly=ScriptCore
   token=0x06000810; ; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * ScriptCore_World__World_ObjectDesigner_GetCurrentPatternImpl(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  iVar3 = ProductPresets_GetGlobalOwner();
  iVar3 = *(int *)(iVar3 + 0xa4);
  if (iVar3 != 0) {
    uVar1 = *(undefined4 *)(iVar3 + 0x14);
    *param_1 = *(undefined4 *)(iVar3 + 0x10);
    uVar2 = *(undefined4 *)(iVar3 + 8);
    param_1[1] = uVar1;
    uVar1 = *(undefined4 *)(iVar3 + 0xc);
    param_1[2] = uVar2;
    param_1[3] = uVar1;
  }
  return param_1;
}

