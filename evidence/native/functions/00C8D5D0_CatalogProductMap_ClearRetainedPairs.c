/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXpair vector no stack input/plainRET void. Walks eight-byte rows, releases every nonnull
   row+4 product and resets end to begin. Used to rebuild tool proxy bank, with no fabricated
   zero-cost entries. */

void __thiscall CatalogProductMap_ClearRetainedPairs(void *this)

{
  uint uVar1;
  uint uVar2;
  
  uVar2 = *(uint *)this;
  uVar1 = *(uint *)((int)this + 4);
  if (uVar1 <= uVar2) {
    *(uint *)((int)this + 4) = uVar2;
    return;
  }
  do {
    if (*(int **)(uVar2 + 4) != (int *)0x0) {
      (**(code **)(**(int **)(uVar2 + 4) + 4))();
    }
    uVar2 = uVar2 + 8;
  } while (uVar2 < uVar1);
  *(undefined4 *)((int)this + 4) = *(undefined4 *)this;
  return;
}

