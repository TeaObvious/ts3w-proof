/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163ce0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_SetIsSimInPool [assembly=ScriptCore token=0x06000897; simObjId:
   System.UInt64, isInPool: System.Boolean, waterSurfaceHeight: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_SetIsSimInPool
          (undefined4 param_1,undefined4 param_2,char param_3,undefined4 param_4)

{
  undefined4 local_60;
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  uint local_50;
  undefined4 local_4c;
  
  local_58 = param_1;
  local_50 = (uint)(param_3 != '\0');
  local_60 = 0x1c8880a3;
  local_5c = (undefined4 *)0x0;
  local_54 = param_2;
  local_4c = param_4;
  FUN_00693380(&local_60);
  if (local_5c != (undefined4 *)0x0) {
    (**(code **)*local_5c)(&local_50);
  }
  return;
}

