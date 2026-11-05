/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: PatternExportWrap_ExportPattern. Export
   ordinal(s): 2003. Entry VA: 0x10988e30. Original managed P/Invoke MethodDef(s): none located in
   the shipped managed assemblies. This is an export/declaration annotation only; ABI, behavior and
   runtime execution require the original instructions and caller evidence. */

undefined4 __cdecl
PatternExportWrap_ExportPattern
          (wchar_t *param_1,wchar_t *param_2,int param_3,int param_4,int param_5,int param_6,
          int param_7,int param_8,int param_9,int param_10,undefined4 param_11,undefined1 param_12,
          ushort *param_13,undefined4 *param_14)

{
  int *piVar1;
  int *piVar2;
  short sVar3;
  short *psVar4;
  void *pvVar5;
  size_t sVar6;
  undefined4 *puVar7;
  short *psVar8;
  undefined *puVar9;
  uint uVar10;
  undefined *puVar11;
  undefined *_Dst;
  int *piVar12;
  int iVar13;
  undefined2 *puVar14;
  undefined2 *puVar15;
  uint *puVar16;
  undefined4 uVar17;
  longlong *plVar18;
  int iVar19;
  undefined4 *puVar20;
  int local_6f8;
  undefined *local_6ec;
  undefined4 local_6e8;
  undefined2 *local_6e4;
  undefined4 local_6e0;
  undefined *local_6dc;
  undefined2 *local_6d8;
  undefined2 *local_6d4;
  char *local_6d0;
  undefined *local_6cc;
  undefined2 *local_6c8;
  undefined2 *local_6c4;
  char *local_6c0;
  int *local_6bc;
  int *local_6b8;
  int *local_6b4;
  char *local_6b0;
  undefined *local_6ac;
  undefined2 *local_6a8;
  undefined2 *local_6a4;
  int *local_69c;
  int *local_698;
  int *local_694;
  char *local_690;
  int local_68c;
  undefined4 *local_688;
  undefined4 *local_684;
  char *local_680;
  int local_67c [3];
  char *local_670;
  undefined *local_66c;
  undefined *local_668;
  undefined2 *local_664;
  char *local_660;
  undefined4 local_65c;
  undefined4 local_658;
  undefined4 local_654;
  undefined4 local_650;
  undefined4 local_64c;
  int **local_648;
  int **local_644;
  undefined4 local_640 [4];
  undefined1 local_630;
  undefined4 local_62c;
  undefined4 local_628;
  undefined4 local_624;
  undefined4 local_620 [4];
  short local_610 [256];
  undefined1 local_410 [1040];
  
                    /* 0x988e30  2003  PatternExportWrap_ExportPattern */
  FUN_10922390(local_410,(ushort *)param_2);
  FUN_10922040(local_410,local_610,0x100);
  local_67c[0] = 0;
  local_67c[1] = 0;
  local_67c[2] = 0;
  local_670 = "Scratch/NativeHost/ExportPattern/name16";
  FUN_1006a620(local_67c,local_610);
  local_69c = (int *)0x0;
  local_698 = (int *)0x0;
  local_694 = (int *)0x0;
  local_690 = "Scratch/NativeHost/ExportPattern/nameList";
  local_6f8 = 0;
  if (0 < param_5) {
    do {
      psVar4 = *(short **)(param_6 + local_6f8 * 4);
      sVar3 = *psVar4;
      psVar8 = psVar4;
      while (sVar3 != 0) {
        psVar8 = psVar8 + 1;
        sVar3 = *psVar8;
      }
      iVar19 = ((int)psVar8 - (int)psVar4 >> 1) * 2 >> 1;
      uVar10 = iVar19 + 1;
      if (uVar10 < 2) {
        puVar9 = &_Dst_10ca8244;
        local_6a4 = &DAT_10ca8246;
      }
      else {
        uVar10 = uVar10 * 2;
        puVar9 = (undefined *)FUN_10918eb0(uVar10,"Scratch/NativeHost/ExportPattern/lang",0);
        local_6a4 = (undefined2 *)(puVar9 + uVar10);
      }
      sVar6 = iVar19 * 2;
      local_6ac = puVar9;
      memmove(puVar9,psVar4,sVar6);
      local_6a8 = (undefined2 *)(puVar9 + sVar6);
      *local_6a8 = 0;
      psVar4 = *(short **)(param_7 + local_6f8 * 4);
      sVar3 = *psVar4;
      psVar8 = psVar4;
      while (sVar3 != 0) {
        psVar8 = psVar8 + 1;
        sVar3 = *psVar8;
      }
      iVar19 = ((int)psVar8 - (int)psVar4 >> 1) * 2 >> 1;
      uVar10 = iVar19 + 1;
      if (uVar10 < 2) {
        puVar11 = &_Dst_10ca8244;
        local_6e4 = &DAT_10ca8246;
      }
      else {
        uVar10 = uVar10 * 2;
        puVar11 = (undefined *)FUN_10918eb0(uVar10,"Scratch/NativeHost/ExportPattern/text",0);
        local_6e4 = (undefined2 *)(puVar11 + uVar10);
      }
      sVar6 = iVar19 * 2;
      local_6ec = puVar11;
      memmove(puVar11,psVar4,sVar6);
      piVar2 = (int *)(puVar11 + sVar6);
      *(undefined2 *)piVar2 = 0;
      if (local_6f8 == 0) {
        FUN_1001f8c0(local_67c,puVar11,piVar2);
      }
      iVar19 = (int)local_6a8 - (int)puVar9 >> 1;
      uVar10 = iVar19 + 1;
      local_6d0 = "Scratch/NativeHost/ExportPattern/lang";
      if (uVar10 < 2) {
        _Dst = &_Dst_10ca8244;
        local_6d4 = &DAT_10ca8246;
      }
      else {
        uVar10 = uVar10 * 2;
        _Dst = (undefined *)FUN_10918eb0(uVar10,"Scratch/NativeHost/ExportPattern/lang",0);
        local_6d4 = (undefined2 *)(_Dst + uVar10);
      }
      sVar6 = iVar19 * 2;
      local_6dc = _Dst;
      memmove(_Dst,puVar9,sVar6);
      local_6d8 = (undefined2 *)(_Dst + sVar6);
      iVar19 = (int)piVar2 - (int)puVar11 >> 1;
      *local_6d8 = 0;
      uVar10 = iVar19 + 1;
      local_6c0 = "Scratch/NativeHost/ExportPattern/text";
      if (uVar10 < 2) {
        puVar9 = &_Dst_10ca8244;
        local_6c4 = &DAT_10ca8246;
      }
      else {
        uVar10 = uVar10 * 2;
        puVar9 = (undefined *)FUN_10918eb0(uVar10,"Scratch/NativeHost/ExportPattern/text",0);
        local_6c4 = (undefined2 *)(puVar9 + uVar10);
      }
      sVar6 = iVar19 * 2;
      local_6cc = puVar9;
      memmove(puVar9,local_6ec,sVar6);
      piVar2 = local_698;
      puVar15 = (undefined2 *)(puVar9 + sVar6);
      *puVar15 = 0;
      local_6c8 = puVar15;
      if (local_698 < local_694) {
        piVar12 = local_698 + 8;
        if (local_698 != (int *)0x0) {
          *local_698 = 0;
          local_698[1] = 0;
          local_698[2] = 0;
          iVar19 = (int)local_6d8 - (int)_Dst >> 1;
          uVar10 = iVar19 + 1;
          local_698[3] = (int)"Scratch/NativeHost/ExportPattern/lang";
          if (uVar10 < 2) {
            *local_698 = (int)&_Dst_10ca8244;
            local_698[1] = (int)&_Dst_10ca8244;
            local_698[2] = (int)&DAT_10ca8246;
            local_698 = piVar12;
          }
          else {
            piVar1 = local_698 + 3;
            uVar10 = uVar10 * 2;
            local_698 = piVar12;
            iVar13 = FUN_10918eb0(uVar10,*piVar1,0);
            *piVar2 = iVar13;
            piVar2[1] = iVar13;
            piVar2[2] = uVar10 + iVar13;
          }
          pvVar5 = (void *)*piVar2;
          sVar6 = iVar19 * 2;
          memmove(pvVar5,_Dst,sVar6);
          puVar14 = (undefined2 *)((int)pvVar5 + sVar6);
          piVar2[1] = (int)puVar14;
          *puVar14 = 0;
          iVar19 = (int)puVar15 - (int)puVar9 >> 1;
          uVar10 = iVar19 + 1;
          piVar2[4] = 0;
          piVar2[5] = 0;
          piVar2[6] = 0;
          piVar2[7] = (int)"Scratch/NativeHost/ExportPattern/text";
          if (uVar10 < 2) {
            piVar2[4] = (int)&_Dst_10ca8244;
            piVar2[5] = (int)&_Dst_10ca8244;
            piVar2[6] = (int)&DAT_10ca8246;
          }
          else {
            uVar10 = uVar10 * 2;
            iVar13 = FUN_10918eb0(uVar10,piVar2[7],0);
            piVar2[4] = iVar13;
            piVar2[5] = iVar13;
            piVar2[6] = iVar13 + uVar10;
          }
          pvVar5 = (void *)piVar2[4];
          sVar6 = iVar19 * 2;
          memmove(pvVar5,puVar9,sVar6);
          puVar15 = (undefined2 *)((int)pvVar5 + sVar6);
          piVar2[5] = (int)puVar15;
          *puVar15 = 0;
          piVar12 = local_698;
        }
      }
      else {
        FUN_107a4d50(&local_69c,local_698,&local_6dc);
        _Dst = local_6dc;
        puVar9 = local_6cc;
        piVar12 = local_698;
      }
      local_698 = piVar12;
      if ((2 < (int)((int)local_6c4 - (int)puVar9 & 0xfffffffeU)) && (puVar9 != (undefined *)0x0)) {
        FUN_10918e90((int)puVar9);
      }
      if ((2 < (int)((int)local_6d4 - (int)_Dst & 0xfffffffeU)) && (_Dst != (undefined *)0x0)) {
        FUN_10918e90((int)_Dst);
      }
      if ((2 < (int)((int)local_6e4 - (int)local_6ec & 0xfffffffeU)) &&
         (local_6ec != (undefined *)0x0)) {
        FUN_10918e90((int)local_6ec);
      }
      if ((2 < (int)((int)local_6a4 - (int)local_6ac & 0xfffffffeU)) &&
         (local_6ac != (undefined *)0x0)) {
        FUN_10918e90((int)local_6ac);
      }
      local_6f8 = local_6f8 + 1;
    } while (local_6f8 < param_5);
  }
  local_66c = &_Dst_10ca8244;
  local_668 = &_Dst_10ca8244;
  local_660 = "Scratch/NativeHost/ExportPattern/desc16";
  local_664 = &DAT_10ca8246;
  local_6bc = (int *)0x0;
  local_6b8 = (int *)0x0;
  local_6b4 = (int *)0x0;
  local_6b0 = "Scratch/NativeHost/ExportPattern/descList";
  local_6f8 = 0;
  if (0 < param_8) {
    do {
      psVar4 = *(short **)(param_9 + local_6f8 * 4);
      sVar3 = *psVar4;
      psVar8 = psVar4;
      while (sVar3 != 0) {
        psVar8 = psVar8 + 1;
        sVar3 = *psVar8;
      }
      iVar19 = ((int)psVar8 - (int)psVar4 >> 1) * 2 >> 1;
      uVar10 = iVar19 + 1;
      if (uVar10 < 2) {
        puVar9 = &_Dst_10ca8244;
        local_6a4 = &DAT_10ca8246;
      }
      else {
        uVar10 = uVar10 * 2;
        puVar9 = (undefined *)FUN_10918eb0(uVar10,"Scratch/NativeHost/ExportPattern/lang",0);
        local_6a4 = (undefined2 *)(puVar9 + uVar10);
      }
      sVar6 = iVar19 * 2;
      local_6ac = puVar9;
      memmove(puVar9,psVar4,sVar6);
      local_6a8 = (undefined2 *)(puVar9 + sVar6);
      *local_6a8 = 0;
      psVar4 = *(short **)(param_10 + local_6f8 * 4);
      sVar3 = *psVar4;
      psVar8 = psVar4;
      while (sVar3 != 0) {
        psVar8 = psVar8 + 1;
        sVar3 = *psVar8;
      }
      iVar19 = ((int)psVar8 - (int)psVar4 >> 1) * 2 >> 1;
      uVar10 = iVar19 + 1;
      if (uVar10 < 2) {
        puVar11 = &_Dst_10ca8244;
        local_6e4 = &DAT_10ca8246;
      }
      else {
        uVar10 = uVar10 * 2;
        puVar11 = (undefined *)FUN_10918eb0(uVar10,"Scratch/NativeHost/ExportPattern/text",0);
        local_6e4 = (undefined2 *)(puVar11 + uVar10);
      }
      sVar6 = iVar19 * 2;
      local_6ec = puVar11;
      memmove(puVar11,psVar4,sVar6);
      piVar2 = (int *)(puVar11 + sVar6);
      *(undefined2 *)piVar2 = 0;
      if (local_6f8 == 0) {
        FUN_1001f8c0(&local_66c,puVar11,piVar2);
      }
      iVar19 = (int)local_6a8 - (int)puVar9 >> 1;
      uVar10 = iVar19 + 1;
      local_6d0 = "Scratch/NativeHost/ExportPattern/lang";
      if (uVar10 < 2) {
        puVar9 = &_Dst_10ca8244;
        local_6d4 = &DAT_10ca8246;
      }
      else {
        uVar10 = uVar10 * 2;
        puVar9 = (undefined *)FUN_10918eb0(uVar10,"Scratch/NativeHost/ExportPattern/lang",0);
        local_6d4 = (undefined2 *)(puVar9 + uVar10);
      }
      sVar6 = iVar19 * 2;
      local_6dc = puVar9;
      memmove(puVar9,local_6ac,sVar6);
      local_6d8 = (undefined2 *)(puVar9 + sVar6);
      iVar19 = (int)piVar2 - (int)local_6ec >> 1;
      uVar10 = iVar19 + 1;
      *local_6d8 = 0;
      local_6c0 = "Scratch/NativeHost/ExportPattern/text";
      if (uVar10 < 2) {
        puVar11 = &_Dst_10ca8244;
        local_6c4 = &DAT_10ca8246;
      }
      else {
        uVar10 = uVar10 * 2;
        puVar11 = (undefined *)FUN_10918eb0(uVar10,"Scratch/NativeHost/ExportPattern/text",0);
        local_6c4 = (undefined2 *)(puVar11 + uVar10);
      }
      sVar6 = iVar19 * 2;
      local_6cc = puVar11;
      memmove(puVar11,local_6ec,sVar6);
      piVar2 = local_6b8;
      puVar15 = (undefined2 *)(puVar11 + sVar6);
      *puVar15 = 0;
      local_6c8 = puVar15;
      if (local_6b8 < local_6b4) {
        piVar12 = local_6b8 + 8;
        if (local_6b8 != (int *)0x0) {
          *local_6b8 = 0;
          local_6b8[1] = 0;
          local_6b8[2] = 0;
          iVar19 = (int)local_6d8 - (int)puVar9 >> 1;
          uVar10 = iVar19 + 1;
          local_6b8[3] = (int)"Scratch/NativeHost/ExportPattern/lang";
          if (uVar10 < 2) {
            *local_6b8 = (int)&_Dst_10ca8244;
            local_6b8[1] = (int)&_Dst_10ca8244;
            local_6b8[2] = (int)&DAT_10ca8246;
            local_6b8 = piVar12;
          }
          else {
            piVar1 = local_6b8 + 3;
            uVar10 = uVar10 * 2;
            local_6b8 = piVar12;
            iVar13 = FUN_10918eb0(uVar10,*piVar1,0);
            *piVar2 = iVar13;
            piVar2[1] = iVar13;
            piVar2[2] = iVar13 + uVar10;
          }
          pvVar5 = (void *)*piVar2;
          sVar6 = iVar19 * 2;
          memmove(pvVar5,puVar9,sVar6);
          puVar14 = (undefined2 *)(sVar6 + (int)pvVar5);
          piVar2[1] = (int)puVar14;
          *puVar14 = 0;
          iVar19 = (int)puVar15 - (int)puVar11 >> 1;
          uVar10 = iVar19 + 1;
          piVar2[4] = 0;
          piVar2[5] = 0;
          piVar2[6] = 0;
          piVar2[7] = (int)"Scratch/NativeHost/ExportPattern/text";
          if (uVar10 < 2) {
            piVar2[4] = (int)&_Dst_10ca8244;
            piVar2[5] = (int)&_Dst_10ca8244;
            piVar2[6] = (int)&DAT_10ca8246;
          }
          else {
            uVar10 = uVar10 * 2;
            iVar13 = FUN_10918eb0(uVar10,piVar2[7],0);
            piVar2[4] = iVar13;
            piVar2[5] = iVar13;
            piVar2[6] = iVar13 + uVar10;
          }
          pvVar5 = (void *)piVar2[4];
          sVar6 = iVar19 * 2;
          memmove(pvVar5,puVar11,sVar6);
          puVar15 = (undefined2 *)(sVar6 + (int)pvVar5);
          piVar2[5] = (int)puVar15;
          *puVar15 = 0;
          piVar12 = local_6b8;
        }
      }
      else {
        FUN_107a4d50(&local_6bc,local_6b8,&local_6dc);
        puVar9 = local_6dc;
        puVar11 = local_6cc;
        piVar12 = local_6b8;
      }
      local_6b8 = piVar12;
      if ((2 < (int)((int)local_6c4 - (int)puVar11 & 0xfffffffeU)) && (puVar11 != (undefined *)0x0))
      {
        FUN_10918e90((int)puVar11);
      }
      if ((2 < (int)((int)local_6d4 - (int)puVar9 & 0xfffffffeU)) && (puVar9 != (undefined *)0x0)) {
        FUN_10918e90((int)puVar9);
      }
      if ((2 < (int)((int)local_6e4 - (int)local_6ec & 0xfffffffeU)) &&
         (local_6ec != (undefined *)0x0)) {
        FUN_10918e90((int)local_6ec);
      }
      if ((2 < (int)((int)local_6a4 - (int)local_6ac & 0xfffffffeU)) &&
         (local_6ac != (undefined *)0x0)) {
        FUN_10918e90((int)local_6ac);
      }
      local_6f8 = local_6f8 + 1;
    } while (local_6f8 < param_8);
  }
  local_68c = 0;
  local_688 = (undefined4 *)0x0;
  local_684 = (undefined4 *)0x0;
  local_680 = "Scratch/NativeHost/ExportPattern/texKeyList";
  if (0 < param_3) {
    puVar20 = (undefined4 *)(param_4 + 4);
    local_6f8 = param_3;
    do {
      local_6ec = (undefined *)puVar20[1];
      local_6e8 = puVar20[2];
      local_6e4 = (undefined2 *)puVar20[-1];
      local_6e0 = *puVar20;
      if (local_688 < local_684) {
        puVar7 = local_688 + 4;
        if (local_688 != (undefined4 *)0x0) {
          *local_688 = local_6ec;
          local_688[1] = local_6e8;
          local_688[2] = local_6e4;
          local_688[3] = local_6e0;
        }
      }
      else {
        FUN_104befa0(&local_68c,local_688,&local_6ec);
        puVar7 = local_688;
      }
      local_688 = puVar7;
      puVar20 = puVar20 + 4;
      local_6f8 = local_6f8 + -1;
    } while (local_6f8 != 0);
  }
  FUN_10933570(local_620);
  local_65c = 0;
  local_658 = 0;
  local_654 = 0;
  local_650 = 0;
  local_64c = 3;
  local_648 = (int **)0x0;
  local_644 = (int **)0x0;
  FUN_10933570(local_640);
  local_648 = &local_69c;
  local_644 = &local_6bc;
  local_62c = 0;
  local_628 = 0;
  local_624 = 0;
  local_630 = param_12;
  puVar16 = FUN_10934a30(&local_6ec,param_13,0x10);
  FUN_109335c0(local_640,puVar16);
  local_62c = param_11;
  uVar17 = FUN_107af2c0(param_1,param_2,&local_68c,local_67c,&local_66c,&local_65c,local_620);
  if ((char)uVar17 == '\0') {
    if (local_68c != 0) {
      FUN_10918e90(local_68c);
    }
    FUN_100fcef0(local_6bc,local_6b8);
    if (local_6bc != (int *)0x0) {
      FUN_10918e90((int)local_6bc);
    }
    if ((2 < (int)((int)local_664 - (int)local_66c & 0xfffffffeU)) &&
       (local_66c != (undefined *)0x0)) {
      FUN_10918e90((int)local_66c);
    }
    FUN_100fcef0(local_69c,local_698);
    if (local_69c != (int *)0x0) {
      FUN_10918e90((int)local_69c);
    }
    if ((2 < (int)(local_67c[2] - local_67c[0] & 0xfffffffeU)) && (local_67c[0] != 0)) {
      FUN_10918e90(local_67c[0]);
    }
    return 0xffffffff;
  }
  plVar18 = FUN_1055daf0((longlong *)&local_6ec,local_620);
  *param_14 = (int)*plVar18;
  param_14[1] = *(undefined4 *)((int)plVar18 + 4);
  param_14[2] = (int)plVar18[1];
  param_14[3] = *(undefined4 *)((int)plVar18 + 0xc);
  if (local_68c != 0) {
    FUN_10918e90(local_68c);
  }
  FUN_100fcef0(local_6bc,local_6b8);
  if (local_6bc != (int *)0x0) {
    FUN_10918e90((int)local_6bc);
  }
  if ((2 < (int)((int)local_664 - (int)local_66c & 0xfffffffeU)) && (local_66c != (undefined *)0x0))
  {
    FUN_10918e90((int)local_66c);
  }
  FUN_100fcef0(local_69c,local_698);
  if (local_69c != (int *)0x0) {
    FUN_10918e90((int)local_69c);
  }
  if ((2 < (int)(local_67c[2] - local_67c[0] & 0xfffffffeU)) && (local_67c[0] != 0)) {
    FUN_10918e90(local_67c[0]);
  }
  return 0;
}

