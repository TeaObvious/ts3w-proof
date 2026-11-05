/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 static: ECX geometry, no stack arguments; AL whether a room was admitted. Request
   room service at selectedLevel-1 using mode2 (original PlacementBlocking), enumerate room
   locations/shapes and set presence bit signedX*depth+signedZ for admitted tiles. Selected child
   room/iterator boundaries remain; this does not prove current DeckFoundation/PoolManager
   cross-join or complete tile-domain parity. Descriptive role, not recovered symbol. */

undefined1 __fastcall PoolGeometry_RebuildPresenceFromRooms(int param_1)

{
  ushort uVar1;
  void *this;
  byte bVar2;
  undefined4 uVar3;
  void *this_00;
  byte *pbVar4;
  int iVar5;
  ushort *puVar6;
  undefined1 local_25;
  char local_24;
  char local_23;
  undefined1 local_22;
  undefined1 local_21;
  char local_20;
  undefined1 local_1f;
  undefined1 local_1e;
  undefined1 local_1d;
  void *local_1c;
  ushort *local_18;
  ushort *local_14;
  ushort *local_10;
  undefined4 local_c;
  char *local_8;
  
  local_1c = *(void **)(*(int *)(param_1 + 0x210) + 0x18);
  this = *(void **)((int)local_1c + 0x298);
  local_14 = (ushort *)0x0;
  local_10 = (ushort *)0x0;
  local_c = 0;
  local_8 = "Misc/Pool/Geometry";
  FUN_00b47120(this,*(int *)(param_1 + 0x264) - 1,2,&local_14,'\0');
  local_18 = local_10;
  local_25 = 0;
  puVar6 = local_14;
  if (local_14 != local_10) {
    do {
      uVar1 = *puVar6;
      local_20 = -1;
      local_1f = 0xff;
      local_1e = 0;
      local_1d = 0xff;
      FUN_00b48280(this,(uint)uVar1,2,(undefined4 *)&local_20);
      uVar3 = Lot_TestCellSupportRegionType(local_1c,&local_20,'\x01',(undefined1 *)0x0);
      if (((char)uVar3 != '\0') &&
         (this_00 = (void *)FUN_00b470c0(this,(uint)uVar1,2), this_00 != (void *)0x0)) {
        local_24 = -1;
        local_23 = -1;
        local_22 = 0;
        local_21 = 0xff;
        bVar2 = SpanShape_BeginLocationEnumeration(this_00,&local_24);
        while (bVar2 != 0) {
          iVar5 = (int)local_24 * *(int *)(param_1 + 0x220) + (int)local_23;
          pbVar4 = (byte *)((iVar5 >> 3) + *(int *)(param_1 + 0x224));
          *pbVar4 = *pbVar4 | '\x01' << ((byte)iVar5 & 7);
          bVar2 = SpanShape_NextLocation(this_00,&local_24);
        }
        local_25 = 1;
      }
      puVar6 = puVar6 + 1;
    } while (puVar6 != local_18);
  }
  if (local_14 != (ushort *)0x0) {
    Memory_FreeIfNonNull(local_14);
  }
  return local_25;
}

