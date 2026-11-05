/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 domain-owner static comparison. ECX component; one transform input pointer, RET4.
   Nonempty: quaternion components scaledsqrt2 form matrix, first-tree inverse composes each
   instance into new transform, stores raw yaw/translation, refreshes bounds/groundnormal and scene
   messages. Inferred float-pointer prototype does not establish a Matrix4x4 input ABI. Managed
   rigid-matrix overload is a project boundary. */

undefined4 __thiscall TreeComponent_ApplyObjectTransform(void *this,float *param_1)

{
  int iVar1;
  void *pvVar2;
  void *this_00;
  float *pfVar3;
  undefined4 *puVar4;
  uint3 extraout_var;
  int iVar5;
  void *this_01;
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
  float local_230;
  float fStack_22c;
  float fStack_228;
  float fStack_224;
  float local_220;
  float fStack_21c;
  float fStack_218;
  float fStack_214;
  float local_210;
  float fStack_20c;
  float fStack_208;
  float fStack_204;
  float local_200;
  float fStack_1fc;
  float fStack_1f8;
  float fStack_1f4;
  float local_1f0;
  float fStack_1ec;
  float fStack_1e8;
  float fStack_1e4;
  float local_1e0;
  float fStack_1dc;
  float fStack_1d8;
  float fStack_1d4;
  float local_1d0;
  float fStack_1cc;
  float fStack_1c8;
  float fStack_1c4;
  float local_1b0;
  float fStack_1ac;
  undefined4 uStack_1a8;
  undefined4 uStack_1a4;
  float local_1a0;
  float fStack_19c;
  float fStack_198;
  float fStack_194;
  float local_190;
  float fStack_18c;
  float fStack_188;
  float fStack_184;
  byte local_180 [4];
  undefined **local_17c;
  undefined4 local_178;
  undefined4 local_174;
  undefined4 local_170;
  undefined4 uStack_16c;
  undefined4 uStack_168;
  undefined4 uStack_164;
  undefined4 local_160;
  undefined4 uStack_15c;
  undefined4 uStack_158;
  undefined4 uStack_154;
  undefined4 local_150;
  undefined4 uStack_14c;
  undefined4 uStack_148;
  undefined4 uStack_144;
  undefined4 local_140;
  undefined4 uStack_13c;
  undefined4 uStack_138;
  undefined4 uStack_134;
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
  byte local_b0 [4];
  undefined **local_ac;
  undefined4 local_a8;
  undefined4 local_a4;
  int local_a0 [16];
  undefined4 local_60 [4];
  undefined4 local_50 [19];
  
  iVar1 = *(int *)((int)this + 8);
  iVar5 = *(int *)(iVar1 + 8);
  if (iVar5 != *(int *)(iVar1 + 0xc)) {
    fVar6 = *param_1 * 1.4142135;
    fVar7 = param_1[1] * 1.4142135;
    fVar8 = param_1[2] * 1.4142135;
    fVar9 = param_1[3] * 1.4142135;
    fVar10 = (0.0 - fVar6) * fVar6 + 0.5;
    fVar11 = (0.0 - fVar7) * fVar7 + 0.5;
    fVar12 = (0.0 - fVar8) * fVar8 + 0.5;
    fStack_1d4 = fVar9 * fVar8 + fVar7 * fVar6;
    local_1e0 = fVar7 * fVar6 - fVar9 * fVar8;
    fStack_1c4 = fVar11 + fVar10;
    local_d0 = param_1[4];
    fStack_cc = param_1[5];
    fStack_c8 = param_1[6];
    fStack_c4 = 1.0;
    local_1f0 = (float)((uint)(fVar12 + fVar11) & _DAT_011b0670);
    fStack_1ec = (float)((uint)fStack_1d4 & uRam011b0674);
    fStack_1e8 = (float)((uint)(fVar6 * fVar8 - fVar9 * fVar7) & uRam011b0678);
    fStack_1e4 = (float)((uint)local_1e0 & uRam011b067c);
    local_1e0 = (float)((uint)local_1e0 & _DAT_011b0670);
    fStack_1dc = (float)((uint)(fVar10 + fVar12) & uRam011b0674);
    fStack_1d8 = (float)((uint)(fVar9 * fVar6 + fVar8 * fVar7) & uRam011b0678);
    fStack_1d4 = (float)((uint)fStack_1d4 & uRam011b067c);
    local_1d0 = (float)((uint)(fVar9 * fVar7 + fVar6 * fVar8) & _DAT_011b0670);
    fStack_1cc = (float)((uint)(fVar8 * fVar7 - fVar9 * fVar6) & uRam011b0674);
    fStack_1c8 = (float)((uint)fStack_1c4 & uRam011b0678);
    fStack_1c4 = (float)((uint)fStack_1c4 & uRam011b067c);
    TreePrimitive_WriteYawMatrix(*(void **)(iVar1 + 8),local_50);
    pfVar3 = (float *)Matrix4_InvertWithReplicatedDeterminant
                                ((undefined1 (*) [16])&local_230,(undefined1 (*) [16])local_50,
                                 &local_1b0);
    this_00 = DAT_011edbc4;
    local_130 = *pfVar3;
    fStack_12c = pfVar3[1];
    fStack_128 = pfVar3[2];
    fStack_124 = pfVar3[3];
    local_120 = pfVar3[4];
    fStack_11c = pfVar3[5];
    fStack_118 = pfVar3[6];
    fStack_114 = pfVar3[7];
    local_110 = pfVar3[8];
    fStack_10c = pfVar3[9];
    fStack_108 = pfVar3[10];
    fStack_104 = pfVar3[0xb];
    local_100 = pfVar3[0xc];
    fStack_fc = pfVar3[0xd];
    fStack_f8 = pfVar3[0xe];
    fStack_f4 = pfVar3[0xf];
    pvVar2 = *(void **)(*(int *)((int)this + 8) + 0xc);
    for (this_01 = *(void **)(*(int *)((int)this + 8) + 8); this_01 != pvVar2;
        this_01 = (void *)((int)this_01 + 0x50)) {
      TreePrimitive_WriteYawMatrix(this_01,&local_230);
      fVar6 = fStack_22c * local_120 + local_230 * local_130 + fStack_228 * local_110 +
              fStack_224 * local_100;
      fVar7 = fStack_22c * fStack_11c + local_230 * fStack_12c + fStack_228 * fStack_10c +
              fStack_224 * fStack_fc;
      fVar8 = fStack_22c * fStack_118 + local_230 * fStack_128 + fStack_228 * fStack_108 +
              fStack_224 * fStack_f8;
      local_f0 = fStack_22c * fStack_114 + local_230 * fStack_124 + fStack_228 * fStack_104 +
                 fStack_224 * fStack_f4;
      fVar9 = local_220 * local_130 + fStack_21c * local_120 + fStack_218 * local_110 +
              fStack_214 * local_100;
      fVar10 = local_220 * fStack_12c + fStack_21c * fStack_11c + fStack_218 * fStack_10c +
               fStack_214 * fStack_fc;
      fVar11 = local_220 * fStack_128 + fStack_21c * fStack_118 + fStack_218 * fStack_108 +
               fStack_214 * fStack_f8;
      fVar12 = local_220 * fStack_124 + fStack_21c * fStack_114 + fStack_218 * fStack_104 +
               fStack_214 * fStack_f4;
      fVar13 = local_210 * local_130 + fStack_20c * local_120 + fStack_208 * local_110 +
               fStack_204 * local_100;
      fVar14 = local_210 * fStack_12c + fStack_20c * fStack_11c + fStack_208 * fStack_10c +
               fStack_204 * fStack_fc;
      fVar15 = local_210 * fStack_128 + fStack_20c * fStack_118 + fStack_208 * fStack_108 +
               fStack_204 * fStack_f8;
      fVar16 = local_210 * fStack_124 + fStack_20c * fStack_114 + fStack_208 * fStack_104 +
               fStack_204 * fStack_f4;
      fVar17 = local_200 * local_130 + fStack_1fc * local_120 + fStack_1f8 * local_110 +
               fStack_1f4 * local_100;
      fVar18 = local_200 * fStack_12c + fStack_1fc * fStack_11c + fStack_1f8 * fStack_10c +
               fStack_1f4 * fStack_fc;
      fVar19 = local_200 * fStack_128 + fStack_1fc * fStack_118 + fStack_1f8 * fStack_108 +
               fStack_1f4 * fStack_f8;
      fVar20 = local_200 * fStack_124 + fStack_1fc * fStack_114 + fStack_1f8 * fStack_104 +
               fStack_1f4 * fStack_f4;
      local_230 = fVar7 * local_1e0 + fVar6 * local_1f0 + fVar8 * local_1d0 + local_f0 * local_d0;
      fStack_22c = fVar7 * fStack_1dc + fVar6 * fStack_1ec + fVar8 * fStack_1cc +
                   local_f0 * fStack_cc;
      fStack_228 = fVar7 * fStack_1d8 + fVar6 * fStack_1e8 + fVar8 * fStack_1c8 +
                   local_f0 * fStack_c8;
      fStack_224 = fVar7 * fStack_1d4 + fVar6 * fStack_1e4 + fVar8 * fStack_1c4 +
                   local_f0 * fStack_c4;
      local_220 = fVar10 * local_1e0 + fVar9 * local_1f0 + fVar11 * local_1d0 + fVar12 * local_d0;
      fStack_21c = fVar10 * fStack_1dc + fVar9 * fStack_1ec + fVar11 * fStack_1cc +
                   fVar12 * fStack_cc;
      fStack_218 = fVar10 * fStack_1d8 + fVar9 * fStack_1e8 + fVar11 * fStack_1c8 +
                   fVar12 * fStack_c8;
      fStack_214 = fVar10 * fStack_1d4 + fVar9 * fStack_1e4 + fVar11 * fStack_1c4 +
                   fVar12 * fStack_c4;
      local_210 = fVar14 * local_1e0 + fVar13 * local_1f0 + fVar15 * local_1d0 + fVar16 * local_d0;
      fStack_20c = fVar14 * fStack_1dc + fVar13 * fStack_1ec + fVar15 * fStack_1cc +
                   fVar16 * fStack_cc;
      fStack_208 = fVar14 * fStack_1d8 + fVar13 * fStack_1e8 + fVar15 * fStack_1c8 +
                   fVar16 * fStack_c8;
      fStack_204 = fVar14 * fStack_1d4 + fVar13 * fStack_1e4 + fVar15 * fStack_1c4 +
                   fVar16 * fStack_c4;
      local_200 = fVar18 * local_1e0 + fVar17 * local_1f0 + fVar19 * local_1d0 + fVar20 * local_d0;
      fStack_1fc = fVar18 * fStack_1dc + fVar17 * fStack_1ec + fVar19 * fStack_1cc +
                   fVar20 * fStack_cc;
      fStack_1f8 = fVar18 * fStack_1d8 + fVar17 * fStack_1e8 + fVar19 * fStack_1c8 +
                   fVar20 * fStack_c8;
      fStack_1f4 = fVar18 * fStack_1d4 + fVar17 * fStack_1e4 + fVar19 * fStack_1c4 +
                   fVar20 * fStack_c4;
      fStack_ec = local_f0;
      fStack_e8 = local_f0;
      fStack_e4 = local_f0;
      TreePrimitive_SetYawTranslation(this_01,&local_230);
      iVar1 = *(int *)((int)this + 0xc);
      local_c0 = local_200;
      fStack_bc = fStack_1fc;
      fStack_b8 = fStack_1f8;
      fStack_b4 = fStack_1f4;
      local_e0 = local_200;
      fStack_dc = fStack_1fc;
      fStack_d8 = fStack_1f8;
      fStack_d4 = fStack_1f4;
      fStack_194 = *(float *)((int)this_01 + 0x48);
      local_190 = *(float *)(iVar1 + 0x40) * fStack_194;
      fStack_18c = *(float *)(iVar1 + 0x44) * fStack_194;
      fStack_188 = *(float *)(iVar1 + 0x48) * fStack_194;
      fStack_184 = *(float *)(iVar1 + 0x4c) * fStack_194;
      local_1a0 = *(float *)(iVar1 + 0x30) * fStack_194;
      fStack_19c = *(float *)(iVar1 + 0x34) * fStack_194;
      fStack_198 = *(float *)(iVar1 + 0x38) * fStack_194;
      fStack_194 = *(float *)(iVar1 + 0x3c) * fStack_194;
      Bounds_TransformHomogeneousCorners(&local_1a0,&local_230);
      *(float *)((int)this_01 + 0x20) = local_1a0;
      *(float *)((int)this_01 + 0x24) = fStack_19c;
      *(float *)((int)this_01 + 0x28) = fStack_198;
      *(float *)((int)this_01 + 0x2c) = fStack_194;
      *(float *)((int)this_01 + 0x30) = local_190;
      *(float *)((int)this_01 + 0x34) = fStack_18c;
      *(float *)((int)this_01 + 0x38) = fStack_188;
      *(float *)((int)this_01 + 0x3c) = fStack_184;
      if (this_00 == (void *)0x0) {
        local_1b0 = 0.0;
        fStack_1ac = 1.0;
        uStack_1a8 = 0;
        uStack_1a4 = 0;
        pfVar3 = &local_1b0;
      }
      else {
        pfVar3 = (float *)FUN_00c6a9d0(this_00,local_60,local_c0,fStack_d8);
      }
      fVar6 = pfVar3[1];
      fVar7 = pfVar3[2];
      fVar8 = pfVar3[3];
      *(float *)((int)this_01 + 0x10) = *pfVar3;
      *(float *)((int)this_01 + 0x14) = fVar6;
      *(float *)((int)this_01 + 0x18) = fVar7;
      *(float *)((int)this_01 + 0x1c) = fVar8;
    }
    FUN_0095b910(this);
    TreeComponent_RefreshClusterBounds((int)this);
    local_a8 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
    local_a4 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
    iVar1 = *(int *)((int)this + 8);
    local_b0[0] = 0x3c;
    local_b0[1] = 0xdc;
    local_b0[2] = 0x59;
    local_b0[3] = 0x33;
    local_ac = &PTR_PTR_0117cbf8;
    local_a0[0] = 0;
    if (iVar1 != 0) {
      LOCK();
      *(int *)(iVar1 + 4) = *(int *)(iVar1 + 4) + 1;
      UNLOCK();
      local_a0[0] = iVar1;
    }
    RenderCommand_EnqueueIfDispatcherExists(local_b0);
    local_178 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
    local_174 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
    local_180[0] = 0x28;
    local_180[1] = 0xa0;
    local_180[2] = 0x58;
    local_180[3] = 0x53;
    local_17c = (undefined **)0x0;
    puVar4 = (undefined4 *)
             TreePrimitive_WriteYawMatrix(*(void **)(*(int *)((int)this + 8) + 8),&local_130);
    if (local_17c != (undefined **)0x0) {
      (**(code **)*local_17c)(&local_170);
    }
    local_17c = &PTR_PTR_0117cba4;
    local_170 = *puVar4;
    uStack_16c = puVar4[1];
    uStack_168 = puVar4[2];
    uStack_164 = puVar4[3];
    local_160 = puVar4[4];
    uStack_15c = puVar4[5];
    uStack_158 = puVar4[6];
    uStack_154 = puVar4[7];
    local_150 = puVar4[8];
    uStack_14c = puVar4[9];
    uStack_148 = puVar4[10];
    uStack_144 = puVar4[0xb];
    local_140 = puVar4[0xc];
    uStack_13c = puVar4[0xd];
    uStack_138 = puVar4[0xe];
    uStack_134 = puVar4[0xf];
    RenderCommand_EnqueueIfDispatcherExists(local_180);
    iVar5 = (uint)extraout_var << 8;
    if (local_17c != (undefined **)0x0) {
      iVar5 = (**(code **)*local_17c)(&local_170);
    }
    if (local_ac != (undefined **)0x0) {
      iVar5 = (**(code **)*local_ac)(local_a0);
    }
  }
  return CONCAT31((int3)((uint)iVar5 >> 8),1);
}

