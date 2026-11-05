/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 lot spatial resource / main-entrance boundary review (2026-10-17). ECX lot/display owner,
   plainRET. Concrete strings lotEntranceArrow/lotEntranceLine and retained effect
   references+428/+42C identify display work. Global-enable gate, interface/manager,006321C0
   then00631F40. Failure clears/releases both retained effects; success transforms returned point
   and updates effect state through existing child calls. Child render/effect lifetimes are
   separate; display success is not proof of routing reachability, visitor/greeting policy or
   current script-target cache equivalence. Complete actual C/Listing and pristine PE support the
   selected observations. Names/IDs/prototypes/types/body/bytes/Listing/flow/analysis otherwise
   remain unchanged; current managed resource/cache policy is preserved. */

void __fastcall LotMainEntrance_UpdateDisplayEffects(void *param_1)

{
  int *piVar1;
  undefined1 auVar2 [16];
  byte bVar3;
  int iVar4;
  void *pvVar5;
  uint uVar6;
  undefined4 uVar7;
  float *pfVar8;
  undefined4 *puVar9;
  float10 fVar10;
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  float fVar13;
  float fVar14;
  void *local_154;
  undefined4 local_150;
  float fStack_14c;
  undefined4 uStack_148;
  undefined4 uStack_144;
  float local_13c;
  float local_138;
  void *local_134;
  undefined1 local_130 [8];
  float fStack_128;
  float fStack_124;
  float local_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  float local_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float fStack_fc;
  float fStack_f8;
  undefined4 uStack_f4;
  float local_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  float local_e0;
  float fStack_dc;
  float fStack_d8;
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  undefined4 local_c0;
  float local_b0;
  float afStack_a0 [4];
  undefined4 local_90 [4];
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
  uint local_50 [19];
  
  if (DAT_011ec49b == '\0') {
    puVar9 = *(undefined4 **)((int)param_1 + 0x428);
    if (puVar9 != (undefined4 *)0x0) {
      *(undefined4 *)((int)param_1 + 0x428) = 0;
      iVar4 = puVar9[1];
      puVar9[1] = iVar4 + -1;
      if (iVar4 + -1 == 0) {
        puVar9[1] = 1;
        (**(code **)*puVar9)(1);
      }
    }
    puVar9 = *(undefined4 **)((int)param_1 + 0x42c);
    if (puVar9 == (undefined4 *)0x0) {
      return;
    }
    *(undefined4 *)((int)param_1 + 0x42c) = 0;
    iVar4 = puVar9[1];
LAB_00abb185:
    puVar9[1] = iVar4 + -1;
    if (iVar4 + -1 == 0) {
      puVar9[1] = 1;
      (**(code **)*puVar9)(1);
    }
    return;
  }
  iVar4 = thunk_FUN_00835d40();
  if ((((iVar4 == 0) || (pvVar5 = (void *)FUN_008295c0(iVar4), pvVar5 == (void *)0x0)) ||
      (uVar6 = FUN_006321c0(pvVar5,*(uint *)((int)param_1 + 0x48),*(uint *)((int)param_1 + 0x4c)),
      (char)uVar6 == '\0')) ||
     (uVar7 = LotRouting_GetMainEntranceWorldPosition
                        (pvVar5,*(int **)((int)param_1 + 0x48),*(uint *)((int)param_1 + 0x4c),
                         &local_e0), (char)uVar7 == '\0')) {
    puVar9 = *(undefined4 **)((int)param_1 + 0x428);
    if (puVar9 != (undefined4 *)0x0) {
      *(undefined4 *)((int)param_1 + 0x428) = 0;
      iVar4 = puVar9[1];
      puVar9[1] = iVar4 + -1;
      if (iVar4 + -1 == 0) {
        puVar9[1] = 1;
        (**(code **)*puVar9)(1);
      }
    }
    puVar9 = *(undefined4 **)((int)param_1 + 0x42c);
    if (puVar9 == (undefined4 *)0x0) {
      return;
    }
    *(undefined4 *)((int)param_1 + 0x42c) = 0;
    iVar4 = puVar9[1];
    goto LAB_00abb185;
  }
  piVar1 = (int *)((int)param_1 + 0x428);
  if ((*(int *)((int)param_1 + 0x428) != 0) &&
     (bVar3 = FUN_00cdb9a0(*(int *)((int)param_1 + 0x428)), bVar3 != 0)) {
    pfVar8 = (float *)FUN_00cdbae0((void *)*piVar1,local_90);
    auVar11._0_4_ =
         (pfVar8[2] - fStack_d8) * (pfVar8[2] - fStack_d8) +
         (pfVar8[1] - fStack_dc) * (pfVar8[1] - fStack_dc) +
         (*pfVar8 - local_e0) * (*pfVar8 - local_e0);
    auVar11._4_4_ = auVar11._0_4_;
    auVar11._8_4_ = auVar11._0_4_;
    auVar11._12_4_ = auVar11._0_4_;
    auVar11 = sqrtps(auVar11,auVar11);
    local_b0 = auVar11._0_4_;
    local_c0 = 0x3c23d70a;
    if (local_b0 <= 0.01) {
      return;
    }
  }
  fVar14 = 0.01;
  pfVar8 = (float *)FUN_00ab1610(param_1,local_50);
  fStack_108 = local_e0 * *pfVar8 + pfVar8[0xc] + fStack_dc * pfVar8[4] + fStack_d8 * pfVar8[8];
  fStack_5c = local_e0 * pfVar8[1] + pfVar8[0xd] + fStack_dc * pfVar8[5] + fStack_d8 * pfVar8[9];
  fStack_58 = local_e0 * pfVar8[2] + pfVar8[0xe] + fStack_dc * pfVar8[6] + fStack_d8 * pfVar8[10];
  fStack_54 = local_e0 * pfVar8[3] + pfVar8[0xf] + fStack_dc * pfVar8[7] + fStack_d8 * pfVar8[0xb];
  local_154 = (void *)ABS(fStack_108);
  local_120 = 0.0;
  fStack_118 = 0.0;
  fStack_114 = 0.0;
  local_13c = 1.0;
  local_110 = fStack_108;
  if (fVar14 <= (float)local_154) {
    fVar13 = (float)*(int *)((int)param_1 + 0x174);
    local_154 = (void *)ABS(fStack_58);
    fStack_10c = fStack_58;
    if (fVar14 <= (float)local_154) {
      local_154 = (void *)ABS(fStack_108 - fVar13);
      if ((float)local_154 < fVar14) {
        fVar13 = (float)*(int *)((int)param_1 + 0x178);
        fStack_10c = fVar13 * 0.5;
        local_120 = 1.0;
        fStack_118 = 0.0;
        fStack_114 = 1.0;
        goto LAB_00abae38;
      }
      local_154 = (void *)ABS(fStack_58 - (float)*(int *)((int)param_1 + 0x178));
      if (fVar14 <= (float)local_154) goto LAB_00abae50;
      fStack_118 = 1.0;
    }
    else {
      fStack_118 = -1.0;
    }
    fStack_114 = 0.0;
    local_120 = 0.0;
    local_110 = fVar13 * 0.5;
  }
  else {
    fVar13 = (float)*(int *)((int)param_1 + 0x178);
    local_120 = -1.0;
    fStack_118 = 0.0;
    fStack_114 = -1.0;
    fStack_10c = fVar13 * 0.5;
  }
LAB_00abae38:
  local_13c = fVar13 * 0.033333335;
LAB_00abae50:
  fStack_11c = 0.0;
  fVar10 = (float10)fpatan((float10)(0.0 - fStack_118),(float10)local_120);
  local_150 = 0;
  fStack_14c = 1.0;
  uStack_148 = 0;
  uStack_144 = 0;
  fVar14 = (float)fVar10;
  auVar12._4_4_ = fVar14;
  auVar12._0_4_ = fVar14;
  auVar12._8_4_ = fVar14;
  auVar12._12_4_ = fVar14;
  auVar2._8_4_ = 0x40000000;
  auVar2._0_8_ = 0x4000000040000000;
  auVar2._12_4_ = 0x40000000;
  _local_130 = divps(auVar12,auVar2);
  fVar10 = (float10)fsin((float10)(float)local_130._0_4_);
  fStack_64 = (float)fVar10;
  fVar10 = (float10)fcos((float10)(float)local_130._0_4_);
  local_f0 = fStack_64 * 0.0;
  fStack_ec = fStack_64 * 0.0;
  fStack_e8 = fStack_64 * 0.0;
  fStack_e4 = fStack_64 * 0.0;
  local_80 = fStack_64 * 1.0;
  fStack_cc = fStack_64 * 1.0;
  fStack_78 = fStack_64 * 1.0;
  fStack_74 = fStack_64 * 1.0;
  local_d0 = fStack_64 * 0.0;
  fStack_6c = fStack_64 * 0.0;
  fStack_68 = fStack_64 * 0.0;
  fStack_64 = fStack_64 * 0.0;
  local_138 = (float)fVar10;
  fStack_104 = fStack_108;
  fStack_c8 = fStack_e8;
  fStack_c4 = local_138;
  fStack_7c = fStack_cc;
  local_70 = local_d0;
  local_60 = fStack_108;
  pvVar5 = (void *)FUN_004e4500(0x40,"UserTool/UserToolEffect",0);
  if (pvVar5 == (void *)0x0) {
    pvVar5 = (void *)0x0;
  }
  else {
    pvVar5 = FUN_00cdc230(pvVar5,param_1,"lotEntranceArrow");
  }
  if (pvVar5 != (void *)0x0) {
    *(int *)((int)pvVar5 + 4) = *(int *)((int)pvVar5 + 4) + 1;
  }
  local_134 = pvVar5;
  if ((void *)*piVar1 != (void *)0x0) {
    if (pvVar5 != (void *)0x0) {
      FUN_00cdc460(pvVar5,(void *)*piVar1);
    }
    FUN_00cdb970((void *)*piVar1,1);
    puVar9 = (undefined4 *)*piVar1;
    if (puVar9 != (undefined4 *)0x0) {
      *piVar1 = 0;
      iVar4 = puVar9[1];
      puVar9[1] = iVar4 + -1;
      if (iVar4 + -1 == 0) {
        puVar9[1] = 1;
        (**(code **)*puVar9)(1);
      }
    }
  }
  FUN_00cdbcf0(pvVar5,&local_d0);
  FUN_00cdb9c0(pvVar5,&local_e0);
  FUN_00cdb910(pvVar5,1);
  FUN_00854d50(piVar1,(int *)&local_134);
  pvVar5 = (void *)FUN_004e4500(0x40,"UserTool/UserToolEffect",0);
  if (pvVar5 == (void *)0x0) {
    pvVar5 = (void *)0x0;
  }
  else {
    pvVar5 = FUN_00cdc230(pvVar5,param_1,"lotEntranceLine");
  }
  if (pvVar5 != (void *)0x0) {
    *(int *)((int)pvVar5 + 4) = *(int *)((int)pvVar5 + 4) + 1;
  }
  piVar1 = (int *)((int)param_1 + 0x42c);
  local_154 = pvVar5;
  if (*(void **)((int)param_1 + 0x42c) != (void *)0x0) {
    if (pvVar5 != (void *)0x0) {
      FUN_00cdc460(pvVar5,*(void **)((int)param_1 + 0x42c));
    }
    FUN_00cdb970((void *)*piVar1,1);
    puVar9 = (undefined4 *)*piVar1;
    if (puVar9 != (undefined4 *)0x0) {
      *piVar1 = 0;
      iVar4 = puVar9[1];
      puVar9[1] = iVar4 + -1;
      if (iVar4 + -1 == 0) {
        puVar9[1] = 1;
        (**(code **)*puVar9)(1);
      }
    }
  }
  fStack_f8 = fStack_10c + fStack_11c * -0.2;
  fStack_ec = fStack_10c + fStack_11c * -0.2;
  fStack_e8 = fStack_10c + fStack_11c * -0.2;
  fStack_e4 = fStack_10c + fStack_11c * -0.2;
  fStack_fc = local_110 + local_120 * -0.2;
  local_130._4_4_ = local_110 + local_120 * -0.2;
  local_130._0_4_ = fStack_fc;
  fStack_128 = local_110 + local_120 * -0.2;
  fStack_124 = local_110 + local_120 * -0.2;
  uStack_f4 = 0;
  local_f0 = fStack_f8;
  FUN_00adc750((int)param_1,&fStack_fc,afStack_a0);
  FUN_00cdbcf0(pvVar5,&local_d0);
  FUN_00cdb9e0(pvVar5,afStack_a0);
  FUN_00cdbb50(pvVar5,local_13c,1.0,0);
  FUN_00cdb910(pvVar5,1);
  FUN_00854d50(piVar1,(int *)&local_154);
  FUN_00565d20((int *)&local_154);
  FUN_00565d20((int *)&local_134);
  return;
}

