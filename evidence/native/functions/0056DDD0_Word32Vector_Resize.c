/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX 32bit-element vector, elementCount DWORD, RET4 void. Begin/end are vector+0/+4;
   current count=(end-begin)>>2. Growth passes difference count and address of local DWORD0
   to56DB20; shrink updates end after zero-length memmove. Used for raw UInt32 import storage and
   the float-grid resize adjustor; Word32 describes storage width rather than claiming one semantic
   element type. Full allocator/OOM and56DB20 internals remain separate. */

void __thiscall Word32Vector_Resize(void *this,uint elementCount)

{
  void *_Dst;
  undefined4 *_Src;
  uint uVar1;
  
  _Src = *(undefined4 **)((int)this + 4);
  uVar1 = (int)_Src - *(int *)this >> 2;
  if (uVar1 < elementCount) {
    uVar1 = elementCount - uVar1;
    elementCount = 0;
    FUN_0056db20(this,_Src,uVar1,&elementCount);
    return;
  }
  _Dst = (void *)(*(int *)this + elementCount * 4);
  memmove(_Dst,_Src,0);
  *(int *)((int)this + 4) = *(int *)((int)this + 4) + ((int)_Src - (int)_Dst >> 2) * -4;
  return;
}

