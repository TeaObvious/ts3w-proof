/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67: Packet float +0x3c is published to RugSort parameter slot unless UCOMISS reports
   equal binary32 zero at0x010f4ccc (unordered NaN also publishes); then selected technique draws.
   Original+3c pointer is preserved, not integer-coerced. Other parameter publications and stencil
   state are also in full function.
   
   Analyst PC1.67 mesh-state instruction contract. Selected geometry-state path: packet DWORD+30 is
   an unsigned HASH BIT PATTERN, not numeric float conversion. ECX renderObject+50 record
   pointer,+54 signedCount passed to helper. Selected nonnull record+10==0 returns before
   technique/material work; no match leavesNULL for base indexed ranges. Callback context laid out
   renderObject,state,packet. Existing full-function RugSort float+3C annotation retained. Other
   material/pose/parameter paths not newly interpreted by this localized review.
   
   Analyst PC1.67 domain-owner static comparison. Selected basin stencil branch: object+C0 bit08
   requests reference(currentRef|80), comparemask3F, fail/depthfailKEEP and passREPLACE, write80;
   other+C1 flags select separate40 lanes. Draw consumes real material state; BasinWater shader pass
   itself owns its80-only compare. Existing packet+3C/RugSort and other reviewed annotations remain
   authoritative. */

void __thiscall RenderObject_DrawPacketWithParameters(void *this,uchar *packet)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  bool bVar25;
  void *this_00;
  int iVar26;
  int *piVar27;
  int iVar28;
  undefined4 *puVar29;
  undefined4 *puVar30;
  void *pvVar31;
  uint uVar32;
  void *pvVar33;
  undefined *puVar34;
  float *pfVar35;
  float *pfVar36;
  undefined1 auVar37 [16];
  undefined1 auVar38 [16];
  undefined1 auVar39 [16];
  double dVar40;
  code *pcVar41;
  GeometryState20 *pGVar42;
  char local_1f1;
  float local_1f0;
  float fStack_1ec;
  float fStack_1e8;
  float fStack_1e4;
  void *local_1d4;
  longlong local_1d0;
  float *local_1c8;
  float *local_1c4;
  void *local_1c0;
  GeometryState20 *local_1bc;
  uchar *local_1b8;
  GeometryState20 *local_1b4;
  float local_1b0 [17];
  float fStack_16c;
  float fStack_168;
  float fStack_164;
  float local_160 [5];
  float fStack_14c;
  float fStack_148;
  float fStack_144;
  float local_140;
  float fStack_13c;
  float fStack_138;
  float fStack_134;
  float local_130;
  float fStack_12c;
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
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
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
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_1d0 = CONCAT44(local_1d0._4_4_,this);
  local_1b4 = GeometryStates_FindRequestedOrFirst
                        (*(uint *)(packet + 0x30),*(GeometryState20 **)((int)this + 0x50),
                         *(int *)((int)this + 0x54));
  if ((local_1b4 != (GeometryState20 *)0x0) && (local_1b4->primitiveCount == 0)) {
    return;
  }
  local_1d4 = *(void **)(packet + 0x18);
  local_1f1 = '\0';
  bVar25 = false;
  if (local_1d4 == (void *)0x0) {
    local_1d4 = (void *)FUN_0068f810(this,(int)packet,&local_1f1);
    if (local_1d4 == (void *)0x0) {
      return;
    }
    if (((((*(int *)(packet + 0x2c) == 0) && (iVar28 = *(int *)((int)this + 0x24), iVar28 != 0)) &&
         (*(char *)(iVar28 + 0x98) != '\0')) &&
        (((*(int *)((int)this + 100) == 0 || (*(int *)(packet + 0x14) == 0)) ||
         ((*(int *)((int)this + 0x5c) == 0 || (*(int *)((int)this + 0x60) == 1)))))) &&
       ((packet[0x38] == '\0' && (packet[0x39] == '\0')))) {
      iVar26 = *(int *)(&DAT_00ff3170 + ((uint)packet[0x34] + DAT_011d0564 * 2) * 4);
      if (iVar26 == 0) {
        iVar26 = 1;
      }
      else if (iVar26 == 2) {
        iVar26 = 3;
      }
      else {
        if (iVar26 != 5) goto LAB_0069035b;
        iVar26 = 6;
      }
      bVar25 = true;
      local_1d4 = *(void **)(iVar28 + 8 + iVar26 * 4);
      if (local_1d4 == (void *)0x0) {
        return;
      }
    }
  }
