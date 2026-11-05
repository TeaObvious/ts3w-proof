/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 local light rig contract. ECXrig,noargsRET. Initializesglobaldotweights(1,1,1,1)
   andtint(.8,.8,1,.8) oncewithunsynchronizedflag11D1E30. Dynamicmaxstrength11D1BC0;
   directionScale11D1BC8 usedifstateDWORD+1D4==0 else11D1BD0. Accumulatesprimary4thensecondary4
   weightedfourlane direction using(R+G+B) each. LengthusesXYZ, SQRTPS thenscale.
   Bit-signselectionsmaxwith0/minwithmaxstrength include-0/NaNsemantics, notunqualifiedMath.Clamp.
   Orderedstrength>stored.01 gate. SetsY0; rejectsONLYwhenABS(X),ABS(0),ABS(Z) ALL<=stored.001
   viaMAXPS/CM(P)LEPS/MOVMSKlow3, notXZlengthSquared<=1e-6.
   NormalizeXZusingRSQRTPS+TWONewtonrefinements(separateSSE), negateallfourlanes. Movesoldprimary3
   tosecondary3, shiftsprimary1/2 to2/3, insertsopposingdirection/tintcoloratprimary1;
   primary0andsecondary0..2retained. RuntimeFP/SSEapproximationandsettingsproducerremainopen. */

void __thiscall Rig_InsertOpposingFill(void *this)

