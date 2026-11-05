/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011637c8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectDesigner_SetPatternImpl [assembly=ScriptCore token=0x060007FD;
   patternKey: Sims3.SimIFace.ResourceKey, presetKey: Sims3.SimIFace.ResourceKey;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectDesigner_SetPatternImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  void *this;
  
  this = (void *)FUN_00b302a0();
  param_5 = param_3;
  param_6 = param_4;
  param_7 = param_1;
  param_8 = param_2;
  FUN_00b37960(this,&param_5);
  return;
}

