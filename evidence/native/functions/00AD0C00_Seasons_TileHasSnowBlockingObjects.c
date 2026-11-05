/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Snow placement tile blocker predicate. Collects objects with AC7480 using
   polygon-intersection enabled, full tile parts 0x0f, and enabled footprint area mask 4. Excludes
   the optional ignored object ID. Requires render component +8 bit0, then OBJD primary flags
   door/gate or secondary flags bit12. Merely having the object pivot on the tile is insufficient.
   
   PC1.67 original static instructions. cdecl4DWORDslots lot/tile/ignoredGUIDlo/hi, lowALBoolean.
   ECXlot+8stackargs callAC7480 RET20hex: tile/output/0/0/polygonTest1/partMask0F/0/areaMask4. 0Fis
   scalar immediate mask, not address despite stalevoid*param6 type.
   Iterateactualfootprint-intersecting tileobjects; ignorefullGUID onlywhenignoredGUIDnonzero;
   require selected componentmask011EA2A8 andbyte+8bit0; require cataloginfo then primaryflags+98
   bits3or5, orsecondary+9C bit12. FirstmatchAL1, vectorfreed; no-matchAL0. Pivot-only
   orcatalog-only scan is a narrower/different hostprofile; native component-state predicate must
   not disappear from parity claims. */

uint __cdecl
Seasons_TileHasSnowBlockingObjects(void *lot,char *tile,int ignoreIdLow,int ignoreIdHigh)

{
  void *pvVar1;
  void *pvVar2;
  void *allocation;
  uint extraout_EAX;
  uint uVar3;
  undefined4 extraout_EAX_00;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  void *local_10;
  int local_c;
  undefined4 local_8;
  char *local_4;
  
  local_10 = (void *)0x0;
  local_c = 0;
  local_8 = 0;
  local_4 = "World/TileHasObjectsBlockingSnow";
  LotQuery_CollectObjectsOnTile(lot,tile,&local_10,'\0','\0','\x01',0xf,0,4);
  iVar6 = local_c - (int)local_10 >> 2;
  iVar5 = 0;
  allocation = local_10;
  if (0 < iVar6) {
    do {
      pvVar2 = *(void **)((int)allocation + iVar5 * 4);
                    /* Snow blocking also requires render component flag +8 bit0; catalog flags
                       alone are insufficient. */
      if (((pvVar2 != (void *)0x0) &&
          ((((ignoreIdLow == 0 && ignoreIdHigh == 0 || (*(int *)((int)pvVar2 + 8) != ignoreIdLow))
            || (*(int *)((int)pvVar2 + 0xc) != ignoreIdHigh)) &&
           ((pvVar1 = Object_GetComponentByMask(pvVar2,DAT_011ea2a8), allocation = local_10,
            pvVar1 != (void *)0x0 && ((*(byte *)((int)pvVar1 + 8) & 1) != 0)))))) &&
         ((pvVar2 = Object_FindCatalogInfo(pvVar2), allocation = local_10, pvVar2 != (void *)0x0 &&
          ((((*(uint *)((int)pvVar2 + 0x98) >> 3 & 1) != 0 ||
            ((*(uint *)((int)pvVar2 + 0x98) >> 5 & 1) != 0)) ||
           ((*(uint *)((int)pvVar2 + 0x9c) >> 0xc & 1) != 0)))))) {
        uVar4 = 0;
        if (local_10 != (void *)0x0) {
          Memory_FreeIfNonNull(local_10);
          uVar4 = extraout_EAX_00;
        }
        return CONCAT31((int3)((uint)uVar4 >> 8),1);
      }
      iVar5 = iVar5 + 1;
    } while (iVar5 < iVar6);
  }
  uVar3 = 0;
  if (allocation != (void *)0x0) {
    Memory_FreeIfNonNull(allocation);
    uVar3 = extraout_EAX;
  }
  return uVar3 & 0xffffff00;
}

