/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 static: ECX geometry plus location/group-map pointers, RET0x08. Three complete
   owned ranges contain1+11B unowned alignment gaps. AA1020 UInt16 selects attribute group (identity
   not established as room/pattern). ADC720/ADF360 sample one tile-origin elevation; all2x2 corners
   use Y-0.25. Reuse group corner indices by AFC710 returned EAX key supplied raw float X/Z bits,
   without a second coordinate equality comparison. Pack low16 trunc((Y+200)*32), low8
   trunc(Z*4),low8 trunc(X*4) as[Ylo,Zquarter,Xquarter,Yhi]; emit ushort triangles00/01/11,00/11/10.
   Current tuple-key/uint/expanded/flat-proxy geometry differs; no collision-free hash/full GPU
   child/atlas/material parity inferred. Descriptive role, not recovered symbol. */

void __thiscall PoolGeometry_AppendPackedWaterTile(void *this,char *param_1,void *param_2)

{
  float *pfVar1;
  uint uVar2;
  undefined2 *puVar3;
  float fVar4;
  ushort uVar5;
  int *piVar6;
  int iVar7;
  uint **ppuVar8;
  uint *puVar9;
  uint uVar10;
  int iVar11;
  uint uVar12;
  int *piVar13;
  void *pvVar14;
  void *pvVar15;
  ulonglong uVar16;
  uint local_1b0;
  undefined4 local_1ac;
  undefined4 local_1a8;
  uint local_1a4;
  int *local_1a0;
  void *local_19c;
  void *local_198;
  float local_194;
  uint local_190;
  uint local_18c;
  undefined4 local_188;
  float local_180;
  float local_17c;
  float local_178;
  undefined4 local_174;
  uint *local_170;
  int local_16c;
  uint *local_168;
  int local_164;
  uint *local_160;
  int local_15c;
  uint *local_158;
  int local_154;
  float local_150;
  float fStack_14c;
  float fStack_148;
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
  uint *local_10c [3];
  ushort local_100 [8];
  int local_f0 [28];
  int local_80 [31];
  
  local_198 = this;
  uVar5 = LotAttributeGrid_ReadLocationWord(*(void **)(*(int *)((int)this + 0x210) + 0x230),param_1)
  ;
  local_1a4 = (uint)uVar5;
  FUN_00b66c80(param_2,&local_1ac,(short *)&local_1a4);
  uVar12 = local_1ac;
  if (local_1ac == *(uint *)(*(int *)((int)param_2 + 4) + *(int *)((int)param_2 + 8) * 4)) {
    piVar6 = FUN_00b67300(local_80);
    local_100[0] = uVar5;
    FUN_00b67440(local_f0,piVar6);
    local_1a4 = local_1a4 & 0xffffff00;
    FUN_00b67870(param_2,&local_18c,(short *)local_100);
    FUN_00b67090(local_f0);
    FUN_00b67090(local_80);
    local_1a8 = local_188;
    uVar12 = local_18c;
  }
  iVar11 = (int)param_1[1];
  iVar7 = (int)*param_1;
  if (iVar7 < *(int *)(uVar12 + 0x70)) {
    *(int *)(uVar12 + 0x70) = iVar7;
  }
  if (*(int *)(uVar12 + 0x78) < iVar7) {
    *(int *)(uVar12 + 0x78) = iVar7;
  }
  if (iVar11 < *(int *)(uVar12 + 0x74)) {
    *(int *)(uVar12 + 0x74) = iVar11;
  }
  if (*(int *)(uVar12 + 0x7c) < iVar11) {
    *(int *)(uVar12 + 0x7c) = iVar11;
  }
  local_17c = -1.0;
  local_178 = -1.0;
  local_174 = 0;
  local_1b0 = CONCAT13(local_1b0._3_1_,*(undefined3 *)param_1);
  local_1a0 = (int *)(uVar12 + 0x10);
  PackedLotLocation_WriteXZAndLevel((char *)&local_1b0,&local_17c);
  LotLocation_CopyXZAndSampleElevation(*(void **)((int)local_198 + 0x210),&local_17c,&local_150);
  local_120 = fStack_14c + -0.25;
  fStack_11c = fStack_14c + -0.25;
  fStack_118 = fStack_14c + -0.25;
  fStack_114 = fStack_14c + -0.25;
  local_1b0 = 0;
  local_1a4 = 0;
  piVar6 = (int *)(uVar12 + 0x10);
  do {
    pvVar15 = (void *)1.0;
    if (local_1a4 == 1) {
      pvVar14 = (void *)1.0;
    }
    else {
      fVar4 = (float)(int)local_1a4;
      if ((int)local_1a4 < 0) {
        fVar4 = fVar4 + 4.2949673e+09;
      }
      pvVar14 = (void *)(fVar4 * _DAT_011849e8);
      local_19c = pvVar14;
    }
    if (local_1b0 != 1) {
      fVar4 = (float)(int)local_1b0;
      if ((int)local_1b0 < 0) {
        fVar4 = fVar4 + 4.2949673e+09;
      }
      pvVar15 = (void *)(fVar4 * _DAT_011849e8);
      local_19c = pvVar15;
    }
    local_180 = local_150 + (float)pvVar14;
    fStack_13c = local_150 + (float)pvVar14;
    fStack_138 = local_150 + (float)pvVar14;
    fStack_134 = local_150 + (float)pvVar14;
    local_194 = fStack_148 + (float)pvVar15;
    fStack_12c = fStack_148 + (float)pvVar15;
    fStack_128 = fStack_148 + (float)pvVar15;
    fStack_124 = fStack_148 + (float)pvVar15;
    local_140 = local_180;
    local_130 = local_194;
    uVar16 = MixTwoWordsAndForwardHash((int)local_180,(int)local_194);
    piVar13 = local_1a0;
    uVar10 = (uint)uVar16;
    uVar12 = piVar6[0x12];
    iVar11 = (int)((uVar16 & 0xffffffff) % (ulonglong)uVar12);
    iVar7 = piVar6[0x11];
    for (puVar9 = *(uint **)(iVar7 + iVar11 * 4); puVar9 != (uint *)0x0; puVar9 = (uint *)puVar9[2])
    {
      if (uVar10 == *puVar9) {
        local_168 = puVar9;
        local_164 = iVar7 + iVar11 * 4;
        ppuVar8 = &local_168;
        goto LAB_00b67be5;
      }
    }
    local_170 = *(uint **)(iVar7 + uVar12 * 4);
    local_16c = iVar7 + uVar12 * 4;
    ppuVar8 = &local_170;
LAB_00b67be5:
    if (*ppuVar8 == *(uint **)(iVar7 + piVar6[0x12] * 4)) {
      pfVar1 = (float *)piVar6[1];
      uVar12 = (int)((local_120 + 200.0) * 32.0) & 0xffff;
      local_19c = (void *)CONCAT13((char)(uVar12 >> 8),
                                   CONCAT12((char)(int)(local_140 * 4.0),
                                            (short)CONCAT31((int3)(int)(local_130 * 4.0),
                                                            (char)uVar12)));
      uVar12 = (int)pfVar1 - *local_1a0 >> 2;
      local_198 = local_19c;
      if (pfVar1 < (float *)local_1a0[2]) {
        local_1a0[1] = (int)(pfVar1 + 1);
        if (pfVar1 != (float *)0x0) {
          *pfVar1 = (float)local_19c;
        }
      }
      else {
        FUN_0066d0e0(local_1a0,pfVar1,&local_19c);
      }
      uVar2 = piVar13[0x12];
      iVar11 = (int)((uVar16 & 0xffffffff) % (ulonglong)uVar2);
      iVar7 = piVar13[0x11];
      for (puVar9 = *(uint **)(iVar7 + iVar11 * 4); puVar9 != (uint *)0x0;
          puVar9 = (uint *)puVar9[2]) {
        if (uVar10 == *puVar9) {
          local_158 = puVar9;
          local_154 = iVar7 + iVar11 * 4;
          ppuVar8 = &local_158;
          goto LAB_00b67cd5;
        }
      }
      local_15c = iVar7 + uVar2 * 4;
      local_160 = *(uint **)(iVar7 + uVar2 * 4);
      ppuVar8 = &local_160;
LAB_00b67cd5:
      puVar9 = *ppuVar8;
      if (*ppuVar8 == *(uint **)(iVar7 + uVar2 * 4)) {
        local_190 = local_190 & 0xffffff00;
        local_188 = 0;
        local_18c = uVar10;
        UInt32PairMap_InsertUnique(local_1a0 + 0x10,local_10c,&local_18c,local_190);
        puVar9 = local_10c[0];
      }
      puVar9[1] = uVar12;
      FUN_0068bee0(local_1a0 + 8,local_140,local_120,local_130);
    }
    else {
      uVar12 = (*ppuVar8)[1];
    }
    uVar10 = local_1a4 + 1;
    *(short *)((int)&local_1ac + (local_1a4 + local_1b0 * 2) * 2) = (short)uVar12;
    piVar6 = local_1a0;
    local_1a4 = uVar10;
    if (1 < uVar10) {
      local_1b0 = local_1b0 + 1;
      if (1 < local_1b0) {
        puVar3 = (undefined2 *)local_1a0[5];
        piVar13 = local_1a0 + 4;
        if (puVar3 < (undefined2 *)local_1a0[6]) {
          local_1a0[5] = (int)(puVar3 + 1);
          if (puVar3 != (undefined2 *)0x0) {
            *puVar3 = (undefined2)local_1ac;
          }
        }
        else {
          FUN_005d2730(piVar13,puVar3,(undefined2 *)&local_1ac);
        }
        puVar3 = (undefined2 *)piVar6[5];
        if (puVar3 < (undefined2 *)piVar6[6]) {
          piVar6[5] = (int)(puVar3 + 1);
          if (puVar3 != (undefined2 *)0x0) {
            *puVar3 = (undefined2)local_1a8;
          }
        }
        else {
          FUN_005d2730(piVar13,puVar3,(undefined2 *)&local_1a8);
        }
        puVar3 = (undefined2 *)piVar6[5];
        if (puVar3 < (undefined2 *)piVar6[6]) {
          piVar6[5] = (int)(puVar3 + 1);
          if (puVar3 != (undefined2 *)0x0) {
            *puVar3 = local_1a8._2_2_;
          }
        }
        else {
          FUN_005d2730(piVar13,puVar3,(undefined2 *)((int)&local_1a8 + 2));
        }
        puVar3 = (undefined2 *)piVar6[5];
        if (puVar3 < (undefined2 *)piVar6[6]) {
          piVar6[5] = (int)(puVar3 + 1);
          if (puVar3 != (undefined2 *)0x0) {
            *puVar3 = (undefined2)local_1ac;
          }
        }
        else {
          FUN_005d2730(piVar13,puVar3,(undefined2 *)&local_1ac);
        }
        puVar3 = (undefined2 *)piVar6[5];
        if (puVar3 < (undefined2 *)piVar6[6]) {
          piVar6[5] = (int)(puVar3 + 1);
          if (puVar3 != (undefined2 *)0x0) {
            *puVar3 = local_1a8._2_2_;
          }
        }
        else {
          FUN_005d2730(piVar13,puVar3,(undefined2 *)((int)&local_1a8 + 2));
        }
        puVar3 = (undefined2 *)piVar6[5];
        if (puVar3 < (undefined2 *)piVar6[6]) {
          piVar6[5] = (int)(puVar3 + 1);
          if (puVar3 != (undefined2 *)0x0) {
            *puVar3 = local_1ac._2_2_;
            return;
          }
        }
        else {
          FUN_005d2730(piVar13,puVar3,(undefined2 *)((int)&local_1ac + 2));
        }
        return;
      }
      local_1a4 = 0;
    }
  } while( true );
}