LAB_0069035b:
  this_00 = DAT_011d8530;
  FUN_0079a0e0((int)DAT_011d8530);
  iVar28 = *(int *)((int)this + 0x2c);
  if (iVar28 != 0) {
    if (((*(uint *)((int)local_1d4 + 0x18) & 0x2000) != 0) && (*(int *)(iVar28 + 0x30) == 2)) {
      FUN_0079a130((int)this_00);
      return;
    }
    FUN_006c96f0(iVar28);
  }
  if (*(int *)((int)this + 0x30) != 0) {
    FUN_006c96f0(*(int *)((int)this + 0x30));
  }
  if (packet[0x37] != '\0') {
    FUN_0068f500(this,(float *)packet);
  }
  if ((packet[0x38] == '\0') || ((*(byte *)((int)this + 0xc1) & 2) != 0)) {
    if ((DAT_011d0610 & 1) == 0) {
      DAT_011d0610 = DAT_011d0610 | 1;
      fStack_1e4 = 1.0;
      fStack_1e8 = 1.0;
      fStack_1ec = 1.0;
      local_1f0 = 1.0;
      _DAT_011d0600 = 0x3f800000;
      uRam011d0604 = 0x3f800000;
      uRam011d0608 = 0x3f800000;
      uRam011d060c = 0x3f800000;
    }
    if (DAT_011598b8 < *(uint *)((int)this_00 + 8)) {
      piVar27 = (int *)(DAT_011598b8 * 0x10 + *(int *)((int)this_00 + 4));
      *piVar27 = *piVar27 + 1;
      *(undefined2 *)(piVar27 + 1) = *(undefined2 *)((int)this_00 + 0x12);
      piVar27[3] = (int)&DAT_011d0600;
    }
  }
  else if (DAT_011598b8 < *(uint *)((int)this_00 + 8)) {
    piVar27 = (int *)(DAT_011598b8 * 0x10 + *(int *)((int)this_00 + 4));
    *piVar27 = *piVar27 + 1;
    *(undefined2 *)(piVar27 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar27[3] = (int)packet;
  }
  if (packet[0x3a] == '\0') {
    if (DAT_011598e4 < *(uint *)((int)this_00 + 8)) {
      piVar27 = (int *)(DAT_011598e4 * 0x10 + *(int *)((int)this_00 + 4));
      *piVar27 = *piVar27 + 1;
      *(undefined2 *)(piVar27 + 1) = *(undefined2 *)((int)this_00 + 0x12);
      piVar27[3] = (int)&DAT_011d05f0;
    }
  }
  else if (DAT_011598e4 < *(uint *)((int)this_00 + 8)) {
    piVar27 = (int *)(DAT_011598e4 * 0x10 + *(int *)((int)this_00 + 4));
    *piVar27 = *piVar27 + 1;
    *(undefined2 *)(piVar27 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar27[3] = (int)&DAT_011598fc;
  }
  piVar27 = DAT_011598bc;
  if (DAT_011598bc < *(int **)((int)this_00 + 8)) {
    piVar27 = (int *)((int)DAT_011598bc * 0x10 + *(int *)((int)this_00 + 4));
    *piVar27 = *piVar27 + 1;
    *(undefined2 *)(piVar27 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar27[3] = (int)(packet + 0x10);
  }
  iVar28 = *(int *)((int)this + 100);
  local_1c8 = (float *)0x0;
  local_1c4 = (float *)0x0;
  if (iVar28 != 0) {
    piVar27 = *(int **)(packet + 0x14);
    if ((piVar27 == (int *)0x0) || (*(int *)((int)this + 0x5c) == 0)) {
      uVar32 = *(uint *)(iVar28 + 0x28);
      if (0x3c < uVar32) {
        uVar32 = 0x3c;
      }
      puVar34 = &DAT_00ff1af0;
    }
    else {
      if (bVar25) {
        if (*(int *)((int)this + 0x60) == 1) {
          iVar28 = FUN_0068f130(iVar28);
          pfVar35 = (float *)(**(int **)((int)this + 0x5c) * 0x40 + *(int *)(packet + 0x14));
          iVar26 = **(int **)((int)this + 0x58) * 0x40;
          pfVar36 = (float *)(iVar26 + iVar28);
          fVar1 = *pfVar36;
          fVar2 = pfVar36[1];
          fVar3 = pfVar36[2];
          fVar4 = pfVar36[3];
          fVar5 = pfVar35[4];
          fVar6 = pfVar35[5];
          fVar7 = pfVar35[6];
          fVar8 = pfVar35[7];
          fVar9 = *pfVar35;
          fVar10 = pfVar35[1];
          fVar11 = pfVar35[2];
          fVar12 = pfVar35[3];
          fVar13 = pfVar35[8];
          fVar14 = pfVar35[9];
          fVar15 = pfVar35[10];
          fVar16 = pfVar35[0xb];
          fVar17 = pfVar35[0xc];
          fVar18 = pfVar35[0xd];
          fVar19 = pfVar35[0xe];
          fVar20 = pfVar35[0xf];
          iVar26 = iVar26 + iVar28;
          fVar21 = *(float *)(iVar26 + 0x10);
          fVar22 = *(float *)(iVar26 + 0x14);
          fVar23 = *(float *)(iVar26 + 0x18);
          fVar24 = *(float *)(iVar26 + 0x1c);
          local_50 = fVar1 * fVar9 + fVar2 * fVar5 + fVar3 * fVar13 + fVar4 * fVar17;
          fStack_4c = fVar1 * fVar10 + fVar2 * fVar6 + fVar3 * fVar14 + fVar4 * fVar18;
          fStack_48 = fVar1 * fVar11 + fVar2 * fVar7 + fVar3 * fVar15 + fVar4 * fVar19;
          fStack_44 = fVar1 * fVar12 + fVar2 * fVar8 + fVar3 * fVar16 + fVar4 * fVar20;
          fVar1 = *(float *)(iVar26 + 0x20);
          fVar2 = *(float *)(iVar26 + 0x24);
          fVar3 = *(float *)(iVar26 + 0x28);
          fVar4 = *(float *)(iVar26 + 0x2c);
          local_40 = fVar21 * fVar9 + fVar22 * fVar5 + fVar23 * fVar13 + fVar24 * fVar17;
          fStack_3c = fVar21 * fVar10 + fVar22 * fVar6 + fVar23 * fVar14 + fVar24 * fVar18;
          fStack_38 = fVar21 * fVar11 + fVar22 * fVar7 + fVar23 * fVar15 + fVar24 * fVar19;
          fStack_34 = fVar21 * fVar12 + fVar22 * fVar8 + fVar23 * fVar16 + fVar24 * fVar20;
          fVar21 = *(float *)(iVar26 + 0x30);
          fVar22 = *(float *)(iVar26 + 0x34);
          fVar23 = *(float *)(iVar26 + 0x38);
          fVar24 = *(float *)(iVar26 + 0x3c);
          local_30 = fVar2 * fVar5 + fVar1 * fVar9 + fVar3 * fVar13 + fVar4 * fVar17;
          fStack_2c = fVar2 * fVar6 + fVar1 * fVar10 + fVar3 * fVar14 + fVar4 * fVar18;
          fStack_28 = fVar2 * fVar7 + fVar1 * fVar11 + fVar3 * fVar15 + fVar4 * fVar19;
          fStack_24 = fVar2 * fVar8 + fVar1 * fVar12 + fVar3 * fVar16 + fVar4 * fVar20;
          local_20 = fVar21 * fVar9 + fVar22 * fVar5 + fVar23 * fVar13 + fVar24 * fVar17;
          fStack_1c = fVar21 * fVar10 + fVar22 * fVar6 + fVar23 * fVar14 + fVar24 * fVar18;
          fStack_18 = fVar21 * fVar11 + fVar22 * fVar7 + fVar23 * fVar15 + fVar24 * fVar19;
          fStack_14 = fVar21 * fVar12 + fVar22 * fVar8 + fVar23 * fVar16 + fVar24 * fVar20;
          puVar29 = FUN_0068ed30(this_00,DAT_011598c0);
          puVar30 = FUN_0068ed30(this_00,DAT_011598c4);
          if ((DAT_011d0610 & 2) == 0) {
            DAT_011d0610 = DAT_011d0610 | 2;
          }
          if ((DAT_011d0610 & 4) == 0) {
            DAT_011d0610 = DAT_011d0610 | 4;
          }
          if (puVar29[3] == 0) {
            local_1b0[0] = 1.0;
            local_1b0[1] = 0.0;
            local_1b0[2] = 0.0;
            local_1b0[3] = 0.0;
            local_1b0[4] = 0.0;
            local_1b0[5] = 1.0;
            local_1b0[6] = 0.0;
            local_1b0[7] = 0.0;
            local_1b0[8] = 0.0;
            local_1b0[9] = 0.0;
            local_1b0[10] = 1.0;
            local_1b0[0xb] = 0.0;
            local_1b0[0xc] = 0.0;
            local_1b0[0xd] = 0.0;
            local_1b0[0xe] = 0.0;
            local_1b0[0xf] = 1.0;
          }
          else {
            local_1c8 = (float *)puVar29[3];
            pfVar36 = local_1c8;
            pfVar35 = local_1b0;
            for (iVar28 = 0x10; iVar28 != 0; iVar28 = iVar28 + -1) {
              *pfVar35 = *pfVar36;
              pfVar36 = pfVar36 + 1;
              pfVar35 = pfVar35 + 1;
            }
          }
          if (puVar30[3] == 0) {
            local_160[4] = 0.0;
            fStack_14c = 1.0;
            fStack_148 = 0.0;
            fStack_144 = 0.0;
            local_160[0] = 1.0;
            local_160[1] = 0.0;
            local_160[2] = 0.0;
            local_160[3] = 0.0;
            local_140 = 0.0;
            fStack_13c = 0.0;
            fStack_138 = 1.0;
            fStack_134 = 0.0;
            local_130 = 0.0;
            fStack_12c = 0.0;
            fStack_128 = 0.0;
            fStack_124 = 1.0;
          }
          else {
            local_1c4 = (float *)puVar30[3];
            pfVar36 = local_1c4;
            pfVar35 = local_160;
            for (iVar28 = 0x10; iVar28 != 0; iVar28 = iVar28 + -1) {
              *pfVar35 = *pfVar36;
              pfVar36 = pfVar36 + 1;
              pfVar35 = pfVar35 + 1;
            }
          }
          local_70 = fStack_4c;
          fStack_6c = fStack_4c;
          fStack_68 = fStack_4c;
          fStack_64 = fStack_4c;
          local_100 = fStack_44;
          fStack_fc = fStack_44;
          fStack_f8 = fStack_44;
          fStack_f4 = fStack_44;
          _DAT_011d05b0 =
               local_1b0[4] * fStack_4c + local_1b0[0] * local_50 + local_1b0[8] * fStack_48 +
               local_1b0[0xc] * fStack_44;
          fRam011d05b4 = local_1b0[5] * fStack_4c + local_1b0[1] * local_50 +
                         local_1b0[9] * fStack_48 + local_1b0[0xd] * fStack_44;
          fRam011d05b8 = local_1b0[6] * fStack_4c + local_1b0[2] * local_50 +
                         local_1b0[10] * fStack_48 + local_1b0[0xe] * fStack_44;
          fRam011d05bc = local_1b0[7] * fStack_4c + local_1b0[3] * local_50 +
                         local_1b0[0xb] * fStack_48 + local_1b0[0xf] * fStack_44;
          local_a0 = fStack_3c;
          fStack_9c = fStack_3c;
          fStack_98 = fStack_3c;
          fStack_94 = fStack_3c;
          local_90 = local_50;
          fStack_8c = local_50;
          fStack_88 = local_50;
          fStack_84 = local_50;
          local_120 = fStack_48;
          fStack_11c = fStack_48;
          fStack_118 = fStack_48;
          fStack_114 = fStack_48;
          local_c0 = fStack_34;
          fStack_bc = fStack_34;
          fStack_b8 = fStack_34;
          fStack_b4 = fStack_34;
          local_e0 = local_40;
          fStack_dc = local_40;
          fStack_d8 = local_40;
          fStack_d4 = local_40;
          local_110 = local_30;
          fStack_10c = local_30;
          fStack_108 = local_30;
          fStack_104 = local_30;
          local_60 = fStack_38;
          fStack_5c = fStack_38;
          fStack_58 = fStack_38;
          fStack_54 = fStack_38;
          _DAT_011d05c0 =
               local_1b0[4] * fStack_3c + local_40 * local_1b0[0] + local_1b0[8] * fStack_38 +
               local_1b0[0xc] * fStack_34;
          fRam011d05c4 = local_1b0[5] * fStack_3c + local_40 * local_1b0[1] +
                         local_1b0[9] * fStack_38 + local_1b0[0xd] * fStack_34;
          fRam011d05c8 = local_1b0[6] * fStack_3c + local_40 * local_1b0[2] +
                         local_1b0[10] * fStack_38 + local_1b0[0xe] * fStack_34;
          fRam011d05cc = local_1b0[7] * fStack_3c + local_40 * local_1b0[3] +
                         local_1b0[0xb] * fStack_38 + local_1b0[0xf] * fStack_34;
          local_80 = fStack_2c;
          fStack_7c = fStack_2c;
          fStack_78 = fStack_2c;
          fStack_74 = fStack_2c;
          local_d0 = fStack_24;
          fStack_cc = fStack_24;
          fStack_c8 = fStack_24;
          fStack_c4 = fStack_24;
          local_f0 = fStack_28;
          fStack_ec = fStack_28;
          fStack_e8 = fStack_28;
          fStack_e4 = fStack_28;
          _DAT_011d05d0 =
               local_1b0[4] * fStack_2c + local_30 * local_1b0[0] + local_1b0[8] * fStack_28 +
               local_1b0[0xc] * fStack_24;
          fRam011d05d4 = local_1b0[5] * fStack_2c + local_30 * local_1b0[1] +
                         local_1b0[9] * fStack_28 + local_1b0[0xd] * fStack_24;
          fRam011d05d8 = local_1b0[6] * fStack_2c + local_30 * local_1b0[2] +
                         local_1b0[10] * fStack_28 + local_1b0[0xe] * fStack_24;
          fRam011d05dc = local_1b0[7] * fStack_2c + local_30 * local_1b0[3] +
                         local_1b0[0xb] * fStack_28 + local_1b0[0xf] * fStack_24;
          local_b0 = fStack_1c;
          fStack_ac = fStack_1c;
          fStack_a8 = fStack_1c;
          fStack_a4 = fStack_1c;
          local_1f0 = fStack_18;
          fStack_1ec = fStack_18;
          fStack_1e8 = fStack_18;
          fStack_1e4 = fStack_18;
          local_1b0[0x10] = fStack_14;
          fStack_16c = fStack_14;
          fStack_168 = fStack_14;
          fStack_164 = fStack_14;
          _DAT_011d05e0 =
               fStack_1c * local_1b0[4] + local_20 * local_1b0[0] + local_1b0[8] * fStack_18 +
               local_1b0[0xc] * fStack_14;
          fRam011d05e4 = fStack_1c * local_1b0[5] + local_20 * local_1b0[1] +
                         local_1b0[9] * fStack_18 + local_1b0[0xd] * fStack_14;
          fRam011d05e8 = fStack_1c * local_1b0[6] + local_20 * local_1b0[2] +
                         local_1b0[10] * fStack_18 + local_1b0[0xe] * fStack_14;
          fRam011d05ec = fStack_1c * local_1b0[7] + local_20 * local_1b0[3] +
                         local_1b0[0xb] * fStack_18 + local_1b0[0xf] * fStack_14;
          _DAT_011d0570 =
               local_160[4] * fStack_4c + local_160[0] * local_50 + local_140 * fStack_48 +
               local_130 * fStack_44;
          fRam011d0574 = fStack_14c * fStack_4c + local_160[1] * local_50 + fStack_13c * fStack_48 +
                         fStack_12c * fStack_44;
          fRam011d0578 = fStack_148 * fStack_4c + local_160[2] * local_50 + fStack_138 * fStack_48 +
                         fStack_128 * fStack_44;
          fRam011d057c = fStack_144 * fStack_4c + local_160[3] * local_50 + fStack_134 * fStack_48 +
                         fStack_124 * fStack_44;
          _DAT_011d0580 =
               local_160[4] * fStack_3c + local_160[0] * local_40 + local_140 * fStack_38 +
               local_130 * fStack_34;
          fRam011d0584 = fStack_14c * fStack_3c + local_160[1] * local_40 + fStack_13c * fStack_38 +
                         fStack_12c * fStack_34;
          fRam011d0588 = fStack_148 * fStack_3c + local_160[2] * local_40 + fStack_138 * fStack_38 +
                         fStack_128 * fStack_34;
          fRam011d058c = fStack_144 * fStack_3c + local_160[3] * local_40 + fStack_134 * fStack_38 +
                         fStack_124 * fStack_34;
          _DAT_011d0590 =
               local_160[4] * fStack_2c + local_160[0] * local_30 + local_140 * fStack_28 +
               local_130 * fStack_24;
          fRam011d0594 = fStack_14c * fStack_2c + local_160[1] * local_30 + fStack_13c * fStack_28 +
                         fStack_12c * fStack_24;
          fRam011d0598 = fStack_148 * fStack_2c + local_160[2] * local_30 + fStack_138 * fStack_28 +
                         fStack_128 * fStack_24;
          fRam011d059c = fStack_144 * fStack_2c + local_160[3] * local_30 + fStack_134 * fStack_28 +
                         fStack_124 * fStack_24;
          _DAT_011d05a0 =
               local_160[4] * fStack_1c + local_20 * local_160[0] + local_140 * fStack_18 +
               local_130 * fStack_14;
          fRam011d05a4 = fStack_14c * fStack_1c + local_20 * local_160[1] + fStack_13c * fStack_18 +
                         fStack_12c * fStack_14;
          fRam011d05a8 = fStack_148 * fStack_1c + local_20 * local_160[2] + fStack_138 * fStack_18 +
                         fStack_128 * fStack_14;
          fRam011d05ac = fStack_144 * fStack_1c + local_20 * local_160[3] + fStack_134 * fStack_18 +
                         fStack_124 * fStack_14;
          FUN_0079a040(this_00,DAT_011598c0,0x11d05b0);
          piVar27 = (int *)FUN_0079a040(this_00,DAT_011598c4,0x11d0570);
          this = (void *)local_1d0;
        }
        goto LAB_00690ad0;
      }
      FUN_0068f8d0(this,(int)piVar27);
      uVar32 = *(uint *)((int)this + 0x60);
      puVar34 = *(undefined **)((int)this + 0x70);
    }
    piVar27 = (int *)FUN_0068eda0(this_00,DAT_011598d0,(int)puVar34,uVar32 * 3);
  }
LAB_00690ad0:
  if ((packet[0x35] != '\0') && (piVar27 = DAT_011598e0, DAT_011598e0 < *(int **)((int)this_00 + 8))
     ) {
    piVar27 = (int *)((int)DAT_011598e0 * 0x10 + *(int *)((int)this_00 + 4));
    *piVar27 = *piVar27 + 1;
    *(undefined2 *)(piVar27 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar27[3] = (int)&DAT_011598f8;
  }
  iVar28 = *(int *)(packet + 0x40);
  if (iVar28 != 0) {
    uVar32 = *(uint *)(packet + 0x44);
    if (uVar32 < 5) {
      iVar26 = 1;
      uVar32 = DAT_011598d4;
    }
    else {
      local_1d0 = CONCAT44(local_1d0._4_4_,uVar32);
      fVar1 = (float)(int)uVar32;
      if ((int)uVar32 < 0) {
        fVar1 = fVar1 + 4.2949673e+09;
      }
      dVar40 = ceil((double)(fVar1 * 0.25));
      iVar28 = *(int *)(packet + 0x40);
      local_1d0 = (longlong)ROUND(dVar40);
      iVar26 = (int)local_1d0;
      uVar32 = DAT_011598d8;
    }
    piVar27 = (int *)FUN_0068eda0(this_00,uVar32,iVar28,iVar26);
  }
  auVar38 = *(undefined1 (*) [16])(packet + 0x50);
  auVar37._0_4_ = auVar38._0_4_ * -1.0;
  auVar37._4_4_ = auVar38._4_4_ * -1.0;
  auVar37._8_4_ = auVar38._8_4_ * -1.0;
  auVar37._12_4_ = auVar38._12_4_ * -1.0;
  auVar38 = maxps(auVar37,auVar38);
  auVar39._4_4_ = -(uint)(auVar38._4_4_ <= 1.1920929e-07);
  auVar39._0_4_ = -(uint)(auVar38._0_4_ <= 1.1920929e-07);
  auVar39._8_4_ = -(uint)(auVar38._8_4_ <= 1.1920929e-07);
  auVar39._12_4_ = -(uint)(auVar38._12_4_ <= 1.1920929e-07);
  iVar28 = movmskps(piVar27,auVar39);
  if ((iVar28 != 0xf) && (DAT_011598dc < *(uint *)((int)this_00 + 8))) {
    piVar27 = (int *)(DAT_011598dc * 0x10 + *(int *)((int)this_00 + 4));
    *piVar27 = *piVar27 + 1;
    piVar27[2] = 1;
    *(undefined2 *)((int)piVar27 + 6) = 2;
    *(undefined2 *)(piVar27 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar27[3] = (int)(packet + 0x50);
  }
  if ((*(byte *)((int)this + 0xc1) & 8) == 0) {
    if ((*(byte *)((int)this + 0xc1) & 0x10) != 0) {
      pvVar31 = (void *)FUN_0060e910();
      FUN_0060f2a0((int)pvVar31);
      iVar28 = 0x3f;
      uVar32 = FUN_0060fe80((int)pvVar31);
      FUN_0060fe40(pvVar31,2,uVar32 | 0x40,iVar28);
      FUN_0060fea0(pvVar31,0,0,2);
      FUN_0060fe30(pvVar31,1);
      iVar28 = 0x40;
      goto LAB_00690ca0;
    }
    if ((*(byte *)((int)this + 0xc0) & 8) != 0) {
      pvVar31 = (void *)FUN_0060e910();
      FUN_0060f2a0((int)pvVar31);
      iVar28 = 0x3f;
      uVar32 = FUN_0060fe80((int)pvVar31);
      FUN_0060fe40(pvVar31,2,uVar32 | 0x80,iVar28);
      FUN_0060fea0(pvVar31,0,0,2);
      FUN_0060fe30(pvVar31,1);
      iVar28 = 0x80;
      goto LAB_00690ca0;
    }
  }
  else {
    pvVar31 = (void *)FUN_0060e910();
    FUN_0060f2a0((int)pvVar31);
    iVar28 = 0x3f;
    uVar32 = FUN_0060fe80((int)pvVar31);
    FUN_0060fe40(pvVar31,2,uVar32 | 0x40,iVar28);
    FUN_0060fea0(pvVar31,0,0,1);
    FUN_0060fe30(pvVar31,1);
    iVar28 = 0x40;
LAB_00690ca0:
    FUN_0060fe90(pvVar31,iVar28);
    RenderDevice_ApplyPendingBaselines(pvVar31);
  }
  pvVar31 = local_1d4;
                    /* TEST AH,0x44 / JNP skips equal zero only; unordered UCOMISS publishes RugSort
                       too. */
  if ((*(float *)(packet + 0x3c) != 0.0) && (DAT_011598c8 < *(uint *)((int)this_00 + 8))) {
    piVar27 = (int *)(DAT_011598c8 * 0x10 + *(int *)((int)this_00 + 4));
    *piVar27 = *piVar27 + 1;
    *(undefined2 *)(piVar27 + 1) = *(undefined2 *)((int)this_00 + 0x12);
                    /* Publish packet+0x3c pointer as scalar RugSort parameter. */
    piVar27[3] = (int)(packet + 0x3c);
  }
  local_1bc = local_1b4;
  local_1b8 = packet;
  local_1c0 = this;
  if ((((*(byte *)((int)this + 0xc0) & 0x10) == 0) || (packet[0x36] == '\0')) || (local_1f1 != '\0')
     ) {
    uVar32 = *(uint *)((int)this + 0x78);
    if (-1 < (int)*(uint *)(packet + 0x24)) {
      uVar32 = *(uint *)(packet + 0x24);
    }
    FUN_0079a6a0(local_1d4,uVar32);
    pvVar31 = local_1d4;
    if (*(int *)(packet + 0x28) != 0) {
      pcVar41 = RenderObject_SubmitSpecialGeometry;
      goto LAB_00690d55;
    }
  }
  else {
    FUN_0079a6a0(local_1d4,1);
  }
  pcVar41 = RenderObject_SubmitSelectedGeometryRange;
LAB_00690d55:
  ShaderDefinition_DrawSelectedTechnique(pvVar31,pcVar41,&local_1c0);
  FUN_0079a130((int)this_00);
  if ((*(byte *)((int)this + 0xc1) & 0x20) != 0) {
    pvVar33 = (void *)FUN_0060e910();
    pvVar31 = this;
    pGVar42 = local_1bc;
    puVar34 = FUN_009e3b80();
    FUN_009e4f80(puVar34,(int)pvVar31,(int)pGVar42,pvVar33);
  }
  if (((*(byte *)((int)this + 0xc0) & 8) != 0) || ((*(byte *)((int)this + 0xc1) & 0x18) != 0)) {
    iVar28 = FUN_0060e910();
    FUN_00610330(iVar28);
  }
  if (local_1c8 != (float *)0x0) {
    FUN_0079a040(this_00,DAT_011598c0,(int)local_1c8);
    FUN_0079a040(this_00,DAT_011598c4,(int)local_1c4);
  }
  return;
}

