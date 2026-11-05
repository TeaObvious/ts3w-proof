/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree numeric instruction contract. Input ST0 is popped, signed32 result consumed
   fromEAX. Native featureflag01235374 nonzero: FSTPbinary64 thenCVTTSD2SI EAX, EDX UNCHANGED.
   Shared x87 fallback produces low32(EAX) and incidental highEDX; no ECX/EDX input ABI. Custom
   ST0->EAX signature models common32bit consumer, not a universal signed64 return. Selected valid
   finite RNG inputs are in signed32 range; nonfinite/out-of-range conversion/exception/controlword
   are not inferred from C. Original fallback FISTP plus sign correction, not decompiler ROUND
   alone. No native byte changes. */

int __cdecl Compiler_TruncateX87ToLowInt32(float10 value)

{
  ulonglong uVar1;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  
  if (DAT_01235374 != 0) {
    return (int)value;
  }
  uStack_1c = (float)value;
  uVar1 = (ulonglong)ROUND(value);
  uStack_20 = (int)uVar1;
  if ((uStack_20 == 0) && (uStack_1c = (float)(uVar1 >> 0x20), (uVar1 & 0x7fffffff00000000) == 0)) {
    uStack_20 = 0;
  }
  else if ((int)uStack_1c < 0) {
    uStack_20 = uStack_20 + (uint)(0x80000000 < (uint)-(float)(value - (float10)(longlong)uVar1));
  }
  else {
    uStack_20 = uStack_20 - (uint)(0x80000000 < (uint)(float)(value - (float10)(longlong)uVar1));
  }
  return uStack_20;
}

