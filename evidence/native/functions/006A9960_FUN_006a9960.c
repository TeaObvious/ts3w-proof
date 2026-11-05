/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Physical room membership count: ECX tile, stack4 room DWORD, RET4. XOR EAX,EAX followed by four comparisons at tile+7C/+90/+A4/+B8 and conditional increments establishes full EAX0..4. Stored char prototype is incomplete; no prototype edit or invented upper bits.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 006A9960_FUN_006a9960.asm
 */

char __thiscall FUN_006a9960(void *this,int param_1)

{
  char cVar1;
  
  cVar1 = *(int *)((int)this + 0x7c) == param_1;
  if (*(int *)((int)this + 0x90) == param_1) {
    cVar1 = cVar1 + '\x01';
  }
  if (*(int *)((int)this + 0xa4) == param_1) {
    cVar1 = cVar1 + '\x01';
  }
  if (*(int *)((int)this + 0xb8) == param_1) {
    cVar1 = cVar1 + '\x01';
  }
  return cVar1;
}

