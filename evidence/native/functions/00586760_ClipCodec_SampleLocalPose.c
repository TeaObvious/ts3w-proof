/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst name. Original cdecl five stack arguments; only AL=1 is defined at return. Obtains pose
   local-SQT array via00574290, stride0x30: translation+0, quaternion+0x10, scale+0x20. Optional int
   array maps channel ordinal to signed bone index; otherwise00575C80 resolves target hash; negative
   index skips. Header+0x10 frame interval: DIVSS forms binary32 reciprocal, x87 computes
   reciprocal*clipSeconds, OR controlword0xC00/FISTP truncates to int64 then lowDWORD used as
   unsigned frame; signed-to-unsigned conversion adds2^32 for highbit. DC C9 at005867C2 means FMUL
   ST(1),ST(0), not an operandless mathematical shortcut. No integer rounding of reciprocal
   frequency, duration modulo or frameCount clamp here. Fraction finite path clamps to[0,1].
   Header+0x20/+0x24 relative offsets use-1 sentinel, channel stride20,count+0x18. Motion
   hash2AF0A8AE skipped; subtarget7 updates scalar via00574F20;1/3 interpolate translation/scale,2
   quaternion. Both quaternion endpoints componentwise |lane|<=2^-16 causes only both W lanes to
   become1. Hemisphere uses strict dot>0; zero takes negated interpolation. RSQRTPS followed by TWO
   refinement steps; no slerp. mirror lowbyte invokes00584470 after sampling. Original
   nonfinite/malformed-input runtime acceptance remains unexecuted; decompiler full-EAX return and
   vector temporaries are artifacts. */

bool __cdecl
ClipCodec_SampleLocalPose
          (byte *codecBase,void *pose,float clipSeconds,int *boneIndexByChannel,bool mirror)

