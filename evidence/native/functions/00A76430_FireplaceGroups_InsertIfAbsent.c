/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 native unique uint32-key hash-map insertion, ECXmap, physical output-iterator
   pointer/key-value pointer/allocator word, RET0C. Hash key modulo bucket count, chain at node14.
   Existing key returns unchanged node and inserted byte0; no replacement. New node deep-copies
   association viaA760C0 and inserted byte1. A769F0 uses this without replacing an existing vector,
   whereas A76520 separately looks up and overwrites vector after insertion. */

undefined * __thiscall
FireplaceGroups_InsertIfAbsent
          (void *this,undefined *outputIterator,undefined *keyAndVector,uint unusedWord)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  uint *puVar4;
  int iVar5;
  void *this_00;
  uint uVar6;
  char local_8 [4];
  uint local_4;
  
  uVar3 = *(uint *)keyAndVector;
  uVar6 = uVar3 % *(uint *)((int)this + 8);
  puVar1 = (undefined4 *)(*(int *)((int)this + 4) + uVar6 * 4);
  puVar4 = (uint *)*puVar1;
  while( true ) {
    if (puVar4 == (uint *)0x0) {
      HashGrowth_SelectPrimeCapacity
                ((void *)((int)this + 0x10),local_8,*(uint *)((int)this + 8),
                 *(uint *)((int)this + 0xc),1);
      this_00 = (void *)FUN_004e4500(0x18,*(undefined4 *)((int)this + 0x1c),0);
      if (this_00 != (void *)0x0) {
        FUN_00a760c0(this_00,(undefined4 *)keyAndVector);
      }
      *(undefined4 *)((int)this_00 + 0x14) = 0;
      if (local_8[0] != '\0') {
        uVar6 = uVar3 % local_4;
        FireplaceGroups_Rehash(this,local_4);
      }
      iVar2 = uVar6 * 4;
      *(undefined4 *)((int)this_00 + 0x14) = *(undefined4 *)(iVar2 + *(int *)((int)this + 4));
      *(void **)(iVar2 + *(int *)((int)this + 4)) = this_00;
      *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + 1;
      iVar5 = *(int *)((int)this + 4);
      *(void **)outputIterator = this_00;
      outputIterator[8] = 1;
      *(int *)(outputIterator + 4) = iVar5 + iVar2;
      return outputIterator;
    }
    if (uVar3 == *puVar4) break;
    puVar4 = (uint *)puVar4[5];
  }
  *(uint **)outputIterator = puVar4;
  outputIterator[8] = 0;
  *(undefined4 **)(outputIterator + 4) = puVar1;
  return outputIterator;
}

