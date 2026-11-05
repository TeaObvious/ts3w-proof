/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree numeric instruction contract. Shared117-byte x87 conversion body reached by
   dispatcher conditional jump; separate original function body/pair, not part of dispatcher28-byte
   envelope. Input ST0 popped, signed64 bits EDX:EAX. FISTP QWORD underambientrounding, FILD result
   and sign-based correction implement truncation for selectednormalfiniteinrange inputs. Decompiler
   ROUND and integercasts of rawfloatbits are artifacts; instructions govern sign
   tests/carry/borrow. Nonfinite/outofrange/exception and changed roundingmode are not generalized.
   CustomST0input/EDX:EAXreturn is explicit; no fabricated ECX/EDX inputs. */

longlong __cdecl Compiler_TruncateX87ToInt64Fallback(float10 value)

{
  ulonglong uVar1;
  uint uVar2;
  float fVar3;
  undefined4 local_20;
  undefined4 uStack_1c;
  
  uVar1 = (ulonglong)ROUND(value);
  local_20 = (uint)uVar1;
  uStack_1c = (float)(uVar1 >> 0x20);
  fVar3 = (float)value;
  if ((local_20 != 0) || (fVar3 = uStack_1c, (uVar1 & 0x7fffffff00000000) != 0)) {
    if ((int)fVar3 < 0) {
      uVar1 = uVar1 + (0x80000000 < (uint)-(float)(value - (float10)(longlong)uVar1));
    }
    else {
      uVar2 = (uint)(0x80000000 < (uint)(float)(value - (float10)(longlong)uVar1));
      uVar1 = CONCAT44((int)uStack_1c - (uint)(local_20 < uVar2),local_20 - uVar2);
    }
  }
  return uVar1;
}

