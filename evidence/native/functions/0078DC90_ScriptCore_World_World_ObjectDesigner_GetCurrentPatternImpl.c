/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163848 (original PC 1.67 TS3W.exe).
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
  iVar3 = FUN_00b302a0();
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

