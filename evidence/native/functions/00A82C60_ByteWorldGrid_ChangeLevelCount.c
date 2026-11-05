/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXgrid+signedcount/appendMode byte/dimensionsOnly byte RET0C void. dimensionsOnly nonzero
   updates levelsC only. Otherwise mode0 negative removes front slices by forward copy when
   0<-count<oldlevels; then levels+=count and resizesactual bytevector. mode0 positive
   witholdlevels>0 shifts old data BACKWARD into new tail. Nonzero appendMode changes only tail, no
   shift. Vector growth itself zero-initializes newelements; callerACDA80 separately fills insertion
   interval. Counts/shape arithmetic are32bit; unsupported over/underflows not safe native array
   contracts. */

void __thiscall
ByteWorldGrid_ChangeLevelCount(void *this,int count,uchar appendMode,uchar dimensionsOnly)

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
      iVar4 = 0;
      for (; iVar1 < iVar3; iVar1 = iVar1 + 1) {
        *(undefined1 *)(*(int *)((int)this + 0x10) + iVar4) =
             *(undefined1 *)(*(int *)((int)this + 0x10) + iVar1);
        iVar4 = iVar4 + 1;
      }
    }
    *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + count;
    this_00 = (int *)((int)this + 0x10);
    ByteVector_ResizeZeroed
              (this_00,*(int *)((int)this + 8) * *(int *)((int)this + 4) * *(int *)((int)this + 0xc)
              );
    if (((appendMode == '\0') && (0 < count)) && (0 < iVar2)) {
      iVar2 = *(int *)((int)this + 8) * *(int *)((int)this + 4) * iVar2;
      iVar1 = *(int *)((int)this + 0x14) - *this_00;
      while (iVar2 = iVar2 + -1, -1 < iVar2) {
        iVar1 = iVar1 + -1;
        *(undefined1 *)(*this_00 + iVar1) = *(undefined1 *)(*this_00 + iVar2);
      }
    }
    return;
  }
  *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + count;
  return;
}

