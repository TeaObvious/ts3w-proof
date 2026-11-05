/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: ECX lot, packedcell pointer and lowbyte allowPartial, RET8 EAXrawID/-1. Bounds check X/Z and signedlevels; selected missingFFFFFFFF rejects when strict. B02820 compares compatible catalog kinds, not only exact product identity. Partial mode returns prior valid ID at incompatibility. Child pointers/initialization/failure lifetime remain open. */

/* Analyst note (PC1.67 lot-level support comparison): Analyst full region selection. ECX lot,packed
   signed-byte x/z/level/mask plus low-byte allowPartial in two stack DWORDs RET8; signed integer
   EAX id or-1. MOVSX dimensions/level; require x/z within half-open lot bounds and authored signed
   range (an initial levelzero special check does not bypass later bounds). AB3E50 retrieves four
   actual quadrant ids through lot+2A4 and storage level=level-min. Iterate selected four mask bits;
   id-1 with allowPartialfalse rejects. If previous valid id, B02820 checks actual compatibility
   with next; incompatible false mode returns-1, true mode returns previous id. Otherwise retain
   next id; return final selected id, initially-1. Concrete B02820 equivalence and backing layer
   allocation are outside this body, not inferred label equality. */

int __thiscall Lot_ResolveCompatibleCellRegion(void *this,char *param_1,char param_2)

{
  char cVar1;
  int iVar2;
  bool bVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  uint uVar8;
  
  cVar1 = param_1[2];
  if ((cVar1 != '\0') &&
     ((*(int *)((int)this + 0x180) < (int)cVar1 || ((int)cVar1 < *(int *)((int)this + 0x17c))))) {
    return -1;
  }
  uVar8 = (uint)param_1[1];
  uVar6 = (uint)*param_1;
  if ((((-1 < (int)uVar6) && ((int)uVar6 < *(int *)((int)this + 0x174))) && (-1 < (int)uVar8)) &&
     ((int)uVar8 < *(int *)((int)this + 0x178))) {
    iVar4 = (int)cVar1;
    if ((*(int *)((int)this + 0x17c) <= iVar4) && (iVar4 <= *(int *)((int)this + 0x180))) {
      iVar5 = FUN_00ab3e50(*(void **)((int)this + 0x2a4),uVar6,uVar8,
                           iVar4 - *(int *)((int)this + 0x17c));
      iVar4 = -1;
      iVar7 = 0;
      do {
        if ((byte)(param_1[3] & '\x01' << ((byte)iVar7 & 0x1f)) != 0) {
          iVar2 = *(int *)(iVar5 + iVar7 * 4);
          if ((iVar2 == -1) && (param_2 == '\0')) {
            return -1;
          }
          if ((iVar4 != -1) && (bVar3 = FUN_00b02820(iVar4,iVar2), !bVar3)) {
            if (param_2 == '\0') {
              return -1;
            }
            return iVar4;
          }
          iVar4 = *(int *)(iVar5 + iVar7 * 4);
        }
        iVar7 = iVar7 + 1;
        if (3 < iVar7) {
          return iVar4;
        }
      } while( true );
    }
  }
  return -1;
}
