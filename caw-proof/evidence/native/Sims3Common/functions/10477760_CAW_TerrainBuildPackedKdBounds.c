/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Initializes face offsets 0,3,6 in original triangle order,
   appends a root node and invokes 0x104766F0 with integer bounds
   [-32768,-32768,-32768,32767,32767,32767] stored at 0x10B0B6C0. Empty input produces one zero
   node. Later computes packed vertex bounds and scaled shape bounds; those bound calculations are
   separate from recursive partition and face ordering. Builds the original KD node/ordered-face
   vectors and measures signed packed vertex triples. Converts min/max to world coordinates using
   axis scales; box centre=(max+min)*.5 and span=max-min. Box half extents are span*.5+max(span*.01,
   length(span)*.0001), with binary32 SIMD and squared-length sum Z+Y+X. Stored signed16 min/max and
   padded box are distinct data. Analyst-assigned helper names are not recovered original symbols.
   Original instructions govern decompiler ABI/register artifacts. */

void __thiscall CAW_TerrainBuildPackedKdBounds(void *this,int param_1,uint param_2)

{
  undefined4 *puVar1;
  undefined1 auVar2 [16];
  float fVar3;
  float fVar4;
  int iVar5;
  short *psVar6;
  uint *puVar7;
  int iVar8;
  int *piVar9;
  int iVar10;
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  float fVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  float fVar27;
  float fVar28;
  float fVar29;
  float fVar30;
  float fVar31;
  float fVar32;
  int local_4c;
  int local_48;
  int local_44;
  uint local_40;
  int local_3c;
  int local_38;
  int local_34;
  undefined1 local_30 [16];
  CAWAnalysisFaceVector local_20;
  
  *(undefined4 *)((int)this + 0xa4) = *(undefined4 *)((int)this + 0xa0);
  if (param_2 != 0) {
    local_20.begin = (int *)0x0;
    local_20.end = (int *)0x0;
    local_20.capacity = (int *)0x0;
    local_20.allocationTag = "Physics/KDTreeShape";
    FUN_1090a550(&local_20,param_2 / 3);
    local_40 = 0;
    if (param_2 != 0) {
      do {
        if (local_20.end < local_20.capacity) {
          puVar7 = (uint *)(local_20.end + 1);
          if ((uint *)local_20.end != (uint *)0x0) {
            *local_20.end = local_40;
          }
        }
        else {
          FUN_105ee480(&local_20,local_20.end,&local_40);
          puVar7 = (uint *)local_20.end;
        }
        local_20.end = (int *)puVar7;
        local_40 = local_40 + 3;
      } while (local_40 < param_2);
    }
    puVar1 = *(undefined4 **)((int)this + 0x80);
    *(undefined4 **)((int)this + 0x84) = puVar1;
    if (puVar1 < *(undefined4 **)((int)this + 0x88)) {
      *(undefined4 **)((int)this + 0x84) = puVar1 + 2;
      if (puVar1 != (undefined4 *)0x0) {
        *puVar1 = 0;
        puVar1[1] = 0;
      }
    }
    else {
      auVar16._8_8_ = 0;
      auVar16._0_8_ = local_30._8_8_;
      local_30 = auVar16 << 0x40;
      FUN_101f5b70((int *)((int)this + 0x80),puVar1,(undefined4 *)local_30);
    }
    CAW_BuildTerrainKdPartition
              (this,(*(int *)((int)this + 0x84) - *(int *)((int)this + 0x80) >> 3) - 1,
               (ushort *)param_1,&local_20,0,(int *)&DAT_10b0b6c0);
    psVar6 = *(short **)((int)this + 0x90);
    iVar8 = 0x7fffffff;
    iVar5 = *(int *)((int)this + 0x94) - (int)psVar6 >> 1;
    iVar10 = -0x80000000;
    local_4c = 0x7fffffff;
    local_40 = 0x7fffffff;
    local_3c = 0x7fffffff;
    local_48 = -0x80000000;
    local_44 = -0x80000000;
    local_38 = -0x80000000;
    if (iVar5 != 0) {
      local_34 = (iVar5 - 1U) / 3 + 1;
      do {
        iVar5 = (int)*psVar6;
        local_30._0_4_ = iVar5;
        piVar9 = (int *)local_30;
        if (local_4c <= iVar5) {
          piVar9 = &local_4c;
        }
        local_4c = *piVar9;
        piVar9 = (int *)local_30;
        if (iVar5 <= local_48) {
          piVar9 = &local_48;
        }
        local_48 = *piVar9;
        local_30._0_4_ = SEXT24(psVar6[1]);
        puVar7 = (uint *)local_30;
        if ((int)local_40 <= (int)local_30._0_4_) {
          puVar7 = &local_40;
        }
        local_40 = *puVar7;
        piVar9 = (int *)local_30;
        if ((int)local_30._0_4_ <= local_44) {
          piVar9 = &local_44;
        }
        local_44 = *piVar9;
        local_30._0_4_ = SEXT24(psVar6[2]);
        piVar9 = (int *)local_30;
        if (iVar8 <= (int)local_30._0_4_) {
          piVar9 = &local_3c;
        }
        iVar8 = *piVar9;
        local_3c = iVar8;
        piVar9 = (int *)local_30;
        if ((int)local_30._0_4_ <= iVar10) {
          piVar9 = &local_38;
        }
        iVar10 = *piVar9;
        psVar6 = psVar6 + 3;
        local_34 = local_34 + -1;
        local_38 = iVar10;
      } while (local_34 != 0);
    }
    fVar21 = (float)local_4c * *(float *)((int)this + 0x60);
    fVar22 = (float)(int)local_40 * *(float *)((int)this + 100);
    fVar23 = (float)local_3c * *(float *)((int)this + 0x68);
    fVar24 = (float)local_4c * *(float *)((int)this + 0x6c);
    *(undefined2 *)((int)this + 0x50) = (undefined2)local_4c;
    fVar4 = _DAT_10b310ec;
    fVar25 = (float)local_48 * *(float *)((int)this + 0x60);
    fVar26 = (float)local_44 * *(float *)((int)this + 100);
    fVar27 = (float)local_38 * *(float *)((int)this + 0x68);
    fVar28 = (float)local_48 * *(float *)((int)this + 0x6c);
    *(short *)((int)this + 0x52) = (short)local_40;
    fVar29 = fVar25 - fVar21;
    fVar30 = fVar26 - fVar22;
    fVar31 = fVar27 - fVar23;
    fVar32 = fVar28 - fVar24;
    *(short *)((int)this + 0x54) = (short)local_3c;
    *(undefined2 *)((int)this + 0x56) = (undefined2)local_48;
    *(short *)((int)this + 0x58) = (short)local_44;
    *(short *)((int)this + 0x5a) = (short)local_38;
    *(float *)((int)this + 0x30) = (fVar25 + fVar21) * fVar4;
    *(float *)((int)this + 0x34) = (fVar26 + fVar22) * fVar4;
    *(float *)((int)this + 0x38) = (fVar27 + fVar23) * fVar4;
    *(float *)((int)this + 0x3c) = (fVar28 + fVar24) * fVar4;
    fVar3 = DAT_10aae184;
    auVar15._0_4_ = fVar29 * fVar29;
    auVar15._4_4_ = fVar30 * fVar30;
    auVar15._8_4_ = fVar31 * fVar31;
    auVar15._12_4_ = fVar32 * fVar32;
    auVar11._0_4_ = auVar15._8_4_ + auVar15._4_4_ + auVar15._0_4_;
    auVar11._4_4_ = auVar11._0_4_;
    auVar11._8_4_ = auVar11._0_4_;
    auVar11._12_4_ = auVar11._0_4_;
    auVar16 = sqrtps(auVar15,auVar11);
    auVar17._0_4_ = auVar16._0_4_ * DAT_10abf094;
    auVar17._4_4_ = auVar16._4_4_ * DAT_10abf094;
    auVar17._8_4_ = auVar16._8_4_ * DAT_10abf094;
    auVar17._12_4_ = auVar16._12_4_ * DAT_10abf094;
    auVar12._0_4_ = DAT_10acf464 * fVar29;
    auVar12._4_4_ = DAT_10acf464 * fVar30;
    auVar12._8_4_ = DAT_10acf464 * fVar31;
    auVar12._12_4_ = DAT_10acf464 * fVar32;
    auVar16 = maxps(auVar12,auVar17);
    *(float *)((int)this + 0x40) = auVar16._0_4_ + fVar4 * fVar29;
    *(float *)((int)this + 0x44) = auVar16._4_4_ + fVar4 * fVar30;
    *(float *)((int)this + 0x48) = auVar16._8_4_ + fVar4 * fVar31;
    *(float *)((int)this + 0x4c) = auVar16._12_4_ + fVar4 * fVar32;
    auVar18._0_4_ = fVar3 * fVar21;
    auVar18._4_4_ = fVar3 * fVar22;
    auVar18._8_4_ = fVar3 * fVar23;
    auVar18._12_4_ = fVar3 * fVar24;
    auVar19._4_4_ = fVar22;
    auVar19._0_4_ = fVar21;
    auVar19._8_4_ = fVar23;
    auVar19._12_4_ = fVar24;
    auVar19 = maxps(auVar18,auVar19);
    auVar13._0_4_ = fVar3 * fVar25;
    auVar13._4_4_ = fVar3 * fVar26;
    auVar13._8_4_ = fVar3 * fVar27;
    auVar13._12_4_ = fVar3 * fVar28;
    auVar2._4_4_ = fVar26;
    auVar2._0_4_ = fVar25;
    auVar2._8_4_ = fVar27;
    auVar2._12_4_ = fVar28;
    auVar16 = maxps(auVar13,auVar2);
    auVar16 = maxps(auVar16,auVar19);
    auVar14._0_4_ = auVar16._0_4_ * auVar16._0_4_;
    auVar14._4_4_ = auVar16._4_4_ * auVar16._4_4_;
    auVar14._8_4_ = auVar16._8_4_ * auVar16._8_4_;
    auVar14._12_4_ = auVar16._12_4_ * auVar16._12_4_;
    auVar20._0_4_ = auVar14._8_4_ + auVar14._4_4_ + auVar14._0_4_;
    auVar20._4_4_ = auVar20._0_4_;
    auVar20._8_4_ = auVar20._0_4_;
    auVar20._12_4_ = auVar20._0_4_;
    local_30 = sqrtps(auVar14,auVar20);
    *(undefined4 *)((int)this + 0x28) = local_30._0_4_;
    if (local_20.begin != (int *)0x0) {
      FUN_10918e90((int)local_20.begin);
    }
    return;
  }
  piVar9 = (int *)((int)this + 0x80);
  FUN_101f60c0(piVar9,1);
  *(undefined4 *)*piVar9 = 0;
  *(undefined4 *)(*piVar9 + 4) = 0;
  return;
}

