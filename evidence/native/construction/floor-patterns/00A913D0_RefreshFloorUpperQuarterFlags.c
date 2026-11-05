/* Refreshes selected stored upper-quarter flags, or defers the location into a sorted unique
   pending list. ECX is the floor manager; packed signed cell plus raw 64-bit excluded-object ID
   halves and a low-byte force flag occupy four stack words (RET 10h). Changed bits are published
   before per-quarter event 0431BFC9. Analyst-assigned name. */

void __thiscall
RefreshFloorUpperQuarterFlags(void *this,char *param_1,int param_2,int param_3,char param_4)

{
  char *pcVar1;
  int iVar2;
  undefined3 uVar3;
  int iVar4;
  byte bVar5;
  bool bVar6;
  undefined1 uVar7;
  ushort uVar8;
  short sVar9;
  void *this_00;
  undefined4 uVar10;
  byte *pbVar11;
  undefined4 *puVar12;
  int *piVar13;
  byte bVar14;
  int iVar15;
  undefined4 *puVar16;
  undefined4 *puVar17;
  undefined4 local_54;
  void *local_50;
  int local_4c;
  void *local_48;
  undefined4 *local_44;
  undefined4 local_40 [16];

  iVar4 = param_3;
  iVar2 = param_2;
  iVar15 = *(int *)((int)this + 4);
  /* 00A913D9: Signed cell X/Z use half-open lot bounds; signed level uses inclusive lot min/max. Out-of-range returns before queueing or touching flags. */
  if (((((-1 < *param_1) && ((int)*param_1 < *(int *)(iVar15 + 0x174))) && (-1 < param_1[1])) &&
      (((int)param_1[1] < *(int *)(iVar15 + 0x178) && (*(int *)(iVar15 + 0x17c) <= (int)param_1[2]))
      )) && ((int)param_1[2] <= *(int *)(iVar15 + 0x180))) {
    /* 00A91429: If manager DWORD +178 is positive and force byte is zero, insert the three-byte location in pending +F0 and return. Mask is not part of the pending key; A925B0 later forces mask 0F and force 1. */
    if ((0 < *(int *)((int)this + 0x178)) && (param_4 == '\0')) {
      InsertUniqueCellLocation((void *)((int)this + 0xf0),&param_2,param_1);
      return;
    }
    local_50 = (void *)0x0;
    if (param_2 != 0 || param_3 != 0) {
      /* 00A9146A: The two UInt32 stack words form an original 64-bit object ID. Registry lookup occurs if their bitwise OR is nonzero (either or both halves may be nonzero); registry lookup yields a borrowed Object pointer passed only to the support predicate. A925B0 supplies ID 0, so its refresh excludes no resolved object. */
      this_00 = ObjectRegistry_GetGlobal();
      local_50 = ObjectRegistry_FindBorrowed(this_00,CONCAT44(iVar4,iVar2));
    }
    local_48 = (void *)FUN_00b46ea0(*(void **)(*(int *)((int)this + 4) + 0x298),0);
    local_44 = (undefined4 *)FindFloorCellPayload(this,param_1);
    local_4c = 0;
    do {
      iVar15 = local_4c;
      bVar14 = (byte)local_4c;
      /* 00A914A2: Iterate q=0..3 in order; input low mask bit q selects one iteration. Construct a local single-quarter mask 1<<q. Unselected quarters produce no support call, bit write or event. */
      bVar5 = '\x01' << (bVar14 & 0x1f);
      if ((param_1[3] & bVar5) != 0) {
        uVar3 = *(undefined3 *)param_1;
        iVar2 = *(int *)((int)this + 0x28);
        local_54 = CONCAT13(bVar5,uVar3);
        uVar10 = local_54;
        local_54._0_1_ = (char)uVar3;
        local_54._1_1_ = (char)((uint3)uVar3 >> 8);
        param_2 = CONCAT31(param_2._1_3_,
                           *(undefined1 *)
                            ((((int)param_1[2] - *(int *)((int)this + 0x10)) * *(int *)(iVar2 + 4) +
                             (int)(char)local_54) * *(int *)(iVar2 + 8) + *(int *)(iVar2 + 0x10) +
                            (int)local_54._1_1_));
        local_54 = uVar10;
        /* 00A914FB: Compute support through AD2990 using lot, single-quarter cell, q, and optional excluded Object pointer. Only returned AL is compared with the old stored Boolean; old bit is 1<<(q+4). */
        uVar10 = TestFloorQuarterSupport
                           (*(void **)((int)this + 4),(char *)&local_54,local_4c,(uint)local_50);
        bVar5 = '\x01' << (bVar14 + 4 & 0x1f);
        param_4 = (char)uVar10;
        if ((((byte)param_2 & bVar5) != 0) != (bool)param_4) {
          iVar15 = *(int *)((int)this + 0x28);
          pbVar11 = (byte *)((((int)param_1[2] - *(int *)((int)this + 0x10)) * *(int *)(iVar15 + 4)
                             + (int)*param_1) * *(int *)(iVar15 + 8) + *(int *)(iVar15 + 0x10) +
                            (int)param_1[1]);
          /* 00A91547: On change only, clear bit q+4, then set it iff support AL is nonzero. The low nibble and all other upper-quarter bits are preserved. The store precedes message allocation and dispatch; no rollback follows here. */
          *pbVar11 = *pbVar11 & ~bVar5;
          if (param_4 != '\0') {
            *pbVar11 = *pbVar11 | bVar5;
          }
          puVar12 = FloorMessagePool_AcquireStorage();
          /* 00A9157A: Allocation-null path still reaches message field stores; this body does not implement a safe allocation-failure return or rollback of the already changed flag. */
          if (puVar12 == (undefined4 *)0x0) {
            puVar12 = (undefined4 *)0x0;
          }
          else {
            puVar12 = FUN_00a8b070(puVar12);
          }
          iVar15 = *(int *)((int)this + 4);
          puVar12[2] = *(undefined4 *)(iVar15 + 0x48);
          puVar12[3] = *(undefined4 *)(iVar15 + 0x4c);
          puVar12[4] = local_54;
          bVar6 = FloorManager_TileHasAnyRequestedFlag(this,(char *)&local_54);
          if (bVar6) {
            FUN_00afba70(local_40);
            puVar16 = puVar12 + 6;
            uVar8 = FUN_00a8d1c0(this,(char *)&local_54);
            FloorManager_CopyPatternKeysForCellId(this,uVar8,puVar16);
          }
          else {
            puVar16 = &DAT_011ec920;
            puVar17 = puVar12 + 6;
            for (iVar15 = 0x10; iVar15 != 0; iVar15 = iVar15 + -1) {
              *puVar17 = *puVar16;
              puVar16 = puVar16 + 1;
              puVar17 = puVar17 + 1;
            }
          }
          FUN_00a911c0(this,(byte *)(puVar12 + 6),(undefined2 *)(puVar12 + 0x16));
          pbVar11 = ByteTileGrid_CellPointer
                              (*(void **)((int)this + 0x30),(int)(char)local_54,
                               CONCAT22((short)((uint)(int)local_54._1_1_ >> 0x10),
                                        (short)local_54._1_1_),
                               (int)local_54._2_1_ - *(int *)((int)this + 0x10));
          *(byte *)((int)puVar12 + 0x5a) = *pbVar11;
          if (((~local_54._3_1_ & 0x10) == 0) ||
             (uVar10 = TestPlatformRegion(*(void **)((int)this + 4),(char *)&local_54,'\0'),
             (char)uVar10 == '\0')) {
            uVar7 = 0;
          }
          else {
            uVar7 = 1;
          }
          *(undefined1 *)(puVar12 + 0x21) = uVar7;
          uVar7 = FUN_00acfa20(*(void **)((int)this + 4),(undefined2 *)&local_54,1,(undefined1 *)0x0
                              );
          /* 00A91657: Message byte +5B receives the newly computed support Boolean. It is separate from low flags and platform +84. Support-below +85 is assigned twice by separate calls. */
          *(char *)((int)puVar12 + 0x5b) = param_4;
          *(undefined1 *)((int)puVar12 + 0x85) = uVar7;
          sVar9 = LotRoomGrid_ReadRoomForCell(local_48,(char *)&local_54,'\0');
          *(short *)((int)puVar12 + 0x5e) = sVar9;
          pcVar1 = (char *)(puVar12 + 4);
          uVar10 = FUN_00ad1380(*(void **)((int)this + 4),pcVar1);
          *(char *)((int)puVar12 + 0x86) = (char)uVar10;
          if (((~*(byte *)((int)puVar12 + 0x13) & 0x10) == 0) ||
             (uVar10 = Lot_TestCellSupportRegionType
                                 (*(void **)((int)this + 4),pcVar1,'\x01',(undefined1 *)0x0),
             (char)uVar10 == '\0')) {
            uVar7 = 0;
          }
          else {
            uVar7 = 1;
          }
          *(undefined1 *)(puVar12 + 0x17) = uVar7;
          uVar7 = FUN_00acfa20(*(void **)((int)this + 4),(undefined2 *)&local_54,1,(undefined1 *)0x0
                              );
          *(undefined1 *)((int)puVar12 + 0x85) = uVar7;
          uVar7 = FUN_00ab3a00(*(void **)((int)this + 4),pcVar1);
          *(undefined1 *)(puVar12 + 0x22) = uVar7;
          if (local_44 != (undefined4 *)0x0) {
            puVar12[0x18] = *local_44;
            puVar12[0x19] = local_44[1];
            puVar12[0x1a] = local_44[2];
            puVar12[0x1b] = local_44[3];
            puVar12[0x1c] = local_44[4];
            puVar12[0x1d] = local_44[5];
            puVar12[0x1e] = local_44[6];
            puVar12[0x1f] = local_44[0xc];
            puVar12[0x20] = local_44[0xd];
            *(undefined1 *)((int)puVar12 + 0x87) = *(undefined1 *)(local_44 + 0xe);
          }
          /* 00A91729: Emit event 0431BFC9 through current dispatcher vtable +1C for this changed quarter. A925B0 removes the pending location only after this entire refresh returns. Delivery timing/reentrancy and message retirement remain outside this body. */
          piVar13 = (int *)MessageDispatch_GetCurrent();
          (**(code **)(*piVar13 + 0x1c))(0x431bfc9,puVar12,0,0);
          iVar15 = local_4c;
        }
      }
      local_4c = iVar15 + 1;
    } while (local_4c < 4);
  }
  return;
}
