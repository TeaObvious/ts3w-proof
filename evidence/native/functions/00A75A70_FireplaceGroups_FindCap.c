/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXmanager + uint64 objectID RET8, EDX:EAX uint64. Native bucket/chain traversal finds
   first vector containing ID and returns its last entry; empty vector skipped. No category check on
   cap query. Returns zero when absent. Bucket traversal is not insertion order for
   multiply-associated IDs. */

ulonglong __thiscall FireplaceGroups_FindCap(void *this,ulonglong objectId)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  
  piVar2 = *(int **)((int)this + 8);
  iVar4 = *piVar2;
  if (iVar4 == 0) {
    piVar2 = piVar2 + 1;
    iVar4 = *piVar2;
    while (iVar4 == 0) {
      piVar2 = piVar2 + 1;
      iVar4 = *piVar2;
    }
    iVar4 = *piVar2;
  }
  do {
    if (iVar4 == *(int *)(*(int *)((int)this + 8) + *(int *)((int)this + 0xc) * 4)) {
      return 0;
    }
    piVar1 = *(int **)(iVar4 + 8);
    piVar3 = *(int **)(iVar4 + 4);
    if (piVar3 != piVar1) {
      do {
        if ((*piVar3 == (int)objectId) && (piVar3[1] == objectId._4_4_)) break;
        piVar3 = piVar3 + 2;
      } while (piVar3 != piVar1);
      if (piVar3 != piVar1) {
        return *(ulonglong *)(piVar1 + -2);
      }
    }
    iVar4 = *(int *)(iVar4 + 0x14);
    while (iVar4 == 0) {
      piVar1 = piVar2 + 1;
      piVar2 = piVar2 + 1;
      iVar4 = *piVar1;
    }
  } while( true );
}

