/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentManager_ExportWorld. Export ordinal(s):
   1777. Entry VA: 0x10983c30. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000F03. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

char __cdecl
ContentManager_ExportWorld
          (ushort *param_1,char *param_2,char *param_3,int param_4,int param_5,undefined4 *param_6,
          int param_7,int param_8,undefined4 *param_9,char *param_10,undefined4 param_11)

{
  uint uVar1;
  ushort uVar2;
  short sVar3;
  short *psVar4;
  size_t sVar5;
  undefined4 _Src;
  undefined4 *puVar6;
  int *piVar7;
  char *pcVar8;
  char cVar9;
  ushort *puVar10;
  char *pcVar11;
  int iVar12;
  short *psVar13;
  undefined *puVar14;
  undefined *puVar15;
  undefined4 *puVar16;
  int *piVar17;
  int iVar18;
  undefined2 *puVar19;
  bool bVar20;
  undefined1 local_be4 [8];
  undefined2 *local_bdc;
  char *local_bd8;
  void *local_bd4;
  undefined4 *local_bd0;
  int local_bcc;
  undefined *local_bc8;
  undefined2 *local_bc4;
  undefined2 *local_bc0;
  char *local_bbc;
  undefined *local_bb8;
  undefined2 *local_bb4;
  undefined2 *local_bb0;
  char *local_bac;
  undefined *local_ba8;
  undefined *local_ba4;
  undefined2 *local_ba0;
  char *local_b9c;
  void *local_b90;
  int local_b8c;
  _GUID local_b88;
  int local_b78 [5];
  int local_b64;
  int local_b5c;
  int local_b54;
  int local_b4c;
  undefined4 local_b34;
  uint local_b30 [4];
  undefined1 local_b20 [16];
  undefined1 local_b10 [20];
  undefined1 local_afc [76];
  undefined1 local_ab0 [16];
  undefined1 local_aa0 [4];
  undefined4 *local_a9c;
  undefined4 *local_a98;
  undefined1 local_a90 [4];
  int *local_a8c;
  int *local_a88;
  undefined4 local_a48 [20];
  undefined4 local_9f8 [20];
  int local_9a8 [230];
  wint_t local_610 [256];
  undefined1 local_410 [1040];
  
                    /* 0x983c30  1777  ContentManager_ExportWorld */
  FUN_10922390(local_410,param_1);
  FUN_10922040(local_410,local_610,0x100);
  local_be4 = (undefined1  [8])FUN_105c3980(local_610);
  local_bd8 = param_10;
  local_bdc = (undefined2 *)0x6bc1f92;
  FUN_100f9a60(local_b78,(byte)((uint)param_10 >> 0x18) & 1,1);
  local_b34 = param_11;
  FUN_107960b0(local_b30,(undefined4 *)local_be4,0);
  uVar2 = *param_1;
  puVar10 = param_1;
  while (uVar2 != 0) {
    puVar10 = puVar10 + 1;
    uVar2 = *puVar10;
  }
  FUN_1001f8c0(local_ab0,param_1,(int *)(param_1 + ((int)puVar10 - (int)param_1 >> 1)));
  pcVar8 = param_2;
  do {
    pcVar11 = pcVar8;
    pcVar8 = pcVar11 + 1;
  } while (*pcVar11 != '\0');
  FUN_1000e8a0(local_b20,param_2,pcVar11);
  pcVar8 = param_3;
  do {
    pcVar11 = pcVar8;
    pcVar8 = pcVar11 + 1;
  } while (*pcVar11 != '\0');
  FUN_1000e8a0(local_b10,param_3,pcVar11);
  FUN_10933580(&local_b88,0);
  FUN_108defd0(local_9a8,(short *)param_1,0);
  cVar9 = FUN_1070b2b0((int)local_9a8);
  if (cVar9 != '\0') {
    cVar9 = FUN_108dd960(local_9a8,1,6,'\0');
    if (cVar9 != '\0') {
      FUN_105ca890(&local_ba8,local_9a8,1);
      FUN_1039c030(local_a48);
      cVar9 = FUN_1039c4c0(local_a48,(int *)&local_ba8,0);
      if (cVar9 != '\0') {
        FUN_109335c0(local_be4,local_9f8);
        FUN_109335c0(&local_b88,(undefined4 *)local_be4);
      }
      FUN_108dede0(local_9a8);
      FUN_108dcd60(local_9a8);
      FUN_1039c0f0(local_a48);
      FUN_105ca900((int)&local_ba8);
    }
  }
  FUN_10933580(local_be4,0);
  iVar12 = _AfxIsEqualGUID(&local_b88,(_GUID *)local_be4);
  if ((char)iVar12 == '\0') {
    FUN_109335c0(local_afc,&local_b88.Data1);
    if (0 < param_4) {
      local_b8c = param_5 - (int)param_6;
      local_bd0 = param_6;
      local_bcc = param_4;
      do {
        puVar6 = local_bd0;
        psVar4 = *(short **)(local_b8c + (int)local_bd0);
        sVar3 = *psVar4;
        local_b9c = "CSHost/ContentManager/ExportResource/langCode";
        local_ba8 = &_Dst_10ca8244;
        local_ba4 = &_Dst_10ca8244;
        local_ba0 = &DAT_10ca8246;
        local_bd8 = "CSHost/ContentManager/ExportResource/langName";
        local_be4._0_4_ = &_Dst_10ca8244;
        local_be4._4_4_ = &_Dst_10ca8244;
        local_bdc = &DAT_10ca8246;
        psVar13 = psVar4;
        while (sVar3 != 0) {
          psVar13 = psVar13 + 1;
          sVar3 = *psVar13;
        }
        FUN_1001f8c0(&local_ba8,psVar4,(int *)(psVar4 + ((int)psVar13 - (int)psVar4 >> 1)));
        psVar4 = (short *)*puVar6;
        sVar3 = *psVar4;
        psVar13 = psVar4;
        while (sVar3 != 0) {
          psVar13 = psVar13 + 1;
          sVar3 = *psVar13;
        }
        puVar14 = &_Dst_10ca8244;
        FUN_1001f8c0(local_be4,psVar4,(int *)(psVar4 + ((int)psVar13 - (int)psVar4 >> 1)));
        puVar15 = local_ba8;
        iVar12 = (int)local_ba4 - (int)local_ba8 >> 1;
        uVar1 = iVar12 + 1;
        local_bbc = local_b9c;
        if (uVar1 < 2) {
          local_bc0 = &DAT_10ca8246;
        }
        else {
          uVar1 = uVar1 * 2;
          puVar14 = (undefined *)FUN_10918eb0(uVar1,local_b9c,0);
          local_bc0 = (undefined2 *)(puVar14 + uVar1);
        }
        sVar5 = iVar12 * 2;
        local_bc8 = puVar14;
        memmove(puVar14,puVar15,sVar5);
        local_bc4 = (undefined2 *)(puVar14 + sVar5);
        *local_bc4 = 0;
        iVar12 = (int)(local_be4._4_4_ - local_be4._0_4_) >> 1;
        uVar1 = iVar12 + 1;
        local_bac = local_bd8;
        if (uVar1 < 2) {
          puVar15 = &_Dst_10ca8244;
          puVar19 = &DAT_10ca8246;
        }
        else {
          uVar1 = uVar1 * 2;
          puVar15 = (undefined *)FUN_10918eb0(uVar1,local_bd8,0);
          puVar19 = (undefined2 *)(puVar15 + uVar1);
        }
        sVar5 = iVar12 * 2;
        local_bb8 = puVar15;
        local_bb0 = puVar19;
        memmove(puVar15,(void *)local_be4._0_4_,sVar5);
        puVar6 = local_a9c;
        local_bb4 = (undefined2 *)(puVar15 + sVar5);
        *local_bb4 = 0;
        if (local_a9c < local_a98) {
          puVar16 = local_a9c + 8;
          bVar20 = local_a9c != (undefined4 *)0x0;
          local_a9c = puVar16;
          if (bVar20) {
            FUN_1006a320(puVar6,&local_bc8);
            FUN_1006a320(puVar6 + 4,&local_bb8);
          }
        }
        else {
          FUN_107a4d50(local_aa0,local_a9c,&local_bc8);
          puVar14 = local_bc8;
          puVar19 = local_bb0;
          puVar15 = local_bb8;
        }
        if ((2 < (int)((int)puVar19 - (int)puVar15 & 0xfffffffeU)) && (puVar15 != (undefined *)0x0))
        {
          FUN_10918e90((int)puVar15);
        }
        if ((2 < (int)((int)local_bc0 - (int)puVar14 & 0xfffffffeU)) &&
           (puVar14 != (undefined *)0x0)) {
          FUN_10918e90((int)puVar14);
        }
        if ((2 < (int)((int)local_bdc - local_be4._0_4_ & 0xfffffffeU)) &&
           ((undefined *)local_be4._0_4_ != (undefined *)0x0)) {
          FUN_10918e90(local_be4._0_4_);
        }
        if ((2 < (int)((int)local_ba0 - (int)local_ba8 & 0xfffffffeU)) &&
           (local_ba8 != (undefined *)0x0)) {
          FUN_10918e90((int)local_ba8);
        }
        local_bd0 = local_bd0 + 1;
        local_bcc = local_bcc + -1;
      } while (local_bcc != 0);
    }
    if (0 < param_7) {
      local_b8c = param_8 - (int)param_9;
      local_bd0 = param_9;
      local_bcc = param_7;
      do {
        puVar6 = local_bd0;
        psVar4 = *(short **)(local_b8c + (int)local_bd0);
        sVar3 = *psVar4;
        local_bd8 = "CSHost/ContentManager/ExportResource/descCode";
        local_be4._0_4_ = &_Dst_10ca8244;
        local_be4._4_4_ = &_Dst_10ca8244;
        local_bdc = &DAT_10ca8246;
        local_b9c = "CSHost/ContentManager/ExportResource/desc";
        local_ba8 = &_Dst_10ca8244;
        local_ba4 = &_Dst_10ca8244;
        local_ba0 = &DAT_10ca8246;
        psVar13 = psVar4;
        while (sVar3 != 0) {
          psVar13 = psVar13 + 1;
          sVar3 = *psVar13;
        }
        FUN_1001f8c0(local_be4,psVar4,(int *)(psVar4 + ((int)psVar13 - (int)psVar4 >> 1)));
        psVar4 = (short *)*puVar6;
        sVar3 = *psVar4;
        psVar13 = psVar4;
        while (sVar3 != 0) {
          psVar13 = psVar13 + 1;
          sVar3 = *psVar13;
        }
        puVar15 = &_Dst_10ca8244;
        FUN_1001f8c0(&local_ba8,psVar4,(int *)(psVar4 + ((int)psVar13 - (int)psVar4 >> 1)));
        _Src = local_be4._0_4_;
        iVar12 = (int)(local_be4._4_4_ - local_be4._0_4_) >> 1;
        uVar1 = iVar12 + 1;
        local_bbc = local_bd8;
        if (uVar1 < 2) {
          local_bc0 = &DAT_10ca8246;
        }
        else {
          uVar1 = uVar1 * 2;
          puVar15 = (undefined *)FUN_10918eb0(uVar1,local_bd8,0);
          local_bc0 = (undefined2 *)(puVar15 + uVar1);
        }
        sVar5 = iVar12 * 2;
        local_bc8 = puVar15;
        memmove(puVar15,(void *)_Src,sVar5);
        local_bc4 = (undefined2 *)(puVar15 + sVar5);
        *local_bc4 = 0;
        iVar12 = (int)local_ba4 - (int)local_ba8 >> 1;
        uVar1 = iVar12 + 1;
        local_bac = local_b9c;
        if (uVar1 < 2) {
          puVar14 = &_Dst_10ca8244;
          local_bb0 = &DAT_10ca8246;
        }
        else {
          uVar1 = uVar1 * 2;
          puVar14 = (undefined *)FUN_10918eb0(uVar1,local_b9c,0);
          local_bb0 = (undefined2 *)(puVar14 + uVar1);
        }
        sVar5 = iVar12 * 2;
        local_bb8 = puVar14;
        memmove(puVar14,local_ba8,sVar5);
        piVar7 = local_a8c;
        puVar19 = (undefined2 *)(puVar14 + sVar5);
        *puVar19 = 0;
        local_bb4 = puVar19;
        if (local_a8c < local_a88) {
          piVar17 = local_a8c + 8;
          if (local_a8c != (int *)0x0) {
            *local_a8c = 0;
            local_a8c[1] = 0;
            local_a8c[2] = 0;
            local_bd4 = (void *)((int)local_bc4 - (int)puVar15 >> 1);
            local_a8c[3] = (int)local_bd8;
            if ((int)local_bd4 + 1U < 2) {
              *local_a8c = (int)&_Dst_10ca8244;
              local_a8c[1] = (int)&_Dst_10ca8244;
              local_a8c[2] = (int)&DAT_10ca8246;
              local_a8c = piVar17;
            }
            else {
              local_b90 = (void *)(((int)local_bd4 + 1U) * 2);
              local_a8c = piVar17;
              iVar12 = FUN_10918eb0((uint)local_b90,local_bd8,0);
              *piVar7 = iVar12;
              piVar7[1] = iVar12;
              piVar7[2] = iVar12 + (int)local_b90;
            }
            local_b90 = (void *)*piVar7;
            local_bd4 = (void *)((int)local_bd4 * 2);
            memmove(local_b90,puVar15,(size_t)local_bd4);
            piVar7[1] = (int)local_b90 + (int)local_bd4;
            *(undefined2 *)((int)local_b90 + (int)local_bd4) = 0;
            iVar12 = (int)puVar19 - (int)puVar14 >> 1;
            piVar7[4] = 0;
            piVar7[5] = 0;
            piVar7[6] = 0;
            uVar1 = iVar12 + 1;
            piVar7[7] = (int)local_b9c;
            if (uVar1 < 2) {
              piVar7[4] = (int)&_Dst_10ca8244;
              piVar7[5] = (int)&_Dst_10ca8244;
              piVar7[6] = (int)&DAT_10ca8246;
            }
            else {
              local_bd4 = (void *)(uVar1 * 2);
              iVar18 = FUN_10918eb0((uint)local_bd4,local_b9c,0);
              piVar7[4] = iVar18;
              piVar7[5] = iVar18;
              piVar7[6] = iVar18 + (int)local_bd4;
            }
            local_bd4 = (void *)piVar7[4];
            sVar5 = iVar12 * 2;
            memmove(local_bd4,puVar14,sVar5);
            puVar19 = (undefined2 *)((int)local_bd4 + sVar5);
            piVar7[5] = (int)puVar19;
            *puVar19 = 0;
            piVar17 = local_a8c;
          }
        }
        else {
          FUN_107a4d50(local_a90,local_a8c,&local_bc8);
          puVar15 = local_bc8;
          puVar14 = local_bb8;
          piVar17 = local_a8c;
        }
        local_a8c = piVar17;
        if ((2 < (int)((int)local_bb0 - (int)puVar14 & 0xfffffffeU)) &&
           (puVar14 != (undefined *)0x0)) {
          FUN_10918e90((int)puVar14);
        }
        if ((2 < (int)((int)local_bc0 - (int)puVar15 & 0xfffffffeU)) &&
           (puVar15 != (undefined *)0x0)) {
          FUN_10918e90((int)puVar15);
        }
        if ((2 < (int)((int)local_ba0 - (int)local_ba8 & 0xfffffffeU)) &&
           (local_ba8 != (undefined *)0x0)) {
          FUN_10918e90((int)local_ba8);
        }
        if ((2 < (int)((int)local_bdc - local_be4._0_4_ & 0xfffffffeU)) &&
           ((undefined *)local_be4._0_4_ != (undefined *)0x0)) {
          FUN_10918e90(local_be4._0_4_);
        }
        local_bd0 = local_bd0 + 1;
        local_bcc = local_bcc + -1;
      } while (local_bcc != 0);
    }
    cVar9 = FUN_1079d210(local_b30,local_b78,(undefined2 **)0x0);
    FUN_108de5d0(local_9a8);
    FUN_100ff7e0((int)local_b30);
    if ((2 < (int)(local_b4c - local_b54 & 0xfffffffeU)) && (local_b54 != 0)) {
      FUN_10918e90(local_b54);
    }
    if ((2 < (int)(local_b5c - local_b64 & 0xfffffffeU)) && (local_b64 != 0)) {
      FUN_10918e90(local_b64);
    }
    return cVar9;
  }
  FUN_108de5d0(local_9a8);
  FUN_100ff7e0((int)local_b30);
  if ((2 < (int)(local_b4c - local_b54 & 0xfffffffeU)) && (local_b54 != 0)) {
    FUN_10918e90(local_b54);
  }
  if ((2 < (int)(local_b5c - local_b64 & 0xfffffffeU)) && (local_b64 != 0)) {
    FUN_10918e90(local_b64);
  }
  return '\0';
}

