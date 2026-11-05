/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 recovered complete360byte float-grid virtual4 body A92650..A927B7, RET0C. Raw dims4/8/C,
   DWORD vector10/14/18. Signed count plus appendMode byte and dimensionsOnly byte; latter adjusts
   level word only. Mode0 valid negative removes leading planes by forward x87 FLD/FSTP copies;
   after signed count updates levels, Word32Vector_Resize receives width*depth*newLevels. Mode0
   positive shifts retained old planes backward using FLD/FSTP. Nonzero mode keeps tail semantics.
   Raw arithmetic modulo32; no managed range checks. Do not assume x87 NaN copies are
   arbitrary-bit-preserving. Vtable1063DD8+4 verified A92650; direct C6DA60 call pushes three words.
    */

void __thiscall
FloatWorldGrid_ChangeLevelCount(void *this,int count,uchar appendMode,uchar dimensionsOnly)

{
  int *this_00;
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  if (dimensionsOnly == '\0') {
    iVar3 = *(int *)((int)this + 0xc);
    if ((((appendMode == '\0') && (count < 0)) && (0 < iVar3)) && (-count < iVar3)) {
      iVar2 = *(int *)((int)this + 4) * *(int *)((int)this + 8) * -count;
      iVar4 = (iVar3 + count) * *(int *)((int)this + 4) * *(int *)((int)this + 8) + iVar2;
      iVar5 = 0;
      if (3 < iVar4 - iVar2) {
        do {
          iVar1 = iVar2 * 4;
          iVar2 = iVar2 + 4;
          *(undefined4 *)(*(int *)((int)this + 0x10) + iVar5 * 4) =
               *(undefined4 *)(*(int *)((int)this + 0x10) + iVar1);
          iVar5 = iVar5 + 4;
          *(undefined4 *)(*(int *)((int)this + 0x10) + -0xc + iVar5 * 4) =
               *(undefined4 *)(*(int *)((int)this + 0x10) + -0xc + iVar2 * 4);
          *(undefined4 *)(*(int *)((int)this + 0x10) + -8 + iVar5 * 4) =
               *(undefined4 *)(*(int *)((int)this + 0x10) + -8 + iVar2 * 4);
          *(undefined4 *)(*(int *)((int)this + 0x10) + -4 + iVar5 * 4) =
               *(undefined4 *)(*(int *)((int)this + 0x10) + -4 + iVar2 * 4);
        } while (iVar2 < iVar4 + -3);
      }
      if (iVar2 < iVar4) {
        iVar5 = iVar5 * 4;
        do {
          iVar1 = iVar2 * 4;
          iVar2 = iVar2 + 1;
          *(undefined4 *)(iVar5 + *(int *)((int)this + 0x10)) =
               *(undefined4 *)(*(int *)((int)this + 0x10) + iVar1);
          iVar5 = iVar5 + 4;
        } while (iVar2 < iVar4);
      }
    }
    *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + count;
    this_00 = (int *)((int)this + 0x10);
    Word32Vector_Resize(this_00,*(int *)((int)this + 8) * *(int *)((int)this + 0xc) *
                                *(int *)((int)this + 4));
    if (((appendMode == '\0') && (0 < count)) && (0 < iVar3)) {
      iVar3 = *(int *)((int)this + 8) * *(int *)((int)this + 4) * iVar3;
      iVar2 = iVar3 + -1;
      iVar5 = (*(int *)((int)this + 0x14) - *this_00 >> 2) + -1;
      if (3 < iVar3) {
        do {
          iVar3 = iVar2 * 4;
          iVar2 = iVar2 + -4;
          *(undefined4 *)(*this_00 + iVar5 * 4) = *(undefined4 *)(*this_00 + iVar3);
          iVar5 = iVar5 + -4;
          *(undefined4 *)(*this_00 + 0xc + iVar5 * 4) = *(undefined4 *)(*this_00 + 0xc + iVar2 * 4);
          *(undefined4 *)(*this_00 + 8 + iVar5 * 4) = *(undefined4 *)(*this_00 + 8 + iVar2 * 4);
          *(undefined4 *)(*this_00 + 4 + iVar5 * 4) = *(undefined4 *)(*this_00 + 4 + iVar2 * 4);
        } while (2 < iVar2);
      }
      if (-1 < iVar2) {
        iVar5 = iVar5 * 4;
        do {
          iVar3 = iVar2 * 4;
          iVar5 = iVar5 + -4;
          iVar2 = iVar2 + -1;
          *(undefined4 *)(*this_00 + 4 + iVar5) = *(undefined4 *)(*this_00 + iVar3);
        } while (-1 < iVar2);
      }
    }
    return;
  }
  *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + count;
  return;
}

