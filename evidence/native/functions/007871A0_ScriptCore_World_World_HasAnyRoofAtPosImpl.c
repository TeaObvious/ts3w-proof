/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163420 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_HasAnyRoofAtPosImpl [assembly=ScriptCore token=0x0600078B; pos:
   Sims3.SimIFace.Vector3; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_HasAnyRoofAtPosImpl(float param_1,undefined4 param_2,float param_3)

{
  uint in_EAX;
  void *this;
  uint uVar1;
  float fStack_c;
  float afStack_8 [2];
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,param_1,param_3);
    in_EAX = 0;
    if (this != (void *)0x0) {
      fStack_c = -1.0;
      afStack_8[0] = -1.0;
      afStack_8[1] = 0.0;
      Lot_WorldXZToLocalXZ(this,param_1,param_3,&fStack_c,afStack_8);
      uVar1 = FUN_00ab0ae0(this,&fStack_c,'\x01');
      return uVar1;
    }
  }
  return in_EAX & 0xffffff00;
}

