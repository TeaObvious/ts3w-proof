/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX manager, RET8 UInt64 hash, EDX:EAX UInt64 result.
   Iterate 32-byte map records from manager+10 to +14. Find uses both key DWORDs; compare returned
   node to end sentinel. FIRST FOUND map returns node+8/+C even if mapped GUID is zero; only absent
   from all maps returns zero. Physical package enumeration/precedence is a separate producer
   question. */

ulonglong __thiscall NameGuidMaps_FindFirstByHash(void *this,ulonglong nameHash)

{
  void *pvVar1;
  void *this_00;
  int local_8 [2];
  
  this_00 = *(void **)((int)this + 0x10);
  pvVar1 = *(void **)((int)this + 0x14);
  while( true ) {
    if (this_00 == pvVar1) {
      return 0;
    }
    U64PairMap_Find(this_00,local_8,&nameHash);
    if (local_8[0] != *(int *)(*(int *)((int)this_00 + 4) + *(int *)((int)this_00 + 8) * 4)) break;
    this_00 = (void *)((int)this_00 + 0x20);
  }
  return *(ulonglong *)(local_8[0] + 8);
}

