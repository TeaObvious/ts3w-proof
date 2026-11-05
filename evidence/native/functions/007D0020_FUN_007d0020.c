/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original semantics. Cdecl nonnullUTF16pointer/plainRET; scans through first zeroU16 and passes preceding unitcount to7CFEC0. Actual fullUInt32hash returns inEAX from callee and survives ADDESP8/POPESI/RET. Current Ghidra C returnvoid omits this result;78CF10 explicitly testsEAX and forwardsit. Count0 emptystring returns811C9DC5. No nullpointer check, CRT locale or nonASCII equivalence inferred. Existing body metadata includes the alignment LEA instruction; no body repair. */

void __cdecl FUN_007d0020(wint_t *param_1)

{
  wint_t wVar1;
  wint_t *pwVar2;
  
  pwVar2 = param_1;
  do {
    wVar1 = *pwVar2;
    pwVar2 = pwVar2 + 1;
  } while (wVar1 != 0);
  Hash_Fnv1CrtLowerUtf16Units(param_1,(int)pwVar2 - (int)(param_1 + 1) >> 1);
  return;
}
