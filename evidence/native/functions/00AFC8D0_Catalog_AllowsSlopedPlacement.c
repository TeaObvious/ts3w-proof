/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 placement/source boundary. cdecl one pointer word/plainRET/AL result. Nonnull
   catalog: original+98 bits19 or17, or original+D0 bit11, yieldsAL1; otherwiseAL0. Null leaves
   upperEAX incidental. Current ObjectTypeFlags FloatsOnWater80000/AllowOnSlope20000 cover first
   two; third is separate catalog lane. */

uint __cdecl Catalog_AllowsSlopedPlacement(int param_1)

{
  uint in_EAX;
  
  if ((param_1 != 0) &&
     (((in_EAX = *(uint *)(param_1 + 0x98), (in_EAX >> 0x13 & 1) != 0 ||
       (in_EAX = in_EAX >> 0x11, (in_EAX & 1) != 0)) ||
      (in_EAX = *(uint *)(param_1 + 0xd0) >> 0xb, (in_EAX & 1) != 0)))) {
    return CONCAT31((int3)(in_EAX >> 8),1);
  }
  return in_EAX & 0xffffff00;
}

