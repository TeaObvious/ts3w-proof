/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ee40 (original PC 1.67 TS3W.exe).
   ScriptCore.DebugDraw::DebugDraw_DrawCircle [assembly=ScriptCore token=0x060006DF; center:
   Sims3.SimIFace.Vector3, radius: System.Single, color: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.DebugDraw::DebugDraw_DrawCircle
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,float param_4,undefined4 param_5
          )

{
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  local_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_1;
  FUN_00740330(&local_20,param_4,param_5);
  return;
}

