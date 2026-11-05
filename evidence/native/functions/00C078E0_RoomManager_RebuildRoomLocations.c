/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 Room origin/query consumer gate: complete474byte/153instruction body C078E0..C07AB9,
   existing ECX register input retained. Copies enclosing lot+17C to RoomManager+10 before C03FC0
   origin-aware queries. AF6B20/AF6610 traverse packed signed-byte locations; each tile queries
   masks1/2/4/8 with outsideflag0 and combines equal WORD room IDs before location insertion. C07AC0
   calls this only after sticky-success body read. Packed endpoint127 successor wraps; a host Int32
   rectangle is not an equivalent terminating native traversal for such domains. This note
   establishes origin/query/storage context, not Pool membership/ACF820 classification or a new
   original wire-size cap. */

void __fastcall RoomManager_RebuildRoomLocations(void *param_1)

{
  byte bVar1;
  uint uVar2;
  bool bVar3;
  ushort uVar4;
  undefined2 *puVar5;
  byte *pbVar6;
  ushort **ppuVar7;
  ushort *puVar8;
  byte bVar9;
  int iVar10;
  undefined2 local_4c;
  undefined1 local_4a;
  byte local_49;
  undefined2 local_48;
  undefined1 local_46;
  undefined1 local_45;
  ushort *local_44;
  void *local_40;
  uint local_3c;
  ushort *local_38;
  int local_34;
  ushort *local_30;
  int local_2c;
  undefined1 local_28 [12];
  ushort *local_1c;
  ushort *local_18;
  undefined4 local_14;
  char *local_10;
  
  local_40 = param_1;
  FUN_00c048f0(*(int *)((int)param_1 + 0x38),*(uint *)((int)param_1 + 0x3c));
  *(undefined4 *)((int)param_1 + 0x40) = 0;
  local_1c = (ushort *)0x0;
  local_18 = (ushort *)0x0;
  local_14 = 0;
  local_10 = "Lot/RoomManager/IntraTileMap";
  *(undefined4 *)((int)param_1 + 0x10) = *(undefined4 *)(*(int *)((int)param_1 + 8) + 0x17c);
  FUN_00af6b20(local_28,*(int *)((int)param_1 + 8));
  bVar3 = TilePartRectangleIterator_IsDone((int)local_28);
  puVar8 = (ushort *)0x0;
  do {
    if (bVar3) {
      if (puVar8 != (ushort *)0x0) {
        Memory_FreeIfNonNull(puVar8);
      }
      return;
    }
    puVar5 = (undefined2 *)TilePartRectangleIterator_Current((int)local_28);
    iVar10 = 0;
    local_18 = puVar8;
    do {
      local_4c = *puVar5;
      bVar9 = '\x01' << ((byte)iVar10 & 0x1f);
      local_4a = *(undefined1 *)(puVar5 + 1);
      local_49 = bVar9;
      uVar4 = LotRoomGrid_ReadRoomForCell(local_40,(char *)&local_4c,'\0');
      local_44 = (ushort *)(uint)uVar4;
      pbVar6 = (byte *)FUN_00c05850(&local_1c,(ushort *)&local_44);
      bVar1 = *pbVar6;
      pbVar6 = (byte *)FUN_00c05850(&local_1c,(ushort *)&local_44);
      iVar10 = iVar10 + 1;
      *pbVar6 = bVar1 | bVar9;
    } while (iVar10 < 4);
    local_44 = local_1c;
    if (local_1c != local_18) {
      do {
        local_46 = *(undefined1 *)(puVar5 + 1);
        local_48 = *puVar5;
        uVar2 = *(uint *)((int)param_1 + 0x3c);
        local_45 = (undefined1)local_44[1];
        uVar4 = *local_44;
        local_3c = (uint)uVar4;
        iVar10 = *(int *)((int)param_1 + 0x38);
        for (puVar8 = *(ushort **)(iVar10 + ((uint)(int)(short)uVar4 % uVar2) * 4);
            puVar8 != (ushort *)0x0; puVar8 = *(ushort **)(puVar8 + 0x34)) {
          if (uVar4 == *puVar8) {
            local_38 = puVar8;
            local_34 = iVar10 + ((uint)(int)(short)uVar4 % uVar2) * 4;
            ppuVar7 = &local_38;
            goto LAB_00c07a26;
          }
        }
        local_2c = iVar10 + uVar2 * 4;
        local_30 = *(ushort **)(iVar10 + uVar2 * 4);
        ppuVar7 = &local_30;
LAB_00c07a26:
        if (*ppuVar7 == *(ushort **)(iVar10 + uVar2 * 4)) {
          puVar8 = (ushort *)FUN_00c075c0((void *)((int)param_1 + 0x34),(short *)&local_3c);
          FUN_00c31240(puVar8,*(undefined4 *)((int)local_40 + 0x118));
        }
        else {
          puVar8 = *ppuVar7 + 2;
        }
        FUN_00c32770(puVar8,(char *)&local_48);
        local_44 = local_44 + 2;
      } while (local_44 != local_18);
    }
    FUN_00af6610(local_28);
    bVar3 = TilePartRectangleIterator_IsDone((int)local_28);
    puVar8 = local_1c;
  } while( true );
}

