/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 local light rig contract. cdeclbegin/end RET,48byterecords. Emptyrangenoop.
   Computescountandbitlength, invokes6BAE70withdepth2*bitlength-2; thencount>28
   invokes6B8940first28and6B8A00remainder, else6B8940whole.
   Generalpartition/heap/tieroutineunexpanded, soDONOTclaimstabletotalorderingfromcurrenthostsort.
    */

void __cdecl RigCandidates_SortRange(void *begin,void *end)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  if (begin != end) {
    iVar3 = 0;
    iVar1 = ((int)end - (int)begin) / 0x30;
    for (iVar2 = iVar1; iVar2 != 0; iVar2 = iVar2 >> 1) {
      iVar3 = iVar3 + 1;
    }
    FUN_006bae70(begin,end,iVar3 * 2 + -2);
    if (0x1c < iVar1) {
      RigCandidates_InsertionSort(begin,(undefined4 *)((int)begin + 0x540));
      FUN_006b8a00((undefined4 *)((int)begin + 0x540),end);
      return;
    }
    RigCandidates_InsertionSort(begin,end);
  }
  return;
}

