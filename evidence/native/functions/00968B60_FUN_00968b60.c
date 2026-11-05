/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Physical virtual update ECX plus two stack words RET8; stored one-float prototype incomplete. ADDSS elapsed before current alternate-curve branch. Ordinary interval traversal uses a byte index, compares selected time, and destination control type1 linear/type2 copied endpoint/other cubic; scalar9677A0 receives t,t2,t3 and four scalar controls in seven caller-popped words. Vector cubic8565C0 is distinct. Later yaw/pitch/roll trigonometry, horizontal FOV, ground+1.5 and camera writes precede end comparison/finish. Full alternate receiver, numeric bit equivalence/large interval/nonfinite behavior remains open.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00968B60_FUN_00968b60.asm
 */

void __thiscall FUN_00968b60(void *this,float param_1)

{
  int *piVar1;
  float *pfVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  char cVar14;
  undefined4 *puVar15;
  uint uVar16;
  byte bVar17;
  int iVar18;
  byte bVar19;
  float *pfVar20;
  float10 fVar21;
  float10 fVar22;
  float fVar23;
  float fVar24;
  float fStack_188;
  float afStack_120 [4];
  float fStack_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float fStack_100;
  float fStack_f0;
  float fStack_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float afStack_b0 [2];
  undefined1 auStack_a8 [20];
  undefined1 auStack_94 [20];
  float afStack_80 [8];
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  piVar3 = *(int **)((int)this + 0x18c);
  if ((piVar3 != (int *)0x0) && (*(char *)((int)this + 0x1a0) != '\0')) {
    *(float *)((int)this + 0x194) = param_1 + *(float *)((int)this + 0x194);
    iVar6 = (piVar3[1] - *piVar3) / 0x30;
    piVar1 = (int *)((int)this + 0x60);
    cVar14 = (**(code **)(*piVar1 + 4))();
    if (cVar14 == '\0') {
      bVar19 = (char)iVar6 - 4;
      fStack_188 = FLOAT_00f998f8;
      bVar17 = 2;
      if (2 < iVar6 - 1U) {
        uVar16 = 2;
        do {
          fVar23 = *(float *)(*piVar3 + 0x24 + uVar16 * 0x30);
          fVar24 = *(float *)(*piVar3 + -0xc + uVar16 * 0x30);
          if (*(float *)((int)this + 0x194) <= fVar23) {
            bVar19 = bVar17 - 2;
            fStack_188 = (*(float *)((int)this + 0x194) - fVar24) / (fVar23 - fVar24);
            break;
          }
          bVar17 = bVar17 + 1;
          uVar16 = (uint)bVar17;
        } while (uVar16 < iVar6 - 1U);
      }
      uVar16 = (uint)bVar19;
      iVar4 = *piVar3;
      iVar18 = uVar16 * 0x30;
      iVar5 = *(int *)(iVar18 + 0x88 + iVar4);
      pfVar2 = (float *)(iVar18 + iVar4);
      if (iVar5 == 1) {
        fVar23 = pfVar2[0xd];
        fVar24 = pfVar2[0xe];
        fVar7 = pfVar2[0xf];
        pfVar20 = (float *)((uVar16 * 3 + 6) * 0x10 + iVar4);
        fVar8 = pfVar20[1];
        fVar9 = pfVar20[2];
        fVar10 = pfVar20[3];
        *(float *)((int)this + 0x120) = (*pfVar20 - pfVar2[0xc]) * fStack_188 + pfVar2[0xc];
        *(float *)((int)this + 0x124) = (fVar8 - fVar23) * fStack_188 + fVar23;
        *(float *)((int)this + 0x128) = (fVar9 - fVar24) * fStack_188 + fVar24;
        *(float *)((int)this + 300) = (fVar10 - fVar7) * fStack_188 + fVar7;
        pfVar2 = (float *)(*piVar3 + 0x40 + iVar18);
        fVar23 = pfVar2[1];
        fVar24 = pfVar2[2];
        fVar7 = pfVar2[3];
        pfVar20 = (float *)(*piVar3 + 0x70 + iVar18);
        fVar8 = pfVar20[1];
        fVar9 = pfVar20[2];
        fVar10 = pfVar20[3];
        *(float *)((int)this + 0x160) = (*pfVar20 - *pfVar2) * fStack_188 + *pfVar2;
        *(float *)((int)this + 0x164) = (fVar8 - fVar23) * fStack_188 + fVar23;
        *(float *)((int)this + 0x168) = (fVar9 - fVar24) * fStack_188 + fVar24;
        *(float *)((int)this + 0x16c) = (fVar10 - fVar7) * fStack_188 + fVar7;
        fVar23 = *(float *)(*piVar3 + 0x50 + iVar18);
        *(float *)((int)this + 0x10) =
             (*(float *)(*piVar3 + 0x80 + iVar18) - fVar23) * fStack_188 + fVar23;
      }
      else if (iVar5 == 2) {
        puVar15 = (undefined4 *)((uVar16 * 3 + 6) * 0x10 + iVar4);
        uVar11 = puVar15[1];
        uVar12 = puVar15[2];
        uVar13 = puVar15[3];
        *(undefined4 *)((int)this + 0x120) = *puVar15;
        *(undefined4 *)((int)this + 0x124) = uVar11;
        *(undefined4 *)((int)this + 0x128) = uVar12;
        *(undefined4 *)((int)this + 300) = uVar13;
        puVar15 = (undefined4 *)(*piVar3 + 0x70 + iVar18);
        uVar11 = puVar15[1];
        uVar12 = puVar15[2];
        uVar13 = puVar15[3];
        *(undefined4 *)((int)this + 0x160) = *puVar15;
        *(undefined4 *)((int)this + 0x164) = uVar11;
        *(undefined4 *)((int)this + 0x168) = uVar12;
        *(undefined4 *)((int)this + 0x16c) = uVar13;
        *(undefined4 *)((int)this + 0x10) = *(undefined4 *)(*piVar3 + 0x80 + iVar18);
      }
      else {
        fVar23 = fStack_188 * fStack_188;
        fVar24 = fVar23 * fStack_188;
        puVar15 = (undefined4 *)
                  FUN_008565c0(afStack_b0,fStack_188,fVar23,fVar24,pfVar2,pfVar2 + 0xc,
                               (float *)((uVar16 * 3 + 6) * 0x10 + iVar4),
                               (float *)((uVar16 * 3 + 9) * 0x10 + iVar4));
        uVar11 = puVar15[1];
        uVar12 = puVar15[2];
        uVar13 = puVar15[3];
        *(undefined4 *)((int)this + 0x120) = *puVar15;
        *(undefined4 *)((int)this + 0x124) = uVar11;
        *(undefined4 *)((int)this + 0x128) = uVar12;
        *(undefined4 *)((int)this + 300) = uVar13;
        iVar4 = *piVar3 + iVar18;
        puVar15 = (undefined4 *)
                  FUN_008565c0(afStack_80,fStack_188,fVar23,fVar24,(float *)(iVar4 + 0x10),
                               (float *)(iVar4 + 0x40),(float *)(iVar4 + 0x70),
                               (float *)(iVar4 + 0xa0));
        uVar11 = puVar15[1];
        uVar12 = puVar15[2];
        uVar13 = puVar15[3];
        *(undefined4 *)((int)this + 0x160) = *puVar15;
        *(undefined4 *)((int)this + 0x164) = uVar11;
        *(undefined4 *)((int)this + 0x168) = uVar12;
        *(undefined4 *)((int)this + 0x16c) = uVar13;
        iVar4 = *piVar3;
        fVar21 = FUN_009677a0(fStack_188,fVar23,fVar24,*(float *)(iVar4 + iVar18 + 0x20),
                              *(float *)(iVar4 + iVar18 + 0x50),*(float *)(iVar4 + 0x80 + iVar18),
                              *(float *)(iVar4 + 0xb0 + iVar18));
        *(float *)((int)this + 0x10) = (float)fVar21;
      }
    }
    else {
      (**(code **)*piVar1)(param_1);
      puVar15 = (undefined4 *)(**(code **)(*piVar1 + 0x1c))(auStack_94);
      uVar11 = puVar15[1];
      uVar12 = puVar15[2];
      uVar13 = puVar15[3];
      *(undefined4 *)((int)this + 0x120) = *puVar15;
      *(undefined4 *)((int)this + 0x124) = uVar11;
      *(undefined4 *)((int)this + 0x128) = uVar12;
      *(undefined4 *)((int)this + 300) = uVar13;
      puVar15 = (undefined4 *)(**(code **)(*piVar1 + 0x30))(auStack_a8);
      uVar11 = puVar15[1];
      uVar12 = puVar15[2];
      uVar13 = puVar15[3];
      *(undefined4 *)((int)this + 0x160) = *puVar15;
      *(undefined4 *)((int)this + 0x164) = uVar11;
      *(undefined4 *)((int)this + 0x168) = uVar12;
      *(undefined4 *)((int)this + 0x16c) = uVar13;
      fVar21 = (float10)(**(code **)(*(int *)((int)this + 0x60) + 0x2c))();
      *(float *)((int)this + 0x10) = (float)fVar21;
    }
    pfVar20 = (float *)((int)this + 0x120);
    Camera_SetHorizontalFieldOfViewDegrees(*(void **)((int)this + 0xc),*(float *)((int)this + 0x10))
    ;
    fStack_104 = *(float *)((int)this + 0x164);
    fStack_110 = 0.0 - fStack_104;
    fStack_10c = 0.0 - fStack_104;
    fStack_108 = 0.0 - fStack_104;
    fStack_104 = 0.0 - fStack_104;
    fVar21 = (float10)fsin((float10)fStack_110);
    fVar23 = (float)fVar21;
    fVar21 = (float10)fcos((float10)fStack_110);
    fVar24 = (float)fVar21;
    fStack_c0 = fVar23 * FLOAT_00f998f8 + fVar24 * 0.0;
    fStack_bc = fVar23 * 0.0 + fVar24 * 0.0;
    fStack_b8 = fVar23 * 0.0 + FLOAT_00f998f8 * fVar24;
    fStack_b4 = fVar23 * 0.0 + fVar24 * 0.0;
    fVar21 = (float10)fcos((float10)*(float *)((int)this + 0x168));
    fStack_e0 = fVar24 * FLOAT_00f998f8 - fVar23 * 0.0;
    fStack_dc = fVar24 * 0.0 - fVar23 * 0.0;
    fStack_d8 = fVar24 * 0.0 - FLOAT_00f998f8 * fVar23;
    fStack_d4 = fVar24 * 0.0 - fVar23 * 0.0;
    fVar23 = (float)fVar21;
    fVar21 = (float10)fsin((float10)*(float *)((int)this + 0x168));
    fVar24 = (float)fVar21;
    fStack_60 = fVar23 * 0.0 - fVar24 * fStack_e0;
    fStack_5c = fVar23 * FLOAT_00f998f8 - fVar24 * fStack_dc;
    fStack_58 = fVar23 * 0.0 - fVar24 * fStack_d8;
    fStack_54 = fVar23 * 0.0 - fVar24 * fStack_d4;
    fVar21 = (float10)fsin((float10)*(float *)((int)this + 0x160));
    fVar23 = (float)fVar21;
    pfVar2 = (float *)((int)this + 0x130);
    fVar21 = (float10)fcos((float10)*(float *)((int)this + 0x160));
    fVar24 = (float)fVar21;
    fStack_20 = fStack_c0 * fVar24 - fStack_60 * fVar23;
    fStack_1c = fStack_bc * fVar24 - fStack_5c * fVar23;
    fStack_18 = fStack_b8 * fVar24 - fStack_58 * fVar23;
    fStack_14 = fStack_b4 * fVar24 - fStack_54 * fVar23;
    fStack_30 = fStack_60 * fVar24 + fStack_c0 * fVar23;
    fStack_2c = fStack_5c * fVar24 + fStack_bc * fVar23;
    fStack_28 = fStack_58 * fVar24 + fStack_b8 * fVar23;
    fStack_24 = fStack_54 * fVar24 + fStack_b4 * fVar23;
    *pfVar2 = 0.0 - fStack_20;
    *(float *)((int)this + 0x134) = 0.0 - fStack_1c;
    *(float *)((int)this + 0x138) = 0.0 - fStack_18;
    *(float *)((int)this + 0x13c) = 0.0 - fStack_14;
    *(float *)((int)this + 0x140) = fStack_30;
    *(float *)((int)this + 0x144) = fStack_2c;
    *(float *)((int)this + 0x148) = fStack_28;
    *(float *)((int)this + 0x14c) = fStack_24;
    fVar22 = FUN_00967e50(this,pfVar20);
    fVar21 = (float10)DAT_0103fd68;
    fStack_100 = *(float *)((int)this + 0x124);
    fStack_f0 = (float)(fVar22 + fVar21);
    if (fStack_100 < fStack_f0) {
      *pfVar20 = *pfVar20;
      *(float *)((int)this + 0x124) = (float)(fVar22 + fVar21);
      *(undefined4 *)((int)this + 0x128) = *(undefined4 *)((int)this + 0x128);
      *(undefined4 *)((int)this + 300) = *(undefined4 *)((int)this + 300);
    }
    FUN_00961bd0(*(void **)((int)this + 0xc),pfVar20,(float *)((int)this + 0x140),pfVar2);
    FUN_009636d0(this,afStack_120,pfVar2,DAT_00fbc934);
    FUN_00960b40(*(void **)((int)this + 0xc),afStack_120);
    FUN_00960b60(*(void **)((int)this + 0xc),afStack_120);
    FUN_009612e0(*(void **)((int)this + 0xc),'\x01');
    if ((cVar14 == '\0') &&
       (*(float *)(iVar6 * 0x30 + -0x3c + *piVar3) <= *(float *)((int)this + 0x194))) {
      FUN_00968a80((int)this);
    }
  }
  return;
}

