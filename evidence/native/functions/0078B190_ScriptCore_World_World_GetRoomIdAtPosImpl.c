/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163450 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetRoomIdAtPosImpl [assembly=ScriptCore token=0x06000792; pos:
   Sims3.SimIFace.Vector3, roomDefinition: System.Int32; return=System.Int16]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_GetRoomIdAtPosImpl
               (float param_1,undefined4 param_2,float param_3,int param_4)

{
  void *pvVar1;
  
  if (DAT_011edbc4 == (void *)0x0) {
    pvVar1 = (void *)0x0;
  }
  else {
    pvVar1 = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,param_1,param_3);
  }
  FUN_00787320(pvVar1,param_1,param_2,param_3,param_4,0);
  return;
}

