/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXlot+location pointer, full DWORD requested flags, WORD mask, RET0C. AL Boolean; missing
   flag layer or signed-live-bounds failure clears AL only. All bits of full DWORD request must be
   contained in zero-extended stored byte, so a high requested bit refuses. Requested0 succeeds in a
   present bounded flag layer. If a mask layer exists AND requested flags contain Puddle1, mask
   intersection is additionally required. */

bool __thiscall
LotFloorFeatures_TestAll(void *this,char *location,uint requestedFlags,ushort requestedMask)

{
  byte bVar1;
  int iVar2;
  bool bVar3;
  int iVar4;
  
  iVar2 = *(int *)((int)this + 0x29c);
  if (iVar2 != 0) {
    bVar3 = Lot_IsSignedTileInBounds(this,location);
    if (bVar3) {
      iVar4 = (int)location[2] - *(int *)((int)this + 0x17c);
      bVar1 = *(byte *)((*(int *)(iVar2 + 4) * iVar4 + (int)*location) * *(int *)(iVar2 + 8) +
                        *(int *)(iVar2 + 0x10) + (int)location[1]);
      iVar2 = *(int *)((int)this + 0x2a0);
      if ((iVar2 == 0) || ((requestedFlags & 1) == 0)) {
        return (bVar1 & requestedFlags) == requestedFlags;
      }
      if (((bVar1 & requestedFlags) == requestedFlags) &&
         ((*(ushort *)
            (*(int *)(iVar2 + 0x10) +
            ((*(int *)(iVar2 + 4) * iVar4 + (int)*location) * *(int *)(iVar2 + 8) + (int)location[1]
            ) * 2) & requestedMask) != 0)) {
        return true;
      }
      return false;
    }
  }
  return false;
}

