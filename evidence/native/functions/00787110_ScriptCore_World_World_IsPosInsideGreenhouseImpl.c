/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163448 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_IsPosInsideGreenhouseImpl [assembly=ScriptCore token=0x06000790; pos:
   Sims3.SimIFace.Vector3; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1
ScriptCore_World__World_IsPosInsideGreenhouseImpl(float param_1,undefined4 param_2,float param_3)

{
  undefined1 uVar1;
  void *this;
  float fStack_c;
  float afStack_8 [2];
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = FUN_00c687d0(DAT_011edbc4,param_1,param_3);
    if (this != (void *)0x0) {
      fStack_c = DAT_00fab218;
      afStack_8[0] = DAT_00fab218;
      afStack_8[1] = 0.0;
      FUN_00ab6e40(this,param_1,param_3,&fStack_c,afStack_8);
      uVar1 = FUN_00ab39a0(this,fStack_c,afStack_8[0]);
      return uVar1;
    }
  }
  return 0;
}

