/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC1.67 outfit writer instruction contract: this in ECX, four physical stack DWORDs
   stream/export-remap/external-key-vector/prefer-binary; RET10. Writesv21. Fourth arg low byte and
   null export-remap permit binary preset attempt; failure seeks back and emits text. Ordinary calls
   pass fourth0. Active parts have nonzero type. Preset keys are collected before
   skin/part/texture/blend raw-key indices; dedup precedes final table remap; inline fur bypasses
   that remap. Do not infer unsupported zero-blend validity from count alone: count tests nonzero
   amounts but row loop writes the stored vector. All6 direct incoming callsites and fullASM closed;
   preserve native body and original bytes. */

void __thiscall
SimOutfit_WriteWire(void *this,int *param_1,undefined4 param_2,undefined4 *param_3,uint preferBinary
                   )

{
  uint *puVar1;
  byte bVar2;
  bool readSucceeded;
  uint uVar3;
  int iVar4;
  undefined4 uVar5;
  int *piVar6;
  uint **ppuVar7;
  uint *extraout_EAX;
  int *piVar8;
  int *piVar9;
  uint uVar10;
  char cVar11;
  uint uVar12;
  undefined4 *keyVector;
  int *allocation;
  int iVar13;
  undefined4 *puVar14;
  int unaff_retaddr;
  ushort value;
  uint *local_74;
  uint *puStack_70;
  int iStack_6c;
  uint *puStack_68;
  int iStack_64;
  uint uStack_60;
  uint uStack_5c;
  uint uStack_58;
  uint uStack_54;
  int *piStack_50;
  int *piStack_4c;
  int *piStack_48;
  int *piStack_44;
  char *pcStack_40;
  int iStack_3c;
  undefined4 local_38 [2];
  uint auStack_30 [4];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  int *local_18;
  int *piStack_14;
  int *local_10;
  uint uStack_c;
  uint local_8;
  
  if ((_DAT_011cf698 & 1) == 0) {
    _DAT_011cf698 = _DAT_011cf698 | 1;
    _DAT_011cf688 = 0;
    _DAT_011cf68c = 0;
    _DAT_011cf690 = 0;
    _DAT_011cf694 = 0;
  }
  local_74 = (uint *)0xfe58b0;
  FUN_007d9500(local_38,&local_74);
  keyVector = param_3;
  if (param_3 == (undefined4 *)0x0) {
    keyVector = local_38;
  }
  StreamReader_Construct(&local_18,param_1,1);
  bVar2 = Stream_WriteUInt32(local_10,0x15,local_8);
  StreamReader_AccumulateStatus(&local_18,bVar2);
  local_74 = (uint *)(**(code **)(*local_10 + 0x24))(0);
  bVar2 = Stream_WriteUInt32(piStack_14,0,uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  piStack_4c = (int *)0x0;
  piStack_44 = (int *)0x0;
  iVar4 = *(int *)((int)this + 0x9c);
  pcStack_40 = "CAS/SimOutfitResource/Save";
  iVar13 = *(int *)((int)this + 0x98);
  piVar8 = (int *)0x0;
  piStack_48 = (int *)0x0;
  if (iVar13 != iVar4) {
    piVar9 = (int *)0x0;
    do {
      piVar8 = piVar9;
      if (*(int *)(iVar13 + 8) != 0) {
        if (piVar9 < piStack_44) {
          piStack_48 = piVar9 + 1;
          piVar8 = piStack_48;
          if (piVar9 != (int *)0x0) {
            *piVar9 = iVar13;
          }
        }
        else {
          FUN_00982420(&piStack_4c,piVar9,(undefined4 *)&stack0xffffff88);
          piVar8 = piStack_48;
        }
      }
      iVar13 = iVar13 + 0x68;
      piVar9 = piVar8;
    } while (iVar13 != iVar4);
  }
  uVar3 = (int)piVar8 - (int)piStack_4c >> 2;
  bVar2 = Stream_WriteUInt32(piStack_14,uVar3 & 0xff,uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  iVar4 = StreamContext_GetPositionAndMarkNegative(auStack_1c);
  if (((char)param_3 == '\0') || (param_1 != (int *)0x0)) {
LAB_005e7eb5:
    FUN_005e65e0(auStack_1c,&piStack_4c,keyVector,(int)param_1);
  }
  else {
    uVar5 = SimOutfit_WriteBinaryPresets(auStack_1c,&piStack_4c,keyVector);
    if ((char)uVar5 == '\0') {
      StreamContext_SeekWithSignedAbsoluteGuard(auStack_1c,iVar4,0);
      param_1 = (int *)0x0;
      goto LAB_005e7eb5;
    }
  }
  bVar2 = FUN_004de0c0(piStack_14,*(undefined8 *)((int)this + 0xd0),uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  bVar2 = FUN_004de390(piStack_14,*(undefined4 *)((int)this + 0x68),uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  bVar2 = FUN_004de390(piStack_14,*(undefined4 *)((int)this + 0x6c),uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  bVar2 = FUN_004de390(piStack_14,*(undefined4 *)((int)this + 0x70),uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  bVar2 = FUN_004de390(piStack_14,*(undefined4 *)((int)this + 0x74),uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  bVar2 = FUN_004de060(piStack_14,*(uint *)((int)this + 0x38) & 0x7f,uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  bVar2 = FUN_004de060(piStack_14,*(uint *)((int)this + 0x38) & 0x3000,uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  bVar2 = FUN_004de060(piStack_14,*(uint *)((int)this + 0x38) & 0xcf00,uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  bVar2 = Stream_WriteUInt32(piStack_14,*(uint *)((int)this + 0x3c),uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  FUN_005e6e70((int *)((int)this + 0x40),auStack_1c,keyVector);
  bVar2 = FUN_004de390(piStack_14,*(undefined4 *)((int)this + 0x50),uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  puVar14 = (undefined4 *)((int)this + 0x54);
  iVar4 = 2;
  do {
    bVar2 = FUN_004de390(piStack_14,*puVar14,uStack_c);
    StreamReader_AccumulateStatus(auStack_1c,bVar2);
    puVar14 = puVar14 + 1;
    iVar4 = iVar4 + -1;
  } while (iVar4 != 0);
  bVar2 = Stream_WriteUInt32(piStack_14,*(uint *)((int)this + 0x5c),uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  bVar2 = Stream_WriteUInt32(piStack_14,*(uint *)((int)this + 0x60),uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  bVar2 = Stream_WriteUInt32(piStack_14,*(uint *)((int)this + 100),uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  bVar2 = FUN_004de390(piStack_14,*(undefined4 *)((int)this + 0x7c),uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  bVar2 = FUN_004de390(piStack_14,*(undefined4 *)((int)this + 0x80),uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  readSucceeded = Stream_WriteResourceKeyTGI(piStack_14,(void *)((int)this + 0x88),uStack_c);
  StreamReader_AccumulateStatus(auStack_1c,readSucceeded);
  bVar2 = Stream_WriteByte((undefined *)piStack_14,(byte)uVar3);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  piVar8 = piStack_4c;
  if (piStack_4c != piStack_48) {
    do {
      piVar9 = (int *)*piVar8;
      FUN_005e6e70(piVar9,auStack_1c,keyVector);
      bVar2 = FUN_004de060(piStack_14,piVar9[0x18],uStack_c);
      StreamReader_AccumulateStatus(auStack_1c,bVar2);
      bVar2 = Stream_WriteByte((undefined *)piStack_14,5);
      StreamReader_AccumulateStatus(auStack_1c,bVar2);
      iVar4 = 0;
      do {
        if (*(int *)(iVar4 + piVar9[5]) == 0) {
          piVar6 = (int *)&DAT_011cf688;
        }
        else {
          piVar6 = (int *)(*(int *)(iVar4 + piVar9[5]) + 8);
        }
        FUN_005e6e70(piVar6,auStack_1c,keyVector);
        if (*(int *)(iVar4 + piVar9[0xe]) == 0) {
          piVar6 = (int *)&DAT_011cf688;
        }
        else {
          piVar6 = (int *)(*(int *)(iVar4 + piVar9[0xe]) + 8);
        }
        FUN_005e6e70(piVar6,auStack_1c,keyVector);
        iVar4 = iVar4 + 4;
      } while (iVar4 < 0x14);
      piVar8 = piVar8 + 1;
    } while (piVar8 != piStack_48);
  }
  allocation = piStack_4c;
  bVar2 = Stream_WriteByte((undefined *)piStack_14,0);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  piVar9 = *(int **)((int)this + 0x2b8);
  piVar6 = *(int **)((int)this + 700);
  cVar11 = '\0';
  uVar3 = (uint)piVar8 & 0xffffff00;
  if (piVar9 != piVar6) {
    do {
      if ((float)piVar9[4] != 0.0) {
        cVar11 = cVar11 + '\x01';
      }
      piVar9 = piVar9 + 6;
    } while (piVar9 != piVar6);
    uVar3 = CONCAT31((int3)((uint)piVar8 >> 8),cVar11);
  }
  bVar2 = Stream_WriteByte((undefined *)piStack_14,(byte)uVar3);
  StreamReader_AccumulateStatus(auStack_1c,bVar2);
  for (piVar8 = *(int **)((int)this + 0x2b8); piVar8 != piVar6; piVar8 = piVar8 + 6) {
    FUN_005e6e70(piVar8,auStack_1c,keyVector);
    bVar2 = FUN_004de390(piStack_14,piVar8[4],uStack_c);
    StreamReader_AccumulateStatus(auStack_1c,bVar2);
  }
  iVar4 = (**(code **)(*piStack_14 + 0x24))(0);
  if (((iVar4 != -1) && (iVar13 = (**(code **)(*local_18 + 0x24))(0), iVar13 != -1)) &&
     (cVar11 = (**(code **)(*local_18 + 0x28))((short)uVar3,0), cVar11 != '\0')) {
    bVar2 = Stream_WriteUInt32(local_18,(iVar4 - uVar3) - 4,(uint)local_10);
    StreamReader_AccumulateStatus(auStack_20,bVar2);
    cVar11 = (**(code **)(*local_18 + 0x28))((short)iVar13,0);
    if (cVar11 != '\0') goto LAB_005e836b;
  }
  uStack_c = uStack_c & 0xffffff00;
LAB_005e836b:
  uVar10 = iStack_3c - (int)pcStack_40 >> 4;
  uVar3 = uVar10 & 0xffff;
  value = (ushort)uVar10;
  bVar2 = Stream_WriteUInt16(local_18,value,(uint)local_10);
  StreamReader_AccumulateStatus(auStack_20,bVar2);
  if (value != 0) {
    iVar4 = 0;
    do {
      uStack_60 = *(uint *)(pcStack_40 + iVar4);
      uStack_5c = *(uint *)(pcStack_40 + iVar4 + 4);
      uStack_58 = *(uint *)(pcStack_40 + iVar4 + 8);
      uStack_54 = *(uint *)(pcStack_40 + iVar4 + 0xc);
      if (unaff_retaddr != 0) {
        uVar10 = *(uint *)(unaff_retaddr + 8);
        uVar12 = (uStack_60 ^ uStack_54) % uVar10;
        iVar13 = *(int *)(unaff_retaddr + 4);
        for (puVar1 = *(uint **)(iVar13 + uVar12 * 4); puVar1 != (uint *)0x0;
            puVar1 = (uint *)puVar1[8]) {
          if (((uStack_60 == *puVar1) && (uStack_58 == puVar1[2])) &&
             ((uStack_54 == puVar1[3] && (uStack_5c == puVar1[1])))) {
            puStack_70 = puVar1;
            iStack_6c = iVar13 + uVar12 * 4;
            ppuVar7 = &puStack_70;
            goto LAB_005e8438;
          }
        }
        iStack_64 = iVar13 + uVar10 * 4;
        puStack_68 = *(uint **)(iVar13 + uVar10 * 4);
        ppuVar7 = &puStack_68;
LAB_005e8438:
        puVar1 = *ppuVar7;
        local_74 = ppuVar7[1];
        if (puVar1 != *(uint **)(iVar13 + uVar10 * 4)) {
          uStack_60 = puVar1[4];
          uStack_5c = puVar1[5];
          uStack_58 = puVar1[6];
          uStack_54 = puVar1[7];
        }
      }
      ResourceKey_CopyWithMountedCandidate(auStack_30,&uStack_60);
      uStack_60 = *extraout_EAX;
      uStack_5c = extraout_EAX[1];
      uStack_58 = extraout_EAX[2];
      uStack_54 = extraout_EAX[3];
      bVar2 = FUN_004de0c0(local_18,*(undefined8 *)extraout_EAX,(int)local_10);
      StreamReader_AccumulateStatus(auStack_20,bVar2);
      bVar2 = Stream_WriteUInt32(local_18,uStack_54,(uint)local_10);
      StreamReader_AccumulateStatus(auStack_20,bVar2);
      bVar2 = Stream_WriteUInt32(local_18,uStack_58,(uint)local_10);
      StreamReader_AccumulateStatus(auStack_20,bVar2);
      iVar4 = iVar4 + 0x10;
      uVar3 = uVar3 - 1;
      allocation = piStack_50;
    } while (uVar3 != 0);
  }
  if (allocation != (int *)0x0) {
    Memory_FreeIfNonNull(allocation);
  }
  StreamReader_ReleaseAuxiliary(auStack_20);
  if (pcStack_40 != (char *)0x0) {
    Memory_FreeIfNonNull(pcStack_40);
  }
  return;
}

