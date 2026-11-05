/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163b28 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_CanSeePointImpl [assembly=ScriptCore token=0x06000867; start:
   Sims3.SimIFace.Vector3, end: Sims3.SimIFace.Vector3, endObjectId: System.UInt64;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_CanSeePointImpl
          (float param_1,undefined4 param_2,undefined4 param_3,float param_4,undefined4 param_5,
          undefined4 param_6,int param_7,int param_8)

{
  float local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  float fStack_24;
  float local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  float fStack_14;
  
  local_20 = param_4;
  uStack_1c = param_5;
  uStack_18 = param_6;
  fStack_14 = param_4;
  local_30 = param_1;
  uStack_2c = param_2;
  uStack_28 = param_3;
  fStack_24 = param_1;
  FUN_0078a5d0(&local_30,&local_20,param_7,param_8);
  return;
}

