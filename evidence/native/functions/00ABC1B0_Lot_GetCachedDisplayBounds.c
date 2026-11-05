/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* ECX lot; one bounds output pointer; RET4. Dirty +270 begins with base bounds +230/+240, may
   expand through roof manager +2AC, applies the Commercial1/subtype80 sea-height override, stores
   +250/+260 and clears dirty. Attached +444 follows the separate quaternion/translation transform.
   Roof-child selection and exact referenced constant values are separate contracts. */

void __thiscall Lot_GetCachedDisplayBounds(void *this,undefined4 *param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  bool bVar5;
  undefined4 uVar6;
  float *pfVar7;
  float10 fVar8;
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
  int *local_1f4;
  float local_1f0;
  float fStack_1ec;
  float fStack_1e8;
  float fStack_1e4;
  float local_1e0;
  float fStack_1dc;
  float local_1d8;
  float local_1d4;
  float local_1d0;
  float fStack_1cc;
  undefined4 uStack_1c8;
  float fStack_1c4;
  float local_1c0;
  float fStack_1bc;
  float fStack_1b8;
  float fStack_1b4;
  float local_1b0;
  float fStack_1ac;
  float fStack_1a8;
  float fStack_1a4;
  float local_1a0;
  float fStack_19c;
  undefined4 uStack_198;
  float fStack_194;
  float local_190;
  float fStack_18c;
  float fStack_188;
  float fStack_184;
  float local_180;
  float fStack_17c;
  float fStack_178;
  float fStack_174;
  float local_170;
  uint uStack_16c;
  uint uStack_168;
  uint uStack_164;
  uint local_160;
  uint uStack_15c;
  uint uStack_158;
  uint uStack_154;
  uint local_150;
  uint uStack_14c;
  uint uStack_148;
  uint uStack_144;
  float local_140;
  float fStack_13c;
  float fStack_138;
  undefined4 uStack_134;
  undefined1 *local_124;
  undefined1 *local_120;
  undefined1 *local_11c;
  char *local_118;
  undefined1 *local_114;
  undefined1 local_110 [256];
  undefined1 local_10 [12];
  
  if (*(char *)((int)this + 0x270) != '\0') {
    uVar6 = *(undefined4 *)((int)this + 0x234);
    uVar3 = *(undefined4 *)((int)this + 0x238);
    uVar4 = *(undefined4 *)((int)this + 0x23c);
    *param_1 = *(undefined4 *)((int)this + 0x230);
    param_1[1] = uVar6;
    param_1[2] = uVar3;
    param_1[3] = uVar4;
    uVar6 = *(undefined4 *)((int)this + 0x244);
    uVar3 = *(undefined4 *)((int)this + 0x248);
    uVar4 = *(undefined4 *)((int)this + 0x24c);
    param_1[4] = *(undefined4 *)((int)this + 0x240);
    param_1[5] = uVar6;
    param_1[6] = uVar3;
    param_1[7] = uVar4;
    fVar9 = *(float *)((int)this + 0x194);
    fStack_1a4 = (float)param_1[1];
    fStack_1e4 = (float)param_1[5];
    local_1b0 = fStack_1a4 - fVar9;
    fStack_1ac = fStack_1a4 - fVar9;
    fStack_1a8 = fStack_1a4 - fVar9;
    fStack_1a4 = fStack_1a4 - fVar9;
    local_1f0 = fStack_1e4 - fVar9;
    fStack_1ec = fStack_1e4 - fVar9;
    fStack_1e8 = fStack_1e4 - fVar9;
    fStack_1e4 = fStack_1e4 - fVar9;
    bVar5 = false;
    local_1d8 = local_1f0;
    if (*(void **)((int)this + 0x2ac) != (void *)0x0) {
      local_124 = local_110;
      local_11c = local_10;
      local_118 = "EASTL fixed_vector";
      local_120 = local_124;
      local_114 = local_124;
      FUN_00b97dd0(*(void **)((int)this + 0x2ac),&local_124);
      local_1e0 = (float)((int)local_120 - (int)local_124 >> 2);
      local_1d4 = 0.0;
      if (local_1e0 != 0.0) {
        do {
          local_1f4 = (int *)0x0;
          uVar6 = FUN_00b95b30(*(void **)((int)this + 0x2ac),
                               *(uint *)(local_124 + (int)local_1d4 * 4),(int *)&local_1f4);
          if ((char)uVar6 == '\0') {
LAB_00abc304:
            if (local_1f4 != (int *)0x0) {
              piVar1 = local_1f4 + 1;
              LOCK();
              iVar2 = *piVar1;
              *piVar1 = *piVar1 + -1;
              UNLOCK();
              if (iVar2 == 1) {
                LOCK();
                *piVar1 = 1;
                UNLOCK();
                if (local_1f4 != (int *)0x0) {
                  (**(code **)*local_1f4)(1);
                }
              }
            }
          }
          else if (local_1f4 != (int *)0x0) {
            fVar8 = (float10)(**(code **)(*local_1f4 + 0x40))();
            fStack_1dc = (float)fVar8;
            if ((float10)local_1d8 <= fVar8) {
              local_1d8 = fStack_1dc;
            }
            bVar5 = true;
            goto LAB_00abc304;
          }
          local_1d4 = (float)((int)local_1d4 + 1);
        } while ((uint)local_1d4 < (uint)local_1e0);
      }
      if ((local_124 != (undefined1 *)0x0) && (local_124 != local_114)) {
        Memory_FreeIfNonNull(local_124);
      }
      if (bVar5) {
        pfVar7 = (float *)Lot_BuildWorldToLocalPoseMatrix(this,(uint *)&local_170);
        Bounds_TransformHomogeneousCorners(param_1,pfVar7);
        local_180 = local_1c0;
        fStack_17c = fStack_1bc;
        fStack_178 = fStack_1b8;
        fStack_174 = fStack_1b4;
        local_190 = local_1c0;
        fStack_18c = fStack_1bc;
        fStack_188 = fStack_1b8;
        fStack_184 = fStack_1b4;
        local_1a0 = local_1d0;
        fStack_19c = fStack_1cc;
        uStack_198 = uStack_1c8;
        fStack_194 = fStack_1c4;
        fStack_1cc = local_1b0;
        fStack_1c4 = local_1d0;
        fStack_1e8 = fStack_1b8;
        fStack_1e4 = local_1c0;
        fStack_1ec = local_1d8;
        local_1f0 = local_1c0;
        fStack_1bc = local_1d8;
        fStack_1b4 = local_1c0;
        pfVar7 = (float *)Lot_BuildLocalToWorldPoseMatrix(this,(uint *)&local_170);
        Bounds_TransformHomogeneousCorners(&local_1d0,pfVar7);
      }
    }
    if ((*(int *)((int)this + 0x408) == 1) && (*(int *)((int)this + 0x40c) == 0x50)) {
      if (*(int *)((int)this + 0xc) == 0) {
        fVar9 = 10.0;
      }
      else {
        fVar8 = WorldWater_GetSeaLevel(*(int *)((int)this + 0xc));
        fVar9 = (float)fVar8;
        local_1e0 = fVar9;
      }
      *param_1 = *param_1;
      param_1[1] = fVar9;
      param_1[2] = param_1[2];
      param_1[3] = param_1[3];
      param_1[4] = param_1[4];
      param_1[5] = fVar9 + 0.75;
      param_1[6] = param_1[6];
      param_1[7] = param_1[7];
    }
    uVar6 = param_1[1];
    uVar3 = param_1[2];
    uVar4 = param_1[3];
    *(undefined4 *)((int)this + 0x250) = *param_1;
    *(undefined4 *)((int)this + 0x254) = uVar6;
    *(undefined4 *)((int)this + 600) = uVar3;
    *(undefined4 *)((int)this + 0x25c) = uVar4;
    uVar6 = param_1[5];
    uVar3 = param_1[6];
    uVar4 = param_1[7];
    *(undefined4 *)((int)this + 0x260) = param_1[4];
    *(undefined4 *)((int)this + 0x264) = uVar6;
    *(undefined4 *)((int)this + 0x268) = uVar3;
    *(undefined4 *)((int)this + 0x26c) = uVar4;
    *(undefined1 *)((int)this + 0x270) = 0;
  }
  if (*(char *)((int)this + 0x444) == '\0') {
    uVar6 = *(undefined4 *)((int)this + 0x254);
    uVar3 = *(undefined4 *)((int)this + 600);
    uVar4 = *(undefined4 *)((int)this + 0x25c);
    *param_1 = *(undefined4 *)((int)this + 0x250);
    param_1[1] = uVar6;
    param_1[2] = uVar3;
    param_1[3] = uVar4;
    uVar6 = *(undefined4 *)((int)this + 0x264);
    uVar3 = *(undefined4 *)((int)this + 0x268);
    uVar4 = *(undefined4 *)((int)this + 0x26c);
    param_1[4] = *(undefined4 *)((int)this + 0x260);
    param_1[5] = uVar6;
    param_1[6] = uVar3;
    param_1[7] = uVar4;
    return;
  }
  pfVar7 = (float *)Lot_GetAttachedWorldQuaternionTranslation(this,&local_1d0);
  fVar9 = *pfVar7 * 1.4142135;
  fVar11 = pfVar7[1] * 1.4142135;
  fVar12 = pfVar7[2] * 1.4142135;
  fVar13 = pfVar7[3] * 1.4142135;
  fVar14 = (0.0 - fVar9) * fVar9 + 0.5;
  fVar15 = (0.0 - fVar11) * fVar11 + 0.5;
  fVar16 = (0.0 - fVar12) * fVar12 + 0.5;
  fVar10 = fVar13 * fVar12 + fVar11 * fVar9;
  fVar17 = fVar11 * fVar9 - fVar13 * fVar12;
  fVar18 = fVar15 + fVar14;
  local_140 = pfVar7[4];
  fStack_13c = pfVar7[5];
  fStack_138 = pfVar7[6];
  local_170 = (float)((uint)(fVar16 + fVar15) & _DAT_011b0670);
  uStack_16c = (uint)fVar10 & uRam011b0674;
  uStack_168 = (uint)(fVar9 * fVar12 - fVar13 * fVar11) & uRam011b0678;
  uStack_164 = (uint)fVar17 & uRam011b067c;
  local_160 = (uint)fVar17 & _DAT_011b0670;
  uStack_15c = (uint)(fVar14 + fVar16) & uRam011b0674;
  uStack_158 = (uint)(fVar13 * fVar9 + fVar12 * fVar11) & uRam011b0678;
  uStack_154 = (uint)fVar10 & uRam011b067c;
  local_150 = (uint)(fVar13 * fVar11 + fVar9 * fVar12) & _DAT_011b0670;
  uStack_14c = (uint)(fVar12 * fVar11 - fVar13 * fVar9) & uRam011b0674;
  uStack_148 = (uint)fVar18 & uRam011b0678;
  uStack_144 = (uint)fVar18 & uRam011b067c;
  uStack_134 = 0x3f800000;
  Bounds_TransformHomogeneousCorners((void *)((int)this + 0x250),&local_170);
  return;
}

