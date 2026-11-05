/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentManager_ExportChallenge. Export
   ordinal(s): 1775. Entry VA: 0x10984510. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000EF6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
ContentManager_ExportChallenge
          (int param_1,undefined4 param_2,ushort *param_3,ushort *param_4,wchar_t *param_5,
          undefined2 param_6,undefined4 param_7,undefined4 param_8,int param_9,undefined4 *param_10,
          char *param_11,char *param_12,char *param_13,char *param_14,char *param_15,char *param_16,
          int param_17,int param_18,int param_19,int param_20,char *param_21,int param_22,
          int param_23,char *param_24)

{
  int *piVar1;
  short sVar2;
  ushort uVar3;
  char *pcVar4;
  void *pvVar5;
  int *piVar6;
  int *piVar7;
  ulonglong *puVar8;
  ulonglong *puVar9;
  ulonglong *puVar10;
  int iVar11;
  undefined4 *puVar12;
  int *piVar13;
  uint *puVar14;
  char *pcVar15;
  int *piVar16;
  char *pcVar17;
  undefined *_Dst;
  int *piVar18;
  undefined4 *puVar19;
  short *psVar20;
  short *psVar21;
  ushort *puVar22;
  undefined **ppuVar23;
  undefined4 uVar24;
  int iVar25;
  uint uVar26;
  undefined1 *puVar27;
  ulonglong *puVar28;
  bool bVar29;
  ulonglong uVar30;
  int local_1224;
  uint uStack_1220;
  undefined4 *puStack_121c;
  ulonglong local_1218;
  int local_1210;
  int local_120c;
  ulonglong *local_1208;
  ulonglong *local_1204;
  ulonglong *local_1200;
  int *local_11fc;
  int *piStack_11f8;
  int *piStack_11f4;
  int *piStack_11f0;
  int *piStack_11ec;
  int *piStack_11e8;
  int *piStack_11e4;
  int *piStack_11e0;
  char *pcStack_11dc;
  undefined4 local_11d8 [4];
  undefined *puStack_11c8;
  undefined1 *puStack_11c4;
  undefined *puStack_11c0;
  char *pcStack_11bc;
  undefined *local_11b8;
  undefined *local_11b4;
  undefined2 *local_11b0;
  char *local_11ac;
  LPCWSTR local_11a8;
  undefined *local_11a4;
  undefined2 *local_11a0;
  char *local_119c;
  undefined4 *local_1198;
  undefined4 *local_1194;
  undefined4 *local_1190;
  char *local_118c;
  char *local_1188;
  undefined *local_1184;
  undefined *local_1180;
  int *local_117c;
  int *piStack_1178;
  int *piStack_1174;
  int *piStack_1170;
  char *pcStack_116c;
  int local_1168;
  int local_1164 [2];
  int iStack_115c;
  int *piStack_1158;
  int iStack_114c;
  int iStack_1144;
  int *piStack_1140;
  undefined4 local_1134 [14];
  undefined4 uStack_10fc;
  int *piStack_10f8;
  int *local_10f4;
  undefined1 local_10ec [4];
  int aiStack_10e8 [10];
  undefined1 auStack_10c0 [50];
  undefined2 uStack_108e;
  undefined1 auStack_1048 [16];
  undefined1 auStack_1038 [16];
  undefined1 auStack_1028 [16];
  undefined1 auStack_1018 [16];
  undefined1 auStack_1008 [16];
  undefined1 auStack_ff8 [16];
  undefined1 auStack_fe8 [16];
  undefined1 auStack_fd8 [16];
  undefined1 auStack_fc8 [16];
  undefined1 auStack_fb8 [16];
  undefined1 auStack_fa8 [540];
  undefined1 auStack_d8c [4];
  int local_d88 [10];
  undefined1 local_d60 [50];
  undefined2 local_d2e;
  undefined1 auStack_cfc [4];
  uint *puStack_cf8;
  uint *puStack_cf4;
  wint_t local_a28 [260];
  undefined1 local_820 [1040];
  undefined2 auStack_410 [518];
  undefined4 uStack_4;
  
                    /* 0x984510  1775  ContentManager_ExportChallenge */
  uStack_4 = 0x1098451a;
  iVar11 = FUN_10722830();
  local_11ac = "CSHost/ContentManagerWrap/toReturn";
  local_11b8 = &_Dst_10ca8244;
  local_11b4 = &_Dst_10ca8244;
  local_11b0 = &DAT_10ca8246;
  if (iVar11 != 0) {
    FUN_10933570(local_11d8);
    local_1168 = FUN_107744c0();
    local_119c = "CSHost/ContentManagerWrap/packagePath";
    local_11a8 = (LPCWSTR)&_Dst_10ca8244;
    local_11a4 = &_Dst_10ca8244;
    local_11a0 = &DAT_10ca8246;
    local_1198 = (undefined4 *)0x0;
    local_1194 = (undefined4 *)0x0;
    local_1190 = (undefined4 *)0x0;
    local_118c = "CSHost/ContentManagerWrap/packages";
    local_1208 = (ulonglong *)0x0;
    local_1204 = (ulonglong *)0x0;
    local_1200 = (ulonglong *)0x0;
    local_11fc = (int *)0x10b967c4;
    if (local_1168 != 0) {
      FUN_107aee10(&local_1218,(ushort *)*param_10,0x220557da,0);
      local_1218 = local_1218 & 0xffffffffffffff;
      puVar12 = FUN_107882e0(&local_1188);
      FUN_109335c0(local_11d8,puVar12);
      FUN_10772e50((wchar_t *)*param_10,local_11d8);
      FUN_104befa0(&local_1208,(undefined4 *)0x0,(undefined4 *)&local_1218);
      iVar25 = 1;
      if (1 < param_9) {
        do {
          FUN_10922390(local_820,(ushort *)param_10[iVar25]);
          FUN_10922040(local_820,local_a28,0x100);
          uVar30 = FUN_105c3980(local_a28);
          local_1210 = 0x220557da;
          local_120c = 0;
          local_1218 = uVar30;
          FUN_10772490(&local_11a8,(wchar_t *)param_10[iVar25]);
          if (local_1204 < local_1200) {
            puVar10 = local_1204 + 2;
            if (local_1204 != (ulonglong *)0x0) {
              *local_1204 = uVar30;
              *(undefined4 *)(local_1204 + 1) = 0x220557da;
              *(undefined4 *)((int)local_1204 + 0xc) = 0;
            }
          }
          else {
            FUN_104befa0(&local_1208,(undefined4 *)local_1204,(undefined4 *)&local_1218);
            puVar10 = local_1204;
          }
          local_1204 = puVar10;
          iVar25 = iVar25 + 1;
        } while (iVar25 < param_9);
      }
      FUN_107a2310(local_d88);
      FUN_109335c0(&local_1188,local_11d8);
      FUN_109335c0(local_d60,&local_1188);
      local_d2e = param_6;
      local_d88[0] = param_1;
      FUN_109335c0(&stack0xffffedb8,local_11d8);
      FUN_107a71e0(local_d88);
      puVar9 = local_1208;
      local_117c = (int *)0x10b96798;
      local_1188 = &_Dst_10ca8244;
      local_1184 = &_Dst_10ca8244;
      local_1180 = &DAT_10ca8245;
      puVar28 = local_1208;
      puVar10 = puVar9;
      puVar8 = local_1204;
      if (local_1208 != local_1204) {
        do {
          FUN_1000f080(&local_1188,"%d:%08x:%08x:%I64x");
          FUN_108ea3a0(local_1134,PTR_s_stringtable_10c59c5c,0,iVar11);
          puVar12 = FUN_108e9d60(local_1164,PTR_s_reskey_10c59c60,local_1188,iVar11);
          piVar13 = (int *)(**(code **)(*local_10f4 + 8))();
          if (piVar13 + 2 != (int *)0x0) {
            FUN_108e9b10(piVar13 + 2,puVar12);
          }
          *piVar13 = (int)&uStack_10fc;
          piVar13[1] = (int)piStack_10f8;
          *piStack_10f8 = (int)piVar13;
          piStack_10f8 = piVar13;
          if ((1 < iStack_1144 - iStack_114c) && (iStack_114c != 0)) {
            (**(code **)(*piStack_1140 + 0xc))();
          }
          if ((1 < iStack_115c - local_1164[0]) && (local_1164[0] != 0)) {
            (**(code **)(*piStack_1158 + 0xc))();
          }
          puVar12 = FUN_108ea8b0((int)local_1134);
          uStack_1220 = FUN_10788270(PTR_s_stringtable_10c59c5c);
          puStack_121c = puVar12;
          if (puStack_cf8 < puStack_cf4) {
            puVar14 = puStack_cf8 + 2;
            if (puStack_cf8 != (uint *)0x0) {
              *puStack_cf8 = uStack_1220;
              puStack_cf8[1] = (uint)puVar12;
            }
          }
          else {
            FUN_101f5b70(auStack_cfc,puStack_cf8,&uStack_1220);
            puVar14 = puStack_cf8;
          }
          puStack_cf8 = puVar14;
          FUN_1078c790(&uStack_10fc);
          FUN_108e9a80(local_1134);
          puVar28 = puVar28 + 2;
          puVar8 = local_1204;
        } while (puVar28 != local_1204);
      }
      for (; puVar28 = local_1204, puVar10 != local_1204; puVar10 = puVar10 + 2) {
        local_1204 = puVar8;
        FUN_109335c0(&stack0xffffedac,local_11d8);
        FUN_107a7260(local_d88);
        puVar8 = local_1204;
        local_1204 = puVar28;
      }
      iVar11 = (int)local_1204 - (int)puVar9 >> 4;
      if (iVar11 == 0) {
        puVar12 = (undefined4 *)0x0;
        local_1204 = puVar8;
      }
      else {
        local_1204 = puVar8;
        puVar12 = (undefined4 *)FUN_10918eb0(iVar11 << 4,local_11fc,0);
      }
      puVar19 = puVar12;
      if (puVar9 != puVar28) {
        iVar11 = (int)puVar9 - (int)puVar12;
        do {
          if (puVar19 != (undefined4 *)0x0) {
            *puVar19 = *(undefined4 *)(iVar11 + (int)puVar19);
            puVar19[1] = *(undefined4 *)(iVar11 + 4 + (int)puVar19);
            puVar19[2] = *(undefined4 *)(iVar11 + 8 + (int)puVar19);
            puVar19[3] = *(undefined4 *)(iVar11 + 0xc + (int)puVar19);
          }
          puVar19 = puVar19 + 4;
        } while ((ulonglong *)(iVar11 + (int)puVar19) != puVar28);
      }
      FUN_10772550(local_d88,local_11d8,0x220557da,&local_11a8,(int)puVar12,(int)puVar19);
      puVar12 = local_1194;
      local_1204 = puVar9;
      if (local_1194 < local_1190) {
        puVar19 = local_1194 + 4;
        bVar29 = local_1194 != (undefined4 *)0x0;
        local_1194 = puVar19;
        if (bVar29) {
          FUN_109335c0(puVar12,local_11d8);
        }
      }
      else {
        FUN_106840d0(&local_1198,local_1194,local_11d8);
      }
      FUN_10922390(local_820,(ushort *)param_5);
      FUN_10922040(local_820,local_a28,0x100);
      uVar30 = FUN_105c3980(local_a28);
      local_1210 = param_1;
      local_120c = 0;
      local_1218 = uVar30;
      puVar14 = FUN_10934a30(&puStack_11c8,param_4,0x10);
      FUN_109335c0(local_11d8,puVar14);
      if (puVar9 < local_1200) {
        local_1204 = puVar9 + 2;
        if (puVar9 != (ulonglong *)0x0) {
          *puVar9 = uVar30;
          *(int *)(puVar9 + 1) = param_1;
          *(undefined4 *)((int)puVar9 + 0xc) = 0;
        }
      }
      else {
        FUN_104befa0(&local_1208,(undefined4 *)puVar9,(undefined4 *)&local_1218);
      }
      FUN_10772e50(param_5,local_11d8);
      FUN_107a2310(aiStack_10e8);
      FUN_109335c0(&puStack_11c8,local_11d8);
      FUN_109335c0(auStack_10c0,&puStack_11c8);
      uStack_108e = param_6;
      pcVar4 = param_11;
      do {
        pcVar15 = pcVar4;
        pcVar4 = pcVar15 + 1;
      } while (*pcVar15 != '\0');
      FUN_1000e8a0(auStack_1028,param_11,pcVar15);
      pcVar4 = param_12;
      do {
        pcVar15 = pcVar4;
        pcVar4 = pcVar15 + 1;
      } while (*pcVar15 != '\0');
      FUN_1000e8a0(auStack_1018,param_12,pcVar15);
      pcVar4 = param_15;
      do {
        pcVar15 = pcVar4;
        pcVar4 = pcVar15 + 1;
      } while (*pcVar15 != '\0');
      FUN_1000e8a0(auStack_1048,param_15,pcVar15);
      pcVar4 = param_16;
      do {
        pcVar15 = pcVar4;
        pcVar4 = pcVar15 + 1;
      } while (*pcVar15 != '\0');
      FUN_1000e8a0(auStack_1038,param_16,pcVar15);
      pcVar4 = param_13;
      do {
        pcVar15 = pcVar4;
        pcVar4 = pcVar15 + 1;
      } while (*pcVar15 != '\0');
      FUN_1000e8a0(auStack_ff8,param_13,pcVar15);
      pcVar4 = param_14;
      do {
        pcVar15 = pcVar4;
        pcVar4 = pcVar15 + 1;
      } while (*pcVar15 != '\0');
      FUN_1000e8a0(auStack_fe8,param_14,pcVar15);
      pcVar4 = param_24;
      do {
        pcVar15 = pcVar4;
        pcVar4 = pcVar15 + 1;
      } while (*pcVar15 != '\0');
      FUN_1000e8a0(auStack_1008,param_24,pcVar15);
      pcVar4 = param_21;
      do {
        pcVar15 = pcVar4;
        pcVar4 = pcVar15 + 1;
      } while (*pcVar15 != '\0');
      FUN_1000e8a0(auStack_fd8,param_21,pcVar15);
      piStack_1178 = (int *)0x0;
      piStack_1174 = (int *)0x0;
      piStack_1170 = (int *)0x0;
      pcStack_116c = "CSHost/ContentManagerWrap/itemKeys";
      local_1224 = 0;
      if (0 < param_19) {
        do {
          pcVar4 = *(char **)(param_20 + local_1224 * 4);
          piStack_11ec = (int *)0x10b5dc3c;
          pcVar15 = pcVar4;
          do {
            pcVar17 = pcVar15;
            pcVar15 = pcVar17 + 1;
          } while (*pcVar17 != '\0');
          uStack_1220 = (int)pcVar17 - (int)pcVar4;
          uVar26 = uStack_1220 + 1;
          if (uVar26 < 2) {
            piVar13 = (int *)&_Dst_10ca8244;
            piStack_11f0 = (int *)&DAT_10ca8245;
          }
          else {
            piVar13 = (int *)FUN_10918eb0(uVar26,"Scratch/DownloadContent/Manifest/themeStr",0);
            piStack_11f0 = (int *)(uVar26 + (int)piVar13);
          }
          piStack_11f8 = piVar13;
          memmove(piVar13,pcVar4,uStack_1220);
          piVar18 = piStack_1174;
          puVar27 = (undefined1 *)(((int)pcVar17 - (int)pcVar4) + (int)piVar13);
          *puVar27 = 0;
          piStack_11f4 = (int *)puVar27;
          if (piStack_1174 < piStack_1170) {
            piVar16 = piStack_1174 + 4;
            if (piStack_1174 != (int *)0x0) {
              uStack_1220 = (int)puVar27 - (int)piVar13;
              uVar26 = uStack_1220 + 1;
              *piStack_1174 = 0;
              piStack_1174[1] = 0;
              piStack_1174[2] = 0;
              piStack_1174[3] = (int)"Scratch/DownloadContent/Manifest/themeStr";
              if (uVar26 < 2) {
                *piStack_1174 = (int)&_Dst_10ca8244;
                piStack_1174[1] = (int)&_Dst_10ca8244;
                piStack_1174[2] = (int)&DAT_10ca8245;
                piStack_1174 = piVar16;
              }
              else {
                piVar1 = piStack_1174 + 3;
                piStack_1174 = piVar16;
                iVar11 = FUN_10918eb0(uVar26,*piVar1,0);
                *piVar18 = iVar11;
                piVar18[1] = iVar11;
                piVar18[2] = uVar26 + iVar11;
              }
              pvVar5 = (void *)*piVar18;
              memmove(pvVar5,piVar13,uStack_1220);
              puVar27 = (undefined1 *)(((int)puVar27 - (int)piVar13) + (int)pvVar5);
              piVar18[1] = (int)puVar27;
              *puVar27 = 0;
              piVar16 = piStack_1174;
            }
          }
          else {
            FUN_105e58f0(&piStack_1178,piStack_1174,&piStack_11f8);
            piVar13 = piStack_11f8;
            piVar16 = piStack_1174;
          }
          piStack_1174 = piVar16;
          if ((1 < (int)piStack_11f0 - (int)piVar13) && (piVar13 != (int *)0x0)) {
            FUN_10918e90((int)piVar13);
          }
          local_1224 = local_1224 + 1;
        } while (local_1224 < param_19);
      }
      FUN_1078c940(auStack_fb8,(int *)&piStack_1178);
      piStack_11f8 = (int *)0x0;
      piStack_11f4 = (int *)0x0;
      piStack_11f0 = (int *)0x0;
      piStack_11ec = (int *)0x10b96770;
      local_1224 = 0;
      if (0 < param_17) {
        do {
          pcVar4 = *(char **)(param_18 + local_1224 * 4);
          pcStack_11dc = "Scratch/DownloadContent/Manifest/localeStr";
          pcVar15 = pcVar4;
          do {
            pcVar17 = pcVar15;
            pcVar15 = pcVar17 + 1;
          } while (*pcVar17 != '\0');
          uStack_1220 = (int)pcVar17 - (int)pcVar4;
          uVar26 = uStack_1220 + 1;
          if (uVar26 < 2) {
            piVar13 = (int *)&_Dst_10ca8244;
            piStack_11e0 = (int *)&DAT_10ca8245;
          }
          else {
            piVar13 = (int *)FUN_10918eb0(uVar26,"Scratch/DownloadContent/Manifest/localeStr",0);
            piStack_11e0 = (int *)(uVar26 + (int)piVar13);
          }
          piStack_11e8 = piVar13;
          memmove(piVar13,pcVar4,uStack_1220);
          piVar18 = piStack_11f4;
          puVar27 = (undefined1 *)(((int)pcVar17 - (int)pcVar4) + (int)piVar13);
          *puVar27 = 0;
          piStack_11e4 = (int *)puVar27;
          if (piStack_11f4 < piStack_11f0) {
            piVar16 = piStack_11f4 + 4;
            if (piStack_11f4 != (int *)0x0) {
              uStack_1220 = (int)puVar27 - (int)piVar13;
              uVar26 = uStack_1220 + 1;
              *piStack_11f4 = 0;
              piStack_11f4[1] = 0;
              piStack_11f4[2] = 0;
              piStack_11f4[3] = (int)"Scratch/DownloadContent/Manifest/localeStr";
              if (uVar26 < 2) {
                *piStack_11f4 = (int)&_Dst_10ca8244;
                piStack_11f4[1] = (int)&_Dst_10ca8244;
                piStack_11f4[2] = (int)&DAT_10ca8245;
                piStack_11f4 = piVar16;
              }
              else {
                piVar1 = piStack_11f4 + 3;
                piStack_11f4 = piVar16;
                iVar11 = FUN_10918eb0(uVar26,*piVar1,0);
                *piVar18 = iVar11;
                piVar18[1] = iVar11;
                piVar18[2] = uVar26 + iVar11;
              }
              pvVar5 = (void *)*piVar18;
              memmove(pvVar5,piVar13,uStack_1220);
              puVar27 = (undefined1 *)(((int)puVar27 - (int)piVar13) + (int)pvVar5);
              piVar18[1] = (int)puVar27;
              *puVar27 = 0;
              piVar16 = piStack_11f4;
            }
          }
          else {
            FUN_105e58f0(&piStack_11f8,piStack_11f4,&piStack_11e8);
            piVar13 = piStack_11e8;
            piVar16 = piStack_11f4;
          }
          piStack_11f4 = piVar16;
          if ((1 < (int)piStack_11e0 - (int)piVar13) && (piVar13 != (int *)0x0)) {
            FUN_10918e90((int)piVar13);
          }
          local_1224 = local_1224 + 1;
        } while (local_1224 < param_17);
      }
      FUN_1078c940(auStack_fc8,(int *)&piStack_11f8);
      piStack_11e8 = (int *)0x0;
      piStack_11e4 = (int *)0x0;
      piStack_11e0 = (int *)0x0;
      pcStack_11dc = "CSHost/ContentManagerWrap/platforms";
      local_1224 = 0;
      if (0 < param_22) {
        do {
          pcVar4 = *(char **)(param_23 + local_1224 * 4);
          pcStack_11bc = "Scratch/DownloadContent/Manifest/platformStr";
          pcVar15 = pcVar4;
          do {
            pcVar17 = pcVar15;
            pcVar15 = pcVar17 + 1;
          } while (*pcVar17 != '\0');
          uStack_1220 = (int)pcVar17 - (int)pcVar4;
          uVar26 = uStack_1220 + 1;
          if (uVar26 < 2) {
            _Dst = &_Dst_10ca8244;
            puStack_11c0 = &DAT_10ca8245;
          }
          else {
            _Dst = (undefined *)
                   FUN_10918eb0(uVar26,"Scratch/DownloadContent/Manifest/platformStr",0);
            puStack_11c0 = _Dst + uVar26;
          }
          puStack_11c8 = _Dst;
          memmove(_Dst,pcVar4,uStack_1220);
          piVar13 = piStack_11e4;
          puVar27 = _Dst + ((int)pcVar17 - (int)pcVar4);
          *puVar27 = 0;
          puStack_11c4 = puVar27;
          if (piStack_11e4 < piStack_11e0) {
            piVar18 = piStack_11e4 + 4;
            if (piStack_11e4 != (int *)0x0) {
              uStack_1220 = (int)puVar27 - (int)_Dst;
              uVar26 = uStack_1220 + 1;
              *piStack_11e4 = 0;
              piStack_11e4[1] = 0;
              piStack_11e4[2] = 0;
              piStack_11e4[3] = (int)"Scratch/DownloadContent/Manifest/platformStr";
              if (uVar26 < 2) {
                *piStack_11e4 = (int)&_Dst_10ca8244;
                piStack_11e4[1] = (int)&_Dst_10ca8244;
                piStack_11e4[2] = (int)&DAT_10ca8245;
                piStack_11e4 = piVar18;
              }
              else {
                piVar16 = piStack_11e4 + 3;
                piStack_11e4 = piVar18;
                iVar11 = FUN_10918eb0(uVar26,*piVar16,0);
                *piVar13 = iVar11;
                piVar13[1] = iVar11;
                piVar13[2] = uVar26 + iVar11;
              }
              pvVar5 = (void *)*piVar13;
              memmove(pvVar5,_Dst,uStack_1220);
              puVar27 = (undefined1 *)(((int)puVar27 - (int)_Dst) + (int)pvVar5);
              piVar13[1] = (int)puVar27;
              *puVar27 = 0;
              piVar18 = piStack_11e4;
            }
          }
          else {
            FUN_105e58f0(&piStack_11e8,piStack_11e4,&puStack_11c8);
            _Dst = puStack_11c8;
            piVar18 = piStack_11e4;
          }
          piStack_11e4 = piVar18;
          if ((1 < (int)puStack_11c0 - (int)_Dst) && (_Dst != (undefined *)0x0)) {
            FUN_10918e90((int)_Dst);
          }
          local_1224 = local_1224 + 1;
        } while (local_1224 < param_22);
      }
      FUN_1078c940(auStack_fa8,(int *)&piStack_11e8);
      aiStack_10e8[0] = param_1;
      FUN_109335c0(&stack0xffffedb8,local_11d8);
      FUN_107a71e0(aiStack_10e8);
      FUN_109335c0(&stack0xffffedac,local_11d8);
      FUN_107a7260(aiStack_10e8);
      puVar19 = local_1194;
      puVar10 = local_1204;
      puVar12 = local_1198;
      for (iVar11 = 0; (local_1204 = puVar10, puVar12 != puVar19 && (iVar11 < 3));
          iVar11 = iVar11 + 1) {
        FUN_109335c0(&stack0xffffedb8,puVar12);
        FUN_107a71e0(aiStack_10e8);
        puVar12 = puVar12 + 4;
        puVar10 = local_1204;
      }
      iVar11 = (int)puVar10 - (int)local_1208 >> 4;
      if (iVar11 == 0) {
        puVar12 = (undefined4 *)0x0;
      }
      else {
        puVar12 = (undefined4 *)FUN_10918eb0(iVar11 << 4,local_11fc,0);
      }
      puVar19 = puVar12;
      if (local_1208 != puVar10) {
        iVar11 = (int)local_1208 - (int)puVar12;
        do {
          if (puVar19 != (undefined4 *)0x0) {
            *puVar19 = *(undefined4 *)(iVar11 + (int)puVar19);
            puVar19[1] = *(undefined4 *)(iVar11 + 4 + (int)puVar19);
            puVar19[2] = *(undefined4 *)(iVar11 + 8 + (int)puVar19);
            puVar19[3] = *(undefined4 *)(iVar11 + 0xc + (int)puVar19);
          }
          puVar19 = puVar19 + 4;
        } while ((ulonglong *)(iVar11 + (int)puVar19) != puVar10);
      }
      FUN_10772550(aiStack_10e8,local_11d8,param_1,&local_11a8,(int)puVar12,(int)puVar19);
      iVar11 = local_1168;
      FUN_1078d200(local_11a8,param_3,(ushort *)0x0);
      FUN_10920e80(auStack_410);
      FUN_109221e0(auStack_410,param_3);
      psVar20 = (short *)FUN_10918eb0(0x208,"CS Host/ContentManagerWrap/directory",0);
      FUN_10922170(auStack_410,psVar20,0x104);
      sVar2 = *psVar20;
      psVar21 = psVar20;
      while (sVar2 != 0) {
        psVar21 = psVar21 + 1;
        sVar2 = *psVar21;
      }
      FUN_1001f8c0((void *)(iVar11 + 0x130),psVar20,
                   (int *)(psVar20 + ((int)psVar21 - (int)psVar20 >> 1)));
      uVar3 = *param_3;
      puVar22 = param_3;
      while (uVar3 != 0) {
        puVar22 = puVar22 + 1;
        uVar3 = *puVar22;
      }
      ppuVar23 = (undefined **)
                 FUN_1001f3b0(&local_11b8,(int *)param_3,
                              (int *)(param_3 + ((int)puVar22 - (int)param_3 >> 1)));
      if (ppuVar23 != &local_11b8) {
        FUN_1001f8c0(&local_11b8,*ppuVar23,(int *)ppuVar23[1]);
      }
      uVar24 = Ordinal_2();
      piVar16 = piStack_11e8;
      piVar18 = piStack_11ec;
      for (piVar13 = piStack_11ec; piVar13 < piVar16; piVar13 = piVar13 + 4) {
        iVar11 = *piVar13;
        if ((1 < piVar13[2] - iVar11) && (iVar11 != 0)) {
          FUN_10918e90(iVar11);
        }
      }
      piVar13 = local_11fc;
      piVar16 = local_11fc;
      piVar1 = piStack_11f8;
      if (piVar18 != (int *)0x0) {
        FUN_10918e90((int)piVar18);
        piVar13 = local_11fc;
        piVar16 = local_11fc;
        piVar1 = piStack_11f8;
      }
      for (; piVar6 = piStack_11f8, piVar18 = local_11fc, piVar13 < piStack_11f8;
          piVar13 = piVar13 + 4) {
        iVar11 = *piVar13;
        local_11fc = piVar16;
        piStack_11f8 = piVar1;
        if ((1 < piVar13[2] - iVar11) && (iVar11 != 0)) {
          FUN_10918e90(iVar11);
        }
        piVar16 = local_11fc;
        piVar1 = piStack_11f8;
        piStack_11f8 = piVar6;
        local_11fc = piVar18;
      }
      bVar29 = local_11fc != (int *)0x0;
      local_11fc = piVar16;
      piStack_11f8 = piVar1;
      piVar13 = local_117c;
      piVar6 = local_117c;
      piVar7 = piStack_1178;
      if (bVar29) {
        FUN_10918e90((int)piVar18);
        piVar13 = local_117c;
        piVar6 = local_117c;
        piVar7 = piStack_1178;
      }
      for (; piVar16 = piStack_1178, piVar18 = local_117c, piVar13 < piStack_1178;
          piVar13 = piVar13 + 4) {
        iVar11 = *piVar13;
        local_117c = piVar6;
        piStack_1178 = piVar7;
        if ((1 < piVar13[2] - iVar11) && (iVar11 != 0)) {
          FUN_10918e90(iVar11);
        }
        piVar6 = local_117c;
        piVar7 = piStack_1178;
        piStack_1178 = piVar16;
        local_117c = piVar18;
      }
      bVar29 = local_117c != (int *)0x0;
      local_117c = piVar6;
      piStack_1178 = piVar7;
      if (bVar29) {
        FUN_10918e90((int)piVar18);
      }
      FUN_107a2570((int)local_10ec);
      if ((1 < (int)local_1184 - (int)local_118c) && (local_118c != (char *)0x0)) {
        FUN_10918e90((int)local_118c);
      }
      FUN_107a2570((int)auStack_d8c);
      if (local_120c != 0) {
        FUN_10918e90(local_120c);
      }
      if (local_119c != (char *)0x0) {
        FUN_10918e90((int)local_119c);
      }
      if ((2 < (int)((int)local_11a4 - (int)local_11ac & 0xfffffffeU)) &&
         (local_11ac != (char *)0x0)) {
        FUN_10918e90((int)local_11ac);
      }
      if ((2 < (int)((int)local_11b4 - (int)pcStack_11bc & 0xfffffffeU)) &&
         (pcStack_11bc != (char *)0x0)) {
        FUN_10918e90((int)pcStack_11bc);
      }
      return uVar24;
    }
    if ((2 < (int)((int)local_11b0 - (int)local_11b8 & 0xfffffffeU)) &&
       (local_11b8 != (undefined *)0x0)) {
      FUN_10918e90((int)local_11b8);
    }
  }
  return 0;
}

