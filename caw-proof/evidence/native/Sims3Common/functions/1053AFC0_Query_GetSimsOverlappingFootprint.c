/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Query_GetSimsOverlappingFootprint. Export
   ordinal(s): 537. Entry VA: 0x1053afc0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000011. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
Query_GetSimsOverlappingFootprint
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,int param_4,float param_5)

{
  float *pfVar1;
  undefined1 auVar2 [16];
  char cVar3;
  int iVar4;
  void *pvVar5;
  void *this;
  float *pfVar6;
  int *piVar8;
  int *piVar9;
  float *pfVar10;
  float fVar11;
  float fVar14;
  float fVar15;
  float fVar16;
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  float fVar17;
  float fVar18;
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  char local_149;
  int *local_148;
  void *local_144;
  float local_140;
  float fStack_13c;
  float fStack_138;
  float fStack_134;
  float local_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  int local_120;
  int local_11c;
  undefined4 local_118;
  char *local_114;
  undefined1 local_110 [4];
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float *local_100;
  float *local_fc;
  undefined4 local_f8;
  char *local_f4;
  undefined1 local_f0 [8];
  float fStack_e8;
  float fStack_e4;
  int *local_e0;
  int *local_dc;
  undefined4 local_d8;
  char *local_d4;
  uint local_d0;
  int local_cc [6];
  char *local_b4;
  undefined4 local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  char *local_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
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
  undefined4 local_40 [8];
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  undefined4 uVar7;
  
                    /* 0x53afc0  537  Query_GetSimsOverlappingFootprint */
  iVar4 = FUN_1072a1a0();
  local_cc[0] = iVar4;
  local_144 = (void *)FUN_1047dd40();
  if (((iVar4 != 0) && (local_144 != (void *)0x0)) &&
     (pvVar5 = (void *)FUN_1072abb0(iVar4), pvVar5 != (void *)0x0)) {
    this = (void *)FUN_10726da0(pvVar5,DAT_10c8d7e8);
    local_148 = (int *)FUN_10726da0(pvVar5,DAT_10c8d998);
    iVar4 = FUN_10726da0(pvVar5,DAT_10c70408);
    if (((this != (void *)0x0) && (local_148 != (void *)0x0)) && (iVar4 != 0)) {
      FUN_1074a190(local_148,&local_a0);
      local_100 = (float *)0x0;
      local_fc = (float *)0x0;
      local_f8 = 0;
      local_f4 = "Scripting/QueryHost/FootprintPolygons";
      FUN_10739770(this,param_4,&local_100,&local_149);
      pfVar6 = local_fc;
      local_d0 = (int)local_149 +
                 (-(uint)(*(uint *)(iVar4 + 0x18) != 0x7fffffff) & *(uint *)(iVar4 + 0x18));
      local_f0._4_4_ = DAT_10b1b514;
      local_f0._0_4_ = DAT_10b1b514;
      fStack_e8 = (float)DAT_10b1b514;
      fStack_e4 = (float)DAT_10b1b514;
      fStack_134 = DAT_10b1b510;
      fStack_138 = DAT_10b1b510;
      fStack_13c = DAT_10b1b510;
      local_140 = DAT_10b1b510;
      fStack_10c = DAT_10b1b510;
      local_110 = (undefined1  [4])DAT_10b1b510;
      fStack_108 = DAT_10b1b510;
      fStack_104 = DAT_10b1b510;
      local_120 = 0;
      local_11c = 0;
      local_118 = 0;
      local_114 = "Scripting/QueryHost/ClipPolygons";
      FUN_101474e0(&local_120,(int)local_fc - (int)local_100 >> 6);
      if (local_100 != pfVar6) {
        pfVar10 = local_100 + 8;
        do {
          if (pfVar10[4] != pfVar10[5]) {
            local_140 = *pfVar10;
            fStack_13c = pfVar10[1];
            auVar20._8_4_ = local_140;
            auVar20._0_8_ = *(undefined8 *)pfVar10;
            auVar20._12_4_ = local_140;
            _local_f0 = minps(_local_f0,auVar20);
            local_130 = pfVar10[2];
            fStack_12c = pfVar10[3];
            auVar2._8_4_ = local_130;
            auVar2._0_8_ = *(undefined8 *)(pfVar10 + 2);
            auVar2._12_4_ = local_130;
            _local_110 = maxps(_local_110,auVar2);
            fStack_138 = local_140;
            fStack_134 = local_140;
            fStack_128 = local_130;
            fStack_124 = local_130;
            FUN_1053af50(&local_120);
            FUN_100817c0((void *)(local_11c + -0x10),(int *)(pfVar10 + 4));
          }
          pfVar1 = pfVar10 + 8;
          pfVar10 = pfVar10 + 0x10;
        } while (pfVar1 != pfVar6);
      }
      if (local_120 != local_11c) {
        local_130 = ((float)local_110 + (float)local_f0._0_4_) * _DAT_10b310ec;
        fStack_128 = (fStack_10c + (float)local_f0._4_4_) * _DAT_10b310ec;
        fVar17 = ((float)local_110 - (float)local_f0._0_4_) * _DAT_10b310ec;
        fVar18 = (fStack_10c - (float)local_f0._4_4_) * _DAT_10b310ec;
        fStack_12c = 0.0;
        fVar11 = (fStack_128 * fStack_9c - fStack_98 * 0.0) + fStack_94 * local_130;
        fVar14 = (local_130 * fStack_98 - fStack_128 * local_a0) + fStack_94 * 0.0;
        fVar15 = (local_a0 * 0.0 - local_130 * fStack_9c) + fStack_94 * fStack_128;
        auVar19._4_4_ = _DAT_10aadffc;
        auVar19._0_4_ = _DAT_10aadffc;
        auVar19._8_4_ = _DAT_10aadffc;
        auVar19._12_4_ = _DAT_10aadffc;
        fVar17 = fVar17 * fVar17;
        fVar18 = fVar18 * fVar18;
        local_70 = (fVar15 * fStack_9c - fVar14 * fStack_98) * _DAT_10aadffc + local_130 + local_90;
        fStack_6c = (fVar11 * fStack_98 - fVar15 * local_a0) * _DAT_10aadffc + 0.0 + fStack_8c;
        fStack_68 = (fVar14 * local_a0 - fVar11 * fStack_9c) * _DAT_10aadffc + fStack_128 +
                    fStack_88;
        fStack_64 = (fVar11 * local_a0 - fVar11 * local_a0) * _DAT_10aadffc + local_130 + fStack_84;
        auVar12._0_4_ = fVar18 + fVar17;
        auVar12._4_4_ = fVar18 + fVar17;
        auVar12._8_4_ = fVar18 + fVar17;
        auVar12._12_4_ = fVar18 + fVar17;
        _local_110 = sqrtps(auVar12,auVar12);
        local_e0 = (int *)0x0;
        local_dc = (int *)0x0;
        local_d8 = 0;
        local_d4 = "Physics/RangeResult";
        fStack_124 = local_130;
        _local_f0 = auVar19;
        FUN_1047df10(local_144,&local_70,(float)local_110,6,(int *)&local_e0,'\0');
        local_148 = local_dc;
        local_cc[3] = 0;
        local_cc[4] = 0;
        local_cc[5] = 0;
        local_b4 = "Physics/PolygonProcessor";
        local_b0 = 0;
        auVar13._0_4_ =
             fStack_94 * fStack_94 + fStack_9c * fStack_9c +
             fStack_98 * fStack_98 + local_a0 * local_a0;
        auVar13._4_4_ = auVar13._0_4_;
        auVar13._8_4_ = auVar13._0_4_;
        auVar13._12_4_ = auVar13._0_4_;
        auVar20 = rcpps(auVar19,auVar13);
        fVar11 = ((float)local_f0._0_4_ - auVar20._0_4_ * auVar13._0_4_) * auVar20._0_4_;
        fVar14 = ((float)local_f0._4_4_ - auVar20._4_4_ * auVar13._0_4_) * auVar20._4_4_;
        fVar15 = (fStack_e8 - auVar20._8_4_ * auVar13._0_4_) * auVar20._8_4_;
        fVar17 = (fStack_e4 - auVar20._12_4_ * auVar13._0_4_) * auVar20._12_4_;
        local_144 = (void *)0x80000000;
        fStack_12c = ((float)local_f0._0_4_ - fVar11 * auVar13._0_4_) * fVar11 * -local_a0;
        fStack_128 = ((float)local_f0._4_4_ - fVar14 * auVar13._0_4_) * fVar14 * -fStack_9c;
        local_130 = (fStack_e8 - fVar15 * auVar13._0_4_) * fVar15 * -fStack_98;
        local_80 = (fStack_e4 - fVar17 * auVar13._0_4_) * fVar17 * fStack_94;
        fVar11 = (fStack_88 * fStack_128 - fStack_8c * local_130) + local_90 * local_80;
        fVar14 = (local_90 * local_130 - fStack_88 * fStack_12c) + fStack_8c * local_80;
        fVar15 = (fStack_8c * fStack_12c - local_90 * fStack_128) + fStack_88 * local_80;
        local_20 = 0.0 - ((fVar15 * fStack_128 - fVar14 * local_130) * (float)local_f0._0_4_ +
                         local_90);
        fStack_1c = 0.0 - ((fVar11 * local_130 - fVar15 * fStack_12c) * (float)local_f0._4_4_ +
                          fStack_8c);
        fStack_18 = 0.0 - ((fVar14 * fStack_12c - fVar11 * fStack_128) * fStack_e8 + fStack_88);
        fStack_14 = 0.0 - ((fVar11 * fStack_12c - fVar11 * fStack_12c) * fStack_e4 + fStack_84);
        local_ac = 0;
        local_a8 = 0;
        local_a4 = "Physics/PolygonProcessor";
        fStack_10c = local_130;
        local_110 = (undefined1  [4])fStack_128;
        fStack_108 = fStack_12c;
        fStack_104 = fStack_12c;
        piVar9 = local_e0;
        fStack_124 = fStack_12c;
        fStack_7c = local_80;
        fStack_78 = local_80;
        fStack_74 = local_80;
        if (local_e0 != local_dc) {
          do {
            pvVar5 = (void *)FUN_1072abb0(local_cc[0]);
            if (pvVar5 == (void *)0x0) {
LAB_1053b5cf:
              *piVar9 = local_148[-2];
              piVar9[1] = local_148[-1];
              local_148 = local_148 + -2;
            }
            else {
              local_144 = (void *)FUN_10726da0(pvVar5,DAT_10c8d998);
              iVar4 = FUN_10726da0(pvVar5,DAT_10c70408);
              if (((local_144 == (void *)0x0) || (iVar4 == 0)) ||
                 ((-(uint)(*(uint *)(iVar4 + 0x18) != 0x7fffffff) & *(uint *)(iVar4 + 0x18)) !=
                  local_d0)) goto LAB_1053b5cf;
              pfVar6 = (float *)FUN_1074a2b0(local_144,local_40);
              fVar11 = *pfVar6;
              fVar14 = pfVar6[1];
              fVar15 = pfVar6[2];
              fVar17 = (fVar15 * (float)local_110 - fVar14 * local_130) + fVar11 * local_80;
              fVar18 = (fVar11 * fStack_10c - fVar15 * fStack_12c) + fVar14 * fStack_7c;
              fVar16 = (fVar14 * fStack_108 - fVar11 * fStack_128) + fVar15 * fStack_78;
              local_140 = (fVar16 * (float)local_110 - fVar18 * local_130) * (float)local_f0._0_4_ +
                          fVar11 + local_20;
              fStack_5c = (fVar17 * fStack_10c - fVar16 * fStack_12c) * (float)local_f0._4_4_ +
                          fVar14 + fStack_1c;
              fStack_13c = (fVar18 * fStack_108 - fVar17 * fStack_128) * fStack_e8 + fVar15 +
                           fStack_18;
              fStack_54 = (fVar17 * fStack_104 - fVar17 * fStack_124) * fStack_e4 + pfVar6[3] +
                          fStack_14;
              local_60 = local_140;
              fStack_58 = fStack_13c;
              local_50 = local_140;
              fStack_4c = fStack_5c;
              fStack_48 = fStack_13c;
              fStack_44 = fStack_54;
              if (0.0 < param_5) {
                uVar7 = FUN_10472790(&local_120,&local_140,param_5);
                cVar3 = (char)uVar7;
              }
              else {
                uVar7 = FUN_1046ea20(&local_120,&local_140);
                cVar3 = (char)uVar7;
              }
              if (cVar3 == '\0') goto LAB_1053b5cf;
              piVar9 = piVar9 + 2;
            }
          } while (piVar9 != local_148);
        }
        piVar9 = local_148;
        piVar8 = (int *)FUN_1055b120();
        iVar4 = (int)piVar9 - (int)local_e0 >> 3;
        local_cc[1] = 0;
        local_cc[2] = 0;
        piVar9 = local_e0;
        if (iVar4 == 0) {
          piVar9 = local_cc + 1;
        }
        uVar7 = (**(code **)(*piVar8 + 0xc0))(param_1,piVar9,iVar4);
        FUN_1058c3a0(local_cc);
        if (local_f0._4_4_ != 0) {
          FUN_10918e90(local_f0._4_4_);
        }
        FUN_100a46e0((int *)&fStack_12c);
        FUN_1053a860((uint *)(local_110 + 4));
        return uVar7;
      }
      FUN_100a46e0(&local_120);
      FUN_1053a860((uint *)&local_100);
    }
  }
  return 0;
}

