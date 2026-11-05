/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. cdecl dimension,mipLevel; logical SHR using CL (x86
   mask31), replace zero result with1. RET without callee cleanup. Not an arithmetic signed shift or
   arbitrary-count shift-to-zero. */

uint __cdecl TextureMip_ClampDimension(uint param_1,byte param_2)

{
  uint uVar1;
  
  uVar1 = param_1 >> (param_2 & 0x1f);
  if (uVar1 == 0) {
    uVar1 = 1;
  }
  return uVar1;
}

