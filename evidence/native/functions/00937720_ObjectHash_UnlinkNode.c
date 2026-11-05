/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Updates successoriterator by chain/bucket traversal; unlinks
   known node, decrements count. Caller must provide matching node/bucket; not a general safe
   find-and-remove. */

void __thiscall ObjectHash_UnlinkNode(void *this,void *outNext,void *object,void **bucketSlot)

{
  int iVar1;
  void *pvVar2;
  void *pvVar3;
  
  iVar1 = *(int *)((int)object + 0x10);
  *(void ***)((int)outNext + 4) = bucketSlot;
  *(int *)outNext = iVar1;
  while (iVar1 == 0) {
    *(int *)((int)outNext + 4) = *(int *)((int)outNext + 4) + 4;
    iVar1 = **(int **)((int)outNext + 4);
    *(int *)outNext = iVar1;
  }
  pvVar2 = *bucketSlot;
  pvVar3 = *(void **)((int)pvVar2 + 0x10);
  if (pvVar2 != object) {
    for (; pvVar3 != object; pvVar3 = *(void **)((int)pvVar3 + 0x10)) {
      pvVar2 = pvVar3;
    }
    *(undefined4 *)((int)pvVar2 + 0x10) = *(undefined4 *)((int)pvVar3 + 0x10);
    *(int *)((int)this + 0x1028) = *(int *)((int)this + 0x1028) + -1;
    return;
  }
  *bucketSlot = pvVar3;
  *(int *)((int)this + 0x1028) = *(int *)((int)this + 0x1028) + -1;
  return;
}

