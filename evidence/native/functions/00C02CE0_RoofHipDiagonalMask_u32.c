/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 roof numeric instruction contract. cdecl four UInt32 stack words x,z,width,height,
   RET; result only AL. Computes unsigned min(width>>1,height>>1), unsigned comparisons and wrapping
   width-x-1 / height-z-1. Masks are 10,6,9,5 or0; no signed bounds guard. C parameter stack-slot
   reuse is compiler storage, not mutation of caller dimensions. Entire131-byte body verified.
   Callers include ordinary/diagonal world-coordinate producers and HalfHip wrapper; their
   conversion/admission is separate. */

byte __cdecl RoofHipDiagonalMask_u32(uint x,uint z,uint width,uint height)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  byte bVar4;
  uint *puVar5;
  
  uVar3 = height;
  uVar2 = width;
  height = height >> 1;
  width = width >> 1;
  bVar4 = 0;
  puVar5 = &height;
  if (width <= height) {
    puVar5 = &width;
  }
  uVar1 = *puVar5;
  if (uVar1 < x) {
    if (z <= uVar1) {
      if (z == (uVar2 - x) - 1) {
        bVar4 = 9;
      }
      if (z <= uVar1) {
        return bVar4;
      }
    }
    if ((uVar2 - x) + -1 == (uVar3 - z) + -1) {
      bVar4 = bVar4 | 5;
    }
  }
  else if (uVar1 < z) {
    if (x == (uVar3 - z) - 1) {
      return 6;
    }
  }
  else if (x == z) {
    return 10;
  }
  return bVar4;
}