{
  float *pfVar1;
  char cVar2;
  undefined1 auVar3 [16];
  undefined1 auVar4 [12];
  uint frame0;
  int iVar5;
  uint uVar6;
  int iVar7;
  undefined4 extraout_ECX;
  int iVar8;
  undefined4 extraout_EDX;
  byte *pbVar9;
  uint *puVar10;
  float fVar13;
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float fVar24;
  float fVar25;
  undefined1 auVar23 [16];
  float fVar26;
  float fVar27;
  float fVar28;
  float fVar29;
  undefined1 auVar30 [16];
  undefined1 auVar31 [16];
  undefined1 auVar32 [16];
  undefined1 auVar33 [16];
  uint local_e4;
  byte *local_e0;
  longlong local_d0;
  float local_c4;
  float local_c0;
  float local_bc;
  float local_b8;
  float local_b4;
  float local_b0;
  float local_ac;
  float local_a8;
  int local_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
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
  float fStack_38;
  float fStack_34;
  undefined1 local_30 [16];
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  iVar5 = FUN_00574290((int)pose);
  local_a4 = *(int *)((int)pose + 0x30);
  fVar20 = DAT_00f998f8 / *(float *)(codecBase + 0x10);
  local_d0 = (longlong)ROUND(fVar20 * clipSeconds);
  frame0 = (uint)local_d0;
  fVar13 = (float)(int)(uint)local_d0;
  if ((int)(uint)local_d0 < 0) {
    fVar13 = fVar13 + _DAT_00f99948;
  }
  fVar20 = (clipSeconds - fVar13 * *(float *)(codecBase + 0x10)) * fVar20;
  fVar20 = (float)((uint)fVar20 & (int)-fVar20 >> 0x1f);
  uVar6 = (int)(DAT_00f998f8 - fVar20) >> 0x1f;
  fVar20 = (float)(~uVar6 & (uint)fVar20 | (uint)DAT_00f998f8 & uVar6);
  if (*(int *)(codecBase + 0x20) == -1) {
    pbVar9 = (byte *)0x0;
  }
  else {
    pbVar9 = codecBase + *(int *)(codecBase + 0x20);
  }
  if (*(int *)(codecBase + 0x24) == -1) {
    local_e0 = (byte *)0x0;
  }
  else {
    local_e0 = codecBase + *(int *)(codecBase + 0x24);
  }
  local_e4 = 0;
  if (*(int *)(codecBase + 0x18) != 0) {
    puVar10 = (uint *)(pbVar9 + 4);
    do {
      if (*puVar10 != 0x2af0a8ae) {
        if (*(char *)((int)puVar10 + 0xf) == '\a') {
          local_d0 = CONCAT44(local_d0._4_4_,local_e0);
          ClipCodec_DecodeEndpointPair
                    (codecBase,(byte *)(puVar10 + -1),frame0,frame0 + 1,&local_b4,&local_c4,
                     (uint *)&local_d0);
          FUN_00574f20(pose,*puVar10,(local_c4 - local_b4) * fVar20 + local_b4);
        }
        else {
          if (boneIndexByChannel == (int *)0x0) {
            iVar7 = FUN_00575c80(local_a4 + 0x28);
          }
          else {
            iVar7 = boneIndexByChannel[local_e4];
          }
          if (-1 < iVar7) {
            local_d0 = CONCAT44(local_d0._4_4_,local_e0);
            ClipCodec_DecodeEndpointPair
                      (codecBase,(byte *)(puVar10 + -1),frame0,frame0 + 1,&local_b4,&local_c4,
                       (uint *)&local_d0);
            cVar2 = *(char *)((int)puVar10 + 0xf);
            if (cVar2 == '\x01') {
              fStack_58 = local_bc;
              fStack_74 = local_b4;
              local_80 = local_b4;
              fStack_78 = local_ac;
              fStack_5c = local_c0;
              fStack_54 = local_c4;
              local_60 = local_c4;
              fStack_7c = local_b0;
              pfVar1 = (float *)(iVar7 * 0x30 + iVar5);
              *pfVar1 = (local_c4 - local_b4) * fVar20 + local_b4;
              pfVar1[1] = (local_c0 - local_b0) * fVar20 + local_b0;
              pfVar1[2] = (local_bc - local_ac) * fVar20 + local_ac;
              pfVar1[3] = (local_c4 - local_b4) * fVar20 + local_b4;
            }
            else if (cVar2 == '\x02') {
              fStack_64 = local_a8;
              fStack_68 = local_ac;
              fStack_6c = local_b0;
              local_70 = local_b4;
              auVar4._4_4_ = local_b0;
              auVar4._0_4_ = local_b4;
              auVar4._8_4_ = local_ac;
              auVar30._12_4_ = local_a8;
              auVar30._0_12_ = auVar4;
              fStack_94 = local_b8;
              fStack_98 = local_bc;
              fStack_9c = local_c0;
              local_a0 = local_c4;
              uStack_84 = 0;
              uStack_88 = 0;
              uStack_8c = 0;
              local_90 = 0;
              auVar32._0_4_ = local_b4 - 0.0;
              auVar32._4_4_ = local_b0 - 0.0;
              auVar32._8_4_ = local_ac - 0.0;
              auVar32._12_4_ = local_a8 - 0.0;
              auVar31._0_4_ = DAT_00fab218 * auVar32._0_4_;
              auVar31._4_4_ = DAT_00fab218 * auVar32._4_4_;
              auVar31._8_4_ = DAT_00fab218 * auVar32._8_4_;
              auVar31._12_4_ = DAT_00fab218 * auVar32._12_4_;
              auVar32 = maxps(auVar31,auVar32);
              auVar33._4_4_ = -(uint)(auVar32._4_4_ <= DAT_00fccb50);
              auVar33._0_4_ = -(uint)(auVar32._0_4_ <= DAT_00fccb50);
              auVar33._8_4_ = -(uint)(auVar32._8_4_ <= DAT_00fccb50);
              auVar33._12_4_ = -(uint)(auVar32._12_4_ <= DAT_00fccb50);
              iVar8 = movmskps(extraout_ECX,auVar33);
              fVar13 = local_b8;
              if (iVar8 == 0xf) {
                auVar23._0_4_ = local_c4 - 0.0;
                auVar23._4_4_ = local_c0 - 0.0;
                auVar23._8_4_ = local_bc - 0.0;
                auVar23._12_4_ = local_b8 - 0.0;
                auVar11._0_4_ = DAT_00fab218 * auVar23._0_4_;
                auVar11._4_4_ = DAT_00fab218 * auVar23._4_4_;
                auVar11._8_4_ = DAT_00fab218 * auVar23._8_4_;
                auVar11._12_4_ = DAT_00fab218 * auVar23._12_4_;
                auVar32 = maxps(auVar11,auVar23);
                auVar12._4_4_ = -(uint)(auVar32._4_4_ <= DAT_00fccb50);
                auVar12._0_4_ = -(uint)(auVar32._0_4_ <= DAT_00fccb50);
                auVar12._8_4_ = -(uint)(auVar32._8_4_ <= DAT_00fccb50);
                auVar12._12_4_ = -(uint)(auVar32._12_4_ <= DAT_00fccb50);
                iVar8 = movmskps(extraout_EDX,auVar12);
                if (iVar8 == 0xf) {
                  local_20 = local_c4;
                  fStack_1c = local_c0;
                  fStack_18 = local_bc;
                  local_30._12_4_ = DAT_00f998f8;
                  local_30._0_12_ = auVar4;
                  fStack_14 = DAT_00f998f8;
                  fVar13 = DAT_00f998f8;
                  auVar30 = local_30;
                }
              }
              fVar14 = auVar30._0_4_;
              fVar15 = auVar30._4_4_;
              fVar16 = auVar30._8_4_;
              fVar17 = auVar30._12_4_;
              fVar21 = fVar13 * fVar17 + local_c0 * fVar15 + local_bc * fVar16 + local_c4 * fVar14;
              fVar22 = (float)(~-(uint)(0.0 < fVar21) &
                               (uint)(fVar14 - (local_c4 + fVar14) * fVar20) |
                              (uint)((local_c4 - fVar14) * fVar20 + fVar14) & -(uint)(0.0 < fVar21))
              ;
              fVar24 = (float)(~-(uint)(0.0 < fVar21) &
                               (uint)(fVar15 - (local_c0 + fVar15) * fVar20) |
                              (uint)((local_c0 - fVar15) * fVar20 + fVar15) & -(uint)(0.0 < fVar21))
              ;
              fVar25 = (float)(~-(uint)(0.0 < fVar21) &
                               (uint)(fVar16 - (local_bc + fVar16) * fVar20) |
                              (uint)((local_bc - fVar16) * fVar20 + fVar16) & -(uint)(0.0 < fVar21))
              ;
              fVar26 = (float)(~-(uint)(0.0 < fVar21) & (uint)(fVar17 - (fVar13 + fVar17) * fVar20)
                              | (uint)((fVar13 - fVar17) * fVar20 + fVar17) & -(uint)(0.0 < fVar21))
              ;
              fVar15 = fVar26 * fVar26 + fVar24 * fVar24 + fVar25 * fVar25 + fVar22 * fVar22;
              auVar3._4_4_ = fVar15;
              auVar3._0_4_ = fVar15;
              auVar3._8_4_ = fVar15;
              auVar3._12_4_ = fVar15;
              auVar30 = rsqrtps(auVar30,auVar3);
              fVar16 = auVar30._0_4_;
              fVar17 = auVar30._4_4_;
              fVar18 = auVar30._8_4_;
              fVar19 = auVar30._12_4_;
              fVar16 = (DAT_00f998f8 - fVar16 * fVar16 * fVar15) * _DAT_00f9b5b4 * fVar16 + fVar16;
              fVar17 = (DAT_00f998f8 - fVar17 * fVar17 * fVar15) * _DAT_00f9b5b4 * fVar17 + fVar17;
              fVar18 = (DAT_00f998f8 - fVar18 * fVar18 * fVar15) * _DAT_00f9b5b4 * fVar18 + fVar18;
              fVar19 = (DAT_00f998f8 - fVar19 * fVar19 * fVar15) * _DAT_00f9b5b4 * fVar19 + fVar19;
              fVar13 = DAT_00f998f8 - fVar17 * fVar17 * fVar15;
              fVar21 = DAT_00f998f8 - fVar18 * fVar18 * fVar15;
              fVar14 = DAT_00f998f8 - fVar19 * fVar19 * fVar15;
              fVar27 = _DAT_00f9b5b4 * fVar17;
              fVar28 = _DAT_00f9b5b4 * fVar18;
              fVar29 = _DAT_00f9b5b4 * fVar19;
              pfVar1 = (float *)(iVar7 * 0x30 + 0x10 + iVar5);
              *pfVar1 = ((DAT_00f998f8 - fVar16 * fVar16 * fVar15) * _DAT_00f9b5b4 * fVar16 + fVar16
                        ) * fVar22;
              pfVar1[1] = (fVar13 * fVar27 + fVar17) * fVar24;
              pfVar1[2] = (fVar21 * fVar28 + fVar18) * fVar25;
              pfVar1[3] = (fVar14 * fVar29 + fVar19) * fVar26;
            }
            else if (cVar2 == '\x03') {
              fStack_48 = local_bc;
              fStack_34 = local_b4;
              local_40 = local_b4;
              fStack_38 = local_ac;
              fStack_4c = local_c0;
              fStack_44 = local_c4;
              local_50 = local_c4;
              fStack_3c = local_b0;
              pfVar1 = (float *)(iVar7 * 0x30 + 0x20 + iVar5);
              *pfVar1 = (local_c4 - local_b4) * fVar20 + local_b4;
              pfVar1[1] = (local_c0 - local_b0) * fVar20 + local_b0;
              pfVar1[2] = (local_bc - local_ac) * fVar20 + local_ac;
              pfVar1[3] = (local_c4 - local_b4) * fVar20 + local_b4;
            }
          }
        }
      }
      local_e4 = local_e4 + 1;
      puVar10 = puVar10 + 5;
    } while (local_e4 < *(uint *)(codecBase + 0x18));
  }
  if (mirror) {
    FUN_00584470((int)pose);
  }
  return true;
}

