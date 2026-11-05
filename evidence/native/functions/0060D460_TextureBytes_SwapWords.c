/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. cdecl dest,source,byteCount. Swaps bytes of
   complete16-bit words; no odd-tail copy. In-place use is possible; source/destination ownership is
   caller's responsibility. */

void __cdecl TextureBytes_SwapWords(undefined2 *param_1,undefined2 *param_2,uint param_3)

{
  undefined2 uVar1;
  uint uVar2;
  
  for (uVar2 = param_3 >> 1; uVar2 != 0; uVar2 = uVar2 - 1) {
    uVar1 = *param_2;
    param_2 = param_2 + 1;
    *param_1 = CONCAT11((char)uVar1,(char)((ushort)uVar1 >> 8));
    param_1 = param_1 + 1;
  }
  return;
}

