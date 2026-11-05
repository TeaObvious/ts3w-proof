/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX map, RET8(outIterator,key64Pointer), returns
   outIterator. Bucket index=unsigned lowDWORD(key) modulo bucketCount; equality compares BOTH64-bit
   key halves. Nodes advance+10. Missing writes map end sentinel; hash equality is not lowDWORD
   equality. */

void * __thiscall U64PairMap_Find(void *this,void *outIterator,ulonglong *key)

{
  int iVar1;
  uint uVar2;
  int *local_8;
  undefined4 *local_4;
  
  uVar2 = (uint)*key % *(uint *)((int)this + 8);
  iVar1 = *(int *)((int)this + 4);
  local_8 = *(int **)(iVar1 + uVar2 * 4);
  local_4 = (undefined4 *)(iVar1 + uVar2 * 4);
  if (local_8 != (int *)0x0) {
    do {
      if (((int)*key == *local_8) && (*(int *)((int)key + 4) == local_8[1])) goto LAB_00923682;
      local_8 = (int *)local_8[4];
    } while (local_8 != (int *)0x0);
  }
  local_4 = (undefined4 *)(iVar1 + *(uint *)((int)this + 8) * 4);
  local_8 = (int *)*local_4;
LAB_00923682:
  *(int **)outIterator = local_8;
  *(undefined4 **)((int)outIterator + 4) = local_4;
  return outIterator;
}

