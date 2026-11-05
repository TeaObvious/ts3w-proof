/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Four-word backward range copy; descriptive label, not recovered original symbol.
   cdecl srcBegin/srcEnd/dstEnd, plain RET void. Copies last element first and decrements both ends16. This is the overlap-safe direction used by7996F0 rightward movement; not a general memmove or bounds validator. */

void __cdecl FUN_005c74b0(int param_1,int param_2,undefined4 *param_3)

{
  for (; param_2 != param_1; param_2 = param_2 + -0x10) {
    param_3[-4] = *(undefined4 *)(param_2 + -0x10);
    param_3[-3] = *(undefined4 *)(param_2 + -0xc);
    param_3[-2] = *(undefined4 *)(param_2 + -8);
    param_3[-1] = *(undefined4 *)(param_2 + -4);
    param_3 = param_3 + -4;
  }
  return;
}
