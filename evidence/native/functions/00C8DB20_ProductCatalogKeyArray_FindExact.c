/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role. Physical thiscall ECX array header,
   stack output8-byte range pointer then16-byte query-key pointer; RET8 and EAX returns that SAME
   output pointer on BOTH paths via MOV EAX,[ESP+C] after savedESI/EDI. Header begin/end are+0/+4.
   MOVZX headerbyte+10hex is pushed FIRST, before query/end/begin, becoming fourth incoming opaque
   stackword to C8C950; CALL C8DB33 and ADD ESP,10hex C8DB3A prove4physical arguments. Lower-bound
   candidate equal to end yields empty endpoints. Otherwise compare query versus candidate unsigned
   lexicographic words0,1,3,2 (SETC), rejecting a strictly less query. Combined with lower_bound
   this means exact full16-byte key. Success writes[row,row+18hex), miss
   writes[candidate,candidate). No CLR dictionary/group fallback or owned product reference is
   created. Assumes sorted well-formed contiguous24-byte rows, valid header/output/query; no
   malformed-span/null validation. */

void * __thiscall ProductCatalogKeyArray_FindExact(void *this,void *outputRange,void *productKey)

{
  uint *end;
  uint *puVar1;
  bool bVar2;
  
  end = *(uint **)((int)this + 4);
  puVar1 = ProductCatalogKeyArray_LowerBound
                     (*(void **)this,end,productKey,(uint)*(byte *)((int)this + 0x10));
  if (puVar1 != end) {
    bVar2 = *(uint *)productKey < *puVar1;
    if (((*(uint *)productKey == *puVar1) &&
        (bVar2 = *(uint *)((int)productKey + 4) < puVar1[1],
        *(uint *)((int)productKey + 4) == puVar1[1])) &&
       (bVar2 = *(uint *)((int)productKey + 0xc) < puVar1[3],
       *(uint *)((int)productKey + 0xc) == puVar1[3])) {
      bVar2 = *(uint *)((int)productKey + 8) < puVar1[2];
    }
    if (!bVar2) {
      *(uint **)outputRange = puVar1;
      *(uint **)((int)outputRange + 4) = puVar1 + 6;
      return outputRange;
    }
  }
  *(uint **)outputRange = puVar1;
  *(uint **)((int)outputRange + 4) = puVar1;
  return outputRange;
}

