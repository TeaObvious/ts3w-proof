/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 SACS migration contract): ECX walker; RET0C consumes three physical words
   despite inferred C. Reads versioned flags, GUID and counts; resolves state hashes using007FD7E0,
   restores requests via00802690 or queue insertion and dirty/scheduler publication. Native has clip
   records and controller/track reconstruction, so current consume/discard/unsupported-clip DTO is
   incomplete. Unknown states can resolve null. Actual saved execution-stack continuation is
   external to this reader; do not equate parsing with gameplay resumption. */

void __thiscall SacsWalker_ReadSavedState(void *this,void *param_1)

{
  uint *puVar1;
  int iVar2;
  bool bVar3;
  undefined4 uVar4;
  uint uVar5;
  int iVar6;
  int *piVar7;
  int *piVar8;
  uint unaff_EBX;
  int iVar9;
  undefined1 uStack00000000;
  byte bVar10;
  byte bStack_34;
  byte bStack_33;
  char cStack_32;
  byte local_31;
  uint local_30 [2];
  uint local_28;
  uint uStack_24;
  int iStack_20;
  uint uStack_1c;
  uint uStack_18;
  int iStack_14;
  int iStack_10;
  uint uStack_c;
  uint uStack_8;
  
  local_28 = 0;
  local_31 = 0;
  local_30[0] = local_30[0] & 0xffff0000;
  bVar3 = Stream_ReadUInt16(*(void **)((int)param_1 + 8),(ushort *)&local_28,
                            *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar3);
  bVar3 = Stream_ReadByte(*(void **)((int)param_1 + 8),&local_31);
  StreamReader_AccumulateStatus(param_1,bVar3);
  bVar3 = Stream_ReadByte(*(void **)((int)param_1 + 8),(byte *)local_30);
  StreamReader_AccumulateStatus(param_1,bVar3);
  FUN_00800300(this,(byte)local_28);
  bVar3 = Stream_ReadUInt64(*(void **)((int)param_1 + 8),(ulonglong *)&iStack_14,
                            *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar3);
  FUN_00582270(*(void **)((int)this + 8),iStack_14,iStack_10);
  bVar10 = (byte)(unaff_EBX >> 0x18);
  if (bVar10 != 0) {
    bVar3 = Stream_ReadByte(*(void **)((int)param_1 + 8),&bStack_33);
    StreamReader_AccumulateStatus(param_1,bVar3);
    bVar3 = Stream_ReadByte(*(void **)((int)param_1 + 8),&uStack00000000);
    StreamReader_AccumulateStatus(param_1,bVar3);
    bVar3 = Stream_ReadByte(*(void **)((int)param_1 + 8),&uStack00000000);
    StreamReader_AccumulateStatus(param_1,bVar3);
    bVar3 = Stream_ReadByte(*(void **)((int)param_1 + 8),&uStack00000000);
    StreamReader_AccumulateStatus(param_1,bVar3);
  }
  iVar9 = 1;
  if (1 < bVar10) {
    do {
      bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&uStack_18,
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar3);
      iVar9 = iVar9 + 1;
    } while (iVar9 < (int)(unaff_EBX >> 0x18));
  }
  local_30[0] = 0;
  cStack_32 = '\0';
  local_31 = 0;
  bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),local_30,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar3);
  if (local_30[0] == 0) {
    iVar9 = 0;
  }
  else {
    iVar9 = SACS_FindGraphStateByHash(*(int *)(*(int *)((int)this + 4) + 0xc));
  }
  *(int *)((int)this + 0x10) = iVar9;
  if ((local_30[0] != 0) && (iVar9 == 0)) {
    cStack_32 = '\x01';
  }
  bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),local_30,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar3);
  if (local_30[0] == 0) {
    uVar4 = 0;
  }
  else {
    uVar4 = SACS_FindGraphStateByHash(*(int *)(*(int *)((int)this + 4) + 0xc));
  }
  *(undefined4 *)((int)this + 0x14) = uVar4;
  bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),local_30,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar3);
  if (local_30[0] == 0) {
    uVar4 = 0;
  }
  else {
    uVar4 = SACS_FindGraphStateByHash(*(int *)(*(int *)((int)this + 4) + 0xc));
  }
  *(undefined4 *)((int)this + 0x18) = uVar4;
  bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),local_30,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar3);
  if (local_30[0] == 0) {
    iVar9 = 0;
  }
  else {
    iVar9 = SACS_FindGraphStateByHash(*(int *)(*(int *)((int)this + 4) + 0xc));
  }
  *(int *)((int)this + 0x1c) = iVar9;
  if ((local_30[0] != 0) && (iVar9 == 0)) {
    local_31 = 1;
  }
  bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),local_30,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar3);
  if (local_30[0] == 0) {
    uVar4 = 0;
  }
  else {
    uVar4 = SACS_FindGraphStateByHash(*(int *)(*(int *)((int)this + 4) + 0xc));
  }
  *(undefined4 *)((int)this + 0x28) = uVar4;
  bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&uStack_1c,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar3);
  *(uint *)((int)this + 0x20) = uStack_1c;
  bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),local_30,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar3);
  if (local_30[0] == 0) {
    uVar4 = 0;
  }
  else {
    uVar4 = SACS_FindGraphStateByHash(*(int *)(*(int *)((int)this + 4) + 0xc));
  }
  *(undefined4 *)((int)this + 0x24) = uVar4;
  local_28 = 0;
  bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_28,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar3);
  LOCK();
  *(uint *)((int)this + 0x6c) = local_28;
  UNLOCK();
  iStack_20 = 0;
  if (bStack_34 != 0) {
    do {
      bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),local_30,*(uint *)((int)param_1 + 0x10)
                               );
      StreamReader_AccumulateStatus(param_1,bVar3);
      if (local_30[0] == 0) {
        uVar5 = 0;
      }
      else {
        uVar5 = SACS_FindGraphStateByHash(*(int *)(*(int *)((int)this + 4) + 0xc));
      }
      uStack_24 = 0;
      bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&uStack_24,
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar3);
      uStack_c = uStack_24;
      uStack_8 = uVar5;
      if (*(int *)((int)this + 0x24) == 0) {
        SACS_WalkerInstallDestination_802690(this,uStack_24,uVar5);
      }
      else {
        puVar1 = *(uint **)((int)this + 0x44);
        if (puVar1 + 2 == *(uint **)((int)this + 0x4c)) {
          FUN_007276d0((void *)((int)this + 0x2c),&uStack_c);
        }
        else {
          *(uint **)((int)this + 0x44) = puVar1 + 2;
          if (puVar1 != (uint *)0x0) {
            *puVar1 = uStack_24;
            puVar1[1] = uVar5;
          }
        }
        iVar9 = *(int *)((int)this + 4);
        *(undefined1 *)((int)this + 0xc) = 1;
        *(undefined1 *)(iVar9 + 0x146) = 1;
        if (DAT_011d9d40 != (void *)0x0) {
          SACS_QueueOrRevisitDriver_7FCF80(DAT_011d9d40,iVar9,'\0');
        }
      }
      iStack_20 = iStack_20 + 1;
    } while (iStack_20 < (int)(uint)bStack_34);
  }
  if ((cStack_32 != '\0') && (local_31 != 0)) {
    iVar9 = *(int *)((int)this + 0x18);
    if (iVar9 == 0) {
      iVar9 = *(int *)((int)this + 0x24);
      if (iVar9 == 0) {
        iVar9 = *(int *)((int)this + 0x28);
        if (iVar9 == 0) {
          iVar9 = *(int *)(*(int *)((int)this + 4) + 0xc);
          piVar7 = *(int **)(iVar9 + 0x84);
          iVar6 = *piVar7;
          if (iVar6 == 0) {
            piVar7 = piVar7 + 1;
            iVar6 = *piVar7;
            while (iVar6 == 0) {
              piVar7 = piVar7 + 1;
              iVar6 = *piVar7;
            }
            iVar6 = *piVar7;
          }
          while (iVar6 != *(int *)(*(int *)(iVar9 + 0x84) + *(int *)(iVar9 + 0x88) * 4)) {
            iVar2 = *(int *)(iVar6 + 4);
            if (*(char *)(iVar2 + 0x51) != '\0') {
              if (iVar2 != *(int *)((int)this + 0x1c)) {
                *(int *)((int)this + 0x1c) = iVar2;
                SacsWalker_PropagateDirtyState(this,iVar2 != 0);
              }
              LOCK();
              *(undefined4 *)((int)this + 0x6c) = 0xfffffffe;
              UNLOCK();
              if (*(void **)((int)this + 100) != (void *)0x0) {
                RecordField14_StoreDword(*(void **)((int)this + 100),0);
              }
              FUN_008017a0(*(void **)((int)this + 4),(uint)this);
              goto LAB_00803377;
            }
            iVar6 = *(int *)(iVar6 + 8);
            while (iVar6 == 0) {
              piVar8 = piVar7 + 1;
              piVar7 = piVar7 + 1;
              iVar6 = *piVar8;
            }
          }
        }
        else if (iVar9 != *(int *)((int)this + 0x1c)) {
          *(int *)((int)this + 0x1c) = iVar9;
          SacsWalker_PropagateDirtyState(this,iVar9 != 0);
        }
      }
      else if (iVar9 != *(int *)((int)this + 0x1c)) {
        *(int *)((int)this + 0x1c) = iVar9;
        SacsWalker_PropagateDirtyState(this,iVar9 != 0);
      }
    }
    else if (iVar9 != *(int *)((int)this + 0x1c)) {
      *(int *)((int)this + 0x1c) = iVar9;
LAB_00803377:
      iVar9 = *(int *)((int)this + 4);
      *(undefined1 *)((int)this + 0xc) = 1;
      *(undefined1 *)(iVar9 + 0x146) = 1;
      if (DAT_011d9d40 != (void *)0x0) {
        SACS_QueueOrRevisitDriver_7FCF80(DAT_011d9d40,iVar9,'\0');
      }
    }
  }
  iStack_20 = 0;
  if (bStack_33 != 0) {
    do {
      piVar7 = FUN_0076ae20();
      if (piVar7 == (int *)0x0) {
        piVar7 = (int *)0x0;
      }
      else {
        *piVar7 = (int)&PTR_FUN_0106c91c;
        LOCK();
        piVar7[1] = 0;
        UNLOCK();
        piVar7[2] = 0;
        piVar7[3] = 0;
        piVar7[4] = (int)SACS_BridgeWatchCallback_769320;
        *piVar7 = (int)&PTR_SACS_BridgeWatchDestructor_767290_01007dfc;
        piVar7[6] = 0;
        piVar7[7] = 0;
        piVar7[8] = 0;
      }
      FUN_00769220(piVar7,param_1,param_1);
      if (piVar7 != (int *)0x0) {
        (**(code **)(*piVar7 + 4))();
        piVar8 = (int *)FUN_004e4500(0xc,*(undefined4 *)((int)this + 0x60),0);
        if (piVar8 + 2 != (int *)0x0) {
          piVar8[2] = (int)piVar7;
        }
        *piVar8 = (int)this + 0x58;
        piVar8[1] = *(int *)((int)this + 0x5c);
        **(undefined4 **)((int)this + 0x5c) = piVar8;
        *(int **)((int)this + 0x5c) = piVar8;
      }
      iStack_20 = iStack_20 + 1;
    } while (iStack_20 < (int)(uint)bStack_33);
  }
  iVar9 = *(int *)((int)this + 4);
  *(undefined1 *)((int)this + 0xc) = 1;
  *(undefined1 *)(iVar9 + 0x146) = 1;
  if (DAT_011d9d40 != (void *)0x0) {
    SACS_QueueOrRevisitDriver_7FCF80(DAT_011d9d40,iVar9,'\0');
  }
  FUN_00805de0(*(void **)((int)this + 100),param_1);
  return;
}

