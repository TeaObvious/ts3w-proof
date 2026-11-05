/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; reference identity is in guides/water/README.md.
   Read-only Ghidra export, 2026-10-12. Decompiled names and ABI are inferred;
   read the paired original-byte disassembly and guides/water/README.md.
   This internal helper is not a managed registration identity. */



uint __thiscall FUN_00b60750(void *this,uint param_1,void *param_2,void *param_3)

{
  undefined4 *puVar1;
  uint *puVar2;
  uint uVar3;
  uint *puVar4;
  bool bVar5;
  void *this_00;
  uint uVar6;
  int *piVar7;
  undefined4 uVar8;
  undefined4 extraout_EAX;
  uint *puVar9;
  byte *outByte;
  short *psVar10;
  undefined4 *puVar11;
  undefined4 *puVar12;
  uint local_ec;
  uint *local_e8 [2];
  int local_e0;
  uint local_dc;
  uint *local_d8;
  void *local_d4;
  uint *local_d0;
  uint *local_cc;
  uint *local_c8;
  char *local_c4;
  undefined1 local_c0 [4];
  uint *local_bc;
  uint local_b8;
  undefined4 local_b4;
  float local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  char *local_a4;
  undefined4 local_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  uint local_80;
  int local_7c;
  uint local_70;
  float fStack_6c;
  uint uStack_68;
  uint uStack_64;
  uint local_60;
  float fStack_5c;
  uint uStack_58;
  uint uStack_54;
  uint local_50;
  uint local_4c;
  short local_34 [4];
  byte local_2c [40];
  
  uVar3 = ((int)param_1 / 3) * 3;
  if (param_1 != uVar3) {
    return uVar3 & 0xffffff00;
  }
  local_b0 = 1.0;
  local_ac = 0x40000000;
  local_a4 = "Misc/Pond/vertexBinSorter";
  local_b8 = 1;
  local_bc = &DAT_0114d900;
  local_b4 = 0;
  local_a8 = 0;
  *(uint *)this = param_1;
  local_d4 = this;
  if (param_1 / 3 != 0) {
    local_dc = param_1 / 3;
    do {
      local_ec = 0;
      local_e0 = 0;
      outByte = local_2c;
      local_e8[0] = (uint *)0x3;
      do {
        bVar5 = Stream_ReadUInt16(*(void **)((int)param_2 + 8),(ushort *)(outByte + -8),
                                  *(uint *)((int)param_2 + 0x10));
        StreamReader_AccumulateStatus(param_2,bVar5);
        bVar5 = Stream_ReadUInt16(*(void **)((int)param_2 + 8),(ushort *)(outByte + -6),
                                  *(uint *)((int)param_2 + 0x10));
        StreamReader_AccumulateStatus(param_2,bVar5);
        bVar5 = Stream_ReadUInt16(*(void **)((int)param_2 + 8),(ushort *)(outByte + -4),
                                  *(uint *)((int)param_2 + 0x10));
        StreamReader_AccumulateStatus(param_2,bVar5);
        bVar5 = Stream_ReadUInt16(*(void **)((int)param_2 + 8),(ushort *)(outByte + -2),
                                  *(uint *)((int)param_2 + 0x10));
        StreamReader_AccumulateStatus(param_2,bVar5);
        bVar5 = Stream_ReadByte(*(void **)((int)param_2 + 8),outByte);
        StreamReader_AccumulateStatus(param_2,bVar5);
        bVar5 = Stream_ReadByte(*(void **)((int)param_2 + 8),outByte + 1);
        StreamReader_AccumulateStatus(param_2,bVar5);
        bVar5 = Stream_ReadByte(*(void **)((int)param_2 + 8),outByte + 2);
        StreamReader_AccumulateStatus(param_2,bVar5);
        local_ec = local_ec + 0x2000 +
                   (int)(short)*(ushort *)(outByte + -8) / (int)*(short *)(outByte + -2);
        local_e0 = local_e0 + 0x2000 + (int)*(short *)(outByte + -6) / (int)*(short *)(outByte + -2)
        ;
        outByte = outByte + 0xc;
        local_e8[0] = (uint *)((int)local_e8[0] + -1);
      } while (local_e8[0] != (uint *)0x0);
      local_e8[0] = (uint *)((local_e0 / (DAT_01184934 * 3)) * 0x2000 +
                            (int)local_ec / (DAT_01184934 * 3));
      this_00 = (void *)FUN_00b60670(local_c0,(uint *)local_e8);
      psVar10 = local_34;
      local_e8[0] = (uint *)0x3;
      do {
        puVar12 = *(undefined4 **)((int)this_00 + 4);
        if (puVar12 < *(undefined4 **)((int)this_00 + 8)) {
          *(undefined4 **)((int)this_00 + 4) = puVar12 + 3;
          if (puVar12 != (undefined4 *)0x0) {
            *puVar12 = *(undefined4 *)psVar10;
            puVar12[1] = *(undefined4 *)(psVar10 + 2);
            puVar12[2] = *(undefined4 *)(psVar10 + 4);
          }
        }
        else {
          FUN_00d700a0(this_00,puVar12,(undefined4 *)psVar10);
        }
        FUN_0068bee0((void *)((int)this_00 + 0x10),(float)(int)*psVar10 / (float)(int)psVar10[3],0,
                     (float)(int)psVar10[1] / (float)(int)psVar10[3]);
        psVar10 = psVar10 + 6;
        local_e8[0] = (uint *)((int)local_e8[0] + -1);
      } while (local_e8[0] != (uint *)0x0);
      local_dc = local_dc - 1;
    } while (local_dc != 0);
    local_dc = 0;
  }
  puVar9 = (uint *)*local_bc;
  local_ec = 0;
  local_d0 = (uint *)0x0;
  local_cc = (uint *)0x0;
  local_c8 = (uint *)0x0;
  local_c4 = "Misc/Pond/remainderIndices";
  local_d8 = local_bc;
  if (puVar9 == (uint *)0x0) {
    local_d8 = local_bc + 1;
    if (local_bc[1] == 0) {
      do {
        local_d8 = local_d8 + 1;
      } while (*local_d8 == 0);
    }
    puVar9 = (uint *)*local_d8;
  }
  local_e8[0] = (uint *)local_bc[local_b8];
  if (puVar9 != local_e8[0]) {
    do {
      puVar12 = (undefined4 *)puVar9[5];
      puVar11 = (undefined4 *)puVar9[4];
      uVar3 = ((int)puVar12 - (int)puVar11) / 0xc;
      if (uVar3 < 0x65) {
        if (local_cc < local_c8) {
          puVar4 = local_cc + 1;
          if (local_cc != (uint *)0x0) {
            *local_cc = *puVar9;
          }
        }
        else {
          FUN_00982420(&local_d0,local_cc,puVar9);
          puVar4 = local_cc;
        }
      }
      else {
        local_60 = puVar9[0xc];
        uStack_58 = puVar9[0xe];
        uStack_54 = puVar9[0xf];
        local_70 = puVar9[8];
        uStack_68 = puVar9[10];
        uStack_64 = puVar9[0xb];
        uVar6 = local_ec + uVar3;
        fStack_5c = (float)puVar9[0xd] + 25.0;
        fStack_6c = (float)puVar9[9] - 25.0;
        local_4c = uVar3 / 3;
        local_50 = local_ec;
        for (; puVar11 != puVar12; puVar11 = puVar11 + 3) {
          puVar1 = *(undefined4 **)((int)param_3 + 4);
          if (puVar1 < *(undefined4 **)((int)param_3 + 8)) {
            *(undefined4 **)((int)param_3 + 4) = puVar1 + 3;
            if (puVar1 != (undefined4 *)0x0) {
              *puVar1 = *puVar11;
              puVar1[1] = puVar11[1];
              puVar1[2] = puVar11[2];
            }
          }
          else {
            FUN_00d700a0(param_3,puVar1,puVar11);
          }
        }
        puVar2 = *(uint **)((int)local_d4 + 0x80);
        local_ec = uVar6;
        if (puVar2 < *(uint **)((int)local_d4 + 0x84)) {
          *(uint **)((int)local_d4 + 0x80) = puVar2 + 0xc;
          puVar4 = local_cc;
          if (puVar2 != (uint *)0x0) {
            *puVar2 = local_70;
            puVar2[1] = (uint)fStack_6c;
            puVar2[2] = uStack_68;
            puVar2[3] = uStack_64;
            puVar2[4] = local_60;
            puVar2[5] = (uint)fStack_5c;
            puVar2[6] = uStack_58;
            puVar2[7] = uStack_54;
            puVar2[8] = local_50;
            puVar2[9] = local_4c;
          }
        }
        else {
          FUN_00b5ee80((void *)((int)local_d4 + 0x7c),puVar2,&local_70);
          puVar4 = local_cc;
        }
      }
      local_cc = puVar4;
      for (puVar9 = (uint *)puVar9[0x10]; puVar9 == (uint *)0x0; puVar9 = (uint *)*puVar9) {
        puVar9 = local_d8 + 1;
        local_d8 = local_d8 + 1;
      }
    } while (puVar9 != local_e8[0]);
  }
  FUN_0068bf40(&local_a0);
  local_7c = 0;
  local_80 = local_ec;
  puVar9 = local_d0;
  if (local_d0 != local_cc) {
    do {
      piVar7 = (int *)FUN_00b60670(local_c0,puVar9);
      FUN_0068be20(&local_a0,(undefined1 (*) [16])(piVar7 + 4));
      local_7c = local_7c + (uint)((piVar7[1] - *piVar7) / 0xc) / 3;
      puVar11 = (undefined4 *)piVar7[1];
      for (puVar12 = (undefined4 *)*piVar7; puVar12 != puVar11; puVar12 = puVar12 + 3) {
        puVar1 = *(undefined4 **)((int)param_3 + 4);
        if (puVar1 < *(undefined4 **)((int)param_3 + 8)) {
          *(undefined4 **)((int)param_3 + 4) = puVar1 + 3;
          if (puVar1 != (undefined4 *)0x0) {
            *puVar1 = *puVar12;
            puVar1[1] = puVar12[1];
            puVar1[2] = puVar12[2];
          }
        }
        else {
          FUN_00d700a0(param_3,puVar1,puVar12);
        }
      }
      puVar9 = puVar9 + 1;
    } while (puVar9 != local_cc);
    if (local_7c != 0) {
      puVar12 = *(undefined4 **)((int)local_d4 + 0x80);
      if (puVar12 < *(undefined4 **)((int)local_d4 + 0x84)) {
        *(undefined4 **)((int)local_d4 + 0x80) = puVar12 + 0xc;
        if (puVar12 != (undefined4 *)0x0) {
          *puVar12 = local_a0;
          puVar12[1] = uStack_9c;
          puVar12[2] = uStack_98;
          puVar12[3] = uStack_94;
          puVar12[4] = local_90;
          puVar12[5] = uStack_8c;
          puVar12[6] = uStack_88;
          puVar12[7] = uStack_84;
          puVar12[8] = local_80;
          puVar12[9] = local_7c;
        }
      }
      else {
        FUN_00b5ee80((void *)((int)local_d4 + 0x7c),puVar12,&local_a0);
      }
    }
  }
  if (local_d0 != (uint *)0x0) {
    Memory_FreeIfNonNull(local_d0);
  }
  uVar8 = FUN_00b5f060((int)local_bc,local_b8);
  local_b4 = 0;
  if (1 < local_b8) {
    Memory_FreeIfNonNull(local_bc);
    uVar8 = extraout_EAX;
  }
  return CONCAT31((int3)((uint)uVar8 >> 8),1);
}

