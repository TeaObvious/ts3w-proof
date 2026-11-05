/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 audio callback instruction review. ECX map RET8(outIterator,keyPtr). Unsigned
   modulo bucket count, chains node+8 and compares DWORD key. Found iterator {node,bucketPtr};
   missing uses extra sentinel bucket at buckets+count*4. No mutation. */

void __thiscall UInt32PairMap_Find(void *this,void *outIterator,uint *key)

{
  int iVar1;
  uint uVar2;
  uint *local_8;
  undefined4 *local_4;
  
  uVar2 = *key % *(uint *)((int)this + 8);
  iVar1 = *(int *)((int)this + 4);
  local_4 = (undefined4 *)(iVar1 + uVar2 * 4);
  for (local_8 = *(uint **)(iVar1 + uVar2 * 4); local_8 != (uint *)0x0; local_8 = (uint *)local_8[2]
      ) {
    if (*key == *local_8) goto LAB_00a5b9e9;
  }
  local_4 = (undefined4 *)(iVar1 + *(uint *)((int)this + 8) * 4);
  local_8 = (uint *)*local_4;
LAB_00a5b9e9:
  *(uint **)outIterator = local_8;
  *(undefined4 **)((int)outIterator + 4) = local_4;
  return;
}

