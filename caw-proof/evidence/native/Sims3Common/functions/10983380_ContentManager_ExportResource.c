/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentManager_ExportResource. Export ordinal(s):
   1776. Entry VA: 0x10983380. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000EF5. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

char __cdecl
ContentManager_ExportResource
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,int param_5,
          undefined4 param_6,undefined4 param_7,undefined4 param_8,int param_9,int param_10,
          undefined4 *param_11,int param_12,int param_13,undefined4 *param_14,ushort *param_15,
          undefined4 param_16,int param_17,int param_18,void *param_19)

{
  uint uVar1;
  short sVar2;
  short *psVar3;
  size_t sVar4;
  byte bVar5;
  char cVar6;
  int iVar7;
  undefined3 extraout_var;
  int iVar8;
  short *psVar9;
  undefined4 *puVar10;
  undefined *puVar11;
  void *pvVar12;
  int *piVar13;
  undefined4 *puVar14;
  undefined2 *puVar15;
  undefined *puVar16;
  undefined4 *puVar17;
  int *this;
  bool bVar18;
  undefined4 uStack_1b4;
  undefined4 *local_1b0;
  int local_1ac;
  int local_1a8;
  undefined *local_1a4;
  undefined *local_1a0;
  undefined2 *local_19c;
  char *local_198;
  undefined *local_194;
  undefined *local_190;
  undefined2 *local_18c;
  char *local_188;
  undefined *local_184;
  undefined2 *local_180;
  undefined2 *local_17c;
  char *local_178;
  undefined *local_174;
  undefined2 *local_170;
  undefined2 *local_16c;
  char *local_168;
  int *local_164;
  char *local_160;
  undefined *local_15c;
  undefined *local_158;
  char *local_154;
  undefined4 local_150;
  undefined4 local_14c;
  undefined4 local_148;
  undefined4 local_144;
  int iStack_140;
  int iStack_13c;
  int iStack_138;
  int iStack_134;
  undefined1 uStack_130;
  undefined1 uStack_12f;
  undefined *puStack_12c;
  undefined *puStack_128;
  undefined2 *puStack_124;
  char *pcStack_120;
  undefined *puStack_11c;
  undefined *puStack_118;
  undefined2 *puStack_114;
  char *pcStack_110;
  undefined1 auStack_10c [16];
  undefined4 uStack_fc;
  undefined4 local_f8 [4];
  uint local_e8 [4];
  undefined1 local_d8 [32];
  undefined4 *puStack_b8;
  undefined1 local_b4 [92];
  undefined1 local_58 [4];
  undefined4 *local_54;
  undefined4 *local_50;
  undefined1 local_48 [4];
  undefined4 *local_44;
  undefined4 *local_40;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined1 auStack_10 [4];
  undefined4 *puStack_c;
  undefined4 *puStack_8;
  
                    /* 0x983380  1776  ContentManager_ExportResource */
  local_164 = (int *)FUN_1055b120();
  iVar7 = FUN_10722830();
  if ((iVar7 == 0) || (iVar7 = FUN_107744c0(), iVar7 == 0)) {
    return '\0';
  }
  if (param_5 != 0) {
    local_148 = param_1;
    local_144 = param_2;
    local_150 = param_3;
    local_14c = param_4;
    bVar5 = FUN_10782290(&local_150);
    if (CONCAT31(extraout_var,bVar5) == 3) {
      local_154 = "CSHost/ContentManager/ExportResource/name";
      local_160 = &_Dst_10ca8244;
      local_15c = &_Dst_10ca8244;
      local_158 = &DAT_10ca8245;
      iVar7 = FUN_10388780(L"codeConfig",0);
      iVar8 = FUN_10388780(L"code",0);
      if (iVar7 == 0) {
        FUN_1000f080(&local_160,&DAT_10b58ef4);
      }
      else if (iVar8 == 0) {
        FUN_1000f080(&local_160,"%ls.%ls");
      }
      else {
        FUN_1000f080(&local_160,"%ls.%ls.%ls");
      }
      FUN_100fdca0(local_e8,&local_150);
      FUN_1000e9f0(local_d8,local_160);
      local_1c = local_144;
      local_20 = local_148;
      local_28 = param_7;
      local_24 = param_8;
      FUN_10934a30(local_f8,param_15,0x10);
      FUN_109335c0(local_b4,local_f8);
      if (0 < param_9) {
        local_1a8 = param_10 - (int)param_11;
        local_1b0 = param_11;
        local_1ac = param_9;
        do {
          psVar3 = *(short **)(local_1a8 + (int)local_1b0);
          sVar2 = *psVar3;
          local_198 = "CSHost/ContentManager/ExportResource/langCode";
          local_1a4 = &_Dst_10ca8244;
          local_1a0 = &_Dst_10ca8244;
          local_19c = &DAT_10ca8246;
          local_188 = "CSHost/ContentManager/ExportResource/langName";
          local_194 = &_Dst_10ca8244;
          local_190 = &_Dst_10ca8244;
          local_18c = &DAT_10ca8246;
          psVar9 = psVar3;
          while (sVar2 != 0) {
            psVar9 = psVar9 + 1;
            sVar2 = *psVar9;
          }
          FUN_1001f8c0(&local_1a4,psVar3,(int *)(psVar3 + ((int)psVar9 - (int)psVar3 >> 1)));
          psVar3 = (short *)*local_1b0;
          sVar2 = *psVar3;
          psVar9 = psVar3;
          while (sVar2 != 0) {
            psVar9 = psVar9 + 1;
            sVar2 = *psVar9;
          }
          FUN_1001f8c0(&local_194,psVar3,(int *)(psVar3 + ((int)psVar9 - (int)psVar3 >> 1)));
          puVar16 = local_1a4;
          iVar7 = (int)local_1a0 - (int)local_1a4 >> 1;
          local_184 = (undefined *)0x0;
          local_180 = (undefined2 *)0x0;
          local_17c = (undefined2 *)0x0;
          local_178 = local_198;
          FUN_10069b10(&local_184,iVar7 + 1);
          puVar11 = local_184;
          sVar4 = iVar7 * 2;
          memmove(local_184,puVar16,sVar4);
          local_180 = (undefined2 *)(puVar11 + sVar4);
          *local_180 = 0;
          FUN_1006a320(&local_174,&local_194);
          puVar17 = local_54;
          if (local_54 < local_50) {
            puVar10 = local_54 + 8;
            bVar18 = local_54 != (undefined4 *)0x0;
            local_54 = puVar10;
            if (bVar18) {
              FUN_1006a320(puVar17,&local_184);
              FUN_1006a320(puVar17 + 4,&local_174);
            }
          }
          else {
            FUN_107a4d50(local_58,local_54,&local_184);
          }
          if ((2 < (int)((int)local_16c - (int)local_174 & 0xfffffffeU)) &&
             (local_174 != (undefined *)0x0)) {
            FUN_10918e90((int)local_174);
          }
          if ((2 < (int)((int)local_17c - (int)local_184 & 0xfffffffeU)) &&
             (local_184 != (undefined *)0x0)) {
            FUN_10918e90((int)local_184);
          }
          if ((2 < (int)((int)local_18c - (int)local_194 & 0xfffffffeU)) &&
             (local_194 != (undefined *)0x0)) {
            FUN_10918e90((int)local_194);
          }
          if ((2 < (int)((int)local_19c - (int)puVar16 & 0xfffffffeU)) &&
             (puVar16 != (undefined *)0x0)) {
            FUN_10918e90((int)puVar16);
          }
          local_1b0 = local_1b0 + 1;
          local_1ac = local_1ac + -1;
        } while (local_1ac != 0);
      }
      if (0 < param_12) {
        local_1a8 = param_13 - (int)param_14;
        local_1b0 = param_14;
        local_1ac = param_12;
        do {
          psVar3 = *(short **)(local_1a8 + (int)local_1b0);
          sVar2 = *psVar3;
          puVar16 = &_Dst_10ca8244;
          local_198 = "CSHost/ContentManager/ExportResource/descCode";
          local_1a4 = &_Dst_10ca8244;
          local_1a0 = &_Dst_10ca8244;
          local_19c = &DAT_10ca8246;
          local_188 = "CSHost/ContentManager/ExportResource/desc";
          local_194 = &_Dst_10ca8244;
          local_190 = &_Dst_10ca8244;
          local_18c = &DAT_10ca8246;
          psVar9 = psVar3;
          while (sVar2 != 0) {
            psVar9 = psVar9 + 1;
            sVar2 = *psVar9;
          }
          FUN_1001f8c0(&local_1a4,psVar3,(int *)(psVar3 + ((int)psVar9 - (int)psVar3 >> 1)));
          psVar3 = (short *)*local_1b0;
          sVar2 = *psVar3;
          psVar9 = psVar3;
          while (sVar2 != 0) {
            psVar9 = psVar9 + 1;
            sVar2 = *psVar9;
          }
          FUN_1001f8c0(&local_194,psVar3,(int *)(psVar3 + ((int)psVar9 - (int)psVar3 >> 1)));
          puVar11 = local_1a4;
          iVar7 = (int)local_1a0 - (int)local_1a4 >> 1;
          uVar1 = iVar7 + 1;
          local_178 = local_198;
          if (uVar1 < 2) {
            local_17c = &DAT_10ca8246;
          }
          else {
            uVar1 = uVar1 * 2;
            puVar16 = (undefined *)FUN_10918eb0(uVar1,local_198,0);
            local_17c = (undefined2 *)(puVar16 + uVar1);
          }
          sVar4 = iVar7 * 2;
          local_184 = puVar16;
          memmove(puVar16,puVar11,sVar4);
          local_180 = (undefined2 *)(puVar16 + sVar4);
          *local_180 = 0;
          iVar7 = (int)local_190 - (int)local_194 >> 1;
          uVar1 = iVar7 + 1;
          local_168 = local_188;
          if (uVar1 < 2) {
            puVar11 = &_Dst_10ca8244;
            puVar15 = &DAT_10ca8246;
          }
          else {
            uVar1 = uVar1 * 2;
            puVar11 = (undefined *)FUN_10918eb0(uVar1,local_188,0);
            puVar15 = (undefined2 *)(puVar11 + uVar1);
          }
          sVar4 = iVar7 * 2;
          local_174 = puVar11;
          local_16c = puVar15;
          memmove(puVar11,local_194,sVar4);
          puVar17 = local_44;
          local_170 = (undefined2 *)(puVar11 + sVar4);
          *local_170 = 0;
          if (local_44 < local_40) {
            puVar10 = local_44 + 8;
            bVar18 = local_44 != (undefined4 *)0x0;
            local_44 = puVar10;
            if (bVar18) {
              FUN_1006a320(puVar17,&local_184);
              FUN_1006a320(puVar17 + 4,&local_174);
            }
          }
          else {
            FUN_107a4d50(local_48,local_44,&local_184);
            puVar15 = local_16c;
            puVar16 = local_184;
            puVar11 = local_174;
          }
          if ((2 < (int)((int)puVar15 - (int)puVar11 & 0xfffffffeU)) &&
             (puVar11 != (undefined *)0x0)) {
            FUN_10918e90((int)puVar11);
          }
          if ((2 < (int)((int)local_17c - (int)puVar16 & 0xfffffffeU)) &&
             (puVar16 != (undefined *)0x0)) {
            FUN_10918e90((int)puVar16);
          }
          if ((2 < (int)((int)local_18c - (int)local_194 & 0xfffffffeU)) &&
             (local_194 != (undefined *)0x0)) {
            FUN_10918e90((int)local_194);
          }
          if ((2 < (int)((int)local_19c - (int)local_1a4 & 0xfffffffeU)) &&
             (local_1a4 != (undefined *)0x0)) {
            FUN_10918e90((int)local_1a4);
          }
          local_1b0 = local_1b0 + 1;
          local_1ac = local_1ac + -1;
        } while (local_1ac != 0);
      }
      this = (int *)0x0;
      if (param_17 != 0) {
        pvVar12 = (void *)FUN_10918eb0(0x2c,"ResourceSystem/DownloadContent/pMetaDataStream",0);
        if ((pvVar12 != (void *)0x0) &&
           (piVar13 = FUN_10914090(pvVar12,0,0,"ResourceSystem/DownloadContent/pMetaDataStream"),
           piVar13 != (int *)0x0)) {
          (**(code **)(*piVar13 + 4))();
          this = piVar13;
        }
        FUN_10913a70(this,1,1.0);
        (**(code **)(*local_164 + 0x70))(param_17,&local_1a8,&local_164);
        cVar6 = (**(code **)(*this + 0x38))(uStack_1b4,local_170);
        if (cVar6 == '\0') {
          (**(code **)(*this + 8))();
          FUN_100ff7e0((int)&uStack_fc);
          if ((1 < (int)local_16c - (int)local_174) && (local_174 != (undefined *)0x0)) {
            FUN_10918e90((int)local_174);
          }
          return '\0';
        }
        (**(code **)(*this + 0x28))(0,0);
      }
      puVar17 = (undefined4 *)0x0;
      if (this != (int *)0x0) {
        pvVar12 = (void *)FUN_10918eb0(0x18,"ResourceSystem/DownloadContent/pStreamIO",0);
        if (pvVar12 == (void *)0x0) {
          puVar17 = (undefined4 *)0x0;
        }
        else {
          puVar17 = FUN_105cc2a0(pvVar12,this,1);
        }
      }
      puStack_b8 = puVar17;
      if ((param_19 != (void *)0x0) && (0 < param_18)) {
        do {
          FUN_1055dac0(param_19,&local_1a4);
          puVar10 = puStack_c;
          if (puStack_c < puStack_8) {
            puVar14 = puStack_c + 4;
            bVar18 = puStack_c != (undefined4 *)0x0;
            puStack_c = puVar14;
            if (bVar18) {
              FUN_109335c0(puVar10,&local_1a4);
            }
          }
          else {
            FUN_106840d0(auStack_10,puStack_c,&local_1a4);
          }
          param_19 = (void *)((int)param_19 + 0x10);
          param_18 = param_18 + -1;
        } while (param_18 != 0);
      }
      iStack_140 = 0;
      puStack_124 = &DAT_10ca8246;
      puStack_114 = &DAT_10ca8246;
      uStack_130 = 1;
      uStack_12f = 1;
      pcStack_120 = "Scratch/DownloadContent/mOutputFilename";
      puStack_12c = &_Dst_10ca8244;
      puStack_128 = &_Dst_10ca8244;
      pcStack_110 = "Scratch/DownloadContent/mExportDir";
      puStack_11c = &_Dst_10ca8244;
      puStack_118 = &_Dst_10ca8244;
      iStack_13c = iStack_140;
      iStack_138 = iStack_140;
      iStack_134 = iStack_140;
      FUN_10933580(auStack_10c,0);
      uStack_fc = param_16;
      cVar6 = FUN_1079d210(local_e8,&iStack_140,(undefined2 **)0x0);
      if (puVar17 != (undefined4 *)0x0) {
        FUN_105ca900((int)puVar17);
        FUN_10918e90((int)puVar17);
      }
      if ((2 < (int)((int)puStack_114 - (int)puStack_11c & 0xfffffffeU)) &&
         (puStack_11c != (undefined *)0x0)) {
        FUN_10918e90((int)puStack_11c);
      }
      if ((2 < (int)((int)puStack_124 - (int)puStack_12c & 0xfffffffeU)) &&
         (puStack_12c != (undefined *)0x0)) {
        FUN_10918e90((int)puStack_12c);
      }
      if (this != (int *)0x0) {
        (**(code **)(*this + 8))();
      }
      FUN_100ff7e0((int)local_e8);
      if ((1 < (int)local_158 - (int)local_160) && (local_160 != (char *)0x0)) {
        FUN_10918e90((int)local_160);
      }
      return cVar6;
    }
  }
  return '\0';
}

