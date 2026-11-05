/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXlot+location pointer and UNUSED full DWORD requested flags, RET8 (actual785B60 caller
   pushes both). AX result: FFFF unless both layers exist, signed cell is bounded and stored flag
   has Puddle1; then stored ushort. Full requested-flags word is not read. The outer785B60 wrapper
   instead returnsAX0 when world or lot is absent. */

ushort __thiscall
LotFloorFeatures_ReadPuddleMask(void *this,char *location,uint unusedRequestedFlags)

{
  int iVar1;
  int iVar2;
  bool bVar3;
  int iVar4;
  
  iVar1 = *(int *)((int)this + 0x29c);
  if ((iVar1 != 0) && (iVar2 = *(int *)((int)this + 0x2a0), iVar2 != 0)) {
    bVar3 = Lot_IsSignedTileInBounds(this,location);
    if (bVar3) {
      iVar4 = (int)location[2] - *(int *)((int)this + 0x17c);
      if ((*(byte *)((*(int *)(iVar1 + 4) * iVar4 + (int)*location) * *(int *)(iVar1 + 8) +
                     *(int *)(iVar1 + 0x10) + (int)location[1]) & 1) != 0) {
        return *(ushort *)
                (*(int *)(iVar2 + 0x10) +
                ((*(int *)(iVar2 + 4) * iVar4 + (int)*location) * *(int *)(iVar2 + 8) +
                (int)location[1]) * 2);
      }
    }
  }
  return 0xffff;
}

