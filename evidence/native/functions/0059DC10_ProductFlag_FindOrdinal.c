/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STARTUP_READER_0059dc10. One caller-clean physical stack DWORD input, full EAX result,
   plain RET. Linear search21 ordered pairs at1153E70: ordinal i+1 paired with flag1<<i for i0..20.
   Compare exact flag, return paired ordinal; missing flag returns1. Startup logo group derives
   (ordinal-1)<<27 at caller EC8B00, not in this helper. */

undefined4 __cdecl ProductFlag_FindOrdinal(int param_1)

{
  uint uVar1;
  
  uVar1 = 0;
  do {
    if ((&DAT_01153e74)[uVar1 * 2] == param_1) {
      return (&DAT_01153e70)[uVar1 * 2];
    }
    uVar1 = uVar1 + 1;
  } while (uVar1 < 0x15);
  return 1;
}

