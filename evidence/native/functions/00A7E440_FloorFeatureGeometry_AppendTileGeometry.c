/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst contract (original PC1.67; instruction-checked selected branches): Tile geometry producer
   called by RebuildDrawGroups; packed x/z/signed-level input despite uint3 decompiler storage.
   Samples the floor diagonal selector, queries platform type5 and emits alternate topology for
   partial platform masks. Vertex acquisition is centralized in GetOrAddVertex; room/group and
   cutout coordinates are retained there. This complete body is exported; partial-platform branch
   topology is not claimed fully reconstructed in the managed ordinary-quad implementation. */

void __thiscall
FloorFeatureGeometry_AppendTileGeometry(void *this,int param_1,uint3 *param_2,int *param_3)

{
  int *piVar1;
  ushort uVar2;
  int iVar3;
  uint *puVar4;
  undefined4 *puVar5;
  undefined1 uVar6;
  undefined4 uVar7;
  uint uVar8;
  uint **ppuVar9;
  undefined2 *puVar10;
  void *pvVar11;
  undefined2 *puVar12;
  undefined2 *puVar13;
  void *pvVar14;
  void *pvVar15;
  undefined8 uVar16;
  void *local_f4;
  char local_ed;
  undefined4 local_ec;
  int *local_e8;
  char local_e1;
  float local_e0;
  void *local_dc;
  uint *local_d8;
  int local_d4;
  void *local_d0;
  void *local_cc;
  void *local_c8;
  void *local_c4;
  void *local_c0;
  float fStack_bc;
  void *pvStack_b8;
  float fStack_b4;
  void *local_b0;
  float fStack_ac;
  void *pvStack_a8;
  float fStack_a4;
  undefined2 *local_98;
  undefined4 local_94;
  undefined4 local_90;
  char *local_8c;
  float local_88;
  float local_84;
  undefined4 local_80;
  float local_7c;
  float local_78;
  undefined4 local_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  uint *local_60;
  int local_5c;
  uint local_58;
  uint local_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  void *local_40;
  undefined4 uStack_3c;
  void *pvStack_38;
  undefined4 uStack_34;
  void *local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  
  local_88 = -1.0;
  local_84 = -1.0;
  local_80 = 0;
  local_d8 = (uint *)CONCAT13(local_d8._3_1_,*param_2);
  local_d0 = this;
  PackedLotLocation_WriteXZAndLevel((char *)&local_d8,&local_88);
  LotLocation_CopyXZAndSampleElevation(*(void **)((int)this + 0x29c),&local_88,(float *)&local_40);
  local_98 = (undefined2 *)0x0;
  local_94 = 0;
  local_90 = 0;
  local_8c = "LotRenderer/FloorFeatureGeometry/Geometry";
  FUN_0067f5e0(&local_98,4);
  pvVar15 = *(void **)(param_1 + 0x18);
  pvVar11 = *(void **)(*(int *)((int)this + 0x29c) + 0x230);
  local_e1 = '\0';
  if (pvVar11 == (void *)0x0) {
LAB_00a7e502:
    local_ed = '\0';
  }
  else {
    uVar7 = FloorElevation_SelectCellDiagonal(pvVar11,(char *)param_2);
    local_ed = '\x01';
    if ((char)uVar7 == '\0') goto LAB_00a7e502;
  }
  if (pvVar15 != (void *)0x0) {
    local_ec = (void *)(uint)*param_2;
    FUN_00ab68b0(pvVar15,(char *)param_2,5,(undefined2 *)&local_ec);
    local_e1 = local_ec._3_1_;
    if ((local_ec._3_1_ != '\x0f') && (local_ec._3_1_ != '\0')) {
      local_e8 = param_3 + 4;
      FUN_005d3480(local_e8,0xc);
      local_c4 = (void *)(int)local_ec._3_1_;
      local_dc = (void *)((float)local_40 + 1.0);
      fStack_ac = (float)local_40 + 1.0;
      pvStack_a8 = (void *)((float)local_40 + 1.0);
      fStack_a4 = (float)local_40 + 1.0;
      local_e0 = (float)pvStack_38 + 1.0;
      fStack_bc = (float)pvStack_38 + 1.0;
      pvStack_b8 = (void *)((float)pvStack_38 + 1.0);
      fStack_b4 = (float)pvStack_38 + 1.0;
      local_70 = 1.0;
      fStack_6c = 1.0;
      fStack_68 = 1.0;
      fStack_64 = 1.0;
      local_d8 = (uint *)(CONCAT31(local_d8._1_3_,(char)((uint)local_c4 >> 2)) & 0xffffff01);
      local_c0 = (void *)local_e0;
      local_b0 = local_dc;
      uVar16 = MixTwoWordsAndForwardHash((int)local_dc,(int)local_e0);
      uVar8 = (uint)uVar16;
      if ((char)local_d8 != '\0') {
        uVar8 = ~uVar8;
      }
      local_dc = (void *)FloorFeatureGeometry_GetOrAddVertex
                                   (this,param_3,(float)local_b0,(float)local_c0,
                                    (int)*(char *)((int)param_2 + 2),uVar8,(char)local_d8);
      local_d0 = (void *)((float)local_b0 - 1.0);
      local_e0 = (float)local_c0;
      local_cc = local_d0;
      uVar16 = MixTwoWordsAndForwardHash((int)local_d0,(int)local_c0);
      uVar8 = (uint)uVar16;
      if ((char)local_d8 != '\0') {
        uVar8 = ~uVar8;
      }
      local_d0 = (void *)FloorFeatureGeometry_GetOrAddVertex
                                   (this,param_3,(float)local_cc,(float)local_c0,
                                    (int)*(char *)((int)param_2 + 2),uVar8,(char)local_d8);
      local_e0 = (float)local_c0 - 0.5;
      local_f4 = (void *)((float)local_cc + 0.5);
      local_cc = local_f4;
      local_c8 = (void *)local_e0;
      uVar16 = MixTwoWordsAndForwardHash((int)local_f4,(int)local_e0);
      uVar8 = (uint)uVar16;
      if ((char)local_d8 != '\0') {
        uVar8 = ~uVar8;
      }
      local_e0 = (float)FloorFeatureGeometry_GetOrAddVertex
                                  (this,param_3,(float)local_cc,(float)local_c8,
                                   (int)*(char *)((int)param_2 + 2),uVar8,(char)local_d8);
      if (local_ed == '\0') {
        local_f4 = (void *)((uint)local_e0 & 0xffff);
        FUN_005d3500(local_e8,(undefined2 *)&local_f4);
        local_f4 = (void *)((uint)local_d0 & 0xffff);
        FUN_005d3500(local_e8,(undefined2 *)&local_f4);
        uVar2 = (ushort)local_dc;
      }
      else {
        local_f4 = (void *)((uint)local_dc & 0xffff);
        FUN_005d3500(local_e8,(undefined2 *)&local_f4);
        local_f4 = (void *)((uint)local_d0 & 0xffff);
        FUN_005d3500(local_e8,(undefined2 *)&local_f4);
        uVar2 = local_e0._0_2_;
      }
      local_f4 = (void *)(uint)uVar2;
      FUN_005d3500(local_e8,(undefined2 *)&local_f4);
      uVar6 = local_ec._3_1_;
      local_b0 = local_40;
      fStack_ac = (float)uStack_3c;
      pvStack_a8 = pvStack_38;
      fStack_a4 = (float)uStack_34;
      local_c0 = local_40;
      fStack_bc = (float)uStack_3c;
      pvStack_b8 = pvStack_38;
      fStack_b4 = (float)uStack_34;
      local_f4 = pvStack_38;
      local_ec = local_40;
      local_d8 = (uint *)(CONCAT31(local_d8._1_3_,uVar6) & 0xffffff01);
      uVar16 = MixTwoWordsAndForwardHash((int)local_40,(int)pvStack_38);
      uVar8 = (uint)uVar16;
      if ((char)local_d8 != '\0') {
        uVar8 = ~uVar8;
      }
      local_dc = (void *)FloorFeatureGeometry_GetOrAddVertex
                                   (this,param_3,(float)local_b0,(float)pvStack_b8,
                                    (int)*(char *)((int)param_2 + 2),uVar8,(char)local_d8);
      local_ec = (void *)((float)local_b0 + 1.0);
      local_f4 = pvStack_b8;
      local_cc = local_ec;
      uVar16 = MixTwoWordsAndForwardHash((int)local_ec,(int)pvStack_b8);
      uVar8 = (uint)uVar16;
      if ((char)local_d8 != '\0') {
        uVar8 = ~uVar8;
      }
      local_d0 = (void *)FloorFeatureGeometry_GetOrAddVertex
                                   (this,param_3,(float)local_cc,(float)pvStack_b8,
                                    (int)*(char *)((int)param_2 + 2),uVar8,(char)local_d8);
      local_f4 = (void *)((float)pvStack_b8 + 0.5);
      local_ec = (void *)((float)local_cc - 0.5);
      local_cc = local_ec;
      local_c8 = local_f4;
      uVar16 = MixTwoWordsAndForwardHash((int)local_ec,(int)local_f4);
      uVar8 = (uint)uVar16;
      if ((char)local_d8 != '\0') {
        uVar8 = ~uVar8;
      }
      local_e0 = (float)FloorFeatureGeometry_GetOrAddVertex
                                  (this,param_3,(float)local_cc,(float)local_c8,
                                   (int)*(char *)((int)param_2 + 2),uVar8,(char)local_d8);
      if (local_ed == '\0') {
        local_f4 = (void *)((uint)local_e0 & 0xffff);
        FUN_005d3500(local_e8,(undefined2 *)&local_f4);
        local_f4 = (void *)((uint)local_d0 & 0xffff);
        FUN_005d3500(local_e8,(undefined2 *)&local_f4);
        uVar2 = (ushort)local_dc;
      }
      else {
        local_f4 = (void *)((uint)local_dc & 0xffff);
        FUN_005d3500(local_e8,(undefined2 *)&local_f4);
        local_f4 = (void *)((uint)local_d0 & 0xffff);
        FUN_005d3500(local_e8,(undefined2 *)&local_f4);
        uVar2 = local_e0._0_2_;
      }
      local_f4 = (void *)(uint)uVar2;
      FUN_005d3500(local_e8,(undefined2 *)&local_f4);
      local_ec = (void *)((float)local_40 + local_70);
      fStack_bc = (float)local_40 + fStack_6c;
      pvStack_b8 = (void *)((float)local_40 + fStack_68);
      fStack_b4 = (float)local_40 + fStack_64;
      local_b0 = local_40;
      fStack_ac = (float)uStack_3c;
      pvStack_a8 = pvStack_38;
      fStack_a4 = (float)uStack_34;
      local_f4 = pvStack_38;
      local_d8 = (uint *)(CONCAT31(local_d8._1_3_,(char)((uint)local_c4 >> 1)) & 0xffffff01);
      local_c0 = local_ec;
      uVar16 = MixTwoWordsAndForwardHash((int)local_ec,(int)pvStack_38);
      uVar8 = (uint)uVar16;
      if ((char)local_d8 != '\0') {
        uVar8 = ~uVar8;
      }
      local_dc = (void *)FloorFeatureGeometry_GetOrAddVertex
                                   (this,param_3,(float)local_c0,(float)pvStack_a8,
                                    (int)*(char *)((int)param_2 + 2),uVar8,(char)local_d8);
      local_f4 = (void *)((float)pvStack_a8 + 1.0);
      local_ec = local_c0;
      local_c8 = local_f4;
      uVar16 = MixTwoWordsAndForwardHash((int)local_c0,(int)local_f4);
      uVar8 = (uint)uVar16;
      if ((char)local_d8 != '\0') {
        uVar8 = ~uVar8;
      }
      local_d0 = (void *)FloorFeatureGeometry_GetOrAddVertex
                                   (this,param_3,(float)local_c0,(float)local_c8,
                                    (int)*(char *)((int)param_2 + 2),uVar8,(char)local_d8);
      local_f4 = (void *)((float)local_c8 - 0.5);
      local_ec = (void *)((float)local_c0 - 0.5);
      local_cc = local_ec;
      local_c8 = local_f4;
      uVar16 = MixTwoWordsAndForwardHash((int)local_ec,(int)local_f4);
      uVar8 = (uint)uVar16;
      if ((char)local_d8 != '\0') {
        uVar8 = ~uVar8;
      }
      local_e0 = (float)FloorFeatureGeometry_GetOrAddVertex
                                  (this,param_3,(float)local_cc,(float)local_c8,
                                   (int)*(char *)((int)param_2 + 2),uVar8,(char)local_d8);
      if (local_ed == '\0') {
        local_f4 = (void *)((uint)local_e0 & 0xffff);
        FUN_005d3500(local_e8,(undefined2 *)&local_f4);
        local_f4 = (void *)((uint)local_d0 & 0xffff);
        FUN_005d3500(local_e8,(undefined2 *)&local_f4);
        uVar2 = (ushort)local_dc;
      }
      else {
        local_f4 = (void *)((uint)local_dc & 0xffff);
        FUN_005d3500(local_e8,(undefined2 *)&local_f4);
        local_f4 = (void *)((uint)local_d0 & 0xffff);
        FUN_005d3500(local_e8,(undefined2 *)&local_f4);
        uVar2 = local_e0._0_2_;
      }
      local_f4 = (void *)(uint)uVar2;
      FUN_005d3500(local_e8,(undefined2 *)&local_f4);
      pvVar15 = local_c4;
      local_f4 = (void *)((float)pvStack_38 + local_70);
      fStack_ac = (float)pvStack_38 + fStack_6c;
      pvStack_a8 = (void *)((float)pvStack_38 + fStack_68);
      fStack_a4 = (float)pvStack_38 + fStack_64;
      local_c0 = local_40;
      fStack_bc = (float)uStack_3c;
      pvStack_b8 = pvStack_38;
      fStack_b4 = (float)uStack_34;
      local_c4 = local_40;
      local_d8 = (uint *)(CONCAT31(local_d8._1_3_,(char)((uint)pvVar15 >> 3)) & 0xffffff01);
      local_b0 = local_f4;
      uVar16 = MixTwoWordsAndForwardHash((int)local_40,(int)local_f4);
      uVar8 = (uint)uVar16;
      if ((char)local_d8 != '\0') {
        uVar8 = ~uVar8;
      }
      local_dc = (void *)FloorFeatureGeometry_GetOrAddVertex
                                   (this,param_3,(float)local_c0,(float)local_b0,
                                    (int)*(char *)((int)param_2 + 2),uVar8,(char)local_d8);
      local_f4 = (void *)((float)local_b0 - 1.0);
      local_c4 = local_c0;
      local_c8 = local_f4;
      uVar16 = MixTwoWordsAndForwardHash((int)local_c0,(int)local_f4);
      uVar8 = (uint)uVar16;
      if ((char)local_d8 != '\0') {
        uVar8 = ~uVar8;
      }
      local_d0 = (void *)FloorFeatureGeometry_GetOrAddVertex
                                   (this,param_3,(float)local_c0,(float)local_c8,
                                    (int)*(char *)((int)param_2 + 2),uVar8,(char)local_d8);
      local_f4 = (void *)((float)local_c8 + 0.5);
      local_cc = (void *)((float)local_c0 + 0.5);
      local_c8 = local_f4;
      local_c4 = local_cc;
      uVar16 = MixTwoWordsAndForwardHash((int)local_cc,(int)local_f4);
      uVar8 = (uint)uVar16;
      if ((char)local_d8 != '\0') {
        uVar8 = ~uVar8;
      }
      uVar8 = FloorFeatureGeometry_GetOrAddVertex
                        (this,param_3,(float)local_cc,(float)local_c8,
                         (int)*(char *)((int)param_2 + 2),uVar8,(char)local_d8);
      piVar1 = local_e8;
      if (local_ed == '\0') {
        local_f4 = (void *)(uVar8 & 0xffff);
        FUN_005d3500(local_e8,(undefined2 *)&local_f4);
        local_f4 = (void *)((uint)local_d0 & 0xffff);
        FUN_005d3500(piVar1,(undefined2 *)&local_f4);
        local_f4 = (void *)((uint)local_dc & 0xffff);
        FUN_005d3500(piVar1,(undefined2 *)&local_f4);
      }
      else {
        local_f4 = (void *)((uint)local_dc & 0xffff);
        FUN_005d3500(local_e8,(undefined2 *)&local_f4);
        local_f4 = (void *)((uint)local_d0 & 0xffff);
        FUN_005d3500(piVar1,(undefined2 *)&local_f4);
        local_f4 = (void *)(uVar8 & 0xffff);
        FUN_005d3500(piVar1,(undefined2 *)&local_f4);
      }
      goto LAB_00a7f312;
    }
  }
  local_e1 = local_e1 == '\x0f';
  if ((bool)local_e1) {
    local_c4 = (void *)0x3e400000;
  }
  else {
    local_c4 = (void *)0x0;
  }
  local_ec = (void *)0x0;
  do {
    local_dc = (void *)0x0;
    do {
      pvVar11 = local_dc;
      pvVar15 = (void *)1.0;
      if (local_dc == (void *)0x1) {
        pvVar14 = (void *)1.0;
      }
      else {
        pvVar14 = (void *)(float)(int)local_dc;
        local_f4 = pvVar14;
        if ((int)local_dc < 0) {
          pvVar14 = (void *)((float)pvVar14 + 4.2949673e+09);
          local_f4 = pvVar14;
        }
      }
      if ((local_ec != (void *)0x1) &&
         (pvVar15 = (void *)(float)(int)local_ec, local_f4 = pvVar15, (int)local_ec < 0)) {
        pvVar15 = (void *)((float)pvVar15 + 4.2949673e+09);
        local_f4 = pvVar15;
      }
      local_c8 = (void *)((float)local_40 + (float)pvVar14);
      fStack_2c = (float)local_40 + (float)pvVar14;
      fStack_28 = (float)local_40 + (float)pvVar14;
      fStack_24 = (float)local_40 + (float)pvVar14;
      local_cc = (void *)((float)pvStack_38 + (float)pvVar15);
      fStack_4c = (float)pvStack_38 + (float)pvVar15;
      fStack_48 = (float)pvStack_38 + (float)pvVar15;
      fStack_44 = (float)pvStack_38 + (float)pvVar15;
      local_50 = (float)local_cc;
      local_30 = local_c8;
      uVar16 = MixTwoWordsAndForwardHash((int)local_c8,(int)local_cc);
      local_e0 = (float)uVar16;
      if (local_e1 != '\0') {
        local_e0 = (float)~(uint)local_e0;
      }
      uVar8 = param_3[10];
      iVar3 = param_3[9];
      for (puVar4 = *(uint **)(iVar3 + ((uint)local_e0 % uVar8) * 4); puVar4 != (uint *)0x0;
          puVar4 = (uint *)puVar4[2]) {
        pvVar11 = local_dc;
        if (local_e0 == (float)*puVar4) {
          local_d8 = puVar4;
          local_d4 = iVar3 + ((uint)local_e0 % uVar8) * 4;
          ppuVar9 = &local_d8;
          goto LAB_00a7ee6a;
        }
      }
      local_5c = iVar3 + uVar8 * 4;
      local_60 = *(uint **)(iVar3 + uVar8 * 4);
      ppuVar9 = &local_60;
LAB_00a7ee6a:
      if (*ppuVar9 == *(uint **)(iVar3 + param_3[10] * 4)) {
        uVar8 = param_3[1] - *param_3 >> 4;
        local_7c = (float)(int)pvVar11;
        local_74 = local_80;
        if ((int)pvVar11 < 0) {
          local_7c = local_7c + 4.2949673e+09;
        }
        local_7c = local_7c + local_88;
        local_78 = (float)(int)local_ec;
        if ((int)local_ec < 0) {
          local_78 = local_78 + 4.2949673e+09;
        }
        local_78 = local_78 + local_84;
        local_f4 = pvVar11;
        LotLocation_CopyXZAndSampleElevation(*(void **)((int)local_d0 + 0x29c),&local_7c,&local_20);
        puVar5 = (undefined4 *)param_3[1];
        local_70 = (float)local_c4 + fStack_1c + 0.01;
        fStack_6c = (float)local_c4 + fStack_1c + 0.01;
        fStack_68 = (float)local_c4 + fStack_1c + 0.01;
        fStack_64 = (float)local_c4 + fStack_1c + 0.01;
        if (puVar5 < (undefined4 *)param_3[2]) {
          param_3[1] = (int)(puVar5 + 4);
          if (puVar5 != (undefined4 *)0x0) {
            *puVar5 = 0;
            puVar5[1] = 0;
            puVar5[2] = 0;
            puVar5[3] = 0;
          }
        }
        else {
          local_b0 = (void *)0x0;
          fStack_ac = 0.0;
          pvStack_a8 = (void *)0x0;
          fStack_a4 = 0.0;
          FUN_00cca0b0(param_3,puVar5,&local_b0);
        }
        iVar3 = param_3[1];
        *(void **)(iVar3 + -0x10) = local_30;
        *(float *)(iVar3 + -0xc) = local_70;
        *(float *)(iVar3 + -8) = local_50;
        if (*(ushort *)(param_3 + 0x18) == 0) {
          *(undefined2 *)(iVar3 + -4) = 0;
          *(undefined2 *)(iVar3 + -2) = 0;
        }
        else {
          FUN_00a7c860((void *)(*(int *)((int)local_d0 + 0x278) + -0x28 +
                               (uint)*(ushort *)(param_3 + 0x18) * 0x28),(float)local_30,local_50,
                       (undefined2 *)(iVar3 + -4),(undefined2 *)(iVar3 + -2));
        }
        local_e8 = (int *)((uint)local_e8 & 0xffffff00);
        local_58 = (uint)local_e0;
        local_54 = uVar8;
        UInt32PairMap_InsertUnique(param_3 + 8,&local_c0,&local_58,(uint)local_e8);
        FUN_0068bee0(param_3 + 0x10,local_30,local_70,local_50);
        FUN_0068bee0(param_3 + 0x10,local_30,local_70 + 0.01,local_50);
      }
      else {
        uVar8 = (*ppuVar9)[1];
        local_dc = pvVar11;
      }
      pvVar15 = (void *)((int)local_dc + (int)local_ec * 2);
      local_dc = (void *)((int)local_dc + 1);
      local_98[(int)pvVar15] = (short)uVar8;
    } while (local_dc < (void *)0x2);
    local_ec = (void *)((int)local_ec + 1);
  } while (local_ec < 2);
  local_f4 = (void *)param_3[4];
  piVar1 = param_3 + 4;
  if ((uint)(param_3[6] - (int)local_f4 >> 1) < 6) {
    iVar3 = param_3[5];
    pvVar15 = (void *)FUN_004e4500(0xc,param_3[7],0);
    memmove(pvVar15,local_f4,iVar3 - (int)local_f4);
    if ((void *)*piVar1 != (void *)0x0) {
      Memory_FreeIfNonNull((void *)*piVar1);
    }
    iVar3 = *piVar1;
    *piVar1 = (int)pvVar15;
    param_3[5] = (int)((int)pvVar15 + (param_3[5] - iVar3 >> 1) * 2);
    param_3[6] = (int)pvVar15 + 0xc;
  }
  puVar10 = (undefined2 *)param_3[5];
  if (local_ed == '\0') {
    if (puVar10 < (undefined2 *)param_3[6]) {
      param_3[5] = (int)(puVar10 + 1);
      if (puVar10 != (undefined2 *)0x0) {
        *puVar10 = *local_98;
      }
    }
    else {
      FUN_005d2730(piVar1,puVar10,local_98);
    }
    puVar10 = (undefined2 *)param_3[5];
    puVar12 = local_98 + 2;
    if (puVar10 < (undefined2 *)param_3[6]) {
      param_3[5] = (int)(puVar10 + 1);
      if (puVar10 != (undefined2 *)0x0) {
        *puVar10 = *puVar12;
      }
    }
    else {
      FUN_005d2730(piVar1,puVar10,puVar12);
    }
    puVar10 = (undefined2 *)param_3[5];
    puVar13 = local_98 + 1;
    if (puVar10 < (undefined2 *)param_3[6]) {
      param_3[5] = (int)(puVar10 + 1);
      if (puVar10 != (undefined2 *)0x0) {
        *puVar10 = *puVar13;
      }
    }
    else {
      FUN_005d2730(piVar1,puVar10,puVar13);
    }
    puVar10 = (undefined2 *)param_3[5];
    if (puVar10 < (undefined2 *)param_3[6]) {
      param_3[5] = (int)(puVar10 + 1);
      if (puVar10 != (undefined2 *)0x0) {
        *puVar10 = *puVar13;
      }
    }
    else {
      FUN_005d2730(piVar1,puVar10,puVar13);
    }
    puVar10 = (undefined2 *)param_3[5];
    if (puVar10 < (undefined2 *)param_3[6]) {
      param_3[5] = (int)(puVar10 + 1);
      if (puVar10 != (undefined2 *)0x0) {
        *puVar10 = *puVar12;
      }
    }
    else {
      FUN_005d2730(piVar1,puVar10,puVar12);
    }
    puVar10 = local_98 + 3;
  }
  else {
    if (puVar10 < (undefined2 *)param_3[6]) {
      param_3[5] = (int)(puVar10 + 1);
      if (puVar10 != (undefined2 *)0x0) {
        *puVar10 = *local_98;
      }
    }
    else {
      FUN_005d2730(piVar1,puVar10,local_98);
    }
    puVar10 = (undefined2 *)param_3[5];
    if (puVar10 < (undefined2 *)param_3[6]) {
      param_3[5] = (int)(puVar10 + 1);
      if (puVar10 != (undefined2 *)0x0) {
        *puVar10 = local_98[2];
      }
    }
    else {
      FUN_005d2730(piVar1,puVar10,local_98 + 2);
    }
    puVar10 = (undefined2 *)param_3[5];
    puVar12 = local_98 + 3;
    if (puVar10 < (undefined2 *)param_3[6]) {
      param_3[5] = (int)(puVar10 + 1);
      if (puVar10 != (undefined2 *)0x0) {
        *puVar10 = *puVar12;
      }
    }
    else {
      FUN_005d2730(piVar1,puVar10,puVar12);
    }
    puVar10 = (undefined2 *)param_3[5];
    if (puVar10 < (undefined2 *)param_3[6]) {
      param_3[5] = (int)(puVar10 + 1);
      if (puVar10 != (undefined2 *)0x0) {
        *puVar10 = *local_98;
      }
    }
    else {
      FUN_005d2730(piVar1,puVar10,local_98);
    }
    puVar10 = (undefined2 *)param_3[5];
    if (puVar10 < (undefined2 *)param_3[6]) {
      param_3[5] = (int)(puVar10 + 1);
      if (puVar10 != (undefined2 *)0x0) {
        *puVar10 = *puVar12;
        puVar10 = local_98 + 1;
        goto LAB_00a7f2ef;
      }
    }
    else {
      FUN_005d2730(piVar1,puVar10,puVar12);
    }
    puVar10 = local_98 + 1;
  }
LAB_00a7f2ef:
  puVar12 = (undefined2 *)param_3[5];
  if (puVar12 < (undefined2 *)param_3[6]) {
    param_3[5] = (int)(puVar12 + 1);
    if (puVar12 != (undefined2 *)0x0) {
      *puVar12 = *puVar10;
    }
  }
  else {
    FUN_005d2730(piVar1,puVar12,puVar10);
  }
LAB_00a7f312:
  if (local_98 != (undefined2 *)0x0) {
    Memory_FreeIfNonNull(local_98);
  }
  return;
}

