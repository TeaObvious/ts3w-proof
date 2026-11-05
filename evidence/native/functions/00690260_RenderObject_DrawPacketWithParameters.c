/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 632; earlier snapshot context. */
/* TEST AH,0x44 / JNP skips equal zero only; unordered UCOMISS publishes RugSort
                       too. */

/* Retained historical annotation 2, previous C line 638; earlier snapshot context. */
/* Publish packet+0x3c pointer as scalar RugSort parameter. */



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
  bool bVar24;
  void *this_00;
  int iVar25;
  int *piVar26;
  int iVar27;
  undefined4 *puVar28;
  undefined4 *puVar29;
  void *pvVar30;
  uint uVar31;
  void *pvVar32;
  undefined *puVar33;
  float *pfVar34;
  Ts3SkinPostDefinition *pTVar35;
  float *pfVar36;
  float fVar37;
  undefined1 auVar38 [16];
  undefined1 auVar39 [16];
  undefined1 auVar40 [16];
  double dVar41;
  code *drawCallback;
  GeometryState20 *pGVar42;
  char local_1f1;
  float local_1f0;
  float fStack_1ec;
  float fStack_1e8;
  float fStack_1e4;
  Ts3SkinPostDefinition *local_1d4;
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
  local_1d4 = *(Ts3SkinPostDefinition **)(packet + 0x18);
  local_1f1 = '\0';
  bVar24 = false;
  if (local_1d4 == (Ts3SkinPostDefinition *)0x0) {
    local_1d4 = (Ts3SkinPostDefinition *)FUN_0068f810(this,(int)packet,&local_1f1);
    if (local_1d4 == (Ts3SkinPostDefinition *)0x0) {
      return;
    }
    if (((((*(int *)(packet + 0x2c) == 0) && (iVar27 = *(int *)((int)this + 0x24), iVar27 != 0)) &&
         (*(char *)(iVar27 + 0x98) != '\0')) &&
        (((*(int *)((int)this + 100) == 0 || (*(int *)(packet + 0x14) == 0)) ||
         ((*(int *)((int)this + 0x5c) == 0 || (*(int *)((int)this + 0x60) == 1)))))) &&
       ((packet[0x38] == '\0' && (packet[0x39] == '\0')))) {
      iVar25 = *(int *)(&DAT_00ff3170 + ((uint)packet[0x34] + DAT_011d0564 * 2) * 4);
      if (iVar25 == 0) {
        iVar25 = 1;
      }
      else if (iVar25 == 2) {
        iVar25 = 3;
      }
      else {
        if (iVar25 != 5) goto LAB_0069035b;
        iVar25 = 6;
      }
      bVar24 = true;
      local_1d4 = *(Ts3SkinPostDefinition **)(iVar27 + 8 + iVar25 * 4);
      if (local_1d4 == (Ts3SkinPostDefinition *)0x0) {
        return;
      }
    }
  }
