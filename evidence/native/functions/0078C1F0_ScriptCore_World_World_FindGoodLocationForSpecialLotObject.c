/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163540 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_FindGoodLocationForSpecialLotObject [assembly=ScriptCore
   token=0x060007AF; objId: System.UInt64, refObjId: System.UInt64, lotId: System.UInt64, outPos:
   Sims3.SimIFace.Vector3&, outOrient: Sims3.SimIFace.Quaternion&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.World::World_FindGoodLocationForSpecialLotObject
          (undefined4 param_1,undefined4 param_2,int param_3,int param_4,int param_5,int param_6,
          float *param_7,float *param_8)

{
  uint uVar1;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  uVar1 = FUN_00c795d0(param_1,param_2,param_3,param_4,param_5,param_6,&local_30,&local_20);
  if ((char)uVar1 != '\0') {
    if (param_7 != (float *)0x0) {
      *param_7 = local_30;
      param_7[1] = fStack_2c;
      param_7[2] = fStack_28;
    }
    if (param_8 != (float *)0x0) {
      *param_8 = local_20;
      param_8[1] = fStack_1c;
      param_8[2] = fStack_18;
      param_8[3] = fStack_14;
    }
    return CONCAT31((int3)((uint)param_8 >> 8),1);
  }
  return uVar1 & 0xffffff00;
}

