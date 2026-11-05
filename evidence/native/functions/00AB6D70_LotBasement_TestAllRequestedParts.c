/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXlot+packedtilepart pointer RET4 lowAL. Negativelevel/live lotbounds/layerdepth gate
   BEFOREcomparison. MOVSX requestmask byte thenMOVZX cellbyte;
   compare(cell&signedmask)==signedmask. Mask>=80hex isnegative andcannotmatchzero-extendedcell;
   validmask0 true, INVALIDcoordinate/levelmask0 false. */

bool __thiscall LotBasement_TestAllRequestedParts(void *this,char *param_1)

{
  byte bVar1;
  bool bVar2;
  int relativeLevel;
  byte *pbVar3;
  
  bVar1 = param_1[2];
  if (0x7f < bVar1) {
    bVar2 = Lot_IsSignedTileInBounds(this,param_1);
    if (bVar2) {
      relativeLevel = -1 - (char)bVar1;
      if (relativeLevel < *(int *)((int)*(void **)((int)this + 0x2a8) + 0xc)) {
        pbVar3 = ByteTileGrid_CellPointer
                           (*(void **)((int)this + 0x2a8),(int)*param_1,(int)param_1[1],
                            relativeLevel);
        return ((uint)*pbVar3 & (int)param_1[3]) == (int)param_1[3];
      }
    }
  }
  return false;
}

