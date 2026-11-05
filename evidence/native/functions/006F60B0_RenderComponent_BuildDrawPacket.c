/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: At006f6927 unsigned ordinal+0x2b8 converted by signed FILD plus2^32 correction
   when signbit set, then multiplied in x87 by exact binary32 word0xb3800001 at0x00ffa93c. Result
   stored binary32 at packet+0x3c (RugSort)006f6949. Do not round constant to-2^-24; these bits
   differ. Builds all other original object packet fields then virtual+0x94 submission.
   
   Analyst PC1.67 mesh-state instruction contract. Selected packet producer copies component
   DWORD+2A4 unchanged to packet+30 in reviewed model draw branches before virtual+94 submission.
   Full-function private-material/pose paths and inherited unrelated helper labels do not establish
   new contracts. Geometry-state word is distinct from RugSort float+3C; no float conversion at copy
   sites.
   
   PC1.67 original static instructions. Rug closure:006F6927..6949 converts unsigned ordinal with
   FILD plus2^32correction for sign, multiplies original binary32coefficientB3800001, stores
   binary32 packet+3C. Do not round constant to exact-2^-24. Other mesh/light/material branches
   remain original packetproducer responsibilities; no general coplanar bias rule. */

void __thiscall RenderComponent_BuildDrawPacket(void *this,int param_1,int param_2)

