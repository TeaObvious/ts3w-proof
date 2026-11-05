/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree numeric instruction contract. No meaningful ECX/EDX or stack inputs, RET.
   Loads global DOUBLE011D9868; x87 helper toEAX. signed quotient truncation n/127773 via
   IMUL834E0B5F/SAR16/signcorrection. Computes wrapping low32 n*16807 - quotient*2147483647;
   ifsigned<=0 adds2147483647. FILD signednext, FSTbinary64 state, FMUL storedbinary32
   reciprocal01017BF4(word30000000). Return ST0 WITHOUTbinary32store. No universal ambient x87
   precision is established. Negative/out-of-domain state and outputnormalization assumptions
   require caller admission. */

float10 __cdecl TreeRandom_RawGlobal(void)

{
  int iVar1;
  undefined4 local_4;
  
  iVar1 = Compiler_TruncateX87ToLowInt32((float10)TreeRandom_GlobalStateAsDouble);
  local_4 = iVar1 * 0x41a7 + (iVar1 / 0x1f31d) * -0x7fffffff;
  if (local_4 < 1) {
    local_4 = local_4 + 0x7fffffff;
  }
  TreeRandom_GlobalStateAsDouble = (double)local_4;
  return (float10)local_4 * (float10)FLOAT_01017bf4;
}

