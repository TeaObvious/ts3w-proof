/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. cdecl FOUR physical words:
   first,middle,last,comparator/context. Builds heap for[first,middle), scans remaining descriptors
   with unsigned less-than-root, adjusts via939890, then sorts heap via9399B0. For introsort
   fallback middle==last. Full child heap bodies and their rare/malformed-domain outcomes remain
   unexpanded; fourth word is actually propagated, not optional ABI.
   Decompiler artifact: apparent uninitialized local_10/uVar1 carries before and after the loop are
   stack-temporary reconstruction, not literal extra raw loads. Original raw loads the candidate
   descriptor hash only inside the active scan loop at939B40. Do not infer a pre-loop data read or
   undefined-domain policy from those C temporaries. */

void __cdecl
ParameterRecords_PartialSortHeapByUnsignedHash
          (uint *first,uint *middle,uint *last,uint comparatorWord)

{
  uint uVar1;
  uint *puVar2;
  uint local_10;
  uint local_c;
  uint local_8;
  uint local_4;
  
  FUN_00939930(first,middle,comparatorWord);
  uVar1 = local_10;
  for (puVar2 = middle; puVar2 < last; puVar2 = puVar2 + 4) {
    local_10 = *puVar2;
    if (local_10 < *first) {
      local_c = puVar2[1];
      local_8 = puVar2[2];
      local_4 = puVar2[3];
      *puVar2 = *first;
      puVar2[1] = first[1];
      puVar2[2] = first[2];
      puVar2[3] = first[3];
      FUN_00939890(first,0,(int)middle - (int)first >> 4,0,&local_10,comparatorWord);
      uVar1 = local_10;
    }
    local_10 = uVar1;
    uVar1 = local_10;
  }
  local_10 = uVar1;
  FUN_009399b0(first,middle,comparatorWord);
  return;
}

