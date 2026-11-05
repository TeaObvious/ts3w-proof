/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original: ECX world, six stack words, RET 0x18; AL truth with unrelated high EAX
   unspecified. With terrain +0x54, both endpoint WorldSurface_QueryHeight results must be strictly
   above supplied plane. Traverses terrain collider windows and hit fractions, then queries
   subsequent points against the plane; absence of terrain owner returns true. The virtual collider
   operation remains the concrete collision-owner boundary. Decompiler ROUND expressions require
   inherited x87 conversion and residual sign-bit instructions for their coordinate meaning. */

uint __thiscall
WorldSurface_IsSegmentAbovePlane
          (void *this,float param_1,float param_2,float param_3,float param_4,float param_5,
          char param_6)

{
  void *this_00;
  undefined1 auVar1 [16];
  uint uVar2;
  uint extraout_EAX;
  uint extraout_EAX_00;
  int iVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint extraout_EAX_01;
  undefined4 extraout_EDX;
  undefined4 uVar9;
  int iVar10;
  int iVar11;
  float10 fVar12;
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  undefined1 auVar17 [16];
  undefined8 uVar18;
  undefined1 local_c0 [8];
  float fStack_b8;
  float fStack_b4;
  float local_b0;
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
  undefined4 uStack_70;
  float fStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  undefined1 local_40 [16];
  undefined4 uStack_30;
  float fStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  float fStack_20;
  
  this_00 = *(void **)((int)this + 0x54);
  uVar8 = 0;
  if (this_00 != (void *)0x0) {
    fVar12 = WorldSurface_QueryHeight
                       (this,param_2,param_3,0,'\x01',param_6,(undefined1 *)0x0,(undefined1 *)0x0,
                        '\0','\0');
    uVar8 = extraout_EAX;
    if ((fVar12 <= (float10)param_1) ||
       (fVar12 = WorldSurface_QueryHeight
                           (this,param_4,param_5,0,'\x01',param_6,(undefined1 *)0x0,
                            (undefined1 *)0x0,'\0','\0'), uVar8 = extraout_EAX_00,
       fVar12 <= (float10)param_1)) {
LAB_00c6c6a2:
      return uVar8 & 0xffffff00;
    }
    if ((param_4 != param_2) ||
       (uVar8 = (uint)CONCAT21((short)(extraout_EAX_00 >> 0x10),
                               (param_5 == param_3) << 6 | (NAN(param_5) || NAN(param_3)) << 2 | 2U
                               | param_5 < param_3) << 8, param_5 != param_3)) {
      iVar3 = (int)ROUND(param_2) + -1 +
              (uint)((uint)(param_2 - (float)(int)ROUND(param_2)) < 0x80000001);
      uVar4 = (int)ROUND(param_3) + -1 +
              (uint)((uint)(param_3 - (float)(int)ROUND(param_3)) < 0x80000001);
      iVar5 = (int)ROUND(param_4) + -1 +
              (uint)((uint)(param_4 - (float)(int)ROUND(param_4)) < 0x80000001);
      uVar6 = (int)ROUND(param_5) + -1 +
              (uint)((uint)(param_5 - (float)(int)ROUND(param_5)) < 0x80000001);
      iVar11 = iVar3;
      if (iVar5 < iVar3) {
        iVar11 = iVar5;
        iVar5 = iVar3;
      }
      uVar8 = uVar6;
      if ((int)uVar6 < (int)uVar4) {
        uVar8 = uVar4;
        uVar4 = uVar6;
      }
      if (iVar11 < iVar5 + 0x100) {
        uVar7 = uVar8 + 0x100;
        uVar6 = uVar7;
        uVar2 = uVar4;
        do {
          for (; uVar8 = uVar6, (int)uVar2 < (int)uVar7; uVar2 = uVar2 + 0x100) {
            iVar3 = FUN_00c28f80(this_00,iVar11,uVar2);
            uVar6 = 0;
            if (iVar3 != 0) {
              local_b0 = param_4 - param_2;
              fStack_a8 = param_5 - param_3;
              fStack_ac = 0.0;
              local_c0._0_4_ = param_2 - *(float *)(iVar3 + 0x20);
              local_c0._4_4_ = param_1 - *(float *)(iVar3 + 0x24);
              fStack_b8 = param_3 - *(float *)(iVar3 + 0x28);
              fStack_b4 = param_2 - *(float *)(iVar3 + 0x2c);
              iVar10 = 0;
              fStack_a4 = local_b0;
              while( true ) {
                uVar18 = (**(code **)(**(int **)(iVar3 + 0x38) + 0x10))(local_c0,local_40);
                uVar9 = (undefined4)((ulonglong)uVar18 >> 0x20);
                uVar6 = (uint)uVar18;
                if (((char)uVar18 == '\0') || (FLOAT_00f998f8 <= fStack_20)) break;
                uStack_70 = uStack_30;
                fStack_6c = fStack_2c;
                uStack_68 = uStack_28;
                uStack_64 = uStack_24;
                auVar15._0_4_ = FLOAT_00fab218 * fStack_2c;
                auVar15._4_4_ = FLOAT_00fab218 * fStack_2c;
                auVar15._8_4_ = FLOAT_00fab218 * fStack_2c;
                auVar15._12_4_ = FLOAT_00fab218 * fStack_2c;
                auVar16._4_4_ = fStack_2c;
                auVar16._0_4_ = fStack_2c;
                auVar16._8_4_ = fStack_2c;
                auVar16._12_4_ = fStack_2c;
                auVar16 = maxps(auVar15,auVar16);
                auVar17._4_4_ = -(uint)(auVar16._4_4_ <= DAT_01079744);
                auVar17._0_4_ = -(uint)(auVar16._0_4_ <= DAT_01079744);
                auVar17._8_4_ = -(uint)(auVar16._8_4_ <= DAT_01079744);
                auVar17._12_4_ = -(uint)(auVar16._12_4_ <= DAT_01079744);
                uVar8 = movmskps(uVar6,auVar17);
                fStack_80 = FLOAT_00fab218;
                fStack_7c = FLOAT_00fab218;
                fStack_78 = FLOAT_00fab218;
                fStack_74 = FLOAT_00fab218;
                fStack_90 = DAT_01079744;
                fStack_8c = DAT_01079744;
                fStack_88 = DAT_01079744;
                fStack_84 = DAT_01079744;
                if ((uVar8 == 0xf) && (iVar10 == 0)) {
                  uVar8 = 1;
                }
                else {
                  uVar8 = uVar8 & 0xffffff00;
                }
                fStack_94 = fStack_20 + FLOAT_00fb35b4;
                fStack_a0 = fStack_94 * local_b0;
                fStack_9c = fStack_94 * fStack_ac;
                fStack_98 = fStack_94 * fStack_a8;
                fStack_94 = fStack_94 * fStack_a4;
                if ((char)uVar8 == '\0') {
                  fStack_60 = fStack_a0 + (float)local_c0._0_4_ + *(float *)(iVar3 + 0x20);
                  fStack_5c = fStack_9c + (float)local_c0._4_4_ + *(float *)(iVar3 + 0x24);
                  fStack_58 = fStack_98 + fStack_b8 + *(float *)(iVar3 + 0x28);
                  fStack_54 = fStack_94 + fStack_b4 + *(float *)(iVar3 + 0x2c);
                  fStack_50 = fStack_60;
                  fStack_4c = fStack_5c;
                  fStack_48 = fStack_58;
                  fStack_44 = fStack_54;
                  fVar12 = WorldSurface_QueryHeight
                                     (this,fStack_60,fStack_58,0,'\x01',param_6,(undefined1 *)0x0,
                                      (undefined1 *)0x0,'\0','\0');
                  uVar8 = extraout_EAX_01;
                  uVar9 = extraout_EDX;
                  if (fVar12 <= (float10)param_1) goto LAB_00c6c6a2;
                }
                else {
                  iVar10 = iVar10 + 1;
                }
                local_b0 = local_b0 - fStack_a0;
                fStack_ac = fStack_ac - fStack_9c;
                fStack_a8 = fStack_a8 - fStack_98;
                fStack_a4 = fStack_a4 - fStack_94;
                auVar13._0_4_ = fStack_80 * local_b0;
                auVar13._4_4_ = fStack_7c * fStack_ac;
                auVar13._8_4_ = fStack_78 * fStack_a8;
                auVar13._12_4_ = fStack_74 * fStack_a4;
                auVar1._4_4_ = fStack_ac;
                auVar1._0_4_ = local_b0;
                auVar1._8_4_ = fStack_a8;
                auVar1._12_4_ = fStack_a4;
                auVar16 = maxps(auVar13,auVar1);
                auVar14._4_4_ = -(uint)(auVar16._4_4_ <= fStack_8c);
                auVar14._0_4_ = -(uint)(auVar16._0_4_ <= fStack_90);
                auVar14._8_4_ = -(uint)(auVar16._8_4_ <= fStack_88);
                auVar14._12_4_ = -(uint)(auVar16._12_4_ <= fStack_84);
                uVar9 = movmskps(uVar9,auVar14);
                local_c0._4_4_ = fStack_9c + (float)local_c0._4_4_;
                local_c0._0_4_ = fStack_a0 + (float)local_c0._0_4_;
                fStack_b8 = fStack_98 + fStack_b8;
                fStack_b4 = fStack_94 + fStack_b4;
                if (((byte)uVar9 & 7) == 7) goto LAB_00c6c9c3;
              }
            }
          }
          iVar11 = iVar11 + 0x100;
          uVar6 = uVar7;
          uVar2 = uVar4;
        } while (iVar11 < iVar5 + 0x100);
      }
    }
  }
LAB_00c6c9c3:
  return CONCAT31((int3)(uVar8 >> 8),1);
}

