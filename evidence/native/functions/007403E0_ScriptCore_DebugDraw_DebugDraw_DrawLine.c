/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ee30 (original PC 1.67 TS3W.exe).
   ScriptCore.DebugDraw::DebugDraw_DrawLine [assembly=ScriptCore token=0x060006DE; p0:
   Sims3.SimIFace.Vector3, p1: Sims3.SimIFace.Vector3, color: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.DebugDraw::DebugDraw_DrawLine
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  local_20 = param_4;
  uStack_1c = param_5;
  uStack_18 = param_6;
  uStack_14 = param_4;
  local_30 = param_1;
  uStack_2c = param_2;
  uStack_28 = param_3;
  uStack_24 = param_1;
  FUN_00740290(&local_30,&local_20,param_7);
  return;
}

