/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163280 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_AddObjectToObjectManagersImpl [assembly=ScriptCore token=0x0600074D;
   scriptHandle: System.UInt64, groupId: System.UInt64, position: Sims3.SimIFace.Vector3, level:
   System.Int32, createFacing: Sims3.SimIFace.Vector3, hiddenFlags: System.UInt32;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_AddObjectToObjectManagersImpl
               (undefined4 param_1,undefined4 param_2,int param_3,int param_4,float param_5,
               float param_6,float param_7,undefined4 param_8,float param_9,float param_10,
               float param_11)

{
  ObjectPlacement_AdmitCreatedOwner
            (param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9,param_10,
             param_11);
  return;
}

