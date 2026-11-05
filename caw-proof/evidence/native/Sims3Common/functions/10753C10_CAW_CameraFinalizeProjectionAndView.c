/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Finalize path calls the native projection builder0x107538A0
   and updates retained view/world matrices. Original matrix getters copy these retained matrices;
   this call chain does not perform an OpenGL depth adjustment. Analyst-assigned helper names are
   not recovered original symbols. Original instructions govern decompiler ABI/register artifacts.
    */

void __thiscall CAW_CameraFinalizeProjectionAndView(void *this,char param_1)

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
  float fVar25;
  float fVar26;
  float fVar27;
  float fVar28;
  float fVar29;
  float fVar30;
  float fVar31;
  float fVar32;
  float fVar33;
  float fVar34;
  float fVar35;
  float fVar36;
  float fVar37;
  float fVar38;
  undefined4 uVar39;
  undefined4 uVar40;
  undefined4 uVar41;
  undefined4 *puVar42;
  float *pfVar43;
  float10 fVar44;
  float fVar45;
  float fVar46;
  undefined1 local_140 [16];
  undefined4 local_130;
  undefined4 uStack_12c;
  undefined4 uStack_128;
  undefined4 uStack_124;
  undefined4 local_120;
  undefined4 uStack_11c;
  undefined4 uStack_118;
  undefined4 uStack_114;
  undefined4 local_110;
  undefined4 uStack_10c;
  undefined4 uStack_108;
  undefined4 uStack_104;
  float local_100 [4];
  float local_f0 [4];
  float local_e0 [4];
  undefined1 local_d0 [64];
  undefined1 local_90 [64];
  undefined1 local_50 [76];
  
  if ((param_1 != '\0') && (*(char *)((int)this + 0x6fc) != '\0')) {
    fVar44 = FUN_107535a0((int)this);
    if ((*(char *)((int)this + 0x6e0) == '\0') || (*(int *)((int)this + 8) != 0)) {
      fVar45 = *(float *)((int)this + 0x6b0);
      fVar46 = *(float *)((int)this + 0x6b4);
    }
    else {
      fVar45 = *(float *)((int)this + 0x6c0);
      fVar46 = *(float *)((int)this + 0x6c4);
    }
    *(float *)((int)this + 0x1c) =
         (fVar45 - *(float *)((int)this + 0x6a0)) * (float)fVar44 + *(float *)((int)this + 0x6a0);
    *(float *)((int)this + 0x20) =
         (fVar46 - *(float *)((int)this + 0x6a4)) * (float)fVar44 + *(float *)((int)this + 0x6a4);
  }
  CAW_CameraBuildNativeProjection((int)this);
  puVar42 = (undefined4 *)
            FUN_10074d30((undefined1 (*) [16])local_d0,(undefined1 (*) [16])((int)this + 0x30),
                         local_f0);
  uVar39 = puVar42[1];
  uVar40 = puVar42[2];
  uVar41 = puVar42[3];
  *(undefined4 *)((int)this + 0xb0) = *puVar42;
  *(undefined4 *)((int)this + 0xb4) = uVar39;
  *(undefined4 *)((int)this + 0xb8) = uVar40;
  *(undefined4 *)((int)this + 0xbc) = uVar41;
  uVar39 = puVar42[5];
  uVar40 = puVar42[6];
  uVar41 = puVar42[7];
  *(undefined4 *)((int)this + 0xc0) = puVar42[4];
  *(undefined4 *)((int)this + 0xc4) = uVar39;
  *(undefined4 *)((int)this + 200) = uVar40;
  *(undefined4 *)((int)this + 0xcc) = uVar41;
  uVar39 = puVar42[9];
  uVar40 = puVar42[10];
  uVar41 = puVar42[0xb];
  *(undefined4 *)((int)this + 0xd0) = puVar42[8];
  *(undefined4 *)((int)this + 0xd4) = uVar39;
  *(undefined4 *)((int)this + 0xd8) = uVar40;
  *(undefined4 *)((int)this + 0xdc) = uVar41;
  uVar39 = puVar42[0xd];
  uVar40 = puVar42[0xe];
  uVar41 = puVar42[0xf];
  *(undefined4 *)((int)this + 0xe0) = puVar42[0xc];
  *(undefined4 *)((int)this + 0xe4) = uVar39;
  *(undefined4 *)((int)this + 0xe8) = uVar40;
  *(undefined4 *)((int)this + 0xec) = uVar41;
  fVar45 = *(float *)((int)this + 0xb0);
  fVar46 = *(float *)((int)this + 0xb4);
  fVar1 = *(float *)((int)this + 0xb8);
  fVar2 = *(float *)((int)this + 0xbc);
  fVar3 = *(float *)((int)this + 0x80);
  fVar4 = *(float *)((int)this + 0x84);
  fVar5 = *(float *)((int)this + 0x88);
  fVar6 = *(float *)((int)this + 0x8c);
  fVar7 = *(float *)((int)this + 0x70);
  fVar8 = *(float *)((int)this + 0x74);
  fVar9 = *(float *)((int)this + 0x78);
  fVar10 = *(float *)((int)this + 0x7c);
  fVar11 = *(float *)((int)this + 0x90);
  fVar12 = *(float *)((int)this + 0x94);
  fVar13 = *(float *)((int)this + 0x98);
  fVar14 = *(float *)((int)this + 0x9c);
  fVar15 = *(float *)((int)this + 0xa0);
  fVar16 = *(float *)((int)this + 0xa4);
  fVar17 = *(float *)((int)this + 0xa8);
  fVar18 = *(float *)((int)this + 0xac);
  fVar19 = *(float *)((int)this + 0xc0);
  fVar20 = *(float *)((int)this + 0xc4);
  fVar21 = *(float *)((int)this + 200);
  fVar22 = *(float *)((int)this + 0xcc);
  fVar23 = *(float *)((int)this + 0xd0);
  fVar24 = *(float *)((int)this + 0xd4);
  fVar25 = *(float *)((int)this + 0xd8);
  fVar26 = *(float *)((int)this + 0xdc);
  fVar27 = *(float *)((int)this + 0xa0);
  fVar28 = *(float *)((int)this + 0xa4);
  fVar29 = *(float *)((int)this + 0xa8);
  fVar30 = *(float *)((int)this + 0xac);
  fVar31 = *(float *)((int)this + 0xe0);
  fVar32 = *(float *)((int)this + 0xe4);
  fVar33 = *(float *)((int)this + 0xe8);
  fVar34 = *(float *)((int)this + 0xec);
  fVar35 = *(float *)((int)this + 0xa0);
  fVar36 = *(float *)((int)this + 0xa4);
  fVar37 = *(float *)((int)this + 0xa8);
  fVar38 = *(float *)((int)this + 0xac);
  *(float *)*(undefined1 (*) [16])((int)this + 0x130) =
       fVar45 * fVar7 + fVar46 * fVar3 + fVar1 * fVar11 + fVar2 * fVar15;
  *(float *)((int)this + 0x134) = fVar45 * fVar8 + fVar46 * fVar4 + fVar1 * fVar12 + fVar2 * fVar16;
  *(float *)((int)this + 0x138) = fVar45 * fVar9 + fVar46 * fVar5 + fVar1 * fVar13 + fVar2 * fVar17;
  *(float *)((int)this + 0x13c) = fVar45 * fVar10 + fVar46 * fVar6 + fVar1 * fVar14 + fVar2 * fVar18
  ;
  *(float *)((int)this + 0x140) =
       fVar19 * fVar7 + fVar20 * fVar3 + fVar21 * fVar11 + fVar22 * fVar15;
  *(float *)((int)this + 0x144) =
       fVar19 * fVar8 + fVar20 * fVar4 + fVar21 * fVar12 + fVar22 * fVar16;
  *(float *)((int)this + 0x148) =
       fVar19 * fVar9 + fVar20 * fVar5 + fVar21 * fVar13 + fVar22 * fVar17;
  *(float *)((int)this + 0x14c) =
       fVar19 * fVar10 + fVar20 * fVar6 + fVar21 * fVar14 + fVar22 * fVar18;
  *(float *)((int)this + 0x150) =
       fVar23 * fVar7 + fVar24 * fVar3 + fVar25 * fVar11 + fVar26 * fVar27;
  *(float *)((int)this + 0x154) =
       fVar23 * fVar8 + fVar24 * fVar4 + fVar25 * fVar12 + fVar26 * fVar28;
  *(float *)((int)this + 0x158) =
       fVar23 * fVar9 + fVar24 * fVar5 + fVar25 * fVar13 + fVar26 * fVar29;
  *(float *)((int)this + 0x15c) =
       fVar23 * fVar10 + fVar24 * fVar6 + fVar25 * fVar14 + fVar26 * fVar30;
  *(float *)((int)this + 0x160) =
       fVar31 * fVar7 + fVar32 * fVar3 + fVar33 * fVar11 + fVar34 * fVar35;
  *(float *)((int)this + 0x164) =
       fVar31 * fVar8 + fVar32 * fVar4 + fVar33 * fVar12 + fVar34 * fVar36;
  *(float *)((int)this + 0x168) =
       fVar31 * fVar9 + fVar32 * fVar5 + fVar33 * fVar13 + fVar34 * fVar37;
  *(float *)((int)this + 0x16c) =
       fVar31 * fVar10 + fVar32 * fVar6 + fVar33 * fVar14 + fVar34 * fVar38;
  puVar42 = (undefined4 *)
            FUN_10074d30((undefined1 (*) [16])local_90,(undefined1 (*) [16])((int)this + 0x130),
                         local_e0);
  uVar39 = puVar42[1];
  uVar40 = puVar42[2];
  uVar41 = puVar42[3];
  *(undefined4 *)((int)this + 0x170) = *puVar42;
  *(undefined4 *)((int)this + 0x174) = uVar39;
  *(undefined4 *)((int)this + 0x178) = uVar40;
  *(undefined4 *)((int)this + 0x17c) = uVar41;
  uVar39 = puVar42[5];
  uVar40 = puVar42[6];
  uVar41 = puVar42[7];
  *(undefined4 *)((int)this + 0x180) = puVar42[4];
  *(undefined4 *)((int)this + 0x184) = uVar39;
  *(undefined4 *)((int)this + 0x188) = uVar40;
  *(undefined4 *)((int)this + 0x18c) = uVar41;
  uVar39 = puVar42[9];
  uVar40 = puVar42[10];
  uVar41 = puVar42[0xb];
  *(undefined4 *)((int)this + 400) = puVar42[8];
  *(undefined4 *)((int)this + 0x194) = uVar39;
  *(undefined4 *)((int)this + 0x198) = uVar40;
  *(undefined4 *)((int)this + 0x19c) = uVar41;
  uVar39 = puVar42[0xd];
  uVar40 = puVar42[0xe];
  uVar41 = puVar42[0xf];
  *(undefined4 *)((int)this + 0x1a0) = puVar42[0xc];
  *(undefined4 *)((int)this + 0x1a4) = uVar39;
  *(undefined4 *)((int)this + 0x1a8) = uVar40;
  *(undefined4 *)((int)this + 0x1ac) = uVar41;
  local_140._0_4_ = *(undefined4 *)*(undefined1 (*) [16])((int)this + 0x30);
  local_140._4_4_ = *(undefined4 *)((int)this + 0x34);
  local_140._8_4_ = *(undefined4 *)((int)this + 0x38);
  local_140._12_4_ = *(undefined4 *)((int)this + 0x3c);
  local_130 = *(undefined4 *)((int)this + 0x40);
  uStack_12c = *(undefined4 *)((int)this + 0x44);
  uStack_128 = *(undefined4 *)((int)this + 0x48);
  uStack_124 = *(undefined4 *)((int)this + 0x4c);
  local_120 = *(undefined4 *)((int)this + 0x50);
  uStack_11c = *(undefined4 *)((int)this + 0x54);
  uStack_118 = *(undefined4 *)((int)this + 0x58);
  uStack_114 = *(undefined4 *)((int)this + 0x5c);
  local_110 = 0;
  uStack_10c = 0;
  uStack_108 = 0;
  uStack_104 = DAT_10acb0d4;
  pfVar43 = (float *)FUN_10074d30((undefined1 (*) [16])local_50,&local_140,local_100);
  fVar45 = *pfVar43;
  fVar46 = pfVar43[1];
  fVar1 = pfVar43[2];
  fVar2 = pfVar43[3];
  fVar3 = *(float *)((int)this + 0x80);
  fVar4 = *(float *)((int)this + 0x84);
  fVar5 = *(float *)((int)this + 0x88);
  fVar6 = *(float *)((int)this + 0x8c);
  fVar7 = *(float *)((int)this + 0x90);
  fVar8 = *(float *)((int)this + 0x94);
  fVar9 = *(float *)((int)this + 0x98);
  fVar10 = *(float *)((int)this + 0x9c);
  fVar11 = pfVar43[4];
  fVar12 = pfVar43[5];
  fVar13 = pfVar43[6];
  fVar14 = pfVar43[7];
  fVar15 = pfVar43[8];
  fVar16 = pfVar43[9];
  fVar17 = pfVar43[10];
  fVar18 = pfVar43[0xb];
  fVar19 = pfVar43[0xc];
  fVar20 = pfVar43[0xd];
  fVar21 = pfVar43[0xe];
  fVar22 = pfVar43[0xf];
  *(float *)((int)this + 0xf0) =
       fVar45 * *(float *)((int)this + 0x70) + fVar46 * fVar3 + fVar1 * fVar7 +
       fVar2 * *(float *)((int)this + 0xa0);
  *(float *)((int)this + 0xf4) =
       fVar45 * *(float *)((int)this + 0x74) + fVar46 * fVar4 + fVar1 * fVar8 +
       fVar2 * *(float *)((int)this + 0xa4);
  *(float *)((int)this + 0xf8) =
       fVar45 * *(float *)((int)this + 0x78) + fVar46 * fVar5 + fVar1 * fVar9 +
       fVar2 * *(float *)((int)this + 0xa8);
  *(float *)((int)this + 0xfc) =
       fVar45 * *(float *)((int)this + 0x7c) + fVar46 * fVar6 + fVar1 * fVar10 +
       fVar2 * *(float *)((int)this + 0xac);
  *(float *)((int)this + 0x100) =
       fVar11 * *(float *)((int)this + 0x70) + fVar12 * fVar3 + fVar13 * fVar7 +
       fVar14 * *(float *)((int)this + 0xa0);
  *(float *)((int)this + 0x104) =
       fVar11 * *(float *)((int)this + 0x74) + fVar12 * fVar4 + fVar13 * fVar8 +
       fVar14 * *(float *)((int)this + 0xa4);
  *(float *)((int)this + 0x108) =
       fVar11 * *(float *)((int)this + 0x78) + fVar12 * fVar5 + fVar13 * fVar9 +
       fVar14 * *(float *)((int)this + 0xa8);
  *(float *)((int)this + 0x10c) =
       fVar11 * *(float *)((int)this + 0x7c) + fVar12 * fVar6 + fVar13 * fVar10 +
       fVar14 * *(float *)((int)this + 0xac);
  *(float *)((int)this + 0x110) =
       fVar15 * *(float *)((int)this + 0x70) + fVar16 * fVar3 + fVar17 * fVar7 +
       fVar18 * *(float *)((int)this + 0xa0);
  *(float *)((int)this + 0x114) =
       fVar15 * *(float *)((int)this + 0x74) + fVar16 * fVar4 + fVar17 * fVar8 +
       fVar18 * *(float *)((int)this + 0xa4);
  *(float *)((int)this + 0x118) =
       fVar15 * *(float *)((int)this + 0x78) + fVar16 * fVar5 + fVar17 * fVar9 +
       fVar18 * *(float *)((int)this + 0xa8);
  *(float *)((int)this + 0x11c) =
       fVar15 * *(float *)((int)this + 0x7c) + fVar16 * fVar6 + fVar17 * fVar10 +
       fVar18 * *(float *)((int)this + 0xac);
  *(float *)((int)this + 0x120) =
       fVar19 * *(float *)((int)this + 0x70) + fVar20 * fVar3 + fVar21 * fVar7 +
       fVar22 * *(float *)((int)this + 0xa0);
  *(float *)((int)this + 0x124) =
       fVar19 * *(float *)((int)this + 0x74) + fVar20 * fVar4 + fVar21 * fVar8 +
       fVar22 * *(float *)((int)this + 0xa4);
  *(float *)((int)this + 0x128) =
       fVar19 * *(float *)((int)this + 0x78) + fVar20 * fVar5 + fVar21 * fVar9 +
       fVar22 * *(float *)((int)this + 0xa8);
  *(float *)((int)this + 300) =
       fVar19 * *(float *)((int)this + 0x7c) + fVar20 * fVar6 + fVar21 * fVar10 +
       fVar22 * *(float *)((int)this + 0xac);
  FUN_10484b00((void *)((int)this + 0x280),this);
  return;
}

