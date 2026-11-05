/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ee48 (original PC 1.67 TS3W.exe).
   ScriptCore.DebugDraw::DebugDraw_DrawCircleTimed [assembly=ScriptCore token=0x060006E1; center:
   Sims3.SimIFace.Vector3, radius: System.Single, color: System.UInt32, duration: System.Single;
   return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 __cdecl
ScriptCore.DebugDraw::DebugDraw_DrawCircleTimed
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,float param_4,undefined4 param_5
          ,uint param_6)

{
  undefined8 uVar1;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  local_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_1;
  uVar1 = FUN_00740cc0(&local_20,param_4,param_5,param_6);
  return uVar1;
}

