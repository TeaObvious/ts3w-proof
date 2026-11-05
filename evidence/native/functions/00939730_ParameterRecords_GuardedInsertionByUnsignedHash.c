/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. cdecl THREE physical words, third
   comparator/context word UNUSED in body but present in callers. Complete16-byte descriptor moves;
   comparison unsigned strict less, so insertion itself does not shift equal hashes. Guarded first
   boundary stops backward shifts. */

void __cdecl
ParameterRecords_GuardedInsertionByUnsignedHash(uint *first,uint *last,uint unusedComparatorWord)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint *puVar5;
  uint *puVar6;
  
  puVar5 = first;
  if (first != last) {
    while (puVar5 = puVar5 + 4, puVar5 != last) {
      uVar1 = *puVar5;
      uVar2 = puVar5[1];
      uVar3 = puVar5[2];
      uVar4 = puVar5[3];
      for (puVar6 = puVar5; (puVar6 != first && (uVar1 < puVar6[-4])); puVar6 = puVar6 + -4) {
        *puVar6 = puVar6[-4];
        puVar6[1] = puVar6[-3];
        puVar6[2] = puVar6[-2];
        puVar6[3] = puVar6[-1];
      }
      *puVar6 = uVar1;
      puVar6[1] = uVar2;
      puVar6[2] = uVar3;
      puVar6[3] = uVar4;
    }
  }
  return;
}

