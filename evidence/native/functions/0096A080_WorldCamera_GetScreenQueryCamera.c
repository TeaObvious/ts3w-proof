/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 object screen-query original boundary review (2026-10-17). Complete51B20Listing.
   Null-check global011EA400, then selected pointer+14, nullable node+8C and node+C; nonnull final
   node moves toECX and tail-jumps existing0095FD90, otherwise EAX0/plainRET. Child remains
   unexpanded; no complete manager/camera lifecycle or plane-producer claim. Original managed World
   facade and UInt64/Boolean forwarder remain authoritative. IDs, physical ABI, inferred
   prototypes/types, body/bytes/Listing/flow/references and analysis state remain unchanged. */

int WorldCamera_GetScreenQueryCamera(void)

{
  int iVar1;
  
  if (DAT_011ea400 == 0) {
    iVar1 = 0;
  }
  else {
    iVar1 = *(int *)(DAT_011ea400 + 0x14);
  }
  if (iVar1 != 0) {
    if (*(int *)(iVar1 + 0x8c) == 0) {
      iVar1 = 0;
    }
    else {
      iVar1 = *(int *)(*(int *)(iVar1 + 0x8c) + 0xc);
    }
    if (iVar1 != 0) {
      iVar1 = FUN_0095fd90(iVar1);
      return iVar1;
    }
  }
  return 0;
}

