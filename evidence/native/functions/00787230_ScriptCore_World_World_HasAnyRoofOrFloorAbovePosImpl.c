/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163428 (original PC 1.67 TS3W.exe).
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
  float local_2c;
  float local_28;
  undefined4 local_24;
  float local_20;
  undefined4 uStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = FUN_00c687d0(DAT_011edbc4,param_1,param_3);
    in_EAX = 0;
    if (this != (void *)0x0) {
      local_2c = DAT_00fab218;
      local_28 = DAT_00fab218;
      local_24 = 0;
      local_20 = param_1;
      uStack_1c = param_2;
      fStack_18 = param_3;
      fStack_14 = param_1;
      FUN_00adc860(this,&local_20,&local_2c);
      uVar1 = FUN_00aba0d0(this,&local_2c,'\x01','\x01');
      return uVar1;
    }
  }
  return in_EAX & 0xffffff00;
}