{
  uint *puVar1;
  uint uVar2;
  char cVar3;
  byte bVar4;
  int iVar5;
  uint uVar6;
  void *pvVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined *this_00;
  float **ppfVar10;
  int *piVar11;
  void *pvVar12;
  float *pfVar13;
  undefined4 *puVar14;
  int iVar15;
  float10 fVar16;
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
  float fVar39;
  float fVar40;
  int iVar41;
  bool local_19a;
  bool local_199;
  uint local_198;
  int local_190;
  undefined4 *local_18c;
  uint local_188;
  int local_184;
  float local_180;
  float fStack_17c;
  float fStack_178;
  float fStack_174;
  uint local_164;
  undefined4 local_160;
  undefined4 uStack_15c;
  undefined4 uStack_158;
  float fStack_154;
  float local_150;
  undefined4 local_14c;
  uint local_148;
  uint local_144;
  undefined4 local_140;
  int local_13c;
  undefined4 local_134;
  undefined4 local_130;
  bool local_12c;
  bool local_12b;
  undefined1 local_12a;
  byte local_129;
  undefined1 local_128;
  undefined1 local_127;
  undefined1 local_126;
  float local_124;
  undefined4 local_120;
  undefined4 local_11c;
  float *local_110;
  float *pfStack_10c;
  float *pfStack_108;
  float *pfStack_104;
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
  float *local_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
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
  float local_50 [19];
  
  if ((*(uint *)((int)this + 0x40) & 0x1000) != 0) {
    return;
  }
  cVar3 = FUN_006de180();
  if ((*(byte *)(param_2 + 4) & 8) != 0) {
    if (((((*(uint *)((int)this + 0x44) & 0x20000) == 0) &&
         (iVar5 = FUN_006fb130(this,0), iVar5 != 0)) && (*(int *)(iVar5 + 0x1d4) != 2)) &&
       ((*(int *)(iVar5 + 0x1d4) != 1 && (uVar6 = FUN_006f4a50((int)this), (char)uVar6 == '\0')))) {
      return;
    }
    if (*(int *)((int)this + 0x2b8) != 0) {
      return;
    }
    local_180 = *(float *)((int)this + 0x1dc) * *(float *)((int)this + 0x1e8);
    local_100 = 0.01;
    if ((local_180 <= 0.01) && (cVar3 == '\0')) {
      return;
    }
    local_18c = FUN_006db780((uint *)((int)this + 0x210));
    if (local_18c != (undefined4 *)0x0) {
      uVar6 = GetNativeDescriptorTypeName_Field44((int)local_18c);
      local_188 = uVar6;
      FUN_006facd0(this,&local_f0);
      local_198 = 0;
      if (uVar6 == 0) {
        return;
      }
      do {
        pvVar12 = *(void **)(local_18c[0x10] + local_198 * 4);
        local_184 = FUN_00739aa0((int)pvVar12);
        if (local_184 == 0) {
          FUN_00698060(&local_160);
          local_140 = 1;
          local_144 = local_198;
          if (*(int *)((int)this + 0x298) == 0) {
            local_14c = 0;
          }
          else {
            local_14c = AnimationRenderState_GetWorldMatrices(*(int *)((int)this + 0x298));
          }
          iVar5 = *(int *)((int)this + 0x298);
          if (iVar5 == 0) {
            local_120 = 0;
            local_11c = 0;
          }
          else {
            local_120 = *(undefined4 *)(iVar5 + 0x30);
            local_11c = *(undefined4 *)(iVar5 + 0x2c);
          }
          local_130 = *(undefined4 *)((int)this + 0x2a4);
          (**(code **)(*(int *)this + 0x94))(local_18c,&local_160,param_2);
        }
        else {
          pvVar7 = (void *)FUN_0068f130((int)pvVar12);
          pvVar7 = HeightMap_GetSamplePayload(pvVar7);
          FUN_00799140(&local_190,pvVar7);
          uVar6 = FUN_00799160(&local_190,0x790ebf2c);
          local_164 = FUN_00799160(&local_190,0x487648e5);
          FUN_007991e0(&local_190,uVar6,(int *)&local_b0);
          fStack_174 = 1.0;
          fStack_178 = local_b0[2];
          fStack_17c = local_b0[1];
          local_180 = *local_b0;
          fStack_f4 = 1.0;
          local_100 = local_180;
          fStack_fc = fStack_17c;
          fStack_f8 = fStack_178;
          FUN_007991e0(&local_190,local_164,(int *)&local_b0);
          pfVar13 = local_b0;
          if ((((*(int *)((int)this + 0x298) != 0) &&
               (iVar5 = FUN_006c9660((int)pvVar12), iVar5 == 1)) &&
              (iVar5 = AnimationRenderState_GetWorldMatrices(*(int *)((int)this + 0x298)),
              iVar5 != 0)) && (uVar8 = FUN_0068fc80(pvVar12,0,iVar5,&local_90), (char)uVar8 != '\0')
             ) {
            fVar17 = fStack_84 * local_c0;
            fVar18 = fStack_84 * fStack_bc;
            fVar19 = fStack_84 * fStack_b8;
            fVar20 = fStack_84 * fStack_b4;
            fVar25 = local_80 * local_f0;
            fVar29 = local_80 * fStack_ec;
            fVar33 = local_80 * fStack_e8;
            fVar37 = local_80 * fStack_e4;
            fVar26 = fStack_74 * local_c0;
            fVar30 = fStack_74 * fStack_bc;
            fVar34 = fStack_74 * fStack_b8;
            fVar38 = fStack_74 * fStack_b4;
            fVar21 = fStack_6c * local_e0;
            fVar22 = fStack_6c * fStack_dc;
            fVar23 = fStack_6c * fStack_d8;
            fVar24 = fStack_6c * fStack_d4;
            fVar27 = local_70 * local_f0;
            fVar31 = local_70 * fStack_ec;
            fVar35 = local_70 * fStack_e8;
            fVar39 = local_70 * fStack_e4;
            fVar28 = fStack_64 * local_c0;
            fVar32 = fStack_64 * fStack_bc;
            fVar36 = fStack_64 * fStack_b8;
            fVar40 = fStack_64 * fStack_b4;
            local_c0 = fStack_5c * local_e0 + local_60 * local_f0 + fStack_58 * local_d0 +
                       fStack_54 * local_c0;
            fStack_bc = fStack_5c * fStack_dc + local_60 * fStack_ec + fStack_58 * fStack_cc +
                        fStack_54 * fStack_bc;
            fStack_b8 = fStack_5c * fStack_d8 + local_60 * fStack_e8 + fStack_58 * fStack_c8 +
                        fStack_54 * fStack_b8;
            fStack_b4 = fStack_5c * fStack_d4 + local_60 * fStack_e4 + fStack_58 * fStack_c4 +
                        fStack_54 * fStack_b4;
            local_f0 = fStack_8c * local_e0 + local_90 * local_f0 + fStack_88 * local_d0 + fVar17;
            fStack_ec = fStack_8c * fStack_dc + local_90 * fStack_ec + fStack_88 * fStack_cc +
                        fVar18;
            fStack_e8 = fStack_8c * fStack_d8 + local_90 * fStack_e8 + fStack_88 * fStack_c8 +
                        fVar19;
            fStack_e4 = fStack_8c * fStack_d4 + local_90 * fStack_e4 + fStack_88 * fStack_c4 +
                        fVar20;
            local_e0 = fStack_7c * local_e0 + fVar25 + fStack_78 * local_d0 + fVar26;
            fStack_dc = fStack_7c * fStack_dc + fVar29 + fStack_78 * fStack_cc + fVar30;
            fStack_d8 = fStack_7c * fStack_d8 + fVar33 + fStack_78 * fStack_c8 + fVar34;
            fStack_d4 = fStack_7c * fStack_d4 + fVar37 + fStack_78 * fStack_c4 + fVar38;
            local_d0 = fVar21 + fVar27 + fStack_68 * local_d0 + fVar28;
            fStack_cc = fVar22 + fVar31 + fStack_68 * fStack_cc + fVar32;
            fStack_c8 = fVar23 + fVar35 + fStack_68 * fStack_c8 + fVar36;
            fStack_c4 = fVar24 + fVar39 + fStack_68 * fStack_c4 + fVar40;
          }
          local_c0 = local_100 * local_f0 + fStack_fc * local_e0 + fStack_f8 * local_d0 +
                     fStack_f4 * local_c0;
          fStack_bc = local_100 * fStack_ec + fStack_fc * fStack_dc + fStack_f8 * fStack_cc +
                      fStack_f4 * fStack_bc;
          fStack_b8 = local_100 * fStack_e8 + fStack_fc * fStack_d8 + fStack_f8 * fStack_c8 +
                      fStack_f4 * fStack_b8;
          fStack_b4 = local_100 * fStack_e4 + fStack_fc * fStack_d4 + fStack_f8 * fStack_c4 +
                      fStack_f4 * fStack_b4;
          fVar17 = *pfVar13;
          local_f0 = fVar17 * local_f0;
          fStack_ec = fVar17 * fStack_ec;
          fStack_e8 = fVar17 * fStack_e8;
          fStack_e4 = fVar17 * fStack_e4;
          fVar17 = pfVar13[1];
          local_e0 = fVar17 * local_e0;
          fStack_dc = fVar17 * fStack_dc;
          fStack_d8 = fVar17 * fStack_d8;
          fStack_d4 = fVar17 * fStack_d4;
          fVar17 = pfVar13[2];
          local_d0 = fVar17 * local_d0;
          fStack_cc = fVar17 * fStack_cc;
          fStack_c8 = fVar17 * fStack_c8;
          fStack_c4 = fVar17 * fStack_c4;
          FUN_006fac50(*(void **)(param_2 + 0x1c),local_184,&local_f0);
        }
        local_198 = local_198 + 1;
      } while (local_198 < local_188);
      return;
    }
    local_18c = (undefined4 *)FUN_006db500((int)this + 0x210);
    if (local_18c == (undefined4 *)0x0) {
      return;
    }
    local_164 = *(int *)((int)this + 0x19c) - 1;
    local_198 = 0;
    if (local_164 == 0) {
      return;
    }
    do {
      bVar4 = FUN_0068f330(*(int *)(*(int *)((int)local_18c + 0x40) + local_198 * 4));
      if ((bVar4 != 0) && (FUN_006f49e0((int *)&local_188), uVar6 = local_188, local_188 != 0)) {
        FUN_00698060(&local_160);
        local_144 = local_198;
        local_140 = 1;
        if (*(int *)((int)this + 0x298) == 0) {
          local_14c = 0;
        }
        else {
          local_14c = AnimationRenderState_GetWorldMatrices(*(int *)((int)this + 0x298));
        }
        iVar5 = *(int *)((int)this + 0x298);
        if (iVar5 == 0) {
          local_120 = 0;
          local_11c = 0;
        }
        else {
          local_120 = *(undefined4 *)(iVar5 + 0x30);
          local_11c = *(undefined4 *)(iVar5 + 0x2c);
        }
        local_130 = *(undefined4 *)((int)this + 0x2a4);
        local_13c = local_184;
        local_148 = uVar6;
        (**(code **)(*(int *)this + 0x94))(local_18c,&local_160,param_2);
      }
      local_198 = local_198 + 1;
    } while (local_198 < local_164);
    return;
  }
  iVar5 = FUN_006db500((int)this + 0x210);
  local_188 = FUN_006db4f0((uint *)((int)this + 0x210));
  if (local_188 == 0) {
    return;
  }
  if (iVar5 == 0) {
    return;
  }
  puVar1 = *(uint **)((int)this + 0x1f8);
  if ((puVar1 == *(uint **)((int)this + 0x1fc)) && (*(int *)(param_2 + 0x30) == 0)) {
    FUN_006faae0((int)this);
    return;
  }
  local_19a = false;
  uVar6 = *(uint *)(param_2 + 0x30);
  if ((*(uint *)(param_2 + 0x30) == 0) &&
     (uVar2 = *puVar1, uVar6 = uVar2, 1 < (uint)(*(int *)((int)this + 0x1fc) - (int)puVar1 >> 2))) {
    if (0 < *(int *)(*(int *)(*(int *)(iVar5 + 0x40) + param_1 * 4) + 0x74)) {
      uVar6 = puVar1[1];
    }
    uVar8 = FUN_006f4690(puVar1[1]);
    uVar9 = FUN_006f4690(uVar2);
    local_19a = (char)uVar9 != (char)uVar8;
  }
  FUN_006b8ca0(uVar6);
  iVar41 = 0;
  this_00 = FUN_006c36b0();
  FUN_006c24f0(this_00,iVar41);
  uVar8 = FUN_006f4690(uVar6);
  local_199 = *(int *)((int)this + 0x1f0) != 0 || (char)uVar8 == '\0';
  local_180 = *(float *)((int)this + 0x1d0);
  fStack_17c = *(float *)((int)this + 0x1d4);
  fStack_178 = *(float *)((int)this + 0x1d8);
  fStack_174 = *(float *)((int)this + 0x1dc);
  if (cVar3 == '\0') {
    if ((*(char *)(param_2 + 0x13) == '\0') && (*(char *)(param_2 + 0x14) == '\0')) {
      fVar16 = FUN_006fc8f0((int)this);
      fStack_174 = (float)fVar16;
    }
    else {
      fStack_174 = *(float *)((int)this + 0x1dc) * *(float *)((int)this + 0x1e8);
    }
  }
  else {
    fStack_174 = 1.0;
  }
  local_190 = *(int *)(*(int *)(iVar5 + 0x40) + param_1 * 4);
  local_100 = local_180;
  fStack_fc = fStack_17c;
  fStack_f8 = fStack_178;
  fStack_f4 = fStack_174;
  if ((fStack_174 < 0.001) && (bVar4 = FUN_0068f430(local_190), bVar4 == 0)) {
    return;
  }
  FUN_00698060(&local_160);
  local_144 = param_1;
  local_140 = 1;
  if (*(int *)((int)this + 0x298) == 0) {
    local_14c = 0;
  }
  else {
    local_14c = AnimationRenderState_GetWorldMatrices(*(int *)((int)this + 0x298));
  }
  iVar41 = *(int *)((int)this + 0x298);
  if (iVar41 == 0) {
    local_120 = 0;
    local_11c = 0;
    local_b0 = (float *)0x0;
    uStack_ac = 0;
    uStack_a8 = 0;
    uStack_a4 = 0;
    ppfVar10 = &local_b0;
  }
  else {
    local_120 = *(undefined4 *)(iVar41 + 0x30);
    local_11c = *(undefined4 *)(iVar41 + 0x2c);
    ppfVar10 = (float **)(iVar41 + 0x40);
  }
  local_110 = *ppfVar10;
  pfStack_10c = ppfVar10[1];
  pfStack_108 = ppfVar10[2];
  pfStack_104 = ppfVar10[3];
  local_12c = local_199;
  local_12b = local_19a;
  if (*(int *)((int)this + 500) == 0) {
    local_12a = 0;
  }
  else {
    uVar8 = FUN_006ac760(*(int *)((int)this + 500));
    local_12a = (undefined1)uVar8;
  }
  local_134 = *(undefined4 *)(param_2 + 0x18);
  local_130 = *(undefined4 *)((int)this + 0x2a4);
  local_160 = local_180;
  uStack_15c = fStack_17c;
  uStack_158 = fStack_178;
  fStack_154 = fStack_174;
  local_129 = *(byte *)((int)this + 0x208) >> 1 & 1;
  local_150 = 1.0 - *(float *)((int)this + 0x1e0);
  local_128 = fStack_f4 < 1.0;
  local_124 = (float)*(int *)((int)this + 0x2b8);
  local_148 = *(undefined4 *)((int)this + 0x2ac);
  if (*(int *)((int)this + 0x2b8) < 0) {
    local_124 = local_124 + 4.2949673e+09;
  }
                    /* Exact bias coefficient bits0xb3800001, unsigned ordinal converted through x87
                       before binary32 store. */
  local_124 = local_124 * -5.960465e-08;
  uVar6 = FUN_006b74d0(uVar6);
  local_127 = (undefined1)uVar6;
  iVar41 = FUN_006faa40((int)this);
  if (-1 < iVar41) {
    piVar11 = (int *)FUN_006fa9e0((int)this);
    local_126 = 0;
    if (*piVar11 == 0) goto LAB_006f6983;
  }
  local_126 = 1;
LAB_006f6983:
  if ((*(uint *)(param_2 + 4) & 0x100) == 0) {
    if ((*(uint *)(param_2 + 4) & 0x10000) != 0) {
      local_13c = 0;
    }
  }
  else {
    pvVar12 = (void *)FUN_0068f1d0(local_190);
    local_13c = FUN_0079a920(pvVar12,"CASLightMap");
  }
  bVar4 = FUN_0068f3d0(local_190);
  if (bVar4 == 1) {
    cVar3 = *(char *)(local_188 + 0x30);
    local_19a = (bool)(~(byte)(*(uint *)((int)this + 0x44) >> 10) & 1);
    if ((local_19a != false) && (*(int *)((int)this + 400) != 0)) {
      uVar6 = GetNativeDescriptorTypeName_Field44(*(int *)((int)this + 400));
      local_19a = (bool)(~(byte)(uVar6 >> 10) & 1);
    }
    iVar41 = FUN_00739aa0(local_190);
    if ((iVar41 != 0) && (*(int *)(param_2 + 0x20) != 0)) {
      if ((local_19a != false) &&
         (((*(int *)((int)this + 0x298) != 0 && (cVar3 == '\0')) &&
          (iVar5 = AnimationRenderState_GetWorldMatrices(*(int *)((int)this + 0x298)), iVar5 != 0)))
         ) {
        iVar15 = *(int *)((int)this + 700) * 0x40;
        pfVar13 = (float *)(iVar15 + iVar5);
        local_f0 = *pfVar13;
        fStack_ec = pfVar13[1];
        fStack_e8 = pfVar13[2];
        fStack_e4 = pfVar13[3];
        iVar15 = iVar15 + iVar5;
        local_e0 = *(float *)(iVar15 + 0x10);
        fStack_dc = *(float *)(iVar15 + 0x14);
        fStack_d8 = *(float *)(iVar15 + 0x18);
        fStack_d4 = *(float *)(iVar15 + 0x1c);
        local_d0 = *(float *)(iVar15 + 0x20);
        fStack_cc = *(float *)(iVar15 + 0x24);
        fStack_c8 = *(float *)(iVar15 + 0x28);
        fStack_c4 = *(float *)(iVar15 + 0x2c);
        local_c0 = *(float *)(iVar15 + 0x30);
        fStack_bc = *(float *)(iVar15 + 0x34);
        fStack_b8 = *(float *)(iVar15 + 0x38);
        fStack_b4 = *(float *)(iVar15 + 0x3c);
        pfVar13 = (float *)FUN_006facd0(this,local_50);
        fVar17 = pfVar13[4];
        fVar18 = pfVar13[5];
        fVar19 = pfVar13[6];
        fVar20 = pfVar13[7];
        fVar21 = *pfVar13;
        fVar22 = pfVar13[1];
        fVar23 = pfVar13[2];
        fVar24 = pfVar13[3];
        fVar25 = pfVar13[8];
        fVar26 = pfVar13[9];
        fVar27 = pfVar13[10];
        fVar28 = pfVar13[0xb];
        local_90 = local_f0 * fVar21 + fStack_ec * fVar17 + fStack_e8 * fVar25 +
                   fStack_e4 * pfVar13[0xc];
        fStack_8c = local_f0 * fVar22 + fStack_ec * fVar18 + fStack_e8 * fVar26 +
                    fStack_e4 * pfVar13[0xd];
        fStack_88 = local_f0 * fVar23 + fStack_ec * fVar19 + fStack_e8 * fVar27 +
                    fStack_e4 * pfVar13[0xe];
        fStack_84 = local_f0 * fVar24 + fStack_ec * fVar20 + fStack_e8 * fVar28 +
                    fStack_e4 * pfVar13[0xf];
        local_80 = local_e0 * fVar21 + fStack_dc * fVar17 + fStack_d8 * fVar25 +
                   fStack_d4 * pfVar13[0xc];
        fStack_7c = local_e0 * fVar22 + fStack_dc * fVar18 + fStack_d8 * fVar26 +
                    fStack_d4 * pfVar13[0xd];
        fStack_78 = local_e0 * fVar23 + fStack_dc * fVar19 + fStack_d8 * fVar27 +
                    fStack_d4 * pfVar13[0xe];
        fStack_74 = local_e0 * fVar24 + fStack_dc * fVar20 + fStack_d8 * fVar28 +
                    fStack_d4 * pfVar13[0xf];
        local_70 = local_d0 * fVar21 + fStack_cc * fVar17 + fStack_c8 * fVar25 +
                   fStack_c4 * pfVar13[0xc];
        fStack_6c = local_d0 * fVar22 + fStack_cc * fVar18 + fStack_c8 * fVar26 +
                    fStack_c4 * pfVar13[0xd];
        fStack_68 = local_d0 * fVar23 + fStack_cc * fVar19 + fStack_c8 * fVar27 +
                    fStack_c4 * pfVar13[0xe];
        fStack_64 = local_d0 * fVar24 + fStack_cc * fVar20 + fStack_c8 * fVar28 +
                    fStack_c4 * pfVar13[0xf];
        local_60 = local_c0 * fVar21 + fStack_bc * fVar17 + fStack_b8 * fVar25 +
                   fStack_b4 * pfVar13[0xc];
        fStack_5c = local_c0 * fVar22 + fStack_bc * fVar18 + fStack_b8 * fVar26 +
                    fStack_b4 * pfVar13[0xd];
        fStack_58 = local_c0 * fVar23 + fStack_bc * fVar19 + fStack_b8 * fVar27 +
                    fStack_b4 * pfVar13[0xe];
        fStack_54 = local_c0 * fVar24 + fStack_bc * fVar20 + fStack_b8 * fVar28 +
                    fStack_b4 * pfVar13[0xf];
        FUN_006fac50(*(void **)(param_2 + 0x20),iVar41,&local_90);
        return;
      }
      puVar14 = (undefined4 *)FUN_006facd0(this,local_50);
      FUN_006fac50(*(void **)(param_2 + 0x20),iVar41,puVar14);
      return;
    }
  }
  if ((*(int *)(param_2 + 0x24) != 0) && ((*(uint *)((int)this + 0x44) & 0x1000000) != 0)) {
    FUN_00725310(iVar5,*(int *)(param_2 + 0x24),(int)&local_160);
  }
  if ((*(char *)(param_2 + 0x15) == '\0') && (iVar41 = *(int *)(param_2 + 0x28), iVar41 != -1)) {
    if (DAT_0115c1f0 < (uint)(iVar41 - *(int *)((int)this + 0x2a8))) {
      if (((*(uint *)((int)this + 0x44) & DAT_0115c1e8) == 0) &&
         (DAT_0115c1ec < *(uint *)(param_2 + 0x2c))) {
        return;
      }
      *(int *)(param_2 + 0x2c) = *(int *)(param_2 + 0x2c) + 1;
    }
    *(int *)((int)this + 0x2a8) = iVar41;
  }
  (**(code **)(*(int *)this + 0x94))(iVar5,&local_160,param_2);
  return;
}

