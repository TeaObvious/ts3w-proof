/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original DBPF index closure: PC1.67 actual index vtableFB3920+28. ECX owner, key stack+4
   RET4; hash-find through83B040; sentinel=>null, otherwise EAX=node+10 record. No
   offset/size/tombstone predicate here. */

undefined4 * __thiscall DbpfIndex_FindExactRecord(void *this,undefined4 *key)

{
  int local_8 [2];
  
  DbpfIndex_FindIterator((void *)((int)this + 8),local_8,key);
  if (local_8[0] != *(int *)(*(int *)((int)this + 0xc) + *(int *)((int)this + 0x10) * 4)) {
    return (undefined4 *)(local_8[0] + 0x10);
  }
  return (undefined4 *)0x0;
}

