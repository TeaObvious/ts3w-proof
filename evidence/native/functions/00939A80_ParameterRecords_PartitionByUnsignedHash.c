/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. cdecl FOUR physical words; fourth UNUSED.
   Copies all16 bytes of pivot record to local before scanning. Compares only unsigned hashDWORD,
   advances first while<pivot, decrements last while>pivot, swaps whole16-byte records when
   first<last INCLUDING equal hashes, then advances first. Returns cut pointer fullEAX. This is the
   concrete >28 instability producer, not type-aware or stable partition. */

uint * __cdecl
ParameterRecords_PartitionByUnsignedHash
          (uint *first,uint *last,uint *pivotRecord,uint unusedComparatorWord)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  
  uVar2 = *pivotRecord;
  while( true ) {
    for (; *first < uVar2; first = first + 4) {
    }
    last = last + -4;
    uVar1 = *last;
    while (uVar2 < uVar1) {
      last = last + -4;
      uVar1 = *last;
    }
    if (last <= first) break;
    uVar1 = *first;
    uVar3 = first[1];
    uVar4 = first[2];
    uVar5 = first[3];
                    /* Swap whole descriptor even when keys compare equal: first<last is the only
                       swap gate here. */
    *first = *last;
    first[1] = last[1];
    first[2] = last[2];
    first[3] = last[3];
    *last = uVar1;
    last[1] = uVar3;
    last[2] = uVar4;
    last[3] = uVar5;
    first = first + 4;
  }
  return first;
}

