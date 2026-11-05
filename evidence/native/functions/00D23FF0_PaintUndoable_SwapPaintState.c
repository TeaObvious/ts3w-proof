/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Undo/redo swap ofcapturedrawsamplealphaandappended/reusedlayeridentity,usingflagB8todifferentiate
   storedsides,thenupdateusage. Native tracksper-samplejournal,hostuseswholeimmutablelayer
   revisions. Doesnotperformhouseholdcallbackhere; separateundo/redo
   wrappersD240F0/D24120handlemoney. NoB4writeinthisselectedbody. */

void __thiscall PaintUndoable_SwapPaintState(void *this)

{
  byte bVar1;
  uint *puVar2;
  uint uVar3;
  uint *puVar4;
  uint *puVar5;
  bool bVar6;
  
  if (*(char *)((int)this + 0xb8) != '\0') {
    if (*(int *)((int)this + 0x60) == 2) {
      LotTerrain_SelectPaintLayer
                (*(void **)((int)this + 0x54),(uint *)((int)this + 0x78),(uint *)((int)this + 0x60))
      ;
    }
    else if (*(int *)((int)this + 0x60) == 3) {
      FUN_00aec0e0(*(void **)((int)this + 0x54),*(uint *)((int)this + 0x58),
                   (uint *)((int)this + 0x78));
    }
  }
  puVar4 = *(uint **)((int)this + 0x8c);
  if ((puVar4 != *(uint **)((int)this + 0x90)) &&
     (puVar2 = *(uint **)((int)this + 0x90), puVar4 != puVar2)) {
    puVar5 = puVar4 + 3;
    do {
      if (*(char *)((int)this + 0xb8) == '\0') {
        bVar1 = *(byte *)((int)puVar5 + 1);
        uVar3 = puVar5[-2];
      }
      else {
        bVar1 = (byte)*puVar5;
        uVar3 = puVar5[-1];
      }
      FUN_00af0580(*(void **)((int)this + 0x54),*puVar4 & 0xffff,*puVar4 >> 0x10,
                   uVar3 + *(int *)((int)this + 0xa0),(uint)bVar1);
      puVar4 = puVar4 + 4;
      puVar5 = puVar5 + 4;
    } while (puVar4 != puVar2);
  }
  bVar6 = false;
  if (*(char *)((int)this + 0xb8) == '\0') {
    if (*(int *)((int)this + 0x60) == 2) {
      LotTerrain_RemovePaintLayer(*(void **)((int)this + 0x54),*(uint *)((int)this + 0x58));
    }
    else if (*(int *)((int)this + 0x60) == 3) {
      FUN_00aec0e0(*(void **)((int)this + 0x54),*(uint *)((int)this + 0x58),
                   (uint *)((int)this + 0x68));
    }
    bVar6 = *(char *)((int)this + 0xb8) == '\0';
  }
  *(bool *)((int)this + 0xb8) = bVar6;
  FUN_00ae9d30(*(int *)((int)this + 0x54));
  return;
}

