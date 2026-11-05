/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXvector+unsignedelementCount RET4 void. Currentcount=(end-begin)>>1. Growth calls67F140
   with numberofUSHORTs andexplicitushortzero; shrink/equalupdatesend atbegin+count*2. Shared vector
   mechanism; not a floor-only allocator. */

void __thiscall UInt16Vector_ResizeZeroed(void *this,uint elementCount)

{
  void *_Dst;
  undefined4 *_Src;
  uint uVar1;
  
  _Src = *(undefined4 **)((int)this + 4);
  uVar1 = (int)_Src - *(int *)this >> 1;
  if (uVar1 < elementCount) {
    uVar1 = elementCount - uVar1;
    elementCount = 0;
    FUN_0067f140(this,_Src,uVar1,(undefined2 *)&elementCount);
    return;
  }
  _Dst = (void *)(*(int *)this + elementCount * 2);
  memmove(_Dst,_Src,0);
  *(int *)((int)this + 4) = *(int *)((int)this + 4) + ((int)_Src - (int)_Dst >> 1) * -2;
  return;
}

