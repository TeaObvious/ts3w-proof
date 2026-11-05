/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163428 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_HasAnyRoofOrFloorAbovePosImpl [assembly=ScriptCore token=0x0600078C; pos:
   Sims3.SimIFace.Vector3; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.World::World_HasAnyRoofOrFloorAbovePosImpl
          (float param_1,undefined4 param_2,float param_3)

{
  uint in_EAX;
  void *this;
  uint uVar1;
  LotXZLevel local_2c;
  float local_20;
  undefined4 uStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,param_1,param_3);
    in_EAX = 0;
    if (this != (void *)0x0) {
      local_2c.x = -1.0;
      local_2c.z = -1.0;
      local_2c.level = 0;
      local_20 = param_1;
      uStack_1c = param_2;
      fStack_18 = param_3;
      fStack_14 = param_1;
      Lot_WorldPositionToLocalLocation(this,&local_20,&local_2c);
      uVar1 = FUN_00aba0d0(this,&local_2c.x,'\x01','\x01');
      return uVar1;
    }
  }
  return in_EAX & 0xffffff00;
}

