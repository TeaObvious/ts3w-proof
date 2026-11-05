/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163cc8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_IsOnPlatformImpl [assembly=ScriptCore token=0x06000894; worldPos:
   Sims3.SimIFace.Vector3; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.World::World_IsOnPlatformImpl(float param_1,undefined4 param_2,float param_3)

{
  uint in_EAX;
  void *this;
  uint uVar1;
  float local_5c;
  float local_58;
  int local_54;
  float local_50;
  undefined4 uStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  undefined4 uStack_3c;
  float fStack_38;
  undefined4 uStack_34;
  float local_30;
  undefined4 uStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  undefined4 uStack_1c;
  float fStack_18;
  undefined4 uStack_14;
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,param_1,param_3);
    in_EAX = 0;
    if (this != (void *)0x0) {
      fStack_48 = param_3;
      fStack_44 = param_1;
      uStack_4c = param_2;
      local_50 = param_1;
      local_30 = param_1;
      uStack_2c = param_2;
      fStack_28 = param_3;
      fStack_24 = param_1;
      in_EAX = Lot_WorldPositionToLocalVector(this,&local_30,&local_40);
      local_50 = local_40;
      uStack_4c = uStack_3c;
      fStack_48 = fStack_38;
      fStack_44 = (float)uStack_34;
      local_20 = local_40;
      uStack_1c = uStack_3c;
      fStack_18 = fStack_38;
      uStack_14 = uStack_34;
      if ((((0.0 <= local_40) && (local_40 <= (float)*(int *)((int)this + 0x174))) &&
          (0.0 <= fStack_38)) && (fStack_38 <= (float)*(int *)((int)this + 0x178))) {
        local_5c = -1.0;
        local_58 = -1.0;
        local_54 = 0;
        local_54 = Lot_SelectFloorLevelBelowHeight(this,&local_40,'\0');
        local_20 = local_40;
        uStack_1c = uStack_3c;
        fStack_18 = fStack_38;
        uStack_14 = uStack_34;
        local_5c = local_40;
        local_58 = fStack_38;
        uVar1 = Lot_TestPlatformAtLocalXZLevel(this,&local_5c);
        return uVar1;
      }
    }
  }
  return in_EAX & 0xffffff00;
}

