/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 rendered-pick contract. cdecl width/height/shiftWord/outWidth/outHeight, RET void.
   Logical SHR uses low5 shift bits; each resulting zero becomes1, even original dimension0. Each
   output pointer independently nullable. No upper mip admission here; do not replace with an
   unbounded language shift. */

void __cdecl
MipDimensions_ShiftAndClampOne
          (uint width,uint height,uint shiftWord,uint *outputWidth,uint *outputHeight)

{
  uint uVar1;
  uint uVar2;
  
  uVar1 = width >> ((byte)shiftWord & 0x1f);
  uVar2 = height >> ((byte)shiftWord & 0x1f);
  if (uVar1 == 0) {
    uVar1 = 1;
  }
  if (uVar2 == 0) {
    uVar2 = 1;
  }
  if (outputWidth != (uint *)0x0) {
    *outputWidth = uVar1;
  }
  if (outputHeight != (uint *)0x0) {
    *outputHeight = uVar2;
  }
  return;
}

