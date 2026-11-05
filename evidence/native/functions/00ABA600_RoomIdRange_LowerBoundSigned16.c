/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 signed Int16 lower bound over contiguous two-byte entries [begin,end). Cdecl
   caller passes four stack arguments; comparisonState is not read in this body. Signed SAR computes
   entry count; WORD CMP with JGE at 00aba624..00aba628 implements signed room ordering despite
   MOVZX loading key into ESI. Return EAX is first entry >= *roomId, or end. Complete original body
   ends at RET 00aba63f; no original bytes changed. */

short * __cdecl
RoomIdRange_LowerBoundSigned16(short *begin,short *end,short *roomId,uchar comparisonState)

{
  int iVar1;
  int iVar2;
  
  iVar2 = (int)end - (int)begin >> 1;
  if (0 < iVar2) {
    do {
      iVar1 = iVar2 >> 1;
      if (begin[iVar1] < *roomId) {
        begin = begin + iVar1 + 1;
        iVar1 = iVar2 + (-1 - iVar1);
      }
      iVar2 = iVar1;
    } while (0 < iVar1);
  }
  return begin;
}

