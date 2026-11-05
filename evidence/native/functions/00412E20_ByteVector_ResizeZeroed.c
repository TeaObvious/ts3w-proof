/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXvector+unsignedelementCount RET4 void. Count=end-begin byteunits; growth inserts
   difference atoldend throughB6F4C0 with explicitbytezero at412E42, preservesoldprefix.
   Shrink/equal computesbegin+requestedcount, performszero-length memmove andupdatesend. This
   compiler-shared vector helper is NOT named exclusively for floor features. */

void __thiscall ByteVector_ResizeZeroed(void *this,uint elementCount)

{
  void *_Src;
  int iVar1;
  void *pvVar2;
  
  _Src = *(void **)((int)this + 4);
  iVar1 = *(int *)this;
  if ((uint)((int)_Src - iVar1) < elementCount) {
    pvVar2 = (void *)((iVar1 - (int)_Src) + elementCount);
    elementCount = elementCount & 0xffffff00;
    FUN_00b6f4c0(this,_Src,pvVar2,(byte *)&elementCount);
    return;
  }
  pvVar2 = (void *)(iVar1 + elementCount);
  memmove(pvVar2,_Src,0);
  *(int *)((int)this + 4) = (int)pvVar2 + (*(int *)((int)this + 4) - (int)_Src);
  return;
}

