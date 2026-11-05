/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. cdecl FOUR physical words; signed depth and
   range-size gate>448bytes (=28records) determine partition recursion, tail-left loop and depth0
   heap fallback. Median-of-three key comparisons unsigned; pivot is copied by partition. Fourth
   comparator/context word propagated. Generic heap children remain unexpanded; whole sorter is not
   stable above28. */

void __cdecl
ParameterRecords_IntrosortByUnsignedHash(uint *first,uint *last,int depthLimit,uint comparatorWord)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  uint *pivotRecord;
  uint *puVar5;
  
  uVar3 = (int)last - (int)first;
  while ((0x1c0 < (int)(uVar3 & 0xfffffff0) && (0 < depthLimit))) {
    uVar1 = *first;
    iVar4 = ((int)last - (int)first >> 4) - ((int)last - (int)first >> 0x1f) >> 1;
    uVar3 = first[iVar4 * 4];
    uVar2 = uVar3;
    puVar5 = first + iVar4 * 4;
    pivotRecord = first;
    if (uVar1 < uVar3) {
      uVar2 = uVar1;
      puVar5 = first;
      pivotRecord = first + iVar4 * 4;
      uVar1 = uVar3;
    }
    if ((last[-4] <= uVar1) && (pivotRecord = puVar5, uVar2 < last[-4])) {
      pivotRecord = last + -4;
    }
    puVar5 = ParameterRecords_PartitionByUnsignedHash(first,last,pivotRecord,comparatorWord);
    depthLimit = depthLimit + -1;
    ParameterRecords_IntrosortByUnsignedHash(puVar5,last,depthLimit,comparatorWord);
    uVar3 = (int)puVar5 - (int)first;
    last = puVar5;
  }
  if (depthLimit == 0) {
    ParameterRecords_PartialSortHeapByUnsignedHash(first,last,last,comparatorWord);
  }
  return;
}

