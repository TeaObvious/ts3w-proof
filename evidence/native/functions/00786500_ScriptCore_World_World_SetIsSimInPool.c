/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163ce0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_SetIsSimInPool [assembly=ScriptCore token=0x06000897; simObjId:
   System.UInt64, isInPool: System.Boolean, waterSurfaceHeight: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_SetIsSimInPool
          (undefined4 param_1,undefined4 param_2,char param_3,undefined4 param_4)

{
  byte local_60 [4];
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  uint local_50;
  undefined4 local_4c;
  
  local_58 = param_1;
  local_50 = (uint)(param_3 != '\0');
  local_60[0] = 0xa3;
  local_60[1] = 0x80;
  local_60[2] = 0x88;
  local_60[3] = 0x1c;
  local_5c = (undefined4 *)0x0;
  local_54 = param_2;
  local_4c = param_4;
  RenderCommand_EnqueueIfDispatcherExists(local_60);
  if (local_5c != (undefined4 *)0x0) {
    (**(code **)*local_5c)(&local_50);
  }
  return;
}

