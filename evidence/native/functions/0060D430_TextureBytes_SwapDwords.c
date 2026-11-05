/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. cdecl dest,source,byteCount. Swaps bytes of each
   complete32-bit word, loops count>>2; tail bytes are not copied. In-place used for128-byte DDS
   header. Does not itself establish caller endianness policy. */

void __cdecl TextureBytes_SwapDwords(uint *param_1,uint *param_2,uint param_3)

{
  uint uVar1;
  uint uVar2;
  
  for (uVar2 = param_3 >> 2; uVar2 != 0; uVar2 = uVar2 - 1) {
    uVar1 = *param_2;
    *param_1 = uVar1 >> 0x18 | (uVar1 & 0xff0000) >> 8 | (uVar1 & 0xff00) << 8 | uVar1 << 0x18;
    param_2 = param_2 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

