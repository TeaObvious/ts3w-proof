/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011620b0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  int *piVar1;
  int iVar2;
  void *pvVar3;
  undefined4 *this;
  void *this_00;
  byte *pbVar4;
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
  
  pvVar3 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(param_3,param_2));
  if (this == (undefined4 *)0x0) {
    pvVar3 = (void *)0x0;
    this_00 = (void *)0x0;
  }
  else {
    LOCK();
    this[1] = this[1] + 1;
    UNLOCK();
    pvVar3 = Object_GetComponentByMask(this,DAT_011ea158);
    this_00 = Object_GetComponentByMask(this,DAT_011ea114);
  }
  FUN_0076bf70(&local_bc,0,0,0);
  if (((this != (undefined4 *)0x0) && (pvVar3 != (void *)0x0)) && (this_00 != (void *)0x0)) {
    pbVar4 = SlotComponent_FindFirstNameWordThunk(this_00,param_4);
    if (pbVar4 != (byte *)0x0) {
      TransformComponent_GetWorldMatrix(pvVar3,&local_90);
      (**(code **)(*(int *)pbVar4 + 0x14))(local_50);
      (**(code **)(*(int *)pbVar4 + 0x20))(auStack_94,&fStack_54,0);
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
    piVar1 = this + 1;
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return param_1;
}

