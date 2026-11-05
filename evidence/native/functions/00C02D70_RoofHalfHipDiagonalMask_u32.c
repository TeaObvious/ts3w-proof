/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 roof numeric instruction contract. cdecl SIX stack words
   x,z,width,height,dragXWord,dragZWord, RET; tests only low bytes of the two flags, returns mask in
   AL. UNSIGNED width<height picks short axis (tie chooses height). Doubles chosen dimension
   modulo2^32 and subtracts1; false drag low byte shifts its matching coordinate by logical half of
   that doubled-minus-one extent. Calls shared UInt32 mask. No coordinate clamp or special corner
   inheritance. Complete111-byte body. */

byte __cdecl
RoofHalfHipDiagonalMask_u32(uint x,uint z,uint width,uint height,uint dragXWord,uint dragZWord)

{
  byte bVar1;
  
  if (width < height) {
    width = width * 2 - 1;
    if ((char)dragXWord == '\0') {
      bVar1 = RoofHipDiagonalMask_u32((width >> 1) + x,z,width,height);
      return bVar1;
    }
  }
  else {
    height = height * 2 - 1;
    if ((char)dragZWord == '\0') {
      z = (height >> 1) + z;
    }
  }
  bVar1 = RoofHipDiagonalMask_u32(x,z,width,height);
  return bVar1;
}

