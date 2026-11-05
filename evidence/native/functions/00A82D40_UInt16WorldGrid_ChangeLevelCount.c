/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete flow toRET0C atA82E17. Same signedcount/mode/dimensionsOnly threeword ABI
   asA82C60 but two-byte cells. mode0negative forward copy removesleadingplanes; resized vector then
   mode0positive copiesoldplanes backward into newtail. Nonzero mode modifies tail. dimensionsOnly
   skipsstorage. Nativepadding A82D98..9F is nonowned gap, not inferred instructions. Caller
   insertion fill independent of vector defaultzero. */

void __thiscall
UInt16WorldGrid_ChangeLevelCount(void *this,int count,uchar appendMode,uchar dimensionsOnly)

{
  int *this_00;
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  if (dimensionsOnly == '\0') {
    iVar2 = *(int *)((int)this + 0xc);
    if ((((appendMode == '\0') && (count < 0)) && (0 < iVar2)) && (-count < iVar2)) {
      iVar1 = *(int *)((int)this + 4) * *(int *)((int)this + 8) * -count;
      iVar3 = (iVar2 + count) * *(int *)((int)this + 4) * *(int *)((int)this + 8) + iVar1;
      if (iVar1 < iVar3) {
        iVar4 = 0;
        do {
          *(undefined2 *)(iVar4 + *(int *)((int)this + 0x10)) =
               *(undefined2 *)(*(int *)((int)this + 0x10) + iVar1 * 2);
          iVar1 = iVar1 + 1;
          iVar4 = iVar4 + 2;
        } while (iVar1 < iVar3);
      }
    }
    *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + count;
    this_00 = (int *)((int)this + 0x10);
    UInt16Vector_ResizeZeroed
              (this_00,*(int *)((int)this + 8) * *(int *)((int)this + 4) * *(int *)((int)this + 0xc)
              );
    if (((appendMode == '\0') && (0 < count)) && (0 < iVar2)) {
      iVar2 = *(int *)((int)this + 8) * *(int *)((int)this + 4) * iVar2 + -1;
      if (-1 < iVar2) {
        iVar1 = ((*(int *)((int)this + 0x14) - *this_00 >> 1) + -1) * 2;
        do {
          *(undefined2 *)(iVar1 + *this_00) = *(undefined2 *)(*this_00 + iVar2 * 2);
          iVar1 = iVar1 + -2;
          iVar2 = iVar2 + -1;
        } while (-1 < iVar2);
      }
    }
    return;
  }
  *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + count;
  return;
}

