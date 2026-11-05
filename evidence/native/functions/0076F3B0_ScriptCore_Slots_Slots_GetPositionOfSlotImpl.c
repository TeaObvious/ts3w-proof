/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011620b0 (original PC 1.67 TS3W.exe).
   ScriptCore.Slots::Slots_GetPositionOfSlotImpl [assembly=ScriptCore token=0x06000D37;
   scriptHandle: System.UInt64, slotNameHash: System.UInt32, ageGenderSpecies: System.UInt32,
   isExitSlot: System.Boolean; return=Sims3.SimIFace.Vector3]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float * __cdecl
ScriptCore.Slots::Slots_GetPositionOfSlotImpl
          (float *param_1,undefined4 param_2,undefined4 param_3,int param_4,uint param_5,
          char param_6)

{
  int iVar1;
  undefined4 *this;
  void *this_00;
  void *this_01;
  int *piVar2;
  float local_bc;
  float local_b8;
  float local_b4;
  float fStack_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  undefined1 auStack_94 [4];
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  undefined1 local_50 [48];
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  iVar1 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar1);
  if (this == (undefined4 *)0x0) {
    this_00 = (void *)0x0;
    this_01 = (void *)0x0;
  }
  else {
    LOCK();
    this[1] = this[1] + 1;
    UNLOCK();
    this_00 = (void *)FUN_00934260(this,DAT_011ea158);
    this_01 = (void *)FUN_00934260(this,DAT_011ea114);
  }
  FUN_0076bf70(&local_bc,0,0,0);
  if (((this != (undefined4 *)0x0) && (this_00 != (void *)0x0)) && (this_01 != (void *)0x0)) {
    piVar2 = (int *)thunk_FUN_009501a0(this_01,param_4);
    if (piVar2 != (int *)0x0) {
      FUN_00957a90(this_00,(uint *)&local_90);
      (**(code **)(*piVar2 + 0x14))(local_50);
      (**(code **)(*piVar2 + 0x20))(auStack_94,&fStack_54,0);
      fStack_b0 = fStack_20 * local_90 + fStack_1c * fStack_80 + fStack_18 * fStack_70 +
                  fStack_14 * fStack_60;
      fStack_ac = fStack_20 * fStack_8c + fStack_1c * fStack_7c + fStack_18 * fStack_6c +
                  fStack_14 * fStack_5c;
      fStack_a8 = fStack_20 * fStack_88 + fStack_1c * fStack_78 + fStack_18 * fStack_68 +
                  fStack_14 * fStack_58;
      fStack_a4 = fStack_20 * fStack_84 + fStack_1c * fStack_74 + fStack_18 * fStack_64 +
                  fStack_14 * fStack_54;
      FUN_0076f160(&fStack_b0,this,param_5,param_6);
      local_bc = fStack_b0;
      local_b8 = fStack_ac;
      local_b4 = fStack_a8;
    }
  }
  *param_1 = local_bc;
  param_1[1] = local_b8;
  param_1[2] = local_b4;
  if (this != (undefined4 *)0x0) {
    piVar2 = this + 1;
    LOCK();
    iVar1 = *piVar2;
    *piVar2 = *piVar2 + -1;
    UNLOCK();
    if (iVar1 == 1) {
      LOCK();
      *piVar2 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return param_1;
}

