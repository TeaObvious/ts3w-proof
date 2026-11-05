/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 rendered-pick contract. cdecl begin/end UInt32 pointers,key pointer RET, returns
   pointer EAX. Signed-positive element range count, half interval; unsigned table entry<key
   advances begin, otherwise takes left half. Complete lower_bound, not float comparison. Can return
   end. Caller dereferences result without a local end guard; selected256-key domain remains within
   table. */

uint * __cdecl UInt32Range_LowerBound(uint *begin,uint *end,uint *keyPointer)

{
  int iVar1;
  int iVar2;
  
  iVar2 = (int)end - (int)begin >> 2;
  if (0 < iVar2) {
    do {
      iVar1 = iVar2 >> 1;
      if (begin[iVar1] < *keyPointer) {
        begin = begin + iVar1 + 1;
        iVar1 = iVar2 + (-1 - iVar1);
      }
      iVar2 = iVar1;
    } while (0 < iVar1);
  }
  return begin;
}

