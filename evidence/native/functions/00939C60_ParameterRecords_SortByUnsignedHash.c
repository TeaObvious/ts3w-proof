/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. cdecl three physical stack words. Sort key
   is only unsigned descriptor DWORD+0. Count=(last-first) SAR4; depth=2*bitLength(count)-2.
   Introsort first, then count>28: guarded insertion first28 followed by unguarded rest; count<=28
   guarded insertion. Equal keys do not shift in insertion, but the >28 partition can swap equals:
   no unconditional override-wins rule beyond admitted stable-size domain. Empty range skips;
   invalid/huge pointer/count domains unproved. */

void __cdecl ParameterRecords_SortByUnsignedHash(uint *first,uint *last,uint comparatorWord)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  if (first != last) {
    iVar2 = 0;
    iVar3 = (int)last - (int)first >> 4;
    for (iVar1 = iVar3; iVar1 != 0; iVar1 = iVar1 >> 1) {
      iVar2 = iVar2 + 1;
    }
    ParameterRecords_IntrosortByUnsignedHash(first,last,iVar2 * 2 + -2,comparatorWord);
    if (0x1c < iVar3) {
      ParameterRecords_GuardedInsertionByUnsignedHash(first,first + 0x70,comparatorWord);
      ParameterRecords_UnguardedInsertionByUnsignedHash(first + 0x70,last,comparatorWord);
      return;
    }
    ParameterRecords_GuardedInsertionByUnsignedHash(first,last,comparatorWord);
  }
  return;
}

