/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 cdecl lot/sixbytewalllocator, ALbool plainRET. Queries first and other adjacent packed
   tile. Each side must be within lot width/depth and live min/maxlevel. Admit if ALL selected
   quarters passAD28E0(lot,quarter,ignoredObject0,includeObjects1), else roof supportB98530 OR
   FloorManager A8E090 with selectedmask/mode1. If originalwall signedlevel>0, lowerpartition
   supportACEC50 with fullmaskF is another fallback. Either side may admit; no supported side false.
   Original TilePartRectangleIterator determines quarter order. */

bool __cdecl Lot_HasWallSupport(undefined *lot,char *wallLocator)

{
  undefined *lot_00;
  bool bVar1;
  char cVar2;
  undefined4 *puVar3;
  int iVar4;
  char *pcVar5;
  undefined2 local_20;
  char local_1e;
  undefined1 local_1d;
  void *local_1c;
  void *local_18;
  char local_14 [20];
  
  pcVar5 = wallLocator;
  local_14[0] = -1;
  local_14[1] = 0xff;
  local_14[3] = 0xff;
  local_14[4] = 0xff;
  local_14[5] = 0xff;
  local_14[7] = 0xff;
  local_14[2] = 0;
  local_14[6] = 0;
  WallLocator_QueryFirstAdjacentTile(wallLocator,(undefined2 *)local_14);
  WallLocator_QueryOtherAdjacentTile((undefined2 *)pcVar5,(undefined2 *)(local_14 + 4));
  lot_00 = lot;
  local_1c = *(void **)(lot + 0x2ac);
  local_18 = *(void **)(lot + 0x290);
  iVar4 = 0;
  pcVar5 = local_14;
  do {
    if (((((-1 < *pcVar5) && ((int)*pcVar5 < *(int *)(lot_00 + 0x174))) && (-1 < pcVar5[1])) &&
        (((int)pcVar5[1] < *(int *)(lot_00 + 0x178) && (*(int *)(lot_00 + 0x17c) <= (int)pcVar5[2]))
        )) && ((int)pcVar5[2] <= *(int *)(lot_00 + 0x180))) {
      TilePartRectangleIterator_Construct(local_14 + 8,(undefined2 *)pcVar5,(undefined2 *)pcVar5);
      bVar1 = TilePartRectangleIterator_IsDone((int)(local_14 + 8));
      if (bVar1) {
        return true;
      }
      while( true ) {
        puVar3 = (undefined4 *)TilePartRectangleIterator_Current((int)(local_14 + 8));
        lot = (undefined *)*puVar3;
        if (((pcVar5[3] & *(byte *)((int)puVar3 + 3)) != 0) &&
           (bVar1 = Lot_HasCellFloorOrObjectSupport(lot_00,(char *)&lot,(undefined *)0x0,true),
           !bVar1)) break;
        TilePartRectangleIterator_Next(local_14 + 8);
        bVar1 = TilePartRectangleIterator_IsDone((int)(local_14 + 8));
        if (bVar1) {
          return true;
        }
      }
      if ((local_1c != (void *)0x0) &&
         (bVar1 = RoofManager_HasCellSupportBelow(local_1c,pcVar5), bVar1)) {
        return true;
      }
      if ((local_18 != (void *)0x0) &&
         (cVar2 = FUN_00a8e090(local_18,pcVar5,pcVar5[3],'\x01'), cVar2 != '\0')) {
        return true;
      }
      if ('\0' < wallLocator[2]) {
        local_20 = *(undefined2 *)pcVar5;
        local_1e = pcVar5[2];
        local_1d = 0xf;
        bVar1 = Lot_HasLowerPartitionSupport(lot_00,(char *)&local_20);
        if (bVar1) {
          return true;
        }
      }
    }
    iVar4 = iVar4 + 1;
    pcVar5 = pcVar5 + 4;
    if (1 < iVar4) {
      return false;
    }
  } while( true );
}

