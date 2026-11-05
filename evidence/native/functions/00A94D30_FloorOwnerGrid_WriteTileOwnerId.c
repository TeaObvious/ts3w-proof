/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECXgrid +4stackDWORDs ownerBytepointer/x/z/relativelevel
   RET10hex, void. Writes ID into native tile grid at admitted coordinate. Ownership is perTILE,
   independent ofwhichquarter triggeredwrite; current Game conflicts therefore cannot be inferred
   frommaskpixelsalone. Addressing/bitdomain follows original instructions; no new layergrowth or
   bounds checks inferred. */

void __thiscall
FloorOwnerGrid_WriteTileOwnerId(void *this,char *param_1,uint param_2,uint param_3,int param_4)

{
  ushort *puVar1;
  int iVar2;
  void *_Dst;
  int iVar3;
  
  iVar3 = (*(int *)((int)this + 0x20) * param_4 + ((int)param_2 >> 2)) * *(int *)((int)this + 0x24)
          + ((int)param_3 >> 2);
  puVar1 = (ushort *)(*(int *)((int)this + 0x48) + iVar3 * 2);
  if ((*puVar1 & 0x8000) != 0) {
    if (*param_1 == *(char *)(iVar3 + *(int *)((int)this + 0x38))) {
      return;
    }
    iVar2 = *(int *)((int)this + 0x2c) - *(int *)((int)this + 0x28);
    FUN_00412e20((int *)((int)this + 0x28),iVar2 + 0x10);
    _Dst = (void *)(*(int *)((int)this + 0x28) + iVar2);
    memset(_Dst,(uint)*(byte *)(*(int *)((int)this + 0x38) + iVar3),
           *(int *)((int)this + 0x2c) - (int)_Dst);
    *(short *)(iVar3 * 2 + *(int *)((int)this + 0x48)) = (short)(iVar2 >> 4);
  }
  *(char *)(*(int *)((int)this + 0x28) + ((param_2 & 3) + (uint)*puVar1 * 4) * 4 + (param_3 & 3)) =
       *param_1;
  return;
}

