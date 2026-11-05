/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name, original PC 1.67 TS3W.exe. Commits frame eye,target,up/orientation into
   camera object+0C through00961E90/00960B40/00960B60, then refreshes camera matrix009612E0 and
   emits change notification if matrix differs. Ordinary mode+809=0 and+810=0 publishes prepared
   pose directly. Sky/base transitions+809/+810 blend only pitch using+80C,+814 andduration+960,
   while yaw remains+7D4; 0097D620 rebuilds direction. Optional timed camera shake+9B4 is a separate
   path. No ordinary mouse yaw-intent smoothing or wrapping is introduced here. SIMD local
   propagation and imported math ABI are decompiler approximations. */

void __thiscall
GameplayCamera_CommitFramePose(void *this,float param_1,float *param_2,float param_3)

{
  void *this_00;
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  float fVar5;
  float fVar6;
  float *pfVar7;
  int *piVar8;
  undefined4 extraout_ECX;
  int iVar9;
  int iVar10;
  float10 fVar11;
  float fVar12;
  float fVar13;
  undefined8 uVar14;
  float local_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  float local_e0;
  float fStack_dc;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  undefined4 local_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float local_30 [4];
  float local_20 [7];

  this_00 = *(void **)((int)this + 0xc);
  local_80 = *(float *)((int)this_00 + 0x30);
  fStack_7c = *(float *)((int)this_00 + 0x34);
  fStack_78 = *(float *)((int)this_00 + 0x38);
  fStack_74 = *(float *)((int)this_00 + 0x3c);
  local_70 = *(float *)((int)this_00 + 0x40);
  fStack_6c = *(float *)((int)this_00 + 0x44);
  fStack_68 = *(float *)((int)this_00 + 0x48);
  fStack_64 = *(float *)((int)this_00 + 0x4c);
  local_60 = *(float *)((int)this_00 + 0x50);
  fStack_5c = *(float *)((int)this_00 + 0x54);
  fStack_58 = *(float *)((int)this_00 + 0x58);
  fStack_54 = *(float *)((int)this_00 + 0x5c);
  local_50 = *(float *)((int)this_00 + 0x60);
  fStack_4c = *(float *)((int)this_00 + 100);
  fStack_48 = *(float *)((int)this_00 + 0x68);
  fStack_44 = *(float *)((int)this_00 + 0x6c);
  if (*(char *)((int)this + 0x809) == '\0') {
    if (*(char *)((int)this + 0x810) == '\0') {
      pfVar7 = (float *)((int)this + 0x780);
      FUN_00961e90(this_00,(float *)((int)this + 0x770),(float *)((int)this + 0x790),pfVar7);
      FUN_00960b40(*(void **)((int)this + 0xc),pfVar7);
    }
    else {
      fVar12 = *(float *)((int)this + 0x814) + param_1;
      fVar13 = *(float *)((int)this + 0x960);
      *(float *)((int)this + 0x814) = fVar12;
      if (fVar13 <= fVar12) {
        *(float *)((int)this + 0x814) = fVar13;
        *(undefined1 *)((int)this + 0x810) = 0;
      }
      fVar12 = *(float *)((int)this + 2000);
      fStack_e4 = *(float *)((int)this + 0x80c);
      fVar13 = *(float *)((int)this + 0x814) / fVar13;
      local_e0 = *(float *)((int)this + 2000);
      fStack_dc = *(float *)((int)this + 0x7d4);
      uStack_d8 = *(undefined4 *)((int)this + 0x7d8);
      uStack_d4 = *(undefined4 *)((int)this + 0x7dc);
      local_f0 = (fVar12 - fStack_e4) * fVar13 + fStack_e4;
      fStack_ec = (fVar12 - fStack_e4) * fVar13 + fStack_e4;
      fStack_e8 = (fVar12 - fStack_e4) * fVar13 + fStack_e4;
      fStack_e4 = (fVar12 - fStack_e4) * fVar13 + fStack_e4;
      pfVar7 = GameplayCamera_DirectionFromPitchYaw(local_20,local_f0,fStack_dc);
      fVar13 = *pfVar7;
      fVar12 = pfVar7[1];
      fVar5 = pfVar7[2];
      fVar6 = pfVar7[3];
      *param_2 = fVar13;
      param_2[1] = fVar12;
      param_2[2] = fVar5;
      param_2[3] = fVar6;
      local_f0 = param_3 * fVar13 + *(float *)((int)this + 0x770);
      fStack_ec = param_3 * fVar12 + *(float *)((int)this + 0x774);
      fStack_e8 = param_3 * fVar5 + *(float *)((int)this + 0x778);
      fStack_e4 = param_3 * fVar6 + *(float *)((int)this + 0x77c);
      FUN_00961e90(*(void **)((int)this + 0xc),(float *)((int)this + 0x770),
                   (float *)((int)this + 0x790),&local_f0);
      FUN_00960b40(*(void **)((int)this + 0xc),&local_f0);
      pfVar7 = &local_f0;
    }
  }
  else {
    local_f0 = *(float *)((int)this + 0x80c);
    fStack_ec = *(float *)((int)this + 0x7d4);
    fStack_e8 = *(float *)((int)this + 0x7d8);
    fStack_e4 = *(float *)((int)this + 0x7dc);
    *(float *)((int)this + 2000) = local_f0;
    *(float *)((int)this + 0x7d4) = fStack_ec;
    *(float *)((int)this + 0x7d8) = fStack_e8;
    *(float *)((int)this + 0x7dc) = fStack_e4;
    local_e0 = *(float *)((int)this + 2000);
    fStack_dc = *(float *)((int)this + 0x7d4);
    uStack_d8 = *(undefined4 *)((int)this + 0x7d8);
    uStack_d4 = *(undefined4 *)((int)this + 0x7dc);
    pfVar7 = GameplayCamera_DirectionFromPitchYaw(local_30,local_f0,fStack_dc);
    fVar13 = *pfVar7;
    fVar12 = pfVar7[1];
    fVar5 = pfVar7[2];
    fVar6 = pfVar7[3];
    *param_2 = fVar13;
    param_2[1] = fVar12;
    param_2[2] = fVar5;
    param_2[3] = fVar6;
    local_c0 = param_3 * fVar13 + *(float *)((int)this + 0x770);
    fStack_bc = param_3 * fVar12 + *(float *)((int)this + 0x774);
    fStack_b8 = param_3 * fVar5 + *(float *)((int)this + 0x778);
    fStack_b4 = param_3 * fVar6 + *(float *)((int)this + 0x77c);
    FUN_00961e90(*(void **)((int)this + 0xc),(float *)((int)this + 0x770),
                 (float *)((int)this + 0x790),&local_c0);
    FUN_00960b40(*(void **)((int)this + 0xc),&local_c0);
    pfVar7 = &local_c0;
  }
  FUN_00960b60(*(void **)((int)this + 0xc),pfVar7);
  pfVar7 = *(float **)((int)this + 0x9b4);
  if (pfVar7 != (float *)0x0) {
    if (*pfVar7 < pfVar7[1] || *pfVar7 == pfVar7[1]) {
      if (pfVar7[6] != 0.0) {
        FUN_004e44e0((int)pfVar7[6]);
      }
      if (pfVar7[2] != 0.0) {
        FUN_004e44e0((int)pfVar7[2]);
      }
      FUN_004e44e0((int)pfVar7);
      *(undefined4 *)((int)this + 0x9b4) = 0;
      local_a0 = 0;
      uStack_9c = 0;
      uStack_98 = 0;
      uStack_94 = 0;
      FUN_0095ff80(*(void **)((int)this + 0xc),&local_a0);
    }
    else {
      fVar13 = pfVar7[1];
      fVar12 = *pfVar7;
      FUN_00970f30(&local_40,(int *)(pfVar7 + 2),fVar13 / fVar12);
      FUN_00970f30(&local_e0,(int *)(*(int *)((int)this + 0x9b4) + 0x18),fVar13 / fVar12);
      fStack_84 = *(float *)(*(int *)((int)this + 0x9b4) + 4);
      fVar11 = (float10)fsin((float10)(fStack_3c * fStack_84));
      local_90 = local_40 * fStack_84;
      fStack_8c = local_40 * fStack_84;
      fStack_88 = local_40 * fStack_84;
      fStack_84 = local_40 * fStack_84;
      fStack_c4 = (float)fVar11;
      fVar11 = (float10)fsin((float10)local_90);
      local_d0 = fStack_c4 * fStack_dc;
      fStack_cc = fStack_c4 * fStack_dc;
      fStack_c8 = fStack_c4 * fStack_dc;
      fStack_c4 = fStack_c4 * fStack_dc;
      local_b0 = (float)fVar11 * local_e0;
      fStack_ac = fStack_cc;
      fStack_a8 = local_b0;
      fStack_a4 = local_b0;
      FUN_0095ff80(*(void **)((int)this + 0xc),&local_b0);
      *(float *)(*(int *)((int)this + 0x9b4) + 4) =
           *(float *)(*(int *)((int)this + 0x9b4) + 4) + param_1;
    }
  }
  uVar14 = FUN_009612e0(*(void **)((int)this + 0xc),'\x01');
  iVar10 = *(int *)((int)this + 0xc);
  auVar1._4_4_ = -(uint)(*(float *)(iVar10 + 0x34) == fStack_7c);
  auVar1._0_4_ = -(uint)(*(float *)(iVar10 + 0x30) == local_80);
  auVar1._8_4_ = -(uint)(*(float *)(iVar10 + 0x38) == fStack_78);
  auVar1._12_4_ = -(uint)(*(float *)(iVar10 + 0x3c) == fStack_74);
  iVar9 = movmskps(extraout_ECX,auVar1);
  if ((((iVar9 != 0xf) ||
       (auVar2._4_4_ = -(uint)(*(float *)(iVar10 + 0x44) == fStack_6c),
       auVar2._0_4_ = -(uint)(*(float *)(iVar10 + 0x40) == local_70),
       auVar2._8_4_ = -(uint)(*(float *)(iVar10 + 0x48) == fStack_68),
       auVar2._12_4_ = -(uint)(*(float *)(iVar10 + 0x4c) == fStack_64),
       iVar9 = movmskps((int)((ulonglong)uVar14 >> 0x20),auVar2), iVar9 != 0xf)) ||
      (auVar3._4_4_ = -(uint)(*(float *)(iVar10 + 0x54) == fStack_5c),
      auVar3._0_4_ = -(uint)(*(float *)(iVar10 + 0x50) == local_60),
      auVar3._8_4_ = -(uint)(*(float *)(iVar10 + 0x58) == fStack_58),
      auVar3._12_4_ = -(uint)(*(float *)(iVar10 + 0x5c) == fStack_54),
      iVar9 = movmskps((int)uVar14,auVar3), iVar9 != 0xf)) ||
     (auVar4._4_4_ = -(uint)(*(float *)(iVar10 + 100) == fStack_4c),
     auVar4._0_4_ = -(uint)(*(float *)(iVar10 + 0x60) == local_50),
     auVar4._8_4_ = -(uint)(*(float *)(iVar10 + 0x68) == fStack_48),
     auVar4._12_4_ = -(uint)(*(float *)(iVar10 + 0x6c) == fStack_44), iVar10 = movmskps(0xf,auVar4),
     iVar10 != 0xf)) {
    piVar8 = (int *)FUN_007693a0();
    if (piVar8 != (int *)0x0) {
      (**(code **)(*piVar8 + 0x1c))(0x82a66cc,0,0,0);
    }
  }
  return;
}

