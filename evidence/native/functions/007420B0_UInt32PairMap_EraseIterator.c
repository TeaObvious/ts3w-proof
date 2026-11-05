/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 audio callback instruction review. ECX map RET0C(outSuccessor,node,bucketPtr).
   Finds successor across chains/buckets, unlinks selected node, frees node, decrements count before
   returning. Requires valid iterator/map; this body has no absent-key guard or lock. */

void * __thiscall UInt32PairMap_EraseIterator(void *this,void *outSuccessor,void *node,void *bucket)

{
  int iVar1;
  void *pvVar2;
  void *pvVar3;
  
  iVar1 = *(int *)((int)node + 8);
  *(void **)((int)outSuccessor + 4) = bucket;
  *(int *)outSuccessor = iVar1;
  while (iVar1 == 0) {
    *(int *)((int)outSuccessor + 4) = *(int *)((int)outSuccessor + 4) + 4;
    iVar1 = **(int **)((int)outSuccessor + 4);
    *(int *)outSuccessor = iVar1;
  }
  pvVar2 = *(void **)bucket;
  if (pvVar2 == node) {
    *(undefined4 *)bucket = *(undefined4 *)((int)pvVar2 + 8);
  }
  else {
    for (pvVar3 = *(void **)((int)pvVar2 + 8); pvVar3 != node; pvVar3 = *(void **)((int)pvVar3 + 8))
    {
      pvVar2 = pvVar3;
    }
    *(undefined4 *)((int)pvVar2 + 8) = *(undefined4 *)((int)pvVar3 + 8);
  }
  Memory_FreeIfNonNull(node);
  *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + -1;
  return outSuccessor;
}

