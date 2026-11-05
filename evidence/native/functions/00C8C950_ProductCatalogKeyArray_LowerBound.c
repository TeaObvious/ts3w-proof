/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role. Physical cdecl4stack words: begin
   pointer,end pointer,16-byte query-key pointer,opaqueUnused4. Only first3are read; actual caller
   C8DB20 pushes fourth from zero-extended header byte then cleans16bytes, while this body plainRET
   leaves stack cleanup to caller. EAX returns lower-bound row pointer. Signed byte-span/24 count
   uses IMUL2AAAAAAB,SAR2,sign adjustment; midpoint uses signed count>>1. Each row is24bytes.
   Compare candidate UInt32 key words against query in exact lexicographic order0,1,3,2 using
   carry/SETC, never signed-less-than or a UInt64 highword-first compare. Candidate<query advances
   begin=row+24 and subtracts half+1 from count; otherwise keeps lowerhalf. Count<=0 returns begin.
   Requires matching sorted array/valid span; no range/overflow/null validation is established.
   Fourth word is opaque and unused, not a guessed Boolean API. Resource key meaning is established
   by original CE61D0 producer: words are instanceLo,instanceHi,type,group; that implies
   lowword-first identity ordering, not natural UInt64 display sorting. */

void * __cdecl
ProductCatalogKeyArray_LowerBound(void *begin,void *end,void *productKey,uint opaqueUnused4)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  bool bVar4;
  
  iVar3 = ((int)end - (int)begin) / 0x18;
  while (iVar2 = iVar3, 0 < iVar2) {
    iVar3 = iVar2 >> 1;
    uVar1 = *(uint *)((int)begin + iVar3 * 0x18);
    bVar4 = uVar1 < *(uint *)productKey;
    if (((uVar1 == *(uint *)productKey) &&
        (uVar1 = *(uint *)((int)begin + iVar3 * 0x18 + 4),
        bVar4 = uVar1 < *(uint *)((int)productKey + 4), uVar1 == *(uint *)((int)productKey + 4))) &&
       (uVar1 = *(uint *)((int)begin + iVar3 * 0x18 + 0xc),
       bVar4 = uVar1 < *(uint *)((int)productKey + 0xc), uVar1 == *(uint *)((int)productKey + 0xc)))
    {
      bVar4 = *(uint *)((int)begin + iVar3 * 0x18 + 8) < *(uint *)((int)productKey + 8);
    }
    if (bVar4) {
      begin = (void *)((int)begin + iVar3 * 0x18 + 0x18);
      iVar3 = iVar2 + (-1 - iVar3);
    }
  }
  return begin;
}

