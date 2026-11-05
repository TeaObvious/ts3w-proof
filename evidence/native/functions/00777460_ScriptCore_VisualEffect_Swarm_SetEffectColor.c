/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011629c0 (original PC 1.67 TS3W.exe).
   ScriptCore.VisualEffect::Swarm_SetEffectColor [assembly=ScriptCore token=0x060004BC;
   effectHandle: System.UInt64, color: Sims3.SimIFace.Vector3; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.VisualEffect::Swarm_SetEffectColor
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_c = param_3;
  local_8 = param_4;
  local_4 = param_5;
  FUN_007771a0(param_1,param_2,7,&local_c,3);
  return;
}

