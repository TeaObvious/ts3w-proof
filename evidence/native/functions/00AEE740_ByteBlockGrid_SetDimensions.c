/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX byte block-grid + signed width/depth RET8. Store dimensions at0/4, ceil(width/4)
   blockWidth+8 and ceil(depth/4) blockDepth+C using signed arithmetic-shift. Resize UInt16
   descriptors+30; newly added entries set8000. ByteVector+10 resized to block count. This is the
   retained 4x4 compressed alpha storage shape, not an x/z transpose of a flat row-major decoded
   buffer. Allocation and unsupported negative dimensions remain separate. */

void __thiscall ByteBlockGrid_SetDimensions(void *this,int param_1,int param_2)

{
  int *this_00;
  undefined2 *puVar1;
  int iVar2;
  uint elementCount;
  undefined2 *puVar3;
  int iVar4;
  
  *(int *)this = param_1;
  iVar4 = param_1 + 3 >> 2;
  iVar2 = param_2 + 3 >> 2;
  *(int *)((int)this + 0xc) = iVar2;
  elementCount = iVar2 * iVar4;
  *(int *)((int)this + 8) = iVar4;
  this_00 = (int *)((int)this + 0x30);
  *(int *)((int)this + 4) = param_2;
  iVar2 = *(int *)((int)this + 0x34) - *this_00 >> 1;
  UInt16Vector_ResizeZeroed(this_00,elementCount);
  if (elementCount - iVar2 != 0 && iVar2 <= (int)elementCount) {
    puVar1 = *(undefined2 **)((int)this + 0x34);
    for (puVar3 = (undefined2 *)(*this_00 + iVar2 * 2); puVar3 != puVar1; puVar3 = puVar3 + 1) {
      *puVar3 = 0x8000;
    }
  }
  ByteVector_ResizeZeroed((void *)((int)this + 0x10),elementCount);
  return;
}