LAB_0069035b:
  this_00 = DAT_011d8530;
  FUN_0079a0e0((int)DAT_011d8530);
  iVar27 = *(int *)((int)this + 0x2c);
  if (iVar27 != 0) {
    if (((*(uint *)(local_1d4 + 1) & 0x2000) != 0) && (*(int *)(iVar27 + 0x30) == 2)) {
      FUN_0079a130((int)this_00);
      return;
    }
    FUN_006c96f0(iVar27);
  }
  if (*(int *)((int)this + 0x30) != 0) {
    FUN_006c96f0(*(int *)((int)this + 0x30));
  }
  if (packet[0x37] != '\0') {
    FUN_0068f500(this,(float *)packet);
  }
  fVar37 = 1.0;
  if ((packet[0x38] == '\0') || ((*(byte *)((int)this + 0xc1) & 2) != 0)) {
    if ((DAT_011d0610 & 1) == 0) {
      DAT_011d0610 = DAT_011d0610 | 1;
      _DAT_011d0600 = fVar37;
      fRam011d0604 = fVar37;
      fRam011d0608 = fVar37;
      fRam011d060c = fVar37;
      local_1f0 = fVar37;
      fStack_1ec = fVar37;
      fStack_1e8 = fVar37;
      fStack_1e4 = fVar37;
    }
    if (DAT_011598b8 < *(uint *)((int)this_00 + 8)) {
      piVar26 = (int *)(DAT_011598b8 * 0x10 + *(int *)((int)this_00 + 4));
      *piVar26 = *piVar26 + 1;
      *(undefined2 *)(piVar26 + 1) = *(undefined2 *)((int)this_00 + 0x12);
      piVar26[3] = (int)&DAT_011d0600;
    }
  }
  else if (DAT_011598b8 < *(uint *)((int)this_00 + 8)) {
    piVar26 = (int *)(DAT_011598b8 * 0x10 + *(int *)((int)this_00 + 4));
    *piVar26 = *piVar26 + 1;
    *(undefined2 *)(piVar26 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar26[3] = (int)packet;
  }
  if (packet[0x3a] == '\0') {
    if (DAT_011598e4 < *(uint *)((int)this_00 + 8)) {
      piVar26 = (int *)(DAT_011598e4 * 0x10 + *(int *)((int)this_00 + 4));
      *piVar26 = *piVar26 + 1;
      *(undefined2 *)(piVar26 + 1) = *(undefined2 *)((int)this_00 + 0x12);
      piVar26[3] = (int)&DAT_011d05f0;
    }
  }
  else if (DAT_011598e4 < *(uint *)((int)this_00 + 8)) {
    piVar26 = (int *)(DAT_011598e4 * 0x10 + *(int *)((int)this_00 + 4));
    *piVar26 = *piVar26 + 1;
    *(undefined2 *)(piVar26 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar26[3] = (int)&DAT_011598fc;
  }
  piVar26 = DAT_011598bc;
  if (DAT_011598bc < *(int **)((int)this_00 + 8)) {
    piVar26 = (int *)((int)DAT_011598bc * 0x10 + *(int *)((int)this_00 + 4));
    *piVar26 = *piVar26 + 1;
    *(undefined2 *)(piVar26 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar26[3] = (int)(packet + 0x10);
  }
  iVar27 = *(int *)((int)this + 100);
  local_1c8 = (float *)0x0;
  local_1c4 = (float *)0x0;
  if (iVar27 != 0) {
    piVar26 = *(int **)(packet + 0x14);
    if ((piVar26 == (int *)0x0) || (*(int *)((int)this + 0x5c) == 0)) {
      uVar31 = *(uint *)(iVar27 + 0x28);
      if (0x3c < uVar31) {
        uVar31 = 0x3c;
      }
      puVar33 = &DAT_00ff1af0;
    }
    else {
      if (bVar24) {
        if (*(int *)((int)this + 0x60) == 1) {
          iVar27 = FUN_0068f130(iVar27);
          pfVar34 = (float *)(**(int **)((int)this + 0x5c) * 0x40 + *(int *)(packet + 0x14));
          iVar25 = **(int **)((int)this + 0x58) * 0x40;
          pfVar36 = (float *)(iVar25 + iVar27);
          fVar37 = *pfVar36;
          fVar1 = pfVar36[1];
          fVar2 = pfVar36[2];
          fVar3 = pfVar36[3];
          fVar4 = pfVar34[4];
          fVar5 = pfVar34[5];
          fVar6 = pfVar34[6];
          fVar7 = pfVar34[7];
          fVar8 = *pfVar34;
          fVar9 = pfVar34[1];
          fVar10 = pfVar34[2];
          fVar11 = pfVar34[3];
          fVar12 = pfVar34[8];
          fVar13 = pfVar34[9];
          fVar14 = pfVar34[10];
          fVar15 = pfVar34[0xb];
          fVar16 = pfVar34[0xc];
          fVar17 = pfVar34[0xd];
          fVar18 = pfVar34[0xe];
          fVar19 = pfVar34[0xf];
          iVar25 = iVar25 + iVar27;
          fVar20 = *(float *)(iVar25 + 0x10);
          fVar21 = *(float *)(iVar25 + 0x14);
          fVar22 = *(float *)(iVar25 + 0x18);
          fVar23 = *(float *)(iVar25 + 0x1c);
          local_50 = fVar37 * fVar8 + fVar1 * fVar4 + fVar2 * fVar12 + fVar3 * fVar16;
          fStack_4c = fVar37 * fVar9 + fVar1 * fVar5 + fVar2 * fVar13 + fVar3 * fVar17;
          fStack_48 = fVar37 * fVar10 + fVar1 * fVar6 + fVar2 * fVar14 + fVar3 * fVar18;
          fStack_44 = fVar37 * fVar11 + fVar1 * fVar7 + fVar2 * fVar15 + fVar3 * fVar19;
          fVar37 = *(float *)(iVar25 + 0x20);
          fVar1 = *(float *)(iVar25 + 0x24);
          fVar2 = *(float *)(iVar25 + 0x28);
          fVar3 = *(float *)(iVar25 + 0x2c);
          local_40 = fVar20 * fVar8 + fVar21 * fVar4 + fVar22 * fVar12 + fVar23 * fVar16;
          fStack_3c = fVar20 * fVar9 + fVar21 * fVar5 + fVar22 * fVar13 + fVar23 * fVar17;
          fStack_38 = fVar20 * fVar10 + fVar21 * fVar6 + fVar22 * fVar14 + fVar23 * fVar18;
          fStack_34 = fVar20 * fVar11 + fVar21 * fVar7 + fVar22 * fVar15 + fVar23 * fVar19;
          fVar20 = *(float *)(iVar25 + 0x30);
          fVar21 = *(float *)(iVar25 + 0x34);
          fVar22 = *(float *)(iVar25 + 0x38);
          fVar23 = *(float *)(iVar25 + 0x3c);
          local_30 = fVar1 * fVar4 + fVar37 * fVar8 + fVar2 * fVar12 + fVar3 * fVar16;
          fStack_2c = fVar1 * fVar5 + fVar37 * fVar9 + fVar2 * fVar13 + fVar3 * fVar17;
          fStack_28 = fVar1 * fVar6 + fVar37 * fVar10 + fVar2 * fVar14 + fVar3 * fVar18;
          fStack_24 = fVar1 * fVar7 + fVar37 * fVar11 + fVar2 * fVar15 + fVar3 * fVar19;
          local_20 = fVar20 * fVar8 + fVar21 * fVar4 + fVar22 * fVar12 + fVar23 * fVar16;
          fStack_1c = fVar20 * fVar9 + fVar21 * fVar5 + fVar22 * fVar13 + fVar23 * fVar17;
          fStack_18 = fVar20 * fVar10 + fVar21 * fVar6 + fVar22 * fVar14 + fVar23 * fVar18;
          fStack_14 = fVar20 * fVar11 + fVar21 * fVar7 + fVar22 * fVar15 + fVar23 * fVar19;
          puVar28 = FUN_0068ed30(this_00,DAT_011598c0);
          puVar29 = FUN_0068ed30(this_00,DAT_011598c4);
          if ((DAT_011d0610 & 2) == 0) {
            DAT_011d0610 = DAT_011d0610 | 2;
          }
          if ((DAT_011d0610 & 4) == 0) {
            DAT_011d0610 = DAT_011d0610 | 4;
          }
          if (puVar28[3] == 0) {
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
            local_1c8 = (float *)puVar28[3];
            pfVar36 = local_1c8;
            pfVar34 = local_1b0;
            for (iVar27 = 0x10; iVar27 != 0; iVar27 = iVar27 + -1) {
              *pfVar34 = *pfVar36;
              pfVar36 = pfVar36 + 1;
              pfVar34 = pfVar34 + 1;
            }
          }
          if (puVar29[3] == 0) {
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
            local_1c4 = (float *)puVar29[3];
            pfVar36 = local_1c4;
            pfVar34 = local_160;
            for (iVar27 = 0x10; iVar27 != 0; iVar27 = iVar27 + -1) {
              *pfVar34 = *pfVar36;
              pfVar36 = pfVar36 + 1;
              pfVar34 = pfVar34 + 1;
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
          piVar26 = (int *)FUN_0079a040(this_00,DAT_011598c4,0x11d0570);
          this = (void *)local_1d0;
        }
        goto LAB_00690ad0;
      }
      FUN_0068f8d0(this,(int)piVar26);
      uVar31 = *(uint *)((int)this + 0x60);
      puVar33 = *(undefined **)((int)this + 0x70);
    }
    piVar26 = (int *)FUN_0068eda0(this_00,DAT_011598d0,(int)puVar33,uVar31 * 3);
  }
LAB_00690ad0:
  if ((packet[0x35] != '\0') && (piVar26 = DAT_011598e0, DAT_011598e0 < *(int **)((int)this_00 + 8))
     ) {
    piVar26 = (int *)((int)DAT_011598e0 * 0x10 + *(int *)((int)this_00 + 4));
    *piVar26 = *piVar26 + 1;
    *(undefined2 *)(piVar26 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar26[3] = (int)&DAT_011598f8;
  }
  iVar27 = *(int *)(packet + 0x40);
  if (iVar27 != 0) {
    uVar31 = *(uint *)(packet + 0x44);
    if (uVar31 < 5) {
      iVar25 = 1;
      uVar31 = DAT_011598d4;
    }
    else {
      local_1d0 = CONCAT44(local_1d0._4_4_,uVar31);
      fVar37 = (float)(int)uVar31;
      if ((int)uVar31 < 0) {
        fVar37 = fVar37 + 4.2949673e+09;
      }
      dVar41 = ceil((double)(fVar37 * 0.25));
      iVar27 = *(int *)(packet + 0x40);
      local_1d0 = (longlong)ROUND(dVar41);
      iVar25 = (int)local_1d0;
      uVar31 = DAT_011598d8;
    }
    piVar26 = (int *)FUN_0068eda0(this_00,uVar31,iVar27,iVar25);
  }
  auVar39 = *(undefined1 (*) [16])(packet + 0x50);
  auVar38._0_4_ = auVar39._0_4_ * -1.0;
  auVar38._4_4_ = auVar39._4_4_ * -1.0;
  auVar38._8_4_ = auVar39._8_4_ * -1.0;
  auVar38._12_4_ = auVar39._12_4_ * -1.0;
  auVar39 = maxps(auVar38,auVar39);
  auVar40._4_4_ = -(uint)(auVar39._4_4_ <= 1.1920929e-07);
  auVar40._0_4_ = -(uint)(auVar39._0_4_ <= 1.1920929e-07);
  auVar40._8_4_ = -(uint)(auVar39._8_4_ <= 1.1920929e-07);
  auVar40._12_4_ = -(uint)(auVar39._12_4_ <= 1.1920929e-07);
  iVar27 = movmskps(piVar26,auVar40);
  if ((iVar27 != 0xf) && (DAT_011598dc < *(uint *)((int)this_00 + 8))) {
    piVar26 = (int *)(DAT_011598dc * 0x10 + *(int *)((int)this_00 + 4));
    *piVar26 = *piVar26 + 1;
    piVar26[2] = 1;
    *(undefined2 *)((int)piVar26 + 6) = 2;
    *(undefined2 *)(piVar26 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar26[3] = (int)(packet + 0x50);
  }
  if ((*(byte *)((int)this + 0xc1) & 8) == 0) {
    if ((*(byte *)((int)this + 0xc1) & 0x10) != 0) {
      pvVar30 = (void *)Graphics_GetManagerSingleton();
      FUN_0060f2a0((int)pvVar30);
      iVar27 = 0x3f;
      uVar31 = FUN_0060fe80((int)pvVar30);
      RenderDevice_SetStencilCompareReferenceMask(pvVar30,2,uVar31 | 0x40,iVar27);
      RenderDevice_SetStencilOpsFromIndices(pvVar30,0,0,2);
      FUN_0060fe30(pvVar30,1);
      iVar27 = 0x40;
      goto LAB_00690ca0;
    }
    if ((*(byte *)((int)this + 0xc0) & 8) != 0) {
      pvVar30 = (void *)Graphics_GetManagerSingleton();
      FUN_0060f2a0((int)pvVar30);
      iVar27 = 0x3f;
      uVar31 = FUN_0060fe80((int)pvVar30);
      RenderDevice_SetStencilCompareReferenceMask(pvVar30,2,uVar31 | 0x80,iVar27);
      RenderDevice_SetStencilOpsFromIndices(pvVar30,0,0,2);
      FUN_0060fe30(pvVar30,1);
      iVar27 = 0x80;
      goto LAB_00690ca0;
    }
  }
  else {
    pvVar30 = (void *)Graphics_GetManagerSingleton();
    FUN_0060f2a0((int)pvVar30);
    iVar27 = 0x3f;
    uVar31 = FUN_0060fe80((int)pvVar30);
    RenderDevice_SetStencilCompareReferenceMask(pvVar30,2,uVar31 | 0x40,iVar27);
    RenderDevice_SetStencilOpsFromIndices(pvVar30,0,0,1);
    FUN_0060fe30(pvVar30,1);
    iVar27 = 0x40;
LAB_00690ca0:
    RenderDevice_SetStencilWriteMask(pvVar30,iVar27);
    RenderDevice_ApplyPendingBaselines(pvVar30);
  }
  pTVar35 = local_1d4;
  if ((*(float *)(packet + 0x3c) != 0.0) && (DAT_011598c8 < *(uint *)((int)this_00 + 8))) {
    piVar26 = (int *)(DAT_011598c8 * 0x10 + *(int *)((int)this_00 + 4));
    *piVar26 = *piVar26 + 1;
    *(undefined2 *)(piVar26 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar26[3] = (int)(packet + 0x3c);
  }
  local_1bc = local_1b4;
  local_1b8 = packet;
  local_1c0 = this;
  if ((((*(byte *)((int)this + 0xc0) & 0x10) == 0) || (packet[0x36] == '\0')) || (local_1f1 != '\0')
     ) {
    uVar31 = *(uint *)((int)this + 0x78);
    if (-1 < (int)*(uint *)(packet + 0x24)) {
      uVar31 = *(uint *)(packet + 0x24);
    }
    ShaderDefinition_SelectTechniqueOrdinal(local_1d4,uVar31);
    pTVar35 = local_1d4;
    if (*(int *)(packet + 0x28) != 0) {
      drawCallback = RenderObject_SubmitSpecialGeometry;
      goto LAB_00690d55;
    }
  }
  else {
    ShaderDefinition_SelectTechniqueOrdinal(local_1d4,1);
  }
  drawCallback = RenderObject_SubmitSelectedGeometryRange;
LAB_00690d55:
  ShaderDefinition_DrawSelectedTechnique(pTVar35,drawCallback,&local_1c0);
  FUN_0079a130((int)this_00);
  if ((*(byte *)((int)this + 0xc1) & 0x20) != 0) {
    pvVar32 = (void *)Graphics_GetManagerSingleton();
    pvVar30 = this;
    pGVar42 = local_1bc;
    puVar33 = FUN_009e3b80();
    FUN_009e4f80(puVar33,(int)pvVar30,(int)pGVar42,pvVar32);
  }
  if (((*(byte *)((int)this + 0xc0) & 8) != 0) || ((*(byte *)((int)this + 0xc1) & 0x18) != 0)) {
    iVar27 = Graphics_GetManagerSingleton();
    FUN_00610330(iVar27);
  }
  if (local_1c8 != (float *)0x0) {
    FUN_0079a040(this_00,DAT_011598c0,(int)local_1c8);
    FUN_0079a040(this_00,DAT_011598c4,(int)local_1c4);
  }
  return;
}

