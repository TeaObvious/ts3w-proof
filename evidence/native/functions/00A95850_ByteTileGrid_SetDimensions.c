/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXgrid+three32bitdimensions RET0Chex void. Storeswidth+4,depth+8,levels+C; block
   widthsceil(dim/4) fromsignedadd3/SAR2, allocates refs/uniformbytes, newrefs8000. No
   comparisonwithanotherlot dimensions or explicit max8 here. Overflow/negative hugefields have
   unsafe native allocation/loop domains, not a managed safety requirement. */

void __thiscall ByteTileGrid_SetDimensions(void *this,int param_1,int param_2,int param_3)

{
  int *this_00;
  undefined2 *puVar1;
  int iVar2;
  uint uVar3;
  undefined2 *puVar4;
  int iVar5;
  
  *(int *)((int)this + 4) = param_1;
  iVar2 = param_2 + 3 >> 2;
  iVar5 = param_1 + 3 >> 2;
  *(int *)((int)this + 0x24) = iVar2;
  uVar3 = iVar2 * iVar5 * param_3;
  *(int *)((int)this + 0xc) = param_3;
  *(int *)((int)this + 0x20) = iVar5;
  this_00 = (int *)((int)this + 0x48);
  *(int *)((int)this + 8) = param_2;
  iVar2 = *(int *)((int)this + 0x4c) - *this_00 >> 1;
  FUN_0067f5e0(this_00,uVar3);
  if (uVar3 - iVar2 != 0 && iVar2 <= (int)uVar3) {
    puVar1 = *(undefined2 **)((int)this + 0x4c);
    for (puVar4 = (undefined2 *)(*this_00 + iVar2 * 2); puVar4 != puVar1; puVar4 = puVar4 + 1) {
      *puVar4 = 0x8000;
    }
  }
  FUN_00412e20((void *)((int)this + 0x38),uVar3);
  return;
}

