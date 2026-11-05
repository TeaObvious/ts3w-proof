/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECX sole argument/no stack/RET. EAX=receiver+6 borrowed
   mutable packedcurrent tilepart pointer. Valid only for iterator lifetime and until Next mutates
   it; no allocation/copy. */

int __fastcall TilePartRectangleIterator_Current(int param_1)

{
  return param_1 + 6;
}

