/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * ECX cutaway owner, RET0. Iterates six-byte locators after C4F060 admission; reads oriented definition0 rooms through C5C2C0, selected room set membership and owner+D branch before camera cross/dot tests. Separate lot2F8/2FC/300..31C rectangle/radius branch uses squared radius25 and calls C33390 with endpoint classifications. Current ordinary nonzero-room projection is not complete override/room-set/special-camera policy. CallerC34F10 and insertionC33390 ordering/winner semantics remain separate.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00C339D0_FUN_00c339d0.asm
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00c339d0(int param_1)

{
  char cVar1;
  int iVar2;
  bool bVar3;
  int *piVar4;
  char cVar5;
  char *pcVar6;
  char *pcVar7;
  bool bVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  bool local_12b;
  char local_12a;
  uint local_128;
  uint local_124;
  uint local_120;
  undefined2 local_11c;
  char local_11a;
  undefined2 local_119;
  char local_117;
  float local_114;
  float local_110;
  float local_10c;
  float local_108;
  int local_104;
  float local_100;
  float local_fc;
  int local_f8;
  char *local_f4;
  undefined4 local_f0;
  float local_ec;
  uint local_e8;
  char *local_e4;
  uint local_e0;
  float local_dc;
  float local_d8;
  undefined4 local_d4;
  float local_d0;
  float local_cc;
  float local_c4;
  float local_c0;
  int local_b8;
  int local_b0;
  int local_a8;
  float local_a0;
  undefined4 uStack_9c;
  float fStack_98;
  undefined4 uStack_94;
  int local_88;
  float local_80;
  undefined4 uStack_7c;
  float fStack_78;
  undefined4 uStack_74;
  float local_70;
  undefined4 uStack_6c;
  float fStack_68;
  undefined4 uStack_64;
  float local_60;
  undefined4 uStack_5c;
  float fStack_58;
  undefined4 uStack_54;
  float local_4c;
  undefined4 local_40 [2];
  undefined4 local_38 [2];
  undefined4 local_30 [2];
  undefined4 local_28 [2];
  undefined4 local_20 [2];
  undefined4 local_18 [5];
  
  local_a0 = *(float *)(param_1 + 0x90);
  uStack_9c = *(undefined4 *)(param_1 + 0x94);
  fStack_98 = *(float *)(param_1 + 0x98);
  uStack_94 = *(undefined4 *)(param_1 + 0x9c);
  iVar2 = *(int *)(param_1 + 4);
  local_104 = *(int *)(iVar2 + 0x18);
  local_70 = *(float *)(param_1 + 0xa0);
  uStack_6c = *(undefined4 *)(param_1 + 0xa4);
  fStack_68 = *(float *)(param_1 + 0xa8);
  uStack_64 = *(undefined4 *)(param_1 + 0xac);
  local_ec = fStack_68 * fStack_98 + local_70 * local_a0;
  local_12b = *(int *)(iVar2 + 0x2f8) != 0 || *(int *)(iVar2 + 0x2fc) != 0;
  local_114 = *(float *)(iVar2 + 0x300);
  local_dc = *(float *)(iVar2 + 0x310);
  local_d8 = *(float *)(iVar2 + 0x314);
  pcVar6 = *(char **)(param_1 + 0x40);
  local_110 = *(float *)(iVar2 + 0x304);
  local_10c = *(float *)(iVar2 + 0x308);
  local_108 = *(float *)(iVar2 + 0x30c);
  local_d4 = *(undefined4 *)(iVar2 + 0x318);
  local_e4 = *(char **)(param_1 + 0x44);
  cVar1 = *(char *)(*(int *)(param_1 + 4) + 0x31c);
  if (pcVar6 != local_e4) {
    pcVar7 = pcVar6 + 4;
    local_80 = local_a0;
    uStack_7c = uStack_9c;
    fStack_78 = fStack_98;
    uStack_74 = uStack_94;
    local_60 = local_70;
    uStack_5c = uStack_6c;
    fStack_58 = fStack_68;
    uStack_54 = uStack_64;
    do {
      bVar3 = FUN_00c4f060(*(void **)(param_1 + 8),pcVar6);
      if (!bVar3) goto LAB_00c33fe0;
      local_11a = pcVar7[1];
      local_11c = *(undefined2 *)(pcVar7 + -1);
      local_119 = *(undefined2 *)pcVar6;
      local_117 = pcVar6[2];
      local_124 = FUN_00c5c2c0(local_104,pcVar6,0);
      local_124 = local_124 & 0xffff;
      local_120 = FUN_00c5c2c0(local_104,(char *)&local_11c,0);
      local_120 = local_120 & 0xffff;
      if (*(char *)(param_1 + 0xd) == '\0') {
        if ((short)local_124 == 0) {
LAB_00c33c84:
          bVar3 = false;
        }
        else {
          local_128 = local_124 & 0xffff;
          iVar2 = *(int *)(param_1 + 4);
          local_b8 = *(int *)(*(int *)(iVar2 + 0xdc) + *(int *)(iVar2 + 0xe0) * 4);
          piVar4 = (int *)FUN_00ae43c0((void *)(iVar2 + 0xd8),local_38,(short *)&local_128);
          bVar3 = true;
          if (*piVar4 != local_b8) goto LAB_00c33c84;
        }
        if ((short)local_120 == 0) {
LAB_00c33cd3:
          bVar8 = false;
        }
        else {
          local_128 = local_120 & 0xffff;
          iVar2 = *(int *)(param_1 + 4);
          local_b0 = *(int *)(*(int *)(iVar2 + 0xdc) + *(int *)(iVar2 + 0xe0) * 4);
          piVar4 = (int *)FUN_00ae43c0((void *)(iVar2 + 0xd8),local_28,(short *)&local_128);
          if (*piVar4 != local_b0) goto LAB_00c33cd3;
          bVar8 = true;
        }
        goto LAB_00c33cd5;
      }
      if ((short)local_124 == 0) {
LAB_00c33b8e:
        local_12a = '\0';
      }
      else {
        local_128 = local_124 & 0xffff;
        iVar2 = *(int *)(param_1 + 4);
        local_a8 = *(int *)(*(int *)(iVar2 + 0xdc) + *(int *)(iVar2 + 0xe0) * 4);
        piVar4 = (int *)FUN_00ae43c0((void *)(iVar2 + 0xd8),local_20,(short *)&local_128);
        local_12a = '\x01';
        if (*piVar4 == local_a8) goto LAB_00c33b8e;
      }
      if ((short)local_120 == 0) {
LAB_00c33bdd:
        cVar5 = '\0';
      }
      else {
        local_128 = local_120 & 0xffff;
        iVar2 = *(int *)(param_1 + 4);
        local_88 = *(int *)(*(int *)(iVar2 + 0xdc) + *(int *)(iVar2 + 0xe0) * 4);
        piVar4 = (int *)FUN_00ae43c0((void *)(iVar2 + 0xd8),local_18,(short *)&local_128);
        if (*piVar4 == local_88) goto LAB_00c33bdd;
        cVar5 = '\x01';
      }
      bVar3 = (short)local_124 != 0;
      bVar8 = (short)local_120 != 0;
      if ((local_12a == '\0') || (cVar5 == '\0')) {
        if (local_12a == cVar5) {
LAB_00c33cd5:
          if (!bVar3) goto LAB_00c33ce6;
          if (bVar8) goto LAB_00c33f16;
LAB_00c33cee:
          fVar13 = (float)(int)*pcVar6;
          fVar10 = (float)(int)pcVar7[-3];
          local_4c = (float)(int)pcVar7[-1];
          fVar11 = (float)(int)*pcVar7;
          if (bVar3) {
            fVar12 = fVar13 - local_4c;
            fVar9 = fVar10 - fVar11;
          }
          else {
            fVar12 = local_4c - fVar13;
            fVar9 = fVar11 - fVar10;
          }
          if ((DAT_010f4ccc <
               (FLOAT_00f998f0 - fVar12) * ((fVar11 + fVar10) * _DAT_00f9b5b4 - fStack_98) +
               fVar9 * ((local_4c + fVar13) * _DAT_00f9b5b4 - local_80)) &&
             ((local_ec <= fVar10 * fStack_58 + fVar13 * local_70 ||
              (local_ec <= fVar11 * fStack_58 + local_4c * local_70)))) goto LAB_00c33f16;
        }
        else {
          if (bVar3) {
            if (bVar8) {
              bVar3 = local_12a == '\0';
              bVar8 = cVar5 == '\0';
            }
            goto LAB_00c33cd5;
          }
LAB_00c33ce6:
          if (bVar8) goto LAB_00c33cee;
        }
        if ((local_12b) && ((pcVar7[-2] == '\0' && (cVar1 != '\0')))) {
          fVar10 = (float)(int)*pcVar6;
          fVar11 = (float)(int)pcVar7[-3];
          if ((fVar10 < local_114) ||
             (((fVar11 < local_110 || (local_10c < fVar10)) || (local_108 < fVar11)))) {
            if (((((float)(int)pcVar7[-1] < local_114) || ((float)(int)*pcVar7 < local_110)) ||
                (local_10c < (float)(int)pcVar7[-1])) || (local_108 < (float)(int)*pcVar7))
            goto LAB_00c33fe0;
          }
          fVar11 = (float)((int)*pcVar7 + (int)pcVar7[-3]) * _DAT_00f9b5b4;
          fVar10 = (float)((int)pcVar7[-1] + (int)*pcVar6) * _DAT_00f9b5b4;
          if (((local_d8 - fVar11) * (local_d8 - fVar11) + (local_dc - fVar10) * (local_dc - fVar10)
               < DAT_00fcc6f0) &&
             (DAT_010f4ccc <
              ((local_108 + local_110) * _DAT_00f9b5b4 - fVar11) * (fVar11 - fStack_98) +
              ((local_10c + local_114) * _DAT_00f9b5b4 - fVar10) * (fVar10 - local_80)))
          goto LAB_00c33f16;
        }
      }
      else {
LAB_00c33f16:
        local_100 = (float)(int)*pcVar6;
        local_f8 = (int)pcVar7[-2];
        local_fc = (float)(int)pcVar7[-3];
        local_f0 = 1;
        local_e0 = local_e0 & 0xffffff00;
        local_f4 = pcVar6;
        local_c4 = local_100;
        local_c0 = local_fc;
        FUN_00c33390(*(void **)(param_1 + 0x88),local_30,&local_100);
        local_100 = (float)(int)pcVar7[-1];
        local_f8 = (int)pcVar7[1];
        local_fc = (float)(int)*pcVar7;
        local_f0 = 2;
        local_e8 = local_e8 & 0xffffff00;
        local_f4 = pcVar6;
        local_d0 = local_100;
        local_cc = local_fc;
        FUN_00c33390(*(void **)(param_1 + 0x88),local_40,&local_100);
      }
LAB_00c33fe0:
      pcVar6 = pcVar6 + 6;
      pcVar7 = pcVar7 + 6;
    } while (pcVar6 != local_e4);
  }
  return;
}

