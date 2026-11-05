/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst: PC1.67 tomb/diving contract. Typed seed-map stride0x1c at+0x7c, GUID comparator uses
   both unsigned words. Payload local x/z floats,+8 SIGNED INTEGER LEVEL (not float). Existing node
   changes only if integerlevel differs or abs x/z difference>original0.001f; then bounds-inclusive
   lot x/z/signedlevel checks and light-blocking room grid refresh. Invalidbounds record int16 -1.
   Original integerCMP proves previous float third-lane decompiler casts wrong. */

void __thiscall
LotRoomSeeds_SetGuidLocationAndRoom
          (void *this,uint markerType,ulonglong objectGuid,LotXZLevel *location)

{
  void *this_00;
  int iVar1;
  int iVar2;
  uint uVar3;
  LotXZLevel *pLVar4;
  short sVar5;
  LotXZLevel *pLVar6;
  
  this_00 = (void *)((int)this + markerType * 0x1c + 0x7c);
  LotRoomSeedTree_FindGuidNode(this_00,&markerType,&objectGuid);
  pLVar4 = location;
  uVar3 = markerType;
  if (markerType == (int)this_00 + 4U) {
    pLVar6 = LotRoomSeedTree_GetOrInsertLocation(this_00,&objectGuid);
    pLVar4 = location;
    pLVar6->x = location->x;
    pLVar6->z = location->z;
    pLVar6->level = location->level;
    iVar1 = *(int *)((int)this + 8);
    sVar5 = -1;
    if (((((0.0 <= location->x) && (location->x <= (float)*(int *)(iVar1 + 0x174))) &&
         (0.0 <= location->z)) &&
        ((location->z <= (float)*(int *)(iVar1 + 0x178) &&
         (*(int *)(iVar1 + 0x17c) <= location->level)))) &&
       (location->level <= *(int *)(iVar1 + 0x180))) {
      location = (LotXZLevel *)0xff00ffff;
      LotLocation_EncodeCellAndQuadrant(&pLVar4->x,(char *)&location);
      sVar5 = LotRoomGrid_ReadRoomForCell(this,(char *)&location,'\x01');
    }
    *(short *)&pLVar6[1].x = sVar5;
  }
  else {
    iVar1 = location->level;
    if (((iVar1 != *(int *)(markerType + 0x20)) ||
        (_DAT_0107477c < ABS(location->x - *(float *)(markerType + 0x18)))) ||
       (_DAT_0107477c < ABS(location->z - *(float *)(markerType + 0x1c)))) {
      iVar2 = *(int *)((int)this + 8);
      if ((((location->x < 0.0) || ((float)*(int *)(iVar2 + 0x174) < location->x)) ||
          ((location->z < 0.0 ||
           (((float)*(int *)(iVar2 + 0x178) < location->z || (iVar1 < *(int *)(iVar2 + 0x17c)))))))
         || (*(int *)(iVar2 + 0x180) < iVar1)) {
        *(undefined2 *)(markerType + 0x24) = 0xffff;
      }
      else {
        location = (LotXZLevel *)0xff00ffff;
        LotLocation_EncodeCellAndQuadrant(&pLVar4->x,(char *)&location);
        sVar5 = LotRoomGrid_ReadRoomForCell(this,(char *)&location,'\x01');
        *(short *)(uVar3 + 0x24) = sVar5;
      }
      *(float *)(uVar3 + 0x18) = pLVar4->x;
      *(float *)(uVar3 + 0x1c) = pLVar4->z;
      *(int *)(uVar3 + 0x20) = pLVar4->level;
      return;
    }
  }
  return;
}

