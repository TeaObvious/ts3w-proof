/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  undefined4 *puVar2;
  int iVar3;
  char *pcVar4;
  undefined2 local_20;
  char local_1e;
  undefined1 local_1d;
  void *local_1c;
  void *local_18;
  char local_14 [4];
  undefined2 local_10;
  undefined1 local_e;
  undefined1 local_d;
  undefined1 local_c [12];
  
  pcVar4 = wallLocator;
  local_14[0] = -1;
  local_14[1] = 0xff;
  local_14[3] = 0xff;
  local_10._0_1_ = 0xff;
  local_10._1_1_ = 0xff;
  local_d = 0xff;
  local_14[2] = 0;
  local_e = 0;
  WallLocator_QueryFirstAdjacentTile(wallLocator,(undefined2 *)local_14);
  WallLocator_QueryOtherAdjacentTile((undefined2 *)pcVar4,&local_10);
  lot_00 = lot;
  local_1c = *(void **)(lot + 0x2ac);
  local_18 = *(void **)(lot + 0x290);
  iVar3 = 0;
  pcVar4 = local_14;
  do {
    if (((((-1 < *pcVar4) && ((int)*pcVar4 < *(int *)(lot_00 + 0x174))) && (-1 < pcVar4[1])) &&
        (((int)pcVar4[1] < *(int *)(lot_00 + 0x178) && (*(int *)(lot_00 + 0x17c) <= (int)pcVar4[2]))
        )) && ((int)pcVar4[2] <= *(int *)(lot_00 + 0x180))) {
      TilePartRectangleIterator_Construct(local_c,(undefined2 *)pcVar4,(undefined2 *)pcVar4);
      bVar1 = TilePartRectangleIterator_IsDone((int)local_c);
      if (bVar1) {
        return true;
      }
      while( true ) {
        puVar2 = (undefined4 *)TilePartRectangleIterator_Current((int)local_c);
        lot = (undefined *)*puVar2;
        if (((pcVar4[3] & *(byte *)((int)puVar2 + 3)) != 0) &&
           (bVar1 = Lot_HasCellFloorOrObjectSupport(lot_00,(char *)&lot,(undefined *)0x0,true),
           !bVar1)) break;
        TilePartRectangleIterator_Next(local_c);
        bVar1 = TilePartRectangleIterator_IsDone((int)local_c);
        if (bVar1) {
          return true;
        }
      }
      if ((local_1c != (void *)0x0) &&
         (bVar1 = RoofManager_HasCellSupportBelow(local_1c,pcVar4), bVar1)) {
        return true;
      }
      if ((local_18 != (void *)0x0) &&
         (bVar1 = FloorManager_AllPatternParts(local_18,pcVar4,pcVar4[3],true), bVar1)) {
        return true;
      }
      if ('\0' < wallLocator[2]) {
        local_20 = *(undefined2 *)pcVar4;
        local_1e = pcVar4[2];
        local_1d = 0xf;
        bVar1 = Lot_HasLowerPartitionSupport(lot_00,(char *)&local_20);
        if (bVar1) {
          return true;
        }
      }
    }
    iVar3 = iVar3 + 1;
    pcVar4 = pcVar4 + 4;
    if (1 < iVar3) {
      return false;
    }
  } while( true );
}

