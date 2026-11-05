/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. cdecl THREE physical words, third
   comparator/context word UNUSED in body but present in callers. Complete16-byte descriptor moves;
   comparison unsigned strict less, so insertion itself does not shift equal hashes. Unguarded
   backward scan requires valid preceding sentinel/range established by caller's sorted initial28;
   malformed caller admission unproved. */

void __cdecl
ParameterRecords_UnguardedInsertionByUnsignedHash(uint *first,uint *last,uint unusedComparatorWord)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint *puVar6;
  uint *puVar7;
  
  for (; first != last; first = first + 4) {
    uVar2 = first[3];
    uVar3 = *first;
    uVar4 = first[1];
    uVar5 = first[2];
    puVar7 = first + -4;
    uVar1 = first[-4];
    puVar6 = first;
    while (uVar3 < uVar1) {
      *puVar6 = *puVar7;
      puVar6[1] = puVar7[1];
      puVar6[2] = puVar7[2];
      puVar6[3] = puVar7[3];
      puVar7 = puVar7 + -4;
      puVar6 = puVar6 + -4;
      uVar1 = *puVar7;
    }
    *puVar6 = uVar3;
    puVar6[1] = uVar4;
    puVar6[2] = uVar5;
    puVar6[3] = uVar2;
  }
  return;
}

