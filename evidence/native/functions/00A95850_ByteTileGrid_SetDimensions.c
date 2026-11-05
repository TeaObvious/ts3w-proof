/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 ECXgrid+three32bitdimensions RET0Chex void. Storeswidth+4,depth+8,levels+C; block
   widthsceil(dim/4) fromsignedadd3/SAR2, allocates refs/uniformbytes, newrefs8000. No
   comparisonwithanotherlot dimensions or explicit max8 here. Overflow/negative hugefields have
   unsafe native allocation/loop domains, not a managed safety requirement. */

void __thiscall ByteTileGrid_SetDimensions(void *this,int param_1,int param_2,int param_3)

{
  int *this_00;
  undefined2 *puVar1;
  int iVar2;
  uint elementCount;
  undefined2 *puVar3;
  int iVar4;
  
  *(int *)((int)this + 4) = param_1;
  iVar2 = param_2 + 3 >> 2;
  iVar4 = param_1 + 3 >> 2;
  *(int *)((int)this + 0x24) = iVar2;
  elementCount = iVar2 * iVar4 * param_3;
  *(int *)((int)this + 0xc) = param_3;
  *(int *)((int)this + 0x20) = iVar4;
  this_00 = (int *)((int)this + 0x48);
  *(int *)((int)this + 8) = param_2;
  iVar2 = *(int *)((int)this + 0x4c) - *this_00 >> 1;
  UInt16Vector_ResizeZeroed(this_00,elementCount);
  if (iVar2 < (int)elementCount) {
    puVar1 = *(undefined2 **)((int)this + 0x4c);
    for (puVar3 = (undefined2 *)(*this_00 + iVar2 * 2); puVar3 != puVar1; puVar3 = puVar3 + 1) {
      *puVar3 = 0x8000;
    }
  }
  ByteVector_ResizeZeroed((void *)((int)this + 0x38),elementCount);
  return;
}

