/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXlot+location pointer, BYTE requested flags, WORD mask, RET0C. AL Boolean is the
   complete result contract: missing flag layer or signed-live-bounds failure clears AL only. Within
   a present layer any requested bit must intersect; if a mask layer exists AND requested flags
   contain Puddle1, the stored ushort mask must also intersect, even when another feature supplied
   the flag hit. Requested0 gives false. */

bool __thiscall
LotFloorFeatures_TestAny(void *this,char *location,byte requestedFlags,ushort requestedMask)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  bool bVar4;
  int iVar5;
  
  iVar2 = *(int *)((int)this + 0x29c);
  if (iVar2 != 0) {
    bVar4 = Lot_IsSignedTileInBounds(this,location);
    if (bVar4) {
      iVar5 = (int)location[2] - *(int *)((int)this + 0x17c);
      iVar3 = *(int *)((int)this + 0x2a0);
      bVar1 = *(byte *)((*(int *)(iVar2 + 4) * iVar5 + (int)*location) * *(int *)(iVar2 + 8) +
                        *(int *)(iVar2 + 0x10) + (int)location[1]);
      if ((iVar3 == 0) || ((requestedFlags & 1) == 0)) {
        return (bVar1 & requestedFlags) != 0;
      }
      if (((requestedFlags & bVar1) != 0) &&
         ((*(ushort *)
            (*(int *)(iVar3 + 0x10) +
            ((*(int *)(iVar3 + 4) * iVar5 + (int)*location) * *(int *)(iVar3 + 8) + (int)location[1]
            ) * 2) & requestedMask) != 0)) {
        return true;
      }
      return false;
    }
  }
  return false;
}

