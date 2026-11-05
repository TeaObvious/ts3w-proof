/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 floor geometry preparation comparison.
   Draws the renderer thickness-edge set, excluding entries present in the pending-removal set.
   Unpacks orientation/type and two 14-bit coordinates, decodes endpoints through AF7970, samples
   both heights through AA0B90, and forms endpoint-height / height-minus-float32(0.15) vertices.
   Texture key comes from this+0x128..0x134; DiffuseMap/FloorThickness bindings and one/two draw
   lanes remain native resource operations.
   Room-selected lanes, direction-derived normal indices and ground-level index ordering are native
   behavior, distinct from the current outward-normal/two-sided snapshot band. Children, resource
   lifetime, complete graphics output and room-domain equivalence are not established. Physical ECX
   receiver plus one stack pointer; RET4. All three stored body ranges are complete; nine bytes
   between ranges are unowned alignment.
   Static original-code observations; preserve function ID, ABI/types, stored body, original bytes
   and flow. */

void __thiscall FloorRenderer_DrawThicknessEdges(void *this,void *param_1)

{
  uint *puVar1;
  uint uVar2;
  byte bVar3;
  short sVar4;
  uint uVar5;
  uint **ppuVar6;
  int *piVar7;
  ushort uVar8;
  int iVar9;
  int iVar10;
  void *pvVar11;
  uint uVar12;
  float10 fVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined4 uVar18;
  undefined1 local_13d;
  float local_13c;
  char local_136;
  char local_135;
  int local_134;
  float local_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  uint *local_11c;
  uint *local_118;
  ushort *local_114;
  uint local_110;
  uint local_10c;
  uint *local_108;
  float local_104;
  float local_100;
  undefined4 local_fc;
  float local_f8;
  float local_f4;
  undefined4 local_f0;
  float local_ec;
  float local_e8;
  int local_e4;
  uint local_e0;
  uint local_dc;
  uint local_d8;
  byte local_d4;
  void *local_d0;
  float local_cc;
  float local_c8;
  float local_c4;
  float local_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  float local_ac;
  uint *local_a8;
  int local_a4;
  uint *local_a0;
  int local_9c;
  uint *local_98;
  undefined4 *local_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  uint *local_80;
  int iStack_7c;
  float fStack_78;
  float fStack_74;
  uint *local_70;
  undefined4 uStack_6c;
  float fStack_68;
  float fStack_64;
  uint *local_60;
  undefined4 uStack_5c;
  float fStack_58;
  float fStack_54;
  uint *local_50;
  int iStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  uint uStack_3c;
  uint uStack_38;
  undefined4 uStack_34;
  int local_30 [11];
  
  local_136 = *(int *)(*(int *)((int)this + 0xc) + 0xe4) != 0;
  iVar10 = (byte)local_136 + 1;
  local_e4 = iVar10;
  local_d0 = this;
  FUN_00799680(local_30);
  uVar14 = *(undefined4 *)((int)this + 0x128);
  uVar15 = *(undefined4 *)((int)this + 300);
  uVar18 = 0;
  uVar16 = *(undefined4 *)((int)this + 0x130);
  uVar17 = *(undefined4 *)((int)this + 0x134);
  uVar5 = HashLowercasedCStringFNV1("DiffuseMap");
  MaterialParams_AppendTextureKey(local_30,uVar5,uVar14,uVar15,uVar16,uVar17,uVar18);
  local_110 = HashLowercasedCStringFNV1("FloorThickness");
  if (iVar10 != 0) {
    local_90 = 0.0;
    fStack_8c = 0.0;
    fStack_88 = 0.0;
    fStack_84 = 0.0;
    local_c0 = 0.0;
    uStack_bc = 0x3e19999a;
    uStack_b8 = 0;
    uStack_b4 = 0;
    fStack_124 = 1.0;
    fStack_128 = 1.0;
    fStack_12c = 0.0;
    local_130 = 1.0;
    local_70 = (uint *)1.0;
    uStack_6c = 0x3e19999a;
    fStack_68 = 1.0;
    fStack_64 = 1.0;
    local_50 = (uint *)1.0;
    iStack_4c = 0;
    fStack_48 = 1.0;
    fStack_44 = 1.0;
    pvVar11 = param_1;
    local_134 = iVar10;
    do {
      local_13d = 1;
      FUN_006d6370(pvVar11,1,&local_13d);
      FUN_006d7330((int)pvVar11);
      FUN_006d4360(pvVar11,0,7,0);
      FUN_006d4360(pvVar11,1,5,0);
      FUN_006d4360(pvVar11,2,1,0);
      FUN_006d5fe0((int)pvVar11);
      FUN_006d44c0(pvVar11,local_110,local_30);
      local_13d = 1;
      local_135 = '\x01';
      local_13c = 4.2039e-45;
      FUN_006d73b0(pvVar11,&local_13c,&local_135,&local_13d,0,0);
      uVar5 = 0;
      do {
        FUN_006d5900(pvVar11,*(float *)((int)&DAT_01183bc0 + uVar5),0,
                     *(undefined4 *)((int)&DAT_01183bc4 + uVar5));
        uVar5 = uVar5 + 8;
      } while (uVar5 < 0x30);
      uVar5 = 0;
      do {
        FUN_006d5900(pvVar11,-0.0 - *(float *)((int)&DAT_01183bc0 + uVar5),0,
                     -0.0 - *(float *)((int)&DAT_01183bc4 + uVar5));
        uVar5 = uVar5 + 8;
      } while (uVar5 < 0x30);
      local_130 = local_90;
      fStack_12c = fStack_8c;
      fStack_128 = fStack_88;
      fStack_124 = fStack_84;
      FUN_006d5a80(pvVar11,0,&local_130);
      local_40 = local_c0;
      uStack_3c = uStack_bc;
      uStack_38 = uStack_b8;
      uStack_34 = uStack_b4;
      FUN_006d5a80(pvVar11,0,&local_40);
      local_60 = local_70;
      uStack_5c = uStack_6c;
      fStack_58 = fStack_68;
      fStack_54 = fStack_64;
      FUN_006d5a80(pvVar11,0,(float *)&local_60);
      local_80 = local_50;
      iStack_7c = iStack_4c;
      fStack_78 = fStack_48;
      fStack_74 = fStack_44;
      FUN_006d5a80(pvVar11,0,(float *)&local_80);
      pvVar11 = (void *)((int)pvVar11 + 0x2e0);
      local_134 = local_134 + -1;
    } while (local_134 != 0);
    local_134 = 0;
    iVar10 = local_e4;
  }
  local_118 = *(uint **)((int)this + 0x54);
  local_f8 = -1.0;
  local_f4 = -1.0;
  local_104 = -1.0;
  local_100 = -1.0;
  local_fc = *(undefined4 *)((int)this + 0x14);
  local_f0 = *(undefined4 *)((int)this + 0x14);
  local_11c = (uint *)*local_118;
  local_110 = 0;
  if (local_11c == (uint *)0x0) {
    puVar1 = local_118 + 1;
    local_118 = local_118 + 1;
    uVar5 = *puVar1;
    while (uVar5 == 0) {
      local_118 = local_118 + 1;
      uVar5 = *local_118;
    }
    local_11c = (uint *)*local_118;
  }
  local_70 = *(uint **)(*(int *)((int)this + 0x54) + *(int *)((int)this + 0x58) * 4);
  if (local_11c != local_70) {
    do {
      uVar5 = *(uint *)((int)this + 0x78);
      iVar10 = *(int *)((int)this + 0x74);
      uVar12 = *local_11c;
      local_50 = *(uint **)(iVar10 + uVar5 * 4);
      iVar9 = (uVar12 % uVar5) * 4;
      for (puVar1 = *(uint **)(iVar9 + iVar10); puVar1 != (uint *)0x0; puVar1 = (uint *)puVar1[2]) {
        if (uVar12 == *puVar1) {
          local_a8 = puVar1;
          local_a4 = iVar10 + iVar9;
          ppuVar6 = &local_a8;
          goto LAB_00a9db5d;
        }
      }
      local_94 = (undefined4 *)(iVar10 + uVar5 * 4);
      local_98 = (uint *)*local_94;
      ppuVar6 = &local_98;
LAB_00a9db5d:
      local_108 = ppuVar6[1];
      if (*ppuVar6 == local_50) {
        local_d8 = uVar12 & 7;
        local_e0 = uVar12 >> 3 & 0x3fff;
        local_d4 = (byte)(uVar12 >> 0x1f);
        local_dc = uVar12 >> 0x11 & 0x3fff;
        FloorEdge_ComputeDirectedEndpoints
                  ((int *)&local_e0,&local_f8,&local_f4,&local_104,&local_100);
        fVar13 = WallFloor_SampleLevelGridHeight(*(void **)((int)this + 0x10),&local_f8);
        local_114 = (ushort *)(float)fVar13;
        fVar13 = WallFloor_SampleLevelGridHeight(*(void **)((int)this + 0x10),&local_104);
        local_13c = (float)fVar13;
        local_134 = 0;
        if (local_136 != '\0') {
          local_ec = (local_104 + local_f8) * 0.5;
          local_e8 = (local_100 + local_f4) * 0.5;
          FUN_00a9aa40(&local_e0,&local_ac,&local_c8);
          fStack_88 = *(float *)((int)this + 0x14);
          local_cc = local_ac * 0.1;
          local_90 = local_cc + local_ec;
          local_c4 = local_c8 * 0.1;
          fStack_8c = local_c4 + local_e8;
          sVar4 = FUN_00aa1060(*(void **)((int)this + 0x10),&local_90);
          iVar10 = *(int *)((int)this + 0xc);
          uVar5 = *(uint *)(iVar10 + 0xe0);
          local_60 = *(uint **)(*(int *)(iVar10 + 0xdc) + *(int *)(iVar10 + 0xe0) * 4);
          iVar10 = *(int *)(iVar10 + 0xdc);
          for (puVar1 = *(uint **)(iVar10 + ((uint)(int)sVar4 % uVar5) * 4); puVar1 != (uint *)0x0;
              puVar1 = (uint *)puVar1[1]) {
            if (sVar4 == (short)*puVar1) {
              local_a0 = puVar1;
              local_9c = iVar10 + ((uint)(int)sVar4 % uVar5) * 4;
              ppuVar6 = &local_a0;
              goto LAB_00a9dd1b;
            }
          }
          local_80 = *(uint **)(iVar10 + uVar5 * 4);
          iStack_7c = iVar10 + uVar5 * 4;
          ppuVar6 = &local_80;
LAB_00a9dd1b:
          local_108 = ppuVar6[1];
          if (*ppuVar6 == local_60) {
            if ((sVar4 == 0) && (0x7fffffff < (uint)*(float *)((int)this + 0x14))) {
              local_130 = local_ec - local_cc;
              fStack_12c = local_e8 - local_c4;
              fStack_128 = *(float *)((int)this + 0x14);
              local_10c = FUN_00aa1060(*(void **)((int)this + 0x10),&local_130);
              local_10c = local_10c & 0xffff;
              iVar10 = *(int *)((int)this + 0xc);
              iVar9 = *(int *)(*(int *)(iVar10 + 0xdc) + *(int *)(iVar10 + 0xe0) * 4);
              piVar7 = (int *)FUN_00ae43c0((void *)(iVar10 + 0xd8),&local_40,(short *)&local_10c);
              if (*piVar7 != iVar9) goto LAB_00a9ddaf;
            }
          }
          else {
LAB_00a9ddaf:
            local_134 = 1;
          }
        }
        iVar10 = local_134;
        pvVar11 = (void *)(local_134 * 0x2e0 + (int)param_1);
        FUN_006d5b50(pvVar11,local_f8,local_114,local_f4);
        FUN_006d5b50(pvVar11,local_f8,(float)local_114 - 0.15,local_f4);
        FUN_006d5b50(pvVar11,local_104,local_13c - 0.15,local_100);
        FUN_006d5b50(pvVar11,local_104,local_13c,local_100);
        uVar12 = uStack_b8;
        uVar5 = uStack_bc;
        bVar3 = local_d4;
        if (*(int *)((int)this + 0x14) == 0) {
          bVar3 = local_d4 == 0;
        }
        uVar2 = local_d8;
        if (bVar3 != 0) {
          uVar2 = local_d8 + 6;
        }
        local_13c = (float)(uVar2 & 0xffff);
        uVar8 = 0;
        iVar9 = 2;
        uStack_bc = uStack_bc & 0xffff;
        uStack_b8 = CONCAT22(3,(undefined2)uStack_b8);
        if (*(int *)((int)this + 0x14) == 0) {
          uVar8 = 2;
          iVar9 = 0;
          uStack_bc = CONCAT22(3,(short)uVar5);
          uStack_b8 = uVar12 & 0xffff;
        }
        local_114 = (ushort *)((int)&local_110 + iVar10 * 2);
        uVar12 = (uint)*local_114;
        local_10c = (uint)uVar8;
        FUN_006d48c0(pvVar11,local_10c + uVar12,uVar12 + 1,uVar12 + iVar9);
        FUN_006d47f0(pvVar11,0,local_10c,1,iVar9);
        uVar5 = (uint)local_13c & 0xffff;
        FUN_006d4720(pvVar11,uVar5,uVar5,uVar5);
        local_10c = uStack_b8 >> 0x10;
        local_13c = (float)(uStack_bc >> 0x10);
        FUN_006d48c0(pvVar11,uVar12 + (int)local_13c,uVar12 + 2,uVar12 + local_10c);
        FUN_006d47f0(pvVar11,0,local_13c,2,local_10c);
        FUN_006d4720(pvVar11,uVar5,uVar5,uVar5);
        this = local_d0;
        *local_114 = *local_114 + 4;
      }
      local_11c = (uint *)local_11c[1];
      while (local_11c == (uint *)0x0) {
        local_118 = local_118 + 1;
        local_11c = (uint *)*local_118;
      }
      iVar10 = local_e4;
    } while (local_11c != local_70);
  }
  for (; iVar10 != 0; iVar10 = iVar10 + -1) {
    FUN_006d1a70((int)param_1);
    FUN_006d7320((int)param_1);
    param_1 = (void *)((int)param_1 + 0x2e0);
  }
  FUN_007996b0(local_30);
  return;
}

