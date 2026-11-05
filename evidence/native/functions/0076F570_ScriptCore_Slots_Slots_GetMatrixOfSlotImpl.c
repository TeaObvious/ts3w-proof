/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011620b8 (original PC 1.67 TS3W.exe).
   ScriptCore.Slots::Slots_GetMatrixOfSlotImpl [assembly=ScriptCore token=0x06000D38; scriptHandle:
   System.UInt64, slotNameHash: System.UInt32; return=Sims3.SimIFace.Matrix44]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl
ScriptCore.Slots::Slots_GetMatrixOfSlotImpl
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  int iVar1;
  undefined4 *this;
  void *this_00;
  void *this_01;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined1 auStack_114 [4];
  float local_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float local_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  float local_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  float local_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float fStack_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float fStack_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float fStack_90;
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
  undefined4 local_50 [19];
  
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
  local_110 = DAT_00f998f8;
  fStack_10c = 0.0;
  fStack_108 = 0.0;
  fStack_104 = 0.0;
  local_100 = 0.0;
  fStack_fc = DAT_00f998f8;
  fStack_f8 = 0.0;
  fStack_f4 = 0.0;
  local_f0 = 0.0;
  fStack_ec = 0.0;
  fStack_e8 = DAT_00f998f8;
  fStack_e4 = 0.0;
  local_e0 = 0.0;
  fStack_dc = 0.0;
  fStack_d8 = 0.0;
  fStack_d4 = DAT_00f998f8;
  FUN_0076c220(local_50,&local_110);
  if (((this != (undefined4 *)0x0) && (this_00 != (void *)0x0)) && (this_01 != (void *)0x0)) {
    piVar2 = (int *)thunk_FUN_009501a0(this_01,param_4);
    if (piVar2 != (int *)0x0) {
      FUN_00957a90(this_00,(uint *)&local_d0);
      (**(code **)(*piVar2 + 0x14))(&local_110);
      (**(code **)(*piVar2 + 0x20))(&fStack_d4,auStack_114,0);
      fStack_90 = local_110 * local_d0 + fStack_10c * fStack_c0 + fStack_108 * fStack_b0 +
                  fStack_104 * fStack_a0;
      fStack_8c = local_110 * fStack_cc + fStack_10c * fStack_bc + fStack_108 * fStack_ac +
                  fStack_104 * fStack_9c;
      fStack_88 = local_110 * fStack_c8 + fStack_10c * fStack_b8 + fStack_108 * fStack_a8 +
                  fStack_104 * fStack_98;
      fStack_84 = local_110 * fStack_c4 + fStack_10c * fStack_b4 + fStack_108 * fStack_a4 +
                  fStack_104 * fStack_94;
      fStack_80 = local_100 * local_d0 + fStack_fc * fStack_c0 + fStack_f8 * fStack_b0 +
                  fStack_f4 * fStack_a0;
      fStack_7c = local_100 * fStack_cc + fStack_fc * fStack_bc + fStack_f8 * fStack_ac +
                  fStack_f4 * fStack_9c;
      fStack_78 = local_100 * fStack_c8 + fStack_fc * fStack_b8 + fStack_f8 * fStack_a8 +
                  fStack_f4 * fStack_98;
      fStack_74 = local_100 * fStack_c4 + fStack_fc * fStack_b4 + fStack_f8 * fStack_a4 +
                  fStack_f4 * fStack_94;
      fStack_70 = local_f0 * local_d0 + fStack_ec * fStack_c0 + fStack_e8 * fStack_b0 +
                  fStack_e4 * fStack_a0;
      fStack_6c = local_f0 * fStack_cc + fStack_ec * fStack_bc + fStack_e8 * fStack_ac +
                  fStack_e4 * fStack_9c;
      fStack_68 = local_f0 * fStack_c8 + fStack_ec * fStack_b8 + fStack_e8 * fStack_a8 +
                  fStack_e4 * fStack_98;
      fStack_64 = local_f0 * fStack_c4 + fStack_ec * fStack_b4 + fStack_e8 * fStack_a4 +
                  fStack_e4 * fStack_94;
      fStack_60 = local_e0 * local_d0 + fStack_dc * fStack_c0 + fStack_d8 * fStack_b0 +
                  fStack_d4 * fStack_a0;
      fStack_5c = local_e0 * fStack_cc + fStack_dc * fStack_bc + fStack_d8 * fStack_ac +
                  fStack_d4 * fStack_9c;
      fStack_58 = local_e0 * fStack_c8 + fStack_dc * fStack_b8 + fStack_d8 * fStack_a8 +
                  fStack_d4 * fStack_98;
      fStack_54 = local_e0 * fStack_c4 + fStack_dc * fStack_b4 + fStack_d8 * fStack_a4 +
                  fStack_d4 * fStack_94;
      FUN_0076c220(local_50,&fStack_90);
    }
  }
  puVar3 = local_50;
  puVar4 = param_1;
  for (iVar1 = 0x10; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar4 = *puVar3;
    puVar3 = puVar3 + 1;
    puVar4 = puVar4 + 1;
  }
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

