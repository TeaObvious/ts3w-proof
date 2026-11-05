/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x005b394a) */
/* WARNING: Removing unreachable block (ram,0x005b3950) */
/* Analyst role, original PC1.67 CASPart reader. Physical ECX resource plus stream and low-byte
   prepare flag, RET8; AL status. UInt32 version-3<=15 admits3..18. For version>10 reads relative
   IGT table with UInt8 count, normalizes EVERY table key through007D8310 and stores all four
   resulting DWORDs. Only after normalization tests source group bit01000000, resolved
   type00B2D882/736884F1/033A1435/0355E0A6, and OR of both instance DWORDs. Nonzero instance
   requires ResourceMan virtual44 presence; null immediately branches5B43C1 failure. Unused table
   references participate. Current decompiler incorrectly groups OR/AND around the 64-bit zero check
   and loses some branches: original instructions5B2F5C..2FC5 establish this order. Remaining
   property/preset/model loading and job/lifetime body is retained, not certified by that selected
   dependency rule. */

char __thiscall CASPart_ReadResource(void *this,int *param_1,char param_2)

{
  uint *puVar1;
  byte *outByte;
  bool bVar2;
  char cVar3;
  uint *extraout_EAX;
  int *piVar4;
  undefined4 *puVar5;
  LPCWSTR pWVar6;
  int iVar7;
  int *piVar8;
  undefined4 *puVar9;
  LPCWSTR pWVar10;
  int *piVar11;
  int *piVar12;
  uint uVar13;
  int iVar14;
  uint uVar15;
  byte bVar16;
  ulonglong *puVar17;
  void *pvVar18;
  int iVar19;
  byte local_90;
  byte bStack_8f;
  byte local_8e;
  byte bStack_8d;
  undefined1 local_8c [8];
  void *local_84;
  uint local_7c;
  char local_78;
  uint local_74;
  byte bStack_6d;
  LPCWSTR local_6c;
  byte bStack_67;
  byte bStack_66;
  byte bStack_65;
  LPCWSTR local_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  uint uStack_58;
  uint uStack_54;
  uint uStack_50;
  LPCWSTR local_4c;
  undefined1 *puStack_48;
  undefined2 *puStack_44;
  char *pcStack_40;
  int iStack_3c;
  void *local_38;
  LPCWSTR pWStack_34;
  undefined1 *puStack_30;
  undefined2 *puStack_2c;
  char *pcStack_28;
  void *local_24 [4];
  char *local_14;
  LPCWSTR local_10;
  int iStack_c;
  undefined4 uStack_8;
  char *pcStack_4;
  
  local_38 = this;
  local_4c = (LPCWSTR)FUN_004afe80();
  StreamReader_Construct(local_8c,param_1,1);
  if (local_78 == '\0') {
LAB_005b2df0:
    StreamReader_ReleaseAuxiliary(local_8c);
    return '\0';
  }
  bVar2 = Stream_ReadUInt32(local_84,&local_74,local_7c);
  StreamReader_AccumulateStatus(local_8c,bVar2);
  if (0xf < local_74 - 3) goto LAB_005b2df0;
  local_14 = "CAS/CASPartDataResource/KeyTable";
  FUN_007d9500(local_24,&local_14);
  local_14 = (char *)0x0;
  if (10 < local_74) {
    StreamReader_ReadUInt32Into(local_8c,(uint *)&local_64);
    local_6c = (LPCWSTR)StreamContext_GetPositionAndMarkNegative(local_8c);
    StreamContext_SeekWithSignedAbsoluteGuard(local_8c,(int)local_64,1);
    if (local_78 == '\0') {
LAB_005b43c7:
      if (local_24[0] != (void *)0x0) {
        Memory_FreeIfNonNull(local_24[0]);
      }
      StreamReader_ReleaseAuxiliary(local_8c);
      return '\0';
    }
    StreamReader_ReadByteInto(local_8c,&local_8e);
    FUN_007998a0(local_24,(uint)local_8e);
    local_90 = 0;
    if (local_8e != 0) {
      do {
        iVar19 = (uint)local_90 * 0x10;
        puVar17 = (ulonglong *)(iVar19 + (int)local_24[0]);
        bVar2 = Stream_ReadUInt64(local_84,puVar17,local_7c);
        StreamReader_AccumulateStatus(local_8c,bVar2);
        bVar2 = Stream_ReadUInt32(local_84,(uint *)((int)puVar17 + 0xc),local_7c);
        StreamReader_AccumulateStatus(local_8c,bVar2);
        bVar2 = Stream_ReadUInt32(local_84,(uint *)(puVar17 + 1),local_7c);
        StreamReader_AccumulateStatus(local_8c,bVar2);
        puVar1 = (uint *)(iVar19 + (int)local_24[0]);
        ResourceKey_CopyWithMountedCandidate((uint *)&local_10,puVar1);
        *puVar1 = *extraout_EAX;
        puVar1[1] = extraout_EAX[1];
        puVar1[2] = extraout_EAX[2];
        puVar1[3] = extraout_EAX[3];
        if ((((*(uint *)((int)local_38 + 0x14) & 0x1000000) != 0) &&
            ((((uVar13 = (uint)puVar17[1], uVar13 == 0xb2d882 || (uVar13 == 0x736884f1)) ||
              (uVar13 == 0x33a1435)) || (uVar13 == 0x355e0a6)))) &&
           (((int)*puVar17 != 0 || *(int *)((int)puVar17 + 4) != 0 &&
            (iVar19 = (**(code **)(*(int *)local_4c + 0x44))((void *)(iVar19 + (int)local_24[0])),
            iVar19 == 0)))) goto LAB_005b43c7;
        local_90 = local_90 + 1;
        this = local_38;
      } while (local_90 < local_8e);
    }
    local_14 = (char *)StreamContext_GetPositionAndMarkNegative(local_8c);
    StreamContext_SeekWithSignedAbsoluteGuard(local_8c,(int)local_6c,0);
  }
  if (param_2 != '\0') {
    piVar8 = (int *)((int)this + 0x1cc);
    if (*(void **)((int)this + 0x1cc) != (void *)0x0) {
      FUN_0059b530(*(void **)((int)this + 0x1cc),0);
      Job_ReleaseReference((void *)*piVar8);
      *piVar8 = 0;
    }
    piVar4 = JobManager_GetInterface();
    (**(code **)(*piVar4 + 0x10))(piVar8);
    iVar19 = *piVar8;
    *(undefined1 **)(iVar19 + 8) = &LAB_00599c70;
    *(int *)(iVar19 + 0xc) = (int)this + 0x2c;
  }
  iStack_3c = 0;
  if (0xf < local_74) {
    local_4c = (LPCWSTR)&DAT_011c8e54;
    puStack_48 = &DAT_011c8e54;
    pcStack_40 = "CAS/CASPartDataResource/Preset";
    puStack_44 = &DAT_011c8e56;
    local_6c = (LPCWSTR)0x0;
    bVar2 = Stream_ReadUInt32(local_84,(uint *)&local_6c,local_7c);
    StreamReader_AccumulateStatus(local_8c,bVar2);
    FUN_005b14e0((void *)((int)this + 0x230),(uint)local_6c);
    local_64 = (LPCWSTR)0x0;
    if (local_6c != (LPCWSTR)0x0) {
      do {
        piVar8 = (int *)(*(int *)((int)this + 0x230) + (int)local_64 * 8);
        StreamContext_ReadUtf16String(local_8c,&local_4c);
        bVar2 = Stream_ReadUInt32(local_84,(uint *)(piVar8 + 1),local_7c);
        StreamReader_AccumulateStatus(local_8c,bVar2);
        uVar13 = piVar8[1];
        if (*(uint *)((int)this + 0x250) < uVar13) {
          *(uint *)((int)this + 0x250) = uVar13;
        }
        puVar5 = (undefined4 *)FUN_004e4500(0x60,"CAS/CASPartDataResource/Preset",0);
        if (puVar5 == (undefined4 *)0x0) {
          piVar4 = (int *)0x0;
        }
        else {
          piVar4 = (int *)DesignPreset_InitializeEmpty(puVar5);
        }
        piVar12 = (int *)*piVar8;
        if (piVar4 != piVar12) {
          if (piVar4 != (int *)0x0) {
            (**(code **)*piVar4)();
          }
          *piVar8 = (int)piVar4;
          if (piVar12 != (int *)0x0) {
            (**(code **)(*piVar12 + 4))();
          }
        }
        if ((void *)*piVar8 == (void *)0x0) {
          pWVar10 = local_4c;
          if ((int)((int)puStack_44 - (int)local_4c & 0xfffffffeU) < 3) goto LAB_005b43c7;
          goto LAB_005b43b4;
        }
        FUN_005c0060((void *)*piVar8,local_4c);
        iStack_3c = iStack_3c + *(int *)(*piVar8 + 0x20);
        local_64 = (LPCWSTR)((int)local_64 + 1);
      } while (local_64 < local_6c);
    }
    if ((2 < (int)((int)puStack_44 - (int)local_4c & 0xfffffffeU)) && (local_4c != (LPCWSTR)0x0)) {
      Memory_FreeIfNonNull(local_4c);
    }
  }
  if (0xb < local_74) {
    FUN_007d7aa0(local_8c,(int *)((int)this + 0x220));
  }
  if (local_74 < 0x12) {
    if (local_74 < 0xd) goto LAB_005b3212;
    bVar2 = Stream_ReadUInt32(local_84,(uint *)&local_64,local_7c);
  }
  else {
    bVar2 = Stream_ReadUInt32(local_84,(uint *)((int)this + 0x44),local_7c);
  }
  StreamReader_AccumulateStatus(local_8c,bVar2);
LAB_005b3212:
  bVar2 = Stream_ReadBoolean(local_84,(void *)((int)this + 0x30));
  StreamReader_AccumulateStatus(local_8c,bVar2);
  bVar2 = Stream_ReadUInt32(local_84,&uStack_50,local_7c);
  StreamReader_AccumulateStatus(local_8c,bVar2);
  *(uint *)((int)this + 0x34) = uStack_50;
  if (local_74 < 0xf) {
    switch(uStack_50) {
    case 0:
      *(undefined4 *)((int)this + 0x38) = 0;
      break;
    case 1:
      *(undefined4 *)((int)this + 0x38) = 1;
      break;
    case 2:
      *(undefined4 *)((int)this + 0x38) = 2;
      break;
    case 3:
      *(undefined4 *)((int)this + 0x38) = 4;
      break;
    case 4:
    case 5:
    case 6:
    case 7:
      *(undefined4 *)((int)this + 0x38) = 8;
      break;
    default:
      *(undefined4 *)((int)this + 0x38) = 0x10;
    }
  }
  else {
    bVar2 = Stream_ReadUInt32(local_84,&uStack_50,local_7c);
    StreamReader_AccumulateStatus(local_8c,bVar2);
    *(uint *)((int)this + 0x38) = uStack_50;
  }
  if (local_74 < 9) {
    bVar2 = Stream_ReadUInt32(local_84,(uint *)&local_4c,local_7c);
    StreamReader_AccumulateStatus(local_8c,bVar2);
    bVar2 = Stream_ReadUInt32(local_84,(uint *)&local_64,local_7c);
    StreamReader_AccumulateStatus(local_8c,bVar2);
    *(uint *)((int)this + 0x3c) = *(uint *)((int)this + 0x3c) | (uint)local_64 | (uint)local_4c;
  }
  else {
    bVar2 = Stream_ReadUInt32(local_84,(uint *)&local_64,local_7c);
    StreamReader_AccumulateStatus(local_8c,bVar2);
    *(LPCWSTR *)((int)this + 0x3c) = local_64;
    if (((uint)local_64 & 0xcf00) == 0) {
      *(uint *)((int)this + 0x3c) = (uint)local_64 | 0x100;
    }
  }
  if (7 < local_74) {
    bVar2 = Stream_ReadUInt32(local_84,(uint *)((int)this + 0x40),local_7c);
    StreamReader_AccumulateStatus(local_8c,bVar2);
  }
  if (local_74 < 0x10) {
    if (0xe < local_74) {
      bVar2 = Stream_ReadUInt64(local_84,(ulonglong *)((int)this + 0x48),local_7c);
      StreamReader_AccumulateStatus(local_8c,bVar2);
      bVar2 = Stream_ReadUInt32(local_84,(uint *)((int)this + 0x54),local_7c);
      StreamReader_AccumulateStatus(local_8c,bVar2);
      bVar2 = Stream_ReadUInt32(local_84,(uint *)((int)this + 0x50),local_7c);
      StreamReader_AccumulateStatus(local_8c,bVar2);
      bVar2 = Stream_ReadUInt64(local_84,(ulonglong *)((int)this + 0x58),local_7c);
      StreamReader_AccumulateStatus(local_8c,bVar2);
      bVar2 = Stream_ReadUInt32(local_84,(uint *)((int)this + 100),local_7c);
      StreamReader_AccumulateStatus(local_8c,bVar2);
      bVar2 = Stream_ReadUInt32(local_84,(uint *)((int)this + 0x60),local_7c);
      StreamReader_AccumulateStatus(local_8c,bVar2);
    }
  }
  else {
    bVar2 = Stream_ReadByte(local_84,&local_8e);
    StreamReader_AccumulateStatus(local_8c,bVar2);
    puVar5 = (undefined4 *)((uint)local_8e * 0x10 + (int)local_24[0]);
    *(undefined4 *)((int)this + 0x48) = *puVar5;
    *(undefined4 *)((int)this + 0x4c) = puVar5[1];
    *(undefined4 *)((int)this + 0x50) = puVar5[2];
    *(undefined4 *)((int)this + 0x54) = puVar5[3];
    bVar2 = Stream_ReadByte(local_84,&local_8e);
    StreamReader_AccumulateStatus(local_8c,bVar2);
    puVar5 = (undefined4 *)((uint)local_8e * 0x10 + (int)local_24[0]);
    *(undefined4 *)((int)this + 0x58) = *puVar5;
    *(undefined4 *)((int)this + 0x5c) = puVar5[1];
    *(undefined4 *)((int)this + 0x60) = puVar5[2];
    *(undefined4 *)((int)this + 100) = puVar5[3];
  }
  if (0x10 < local_74) {
    bVar2 = Stream_ReadByte(local_84,&local_90);
    StreamReader_AccumulateStatus(local_8c,bVar2);
    puVar5 = (undefined4 *)((uint)local_90 * 0x10 + (int)local_24[0]);
    *(undefined4 *)((int)this + 0x1e0) = *puVar5;
    *(undefined4 *)((int)this + 0x1e4) = puVar5[1];
    *(undefined4 *)((int)this + 0x1e8) = puVar5[2];
    *(undefined4 *)((int)this + 0x1ec) = puVar5[3];
    bVar2 = Stream_ReadByte(local_84,&local_90);
    StreamReader_AccumulateStatus(local_8c,bVar2);
    puVar5 = (undefined4 *)((uint)local_90 * 0x10 + (int)local_24[0]);
    *(undefined4 *)((int)this + 0x1f0) = *puVar5;
    *(undefined4 *)((int)this + 500) = puVar5[1];
    *(undefined4 *)((int)this + 0x1f8) = puVar5[2];
    *(undefined4 *)((int)this + 0x1fc) = puVar5[3];
    bVar2 = Stream_ReadByte(local_84,&local_90);
    StreamReader_AccumulateStatus(local_8c,bVar2);
    puVar5 = (undefined4 *)((uint)local_90 * 0x10 + (int)local_24[0]);
    *(undefined4 *)((int)this + 0x200) = *puVar5;
    *(undefined4 *)((int)this + 0x204) = puVar5[1];
    *(undefined4 *)((int)this + 0x208) = puVar5[2];
    *(undefined4 *)((int)this + 0x20c) = puVar5[3];
    bVar2 = Stream_ReadByte(local_84,&local_90);
    StreamReader_AccumulateStatus(local_8c,bVar2);
    puVar5 = (undefined4 *)((uint)local_90 * 0x10 + (int)local_24[0]);
    *(undefined4 *)((int)this + 0x210) = *puVar5;
    *(undefined4 *)((int)this + 0x214) = puVar5[1];
    *(undefined4 *)((int)this + 0x218) = puVar5[2];
    *(undefined4 *)((int)this + 0x21c) = puVar5[3];
  }
  bVar2 = Stream_ReadUInt32(local_84,(uint *)((int)this + 0x68),local_7c);
  StreamReader_AccumulateStatus(local_8c,bVar2);
  local_10 = (LPCWSTR)0x0;
  iStack_c = 0;
  uStack_8 = 0;
  pcStack_4 = "CAS/CASPartDataResource/KeyList";
  bStack_67 = 0;
  if (5 < local_74) {
    bVar2 = Stream_ReadByte(local_84,&bStack_67);
    StreamReader_AccumulateStatus(local_8c,bVar2);
    local_4c = (LPCWSTR)0x0;
    puStack_48 = (undefined1 *)0x0;
    puStack_44 = (undefined2 *)0x0;
    pcStack_40 = (char *)0x0;
    FUN_007998a0(&local_10,(uint)bStack_67);
    pWVar10 = local_10;
    uVar13 = 0;
    if (bStack_67 != 0) {
      do {
        if (local_74 < 0xb) {
          bVar2 = Stream_ReadUInt32(local_84,(uint *)&puStack_44,local_7c);
          StreamReader_AccumulateStatus(local_8c,bVar2);
          bVar2 = Stream_ReadUInt32(local_84,(uint *)&pcStack_40,local_7c);
          StreamReader_AccumulateStatus(local_8c,bVar2);
          bVar2 = Stream_ReadUInt64(local_84,(ulonglong *)&local_4c,local_7c);
          StreamReader_AccumulateStatus(local_8c,bVar2);
        }
        else {
          bVar2 = Stream_ReadByte(local_84,&bStack_8f);
          StreamReader_AccumulateStatus(local_8c,bVar2);
          puVar5 = (undefined4 *)((uint)bStack_8f * 0x10 + (int)local_24[0]);
          local_4c = (LPCWSTR)*puVar5;
          puStack_48 = (undefined1 *)puVar5[1];
          puStack_44 = (undefined2 *)puVar5[2];
          pcStack_40 = (char *)puVar5[3];
        }
        pWVar6 = pWVar10 + uVar13 * 8;
        *(LPCWSTR *)pWVar6 = local_4c;
        *(undefined1 **)(pWVar6 + 2) = puStack_48;
        *(undefined2 **)(pWVar6 + 4) = puStack_44;
        bVar16 = (char)uVar13 + 1;
        uVar13 = (uint)bVar16;
        *(char **)(pWVar6 + 6) = pcStack_40;
      } while (bVar16 < bStack_67);
    }
  }
  bVar2 = Stream_ReadByte(local_84,&bStack_65);
  StreamReader_AccumulateStatus(local_8c,bVar2);
  local_64 = (LPCWSTR)((int)this + 0x158);
  FUN_005b2d30(local_64,(uint)bStack_65);
  bStack_66 = 0;
  if (bStack_65 != 0) {
    do {
      outByte = (byte *)(*(int *)local_64 + (uint)bStack_66 * 0x18);
      bVar2 = Stream_ReadByte(local_84,outByte);
      StreamReader_AccumulateStatus(local_8c,bVar2);
      bVar2 = Stream_ReadUInt32(local_84,&uStack_50,local_7c);
      StreamReader_AccumulateStatus(local_8c,bVar2);
      *(uint *)(outByte + 4) = uStack_50;
      bVar2 = Stream_ReadByte(local_84,&local_8e);
      StreamReader_AccumulateStatus(local_8c,bVar2);
      FUN_005b23b0(outByte + 8,(uint)local_8e);
      uVar13 = 0;
      bStack_8f = 0;
      if (local_8e != 0) {
        do {
          puVar1 = (uint *)(*(int *)(outByte + 8) + uVar13 * 0x1c);
          bVar2 = Stream_ReadUInt32(local_84,&uStack_50,local_7c);
          StreamReader_AccumulateStatus(local_8c,bVar2);
          *puVar1 = uStack_50;
          bVar2 = Stream_ReadUInt32(local_84,&uStack_50,local_7c);
          StreamReader_AccumulateStatus(local_8c,bVar2);
          puVar1[1] = uStack_50;
          bVar2 = Stream_ReadUInt32(local_84,&uStack_50,local_7c);
          StreamReader_AccumulateStatus(local_8c,bVar2);
          puVar1[2] = uStack_50;
          bVar16 = (byte)uVar13;
          if (local_74 < 6) {
            bVar2 = Stream_ReadByte(local_84,&local_90);
            StreamReader_AccumulateStatus(local_8c,bVar2);
            puVar5 = (undefined4 *)puVar1[4];
            uVar13 = (uint)local_90;
            uVar15 = (int)((int)puVar5 - puVar1[3]) >> 4;
            if (uVar15 < uVar13) {
              pWStack_34 = (LPCWSTR)0x0;
              puStack_30 = (undefined1 *)0x0;
              puStack_2c = (undefined2 *)0x0;
              pcStack_28 = (char *)0x0;
              FUN_007996f0(puVar1 + 3,puVar5,uVar13 - uVar15,&pWStack_34);
            }
            else {
              puVar1[4] = puVar1[4] +
                          ((int)((int)puVar5 - (uVar13 * 0x10 + puVar1[3])) >> 4) * -0x10;
            }
            bVar16 = 0;
            if (local_90 != 0) {
              do {
                puVar17 = (ulonglong *)((uint)bVar16 * 0x10 + puVar1[3]);
                bVar2 = Stream_ReadUInt64(local_84,puVar17,local_7c);
                StreamReader_AccumulateStatus(local_8c,bVar2);
                bVar2 = Stream_ReadUInt32(local_84,(uint *)((int)puVar17 + 0xc),local_7c);
                StreamReader_AccumulateStatus(local_8c,bVar2);
                bVar2 = Stream_ReadUInt32(local_84,(uint *)(puVar17 + 1),local_7c);
                StreamReader_AccumulateStatus(local_8c,bVar2);
                bVar16 = bVar16 + 1;
              } while (bVar16 < local_90);
            }
            iStack_3c = iStack_3c + (uint)local_90 * 0x10;
            bVar16 = bStack_8f;
          }
          bStack_8f = bVar16 + 1;
          uVar13 = (uint)bStack_8f;
        } while (bStack_8f < local_8e);
      }
      iStack_3c = iStack_3c + (uint)local_8e * 0x1c;
      bStack_66 = bStack_66 + 1;
    } while (bStack_66 < bStack_65);
  }
  pvVar18 = local_38;
  piVar8 = *(int **)((int)local_38 + 0x15c);
  piVar4 = *(int **)local_64;
  if (piVar4 != piVar8) {
    iVar14 = 0;
    iVar19 = ((int)piVar8 - (int)piVar4) / 0x18;
    for (iVar7 = iVar19; iVar7 != 0; iVar7 = iVar7 >> 1) {
      iVar14 = iVar14 + 1;
    }
    FUN_005b2c30(piVar4,(undefined1 *)piVar8,iVar14 * 2 + -2,&LAB_005af870);
    if (iVar19 < 0x1d) {
      FUN_005b1f50((undefined1 *)piVar4,(undefined1 *)piVar8,&LAB_005af870);
    }
    else {
      FUN_005b1f50((undefined1 *)piVar4,(undefined1 *)(piVar4 + 0xa8),&LAB_005af870);
      FUN_005b20f0(piVar4 + 0xa8,piVar8,&LAB_005af870);
    }
  }
  pWVar10 = local_10;
  piVar8 = (int *)(iStack_c - (int)local_10 >> 4);
  LOCK();
  *(int **)((int)pvVar18 + 0x26c) = piVar8;
  UNLOCK();
  FUN_005b1a40((void *)((int)pvVar18 + 0x254),piVar8);
  piVar4 = (int *)0x0;
  if (piVar8 != (int *)0x0) {
    local_6c = pWVar10;
    do {
      if ((DAT_011d4c84 == (int *)0x0) ||
         (cVar3 = (**(code **)(*DAT_011d4c84 + 0x34))
                            (local_6c,0xb7b8baaf,*(int *)((int)pvVar18 + 0x254) + (int)piVar4 * 4,
                             (int)pvVar18 + 0x264,0,ResourceCallback_InvokeVirtual04,3,1),
         cVar3 == '\0')) {
        LOCK();
        *(int *)((int)pvVar18 + 0x26c) = *(int *)((int)pvVar18 + 0x26c) + -1;
        UNLOCK();
      }
      local_6c = local_6c + 8;
      piVar4 = (int *)((int)piVar4 + 1);
    } while (piVar4 < piVar8);
  }
  uStack_60 = 0;
  uStack_5c = 0;
  uStack_58 = 0;
  uStack_54 = 0;
  local_6c = (LPCWSTR)0x0;
  iVar19 = 0;
  bVar2 = Stream_ReadByte(local_84,&bStack_8d);
  StreamReader_AccumulateStatus(local_8c,bVar2);
  bVar16 = 0;
  if (bStack_8d != 0) {
    puVar5 = (undefined4 *)((int)pvVar18 + 0x70);
    do {
      if (local_74 < 0xb) {
        bVar2 = Stream_ReadUInt64(local_84,(ulonglong *)&uStack_60,local_7c);
        StreamReader_AccumulateStatus(local_8c,bVar2);
        bVar2 = Stream_ReadUInt32(local_84,&uStack_54,local_7c);
        StreamReader_AccumulateStatus(local_8c,bVar2);
        bVar2 = Stream_ReadUInt32(local_84,&uStack_58,local_7c);
        StreamReader_AccumulateStatus(local_8c,bVar2);
      }
      else {
        bVar2 = Stream_ReadByte(local_84,&bStack_8f);
        StreamReader_AccumulateStatus(local_8c,bVar2);
        puVar9 = (undefined4 *)((uint)bStack_8f * 0x10 + (int)local_24[0]);
        uStack_60 = *puVar9;
        uStack_5c = puVar9[1];
        uStack_58 = puVar9[2];
        uStack_54 = puVar9[3];
      }
      if (bVar16 == 0) {
        FUN_005b0910((int)pvVar18);
        *puVar5 = uStack_60;
        puVar5[1] = uStack_5c;
        puVar5[2] = uStack_58;
        puVar5[3] = uStack_54;
        iVar19 = iVar19 + 1;
        puVar5 = puVar5 + 4;
      }
      bVar16 = bVar16 + 1;
    } while (bVar16 < bStack_8d);
  }
  bVar2 = Stream_ReadByte(local_84,&bStack_8d);
  StreamReader_AccumulateStatus(local_8c,bVar2);
  bVar16 = 0;
  if (bStack_8d != 0) {
    puVar5 = (undefined4 *)((int)pvVar18 + 0xc0);
    do {
      if (local_74 < 0xb) {
        bVar2 = Stream_ReadUInt64(local_84,(ulonglong *)&uStack_60,local_7c);
        StreamReader_AccumulateStatus(local_8c,bVar2);
        bVar2 = Stream_ReadUInt32(local_84,&uStack_54,local_7c);
        StreamReader_AccumulateStatus(local_8c,bVar2);
        bVar2 = Stream_ReadUInt32(local_84,&uStack_58,local_7c);
        StreamReader_AccumulateStatus(local_8c,bVar2);
      }
      else {
        bVar2 = Stream_ReadByte(local_84,&bStack_8f);
        StreamReader_AccumulateStatus(local_8c,bVar2);
        puVar9 = (undefined4 *)((uint)bStack_8f * 0x10 + (int)local_24[0]);
        uStack_60 = *puVar9;
        uStack_5c = puVar9[1];
        uStack_58 = puVar9[2];
        uStack_54 = puVar9[3];
      }
      if (bVar16 == 0) {
        FUN_005b0910((int)pvVar18);
        local_6c = (LPCWSTR)((int)local_6c + 1);
        *puVar5 = uStack_60;
        puVar5[1] = uStack_5c;
        puVar5[2] = uStack_58;
        puVar5[3] = uStack_54;
        puVar5 = puVar5 + 4;
      }
      bVar16 = bVar16 + 1;
    } while (bVar16 < bStack_8d);
  }
  if (4 < local_74) {
    bVar2 = Stream_ReadByte(local_84,&bStack_8d);
    StreamReader_AccumulateStatus(local_8c,bVar2);
    bVar16 = 0;
    if (bStack_8d != 0) {
      puVar5 = (undefined4 *)((iVar19 + 7) * 0x10 + (int)pvVar18);
      do {
        if (local_74 < 0xb) {
          bVar2 = Stream_ReadUInt64(local_84,(ulonglong *)&uStack_60,local_7c);
          StreamReader_AccumulateStatus(local_8c,bVar2);
          bVar2 = Stream_ReadUInt32(local_84,&uStack_54,local_7c);
          StreamReader_AccumulateStatus(local_8c,bVar2);
          bVar2 = Stream_ReadUInt32(local_84,&uStack_58,local_7c);
          StreamReader_AccumulateStatus(local_8c,bVar2);
        }
        else {
          bVar2 = Stream_ReadByte(local_84,&bStack_8f);
          StreamReader_AccumulateStatus(local_8c,bVar2);
          puVar9 = (undefined4 *)((uint)bStack_8f * 0x10 + (int)local_24[0]);
          uStack_60 = *puVar9;
          uStack_5c = puVar9[1];
          uStack_58 = puVar9[2];
          uStack_54 = puVar9[3];
        }
        FUN_005b0910((int)pvVar18);
        *puVar5 = uStack_60;
        puVar5[1] = uStack_5c;
        puVar5[2] = uStack_58;
        puVar5[3] = uStack_54;
        bVar16 = bVar16 + 1;
        puVar5 = puVar5 + 4;
      } while (bVar16 < bStack_8d);
    }
    bVar2 = Stream_ReadByte(local_84,&bStack_8d);
    StreamReader_AccumulateStatus(local_8c,bVar2);
    bVar16 = 0;
    if (bStack_8d != 0) {
      puVar5 = (undefined4 *)((int)(local_6c + 6) * 0x10 + (int)pvVar18);
      do {
        if (local_74 < 0xb) {
          bVar2 = Stream_ReadUInt64(local_84,(ulonglong *)&uStack_60,local_7c);
          StreamReader_AccumulateStatus(local_8c,bVar2);
          bVar2 = Stream_ReadUInt32(local_84,&uStack_54,local_7c);
          StreamReader_AccumulateStatus(local_8c,bVar2);
          bVar2 = Stream_ReadUInt32(local_84,&uStack_58,local_7c);
          StreamReader_AccumulateStatus(local_8c,bVar2);
        }
        else {
          bVar2 = Stream_ReadByte(local_84,&bStack_8f);
          StreamReader_AccumulateStatus(local_8c,bVar2);
          puVar9 = (undefined4 *)((uint)bStack_8f * 0x10 + (int)local_24[0]);
          uStack_60 = *puVar9;
          uStack_5c = puVar9[1];
          uStack_58 = puVar9[2];
          uStack_54 = puVar9[3];
        }
        FUN_005b0910((int)pvVar18);
        *puVar5 = uStack_60;
        puVar5[1] = uStack_5c;
        puVar5[2] = uStack_58;
        puVar5[3] = uStack_54;
        bVar16 = bVar16 + 1;
        puVar5 = puVar5 + 4;
      } while (bVar16 < bStack_8d);
    }
  }
  bStack_6d = 0;
  if (local_74 < 6) {
    bStack_6d = 5;
  }
  else {
    bVar2 = Stream_ReadByte(local_84,&bStack_6d);
    StreamReader_AccumulateStatus(local_8c,bVar2);
  }
  if ((3 < local_74) && (bVar16 = 0, bStack_6d != 0)) {
    do {
      if (local_74 < 0xb) {
        uVar13 = (uint)bVar16;
        bVar2 = Stream_ReadUInt64(local_84,(ulonglong *)((int)pvVar18 + uVar13 * 0x10 + 0x168),
                                  local_7c);
        StreamReader_AccumulateStatus(local_8c,bVar2);
        bVar2 = Stream_ReadUInt32(local_84,(uint *)((int)pvVar18 + uVar13 * 0x10 + 0x174),local_7c);
        StreamReader_AccumulateStatus(local_8c,bVar2);
        bVar2 = Stream_ReadUInt32(local_84,(uint *)((uVar13 + 0x17) * 0x10 + (int)pvVar18),local_7c)
        ;
        StreamReader_AccumulateStatus(local_8c,bVar2);
      }
      else {
        bVar2 = Stream_ReadByte(local_84,&bStack_8f);
        StreamReader_AccumulateStatus(local_8c,bVar2);
        puVar9 = (undefined4 *)((uint)bStack_8f * 0x10 + (int)local_24[0]);
        puVar5 = (undefined4 *)((uint)bVar16 * 0x10 + 0x168 + (int)pvVar18);
        *puVar5 = *puVar9;
        puVar5[1] = puVar9[1];
        puVar5[2] = puVar9[2];
        puVar5[3] = puVar9[3];
      }
      bVar16 = bVar16 + 1;
    } while (bVar16 < bStack_6d);
  }
  if (local_74 - 7 < 9) {
    pWStack_34 = (LPCWSTR)&DAT_011c8e54;
    puStack_30 = &DAT_011c8e54;
    pcStack_28 = "CAS/CASPartDataResource/Preset";
    puStack_2c = &DAT_011c8e56;
    local_6c = (LPCWSTR)0x0;
    bVar2 = Stream_ReadUInt32(local_84,(uint *)&local_6c,local_7c);
    StreamReader_AccumulateStatus(local_8c,bVar2);
    pvVar18 = local_38;
    piVar8 = *(int **)((int)local_38 + 0x234);
    piVar4 = (int *)((int)local_38 + 0x230);
    pWVar10 = (LPCWSTR)((int)piVar8 - *(int *)((int)local_38 + 0x230) >> 3);
    if (pWVar10 < local_6c) {
      local_4c = (LPCWSTR)0x0;
      puStack_48 = (undefined1 *)0x0;
      FUN_005b0a00(piVar4,piVar8,(int *)((int)local_6c - (int)pWVar10),(int *)&local_4c);
    }
    else {
      local_4c = (LPCWSTR)(*(int *)((int)local_38 + 0x230) + (int)local_6c * 8);
      piVar11 = FUN_00505980(piVar8,piVar8,(int *)local_4c);
      piVar12 = *(int **)((int)pvVar18 + 0x234);
      for (; piVar11 < piVar12; piVar11 = piVar11 + 2) {
        if ((int *)*piVar11 != (int *)0x0) {
          (**(code **)(*(int *)*piVar11 + 4))();
        }
      }
      piVar12 = (int *)((int)pvVar18 + 0x234);
      *piVar12 = *piVar12 + ((int)piVar8 - (int)local_4c >> 3) * -8;
    }
    local_4c = (LPCWSTR)0x0;
    if (local_6c != (LPCWSTR)0x0) {
      do {
        piVar8 = (int *)(*piVar4 + (int)local_4c * 8);
        FUN_007d7aa0(local_8c,(int *)&pWStack_34);
        puVar5 = (undefined4 *)FUN_004e4500(0x60,"CAS/CASPartDataResource/Preset",0);
        if (puVar5 == (undefined4 *)0x0) {
          piVar12 = (int *)0x0;
        }
        else {
          piVar12 = (int *)DesignPreset_InitializeEmpty(puVar5);
        }
        piVar11 = (int *)*piVar8;
        if (piVar12 != piVar11) {
          if (piVar12 != (int *)0x0) {
            (**(code **)*piVar12)();
          }
          *piVar8 = (int)piVar12;
          if (piVar11 != (int *)0x0) {
            (**(code **)(*piVar11 + 4))();
          }
        }
        if ((void *)*piVar8 == (void *)0x0) {
          pWVar10 = local_10;
          if ((2 < (int)((int)puStack_2c - (int)pWStack_34 & 0xfffffffeU)) &&
             (pWStack_34 != (LPCWSTR)0x0)) {
            Memory_FreeIfNonNull(pWStack_34);
            pWVar10 = local_10;
          }
LAB_005b43b4:
          if (pWVar10 != (LPCWSTR)0x0) {
            Memory_FreeIfNonNull(pWVar10);
          }
          goto LAB_005b43c7;
        }
        FUN_005c0060((void *)*piVar8,pWStack_34);
        iStack_3c = iStack_3c + *(int *)(*piVar8 + 0x20);
        if (0xd < local_74) {
          bVar2 = Stream_ReadUInt32(local_84,(uint *)(piVar8 + 1),local_7c);
          StreamReader_AccumulateStatus(local_8c,bVar2);
          uVar13 = piVar8[1];
          if (*(uint *)((int)local_38 + 0x250) < uVar13) {
            *(uint *)((int)local_38 + 0x250) = uVar13;
          }
        }
        local_4c = (LPCWSTR)((int)local_4c + 1);
      } while (local_4c < local_6c);
    }
    if ((2 < (int)((int)puStack_2c - (int)pWStack_34 & 0xfffffffeU)) && (pWStack_34 != (LPCWSTR)0x0)
       ) {
      Memory_FreeIfNonNull(pWStack_34);
    }
  }
  pvVar18 = local_38;
  if (9 < local_74) {
    pcStack_28 = "CAS/CASPartDataResource/SoundMaterialStr";
    pWStack_34 = (LPCWSTR)&DAT_011c8e54;
    puStack_30 = &DAT_011c8e54;
    puStack_2c = &DAT_011c8e56;
    FUN_007d7aa0(local_8c,(int *)&pWStack_34);
    puVar5 = FUN_004f3df0(&local_4c,&pWStack_34);
    pvVar18 = local_38;
    if (puVar5 != (undefined4 *)((int)local_38 + 0x240)) {
      FUN_00405910((undefined4 *)((int)local_38 + 0x240),(void *)*puVar5,(undefined1 *)puVar5[1]);
    }
    if ((1 < (int)puStack_44 - (int)local_4c) && (local_4c != (LPCWSTR)0x0)) {
      Memory_FreeIfNonNull(local_4c);
    }
    if ((2 < (int)((int)puStack_2c - (int)pWStack_34 & 0xfffffffeU)) && (pWStack_34 != (LPCWSTR)0x0)
       ) {
      Memory_FreeIfNonNull(pWStack_34);
    }
  }
  if (local_14 != (char *)0x0) {
    StreamContext_SeekWithSignedAbsoluteGuard(local_8c,(int)local_14,0);
  }
  FUN_00731be0(pvVar18,iStack_3c +
                       (((*(int *)(local_64 + 2) - *(int *)local_64) / 0x18 + 0x1a) * 3 +
                       (*(int *)((int)pvVar18 + 0x234) - *(int *)((int)pvVar18 + 0x230) >> 3)) * 8);
  if (param_2 != '\0') {
    Job_Submit(*(void **)((int)pvVar18 + 0x1cc));
  }
  if (local_10 != (LPCWSTR)0x0) {
    Memory_FreeIfNonNull(local_10);
  }
  if (local_24[0] != (void *)0x0) {
    Memory_FreeIfNonNull(local_24[0]);
  }
  StreamReader_ReleaseAuxiliary(local_8c);
  return local_78;
}

