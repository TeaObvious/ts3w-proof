/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163710 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectStopVideo [assembly=ScriptCore token=0x060007E6; objId:
   System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.World::World_ObjectStopVideo(undefined4 param_1,undefined4 param_2)

{
  undefined4 local_60;
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined1 local_50 [76];
  
  local_60 = 0x635a339e;
  local_5c = (undefined4 *)0x0;
  local_58 = param_1;
  local_54 = param_2;
  FUN_00693380(&local_60);
  if (local_5c != (undefined4 *)0x0) {
    (**(code **)*local_5c)(local_50);
  }
  return;
}

