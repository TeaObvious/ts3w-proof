/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 world native-state and manager load. Physical owner ECX; stack4 resource stream
   pointer, stack8 raw32 mode word and stackC raw32 context word; RET0C and low AL status. Existing
   inferred full EAX UInt32 result is not a meaningful full-width contract. Constructs IO contexts
   and native reader, performs manager prepass and load-pump callbacks, then owner byte44 chooses
   resource loading versus null-context initialization. In the resource branch current CF84EC98
   group0 instance1 is opened first; only false open tries legacy CF84EC97. Current framing requires
   outer UInt32 one then context length; legacy starts with length. Seeks past contexts,
   calls7D4AE0, and on success rewinds to load contexts through935940 before manager
   loads/removal/global completion and cleanup. Child/provider open-failure meanings, complete
   manager effects and indirect callbacks are not inferred. Owned434 instructions1477 bytes retain
   two exact ranges; no bytes, Listing, children or existing neighboring annotations change. */

byte __thiscall
WorldManager_ReadSavedNativeState(void *this,void *stream,uint modeWord,undefined4 contextWord)

{
  uint *puVar1;
  int *piVar2;
  uint *puVar3;
  byte bVar4;
  bool bVar5;
  ushort *puVar6;
  int iVar7;
  uint uVar8;
  void *pvVar9;
  uint *puVar10;
  undefined4 *puVar11;
  undefined4 *puVar12;
  uint uVar13;
  char cVar14;
  uint *puStack_130;
  undefined1 uStack_12c;
  void *local_128;
  undefined1 auStack_124 [8];
  void *pvStack_11c;
  uint uStack_114;
  char cStack_110;
  void *pvStack_10c;
  undefined4 *puStack_108;
  undefined4 *puStack_104;
  undefined4 *puStack_100;
  char *pcStack_fc;
  undefined8 uStack_f8;
  uint *puStack_f0;
  uint *puStack_ec;
  undefined4 uStack_e8;
  char *pcStack_e4;
  void *pvStack_e0;
  uint uStack_dc;
  uint *puStack_d8;
  undefined4 uStack_d4;
  undefined1 uStack_d0;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined1 auStack_b8 [4];
  undefined1 local_b4 [20];
  undefined4 uStack_a0;
  undefined4 auStack_9c [10];
  undefined1 auStack_74 [4];
  undefined4 auStack_70 [18];
  undefined1 auStack_28 [36];
  
  if (stream == (void *)0x0) {
    return 0;
  }
  local_128 = this;
  FUN_007d7920(local_b4,stream,modeWord);
  puStack_130 = (uint *)(**(code **)(*(int *)stream + 0x28))();
  uStack_12c = 1;
  bVar4 = WorldManager_ReadManagerList(this,(int)stream,modeWord);
  if (bVar4 == 0) goto LAB_00c67830;
  FUN_009358e0(auStack_70);
  FUN_007d3fa0(auStack_9c);
  FUN_00c6dd50(&pvStack_e0,auStack_70,auStack_9c);
  uStack_d4 = contextWord;
  pvStack_10c = (void *)(*(int *)((int)this + 0xa0) - *(int *)((int)this + 0x9c) >> 2);
  pvStack_e0 = stream;
  puStack_d8 = puStack_130;
  uStack_dc = modeWord;
  uStack_d0 = 0;
  puStack_108 = (undefined4 *)0x0;
  puStack_104 = (undefined4 *)0x0;
  puStack_100 = (undefined4 *)0x0;
  pcStack_fc = "World/WorldManager/MissingObjectManagers";
  puStack_f0 = (uint *)0x0;
  puStack_ec = (uint *)0x0;
  uStack_e8 = 0;
  pcStack_e4 = "World/WorldManager/StreamAdaptors";
  FUN_00c66530(&puStack_f0,(uint)pvStack_10c);
  if (*(char *)((int)this + 400) == '\0') {
    if (*(int **)((int)this + 0x80) != (int *)0x0) {
      cVar14 = *(char *)((int)this + 0x44);
      puVar6 = (ushort *)(**(code **)(**(int **)((int)this + 0x80) + 0x28))();
      uStack_12c = FUN_00c66d00(this,puVar6,cVar14);
      if ((bool)uStack_12c) {
        if (*(char *)((int)this + 0x44) == '\0') {
          pvStack_e0 = (void *)0x0;
          uStack_d0 = 1;
        }
        goto LAB_00c67872;
      }
    }
    FUN_00c62d90((uint *)&puStack_f0);
  }
  else {
LAB_00c67872:
    pvVar9 = (void *)0x0;
    puVar12 = (undefined4 *)0x0;
    puVar10 = puStack_f0;
    if (pvStack_10c != (void *)0x0) {
      do {
        puVar1 = *(uint **)(*(int *)((int)this + 0x9c) + (int)pvVar9 * 4);
        puStack_130 = puVar1;
        if (puVar1 != (uint *)0x0) {
          iVar7 = (**(code **)(*puVar1 + 0x40))();
          if ((iVar7 == 2) &&
             (bVar5 = FUN_00aa89e0(puVar1,(int *)&pvStack_e0,(int *)puVar10), !bVar5)) {
            Int32Vector_AppendValue(&puStack_108,&puStack_130);
          }
          if (PTR_011edbc8 != (WorldLoadPumpCallback *)0x0) {
            (*PTR_011edbc8)(DAT_011edbcc);
          }
        }
        pvVar9 = (void *)((int)pvVar9 + 1);
        this = local_128;
        puVar12 = puStack_104;
        puVar10 = puVar10 + 6;
      } while (pvVar9 < pvStack_10c);
    }
    if (*(char *)((int)this + 0x44) == '\0') {
      FUN_00935940(auStack_70,(void *)0x0);
LAB_00c67ad2:
      pvVar9 = (void *)0x0;
      if (pvStack_10c != (void *)0x0) {
        puStack_130 = puStack_f0;
        do {
          piVar2 = *(int **)(*(int *)((int)this + 0x9c) + (int)pvVar9 * 4);
          uStack_f8._0_4_ = piVar2;
          puVar11 = puStack_108;
          if (piVar2 != (int *)0x0) {
            for (; puVar11 != puVar12; puVar11 = puVar11 + 1) {
              if ((int *)*puVar11 == piVar2) {
                if (puVar11 != puVar12) goto LAB_00c67b94;
                break;
              }
            }
            iVar7 = (**(code **)(*piVar2 + 0x40))();
            if (iVar7 == 2) {
              bVar4 = FUN_00aa7640(piVar2,(int)&pvStack_e0,puStack_130);
            }
            else {
              bVar4 = (**(code **)(*piVar2 + 0x18))(&pvStack_e0);
            }
            puVar11 = puVar12;
            if (bVar4 == 0) {
              if (puVar12 < puStack_100) {
                puStack_104 = puVar12 + 1;
                puVar11 = puStack_104;
                if (puVar12 != (undefined4 *)0x0) {
                  *puVar12 = piVar2;
                }
              }
              else {
                FUN_00982420(&puStack_108,puVar12,(undefined4 *)&uStack_f8);
                puVar11 = puStack_104;
              }
            }
            puVar12 = puVar11;
            if (PTR_011edbc8 != (WorldLoadPumpCallback *)0x0) {
              (*PTR_011edbc8)(DAT_011edbcc);
            }
          }
LAB_00c67b94:
          puStack_130 = puStack_130 + 6;
          pvVar9 = (void *)((int)pvVar9 + 1);
          this = local_128;
        } while (pvVar9 < pvStack_10c);
      }
      uVar8 = 0;
      uVar13 = (int)puVar12 - (int)puStack_108 >> 2;
      if (uVar13 != 0) {
        do {
          FUN_00c65800(local_128,puStack_108[uVar8],1);
          uVar8 = uVar8 + 1;
        } while (uVar8 < uVar13);
      }
      puVar1 = puStack_ec;
      pvVar9 = local_128;
      piVar2 = *(int **)((int)local_128 + 0xb0);
      puVar10 = puStack_f0;
      if (piVar2 != (int *)0x0) {
        if (piVar2[0x12] == 0 && piVar2[0x13] == 0) {
          uStack_f8 = FUN_007cfe00('\0');
          (**(code **)(**(int **)((int)pvVar9 + 0xb0) + 0x60))(&uStack_f8);
          bVar4 = (**(code **)(**(int **)((int)pvVar9 + 0xb0) + 0x10))();
        }
        else {
          bVar4 = (**(code **)(*piVar2 + 0x18))(&pvStack_e0);
        }
        puStack_130 = (uint *)CONCAT31(puStack_130._1_3_,(byte)puStack_130 & bVar4);
        FUN_009357a0(auStack_74,puStack_130);
        puVar3 = puStack_f0;
        puVar1 = uStack_f8._4_4_;
        for (puVar10 = uStack_f8._4_4_; puVar10 < puVar3; puVar10 = puVar10 + 6) {
          StreamReader_ReleaseAuxiliary(puVar10);
        }
        if (puVar1 != (uint *)0x0) {
          Memory_FreeIfNonNull(puVar1);
        }
        if (pvStack_10c != (void *)0x0) {
          Memory_FreeIfNonNull(pvStack_10c);
        }
        FUN_007d3fd0(&uStack_a0);
        thunk_FUN_00935710((int)auStack_74);
        StreamReader_ReleaseAuxiliary(auStack_b8);
        return (byte)puStack_130;
      }
      for (; puVar10 < puVar1; puVar10 = puVar10 + 6) {
        StreamReader_ReleaseAuxiliary(puVar10);
      }
      if (puStack_f0 != (uint *)0x0) {
        Memory_FreeIfNonNull(puStack_f0);
      }
    }
    else {
      FUN_007d7920(auStack_124,stream,modeWord);
      uStack_c8 = 1;
      uStack_c4 = 0;
      uStack_c0 = 0xcf84ec98;
      uStack_bc = 0;
      bVar5 = ResourceStreamContext_OpenRead(auStack_124,&uStack_c8,0);
      if (!bVar5) {
        uStack_c0 = 0xcf84ec97;
        bVar5 = ResourceStreamContext_OpenRead(auStack_124,&uStack_c8,0);
        if (bVar5) {
          bVar5 = Stream_ReadUInt32(pvStack_11c,(uint *)&uStack_f8,uStack_114);
          StreamReader_AccumulateStatus(auStack_124,bVar5);
          iVar7 = StreamContext_GetPositionAndMarkNegative(auStack_124);
          iVar7 = iVar7 + (int)(int *)uStack_f8;
          goto LAB_00c679a3;
        }
LAB_00c67aad:
        if (cStack_110 == '\0') {
          uStack_12c = 0;
        }
        StreamReader_ReleaseAuxiliary(auStack_124);
        goto LAB_00c67ad2;
      }
      bVar5 = Stream_ReadUInt32(pvStack_11c,(uint *)&puStack_130,uStack_114);
      StreamReader_AccumulateStatus(auStack_124,bVar5);
      if ((cStack_110 == '\0') || (puStack_130 != (uint *)0x1)) {
        StreamReader_AccumulateStatus(auStack_124,0);
        cStack_110 = '\0';
        StreamReader_ReleaseAuxiliary(auStack_124);
        FUN_00c62d90((uint *)&puStack_f0);
        if (puStack_108 != (undefined4 *)0x0) {
          Memory_FreeIfNonNull(puStack_108);
        }
        goto LAB_00c67818;
      }
      StreamReader_ReadUInt32Into(auStack_124,(uint *)&uStack_f8);
      iVar7 = StreamContext_GetPositionAndMarkNegative(auStack_124);
      StreamContext_SeekWithSignedAbsoluteGuard(auStack_124,iVar7 + (int)(int *)uStack_f8,0);
LAB_00c679a3:
      ElapsedClock_ConstructAndOptionallyStart(auStack_28,4,'\x01');
      uVar8 = NativeObjectTable_ReadAndMaterialize(auStack_9c,auStack_124);
      if ((char)uVar8 != '\0') {
        StreamContext_SeekWithSignedAbsoluteGuard(auStack_124,iVar7,0);
        FUN_00935940(auStack_70,auStack_124);
        goto LAB_00c67aad;
      }
      StreamReader_AccumulateStatus(auStack_124,0);
      cStack_110 = '\0';
      StreamReader_ReleaseAuxiliary(auStack_124);
      FUN_00c62d90((uint *)&puStack_f0);
    }
    if (puStack_108 != (undefined4 *)0x0) {
      Memory_FreeIfNonNull(puStack_108);
    }
  }
LAB_00c67818:
  FUN_007d3fd0(auStack_9c);
  thunk_FUN_00935710((int)auStack_70);
LAB_00c67830:
  StreamReader_ReleaseAuxiliary(local_b4);
  return 0;
}

