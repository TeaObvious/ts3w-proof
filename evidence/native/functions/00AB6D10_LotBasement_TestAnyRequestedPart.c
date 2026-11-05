/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXlot+packedtilepart pointer RET4 ALBoolean. Requires NEGATIVE signedbytelevel,
   Lot_IsSignedTileInBounds, slot=-1-level withinlayerdepth. Reads fullbyte throughA8B3B0,
   anyrawrequestedbit includinghighbits maymatch. Mask0alwaysfalse. Layerdataqueryalone doesnot
   implement outerlive lot/leveladmission. */

bool __thiscall LotBasement_TestAnyRequestedPart(void *this,char *param_1)

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
        return (param_1[3] & *pbVar3) != 0;
      }
    }
  }
  return false;
}