{
  undefined1 auVar1 [16];
  float *pfVar2;
  float *pfVar3;
  float *pfVar4;
  undefined1 auVar5 [16];
  float *pfVar6;
  uint uVar7;
  undefined4 uVar8;
  undefined4 *puVar9;
  int iVar10;
  float fVar11;
  float fVar12;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  float fVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar27;
  float fVar28;
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  float fVar29;
  float fVar30;
  float fVar31;
  float fVar32;
  float fVar33;
  
  if ((DAT_011d1e30 & 1) == 0) {
    DAT_011d1e30 = DAT_011d1e30 | 1;
    _DAT_011d1e20 = FLOAT_00f998f8;
    fRam011d1e24 = FLOAT_00f998f8;
    fRam011d1e28 = FLOAT_00f998f8;
    fRam011d1e2c = FLOAT_00f998f8;
  }
  if ((DAT_011d1e30 & 2) == 0) {
    DAT_011d1e30 = DAT_011d1e30 | 2;
    _DAT_011d1e10 = DAT_00f9e51c;
    fRam011d1e14 = DAT_00f9e51c;
    fRam011d1e18 = FLOAT_00f998f8;
    fRam011d1e1c = DAT_00f9e51c;
  }
  pfVar6 = (float *)FUN_007e51a0(&DAT_011d1bc0);
  fVar11 = *pfVar6;
  pfVar6 = (float *)FUN_007e51a0(&DAT_011d1bc8);
  fVar12 = *pfVar6;
  pfVar6 = (float *)FUN_007e51a0(&DAT_011d1bd0);
  fVar23 = *pfVar6;
  if (*(int *)((int)this + 0x1d4) == 0) {
    fVar23 = fVar12;
  }
  fVar12 = 0.0;
  fVar15 = 0.0;
  fVar16 = 0.0;
  fVar19 = 0.0;
  iVar10 = 4;
  pfVar6 = this;
  do {
    fVar21 = pfVar6[0x16] * fRam011d1e28 + pfVar6[0x15] * fRam011d1e24 +
             pfVar6[0x14] * _DAT_011d1e20;
    iVar10 = iVar10 + -1;
    fVar12 = fVar21 * pfVar6[4] + fVar12;
    fVar15 = fVar21 * pfVar6[5] + fVar15;
    fVar16 = fVar21 * pfVar6[6] + fVar16;
    fVar19 = fVar21 * pfVar6[7] + fVar19;
    pfVar6 = pfVar6 + 4;
  } while (iVar10 != 0);
  pfVar6 = (float *)((int)this + 0x90);
  iVar10 = 4;
  do {
    fVar22 = pfVar6[0x12] * fRam011d1e28 + pfVar6[0x11] * fRam011d1e24 +
             pfVar6[0x10] * _DAT_011d1e20;
    fVar21 = *pfVar6;
    pfVar2 = pfVar6 + 1;
    pfVar3 = pfVar6 + 2;
    pfVar4 = pfVar6 + 3;
    pfVar6 = pfVar6 + 4;
    iVar10 = iVar10 + -1;
    fVar12 = fVar22 * fVar21 + fVar12;
    fVar15 = fVar22 * *pfVar2 + fVar15;
    fVar16 = fVar22 * *pfVar3 + fVar16;
    fVar19 = fVar22 * *pfVar4 + fVar19;
  } while (iVar10 != 0);
  auVar25._0_4_ = fVar12 * fVar12;
  auVar25._4_4_ = fVar15 * fVar15;
  auVar25._8_4_ = fVar16 * fVar16;
  auVar25._12_4_ = fVar19 * fVar19;
  auVar26._0_4_ = auVar25._8_4_ + auVar25._4_4_ + auVar25._0_4_;
  auVar26._4_4_ = auVar26._0_4_;
  auVar26._8_4_ = auVar26._0_4_;
  auVar26._12_4_ = auVar26._0_4_;
  auVar26 = sqrtps(auVar25,auVar26);
  fVar23 = auVar26._0_4_ * fVar23;
  fVar23 = (float)((uint)fVar23 & (int)(FLOAT_00f998f0 - fVar23) >> 0x1f);
  fVar15 = fVar11 - fVar23;
  uVar7 = (int)fVar15 >> 0x1f;
  fVar11 = (float)(~uVar7 & (uint)fVar23 | (uint)fVar11 & uVar7);
  if (_DAT_0106e6ec < fVar11) {
    auVar5._4_4_ = 0;
    auVar5._0_4_ = fVar12;
    auVar5._8_4_ = fVar16;
    auVar5._12_4_ = fVar19;
    auVar13._0_4_ = FLOAT_00fab218 * fVar12;
    auVar13._4_4_ = FLOAT_00fab218 * 0.0;
    auVar13._8_4_ = FLOAT_00fab218 * fVar16;
    auVar13._12_4_ = FLOAT_00fab218 * fVar19;
    auVar26 = maxps(auVar13,auVar5);
                    /* Componentwise ABS(X,0,Z)<=stored0.001f; low3MOVMSK==7 rejects. NOT
                       vectorlengthSquared<=1e-6. */
    auVar14._4_4_ = -(uint)(auVar26._4_4_ <= FLOAT_00fb35b4);
    auVar14._0_4_ = -(uint)(auVar26._0_4_ <= FLOAT_00fb35b4);
    auVar14._8_4_ = -(uint)(auVar26._8_4_ <= FLOAT_00fb35b4);
    auVar14._12_4_ = -(uint)(auVar26._12_4_ <= FLOAT_00fb35b4);
    uVar8 = movmskps(uVar7,auVar14);
    if (((byte)uVar8 & 7) != 7) {
      fVar23 = fVar16 * fVar16 + 0.0 + fVar12 * fVar12;
      auVar1._4_4_ = fVar23;
      auVar1._0_4_ = fVar23;
      auVar1._8_4_ = fVar23;
      auVar1._12_4_ = fVar23;
      auVar26 = rsqrtps(ZEXT416((uint)fVar15),auVar1);
      fVar24 = auVar26._0_4_;
      fVar27 = auVar26._4_4_;
      fVar28 = auVar26._8_4_;
      fVar29 = auVar26._12_4_;
      fVar24 = (FLOAT_00f998f8 - fVar24 * fVar24 * fVar23) * _DAT_00f9b5b4 * fVar24 + fVar24;
      fVar27 = (FLOAT_00f998f8 - fVar27 * fVar27 * fVar23) * _DAT_00f9b5b4 * fVar27 + fVar27;
      fVar28 = (FLOAT_00f998f8 - fVar28 * fVar28 * fVar23) * _DAT_00f9b5b4 * fVar28 + fVar28;
      fVar29 = (FLOAT_00f998f8 - fVar29 * fVar29 * fVar23) * _DAT_00f9b5b4 * fVar29 + fVar29;
      fVar30 = _DAT_00f9b5b4 * fVar24;
      fVar31 = _DAT_00f9b5b4 * fVar27;
      fVar32 = _DAT_00f9b5b4 * fVar28;
      fVar33 = _DAT_00f9b5b4 * fVar29;
      fVar15 = FLOAT_00f998f8 - fVar24 * fVar24 * fVar23;
      fVar21 = FLOAT_00f998f8 - fVar27 * fVar27 * fVar23;
      fVar17 = FLOAT_00f998f8 - fVar28 * fVar28 * fVar23;
      fVar20 = FLOAT_00f998f8 - fVar29 * fVar29 * fVar23;
      fVar23 = fVar11 * _DAT_011d1e10;
      fVar22 = fVar11 * fRam011d1e14;
      fVar18 = fVar11 * fRam011d1e18;
      fVar11 = fVar11 * fRam011d1e1c;
      puVar9 = (undefined4 *)((int)this + 0x80);
      *(undefined4 *)((int)this + 0x100) = *(undefined4 *)((int)this + 0x80);
      *(undefined4 *)((int)this + 0x104) = *(undefined4 *)((int)this + 0x84);
      *(undefined4 *)((int)this + 0x108) = *(undefined4 *)((int)this + 0x88);
      *(undefined4 *)((int)this + 0x10c) = *(undefined4 *)((int)this + 0x8c);
      *(undefined4 *)((int)this + 0xc0) = *(undefined4 *)((int)this + 0x40);
      *(undefined4 *)((int)this + 0xc4) = *(undefined4 *)((int)this + 0x44);
      *(undefined4 *)((int)this + 200) = *(undefined4 *)((int)this + 0x48);
      *(undefined4 *)((int)this + 0xcc) = *(undefined4 *)((int)this + 0x4c);
      iVar10 = 2;
      do {
        *puVar9 = puVar9[-4];
        puVar9[1] = puVar9[-3];
        puVar9[2] = puVar9[-2];
        puVar9[3] = puVar9[-1];
        puVar9[-0x10] = puVar9[-0x14];
        puVar9[-0xf] = puVar9[-0x13];
        puVar9[-0xe] = puVar9[-0x12];
        puVar9[-0xd] = puVar9[-0x11];
        puVar9 = puVar9 + -4;
        iVar10 = iVar10 + -1;
      } while (iVar10 != 0);
      *(float *)((int)this + 0x60) = fVar23;
      *(float *)((int)this + 100) = fVar22;
      *(float *)((int)this + 0x68) = fVar18;
      *(float *)((int)this + 0x6c) = fVar11;
      *(float *)((int)this + 0x20) = 0.0 - (fVar15 * fVar30 + fVar24) * fVar12;
      *(float *)((int)this + 0x24) = 0.0 - (fVar21 * fVar31 + fVar27) * 0.0;
      *(float *)((int)this + 0x28) = 0.0 - (fVar17 * fVar32 + fVar28) * fVar16;
      *(float *)((int)this + 0x2c) = 0.0 - (fVar20 * fVar33 + fVar29) * fVar19;
    }
  }
  return;
}

