/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 routing footprint table and kind contract): Analyst name. For ordinary
   finite inputs in Int64 range, original x87 multiplication/conversion truncates as described;
   exceptional values and changed rounding modes are not generalized. cdecl three stack
   arguments:kind low byte, float XZ pointer, level32; caller cleanup, UInt64 EDX:EAX result. X87
   loads 3.0 at FA2B9C, multiplies Z then truncates via F7F656 while retaining 3 on x87; multiply
   remaining 3 by X and truncate.
   instance64=((level&FF)<<32)|((trunc(3*Z)&FFFF)<<16)|(trunc(3*X)&FFFF). Call 7CFC30 with type
   2,kind,instanceLow,instanceHigh; low result marker 5,kind byte 1, level byte 6. Do not
   reinterpret extraout_ST0 in actualC as unknown second scale or full signed level preservation. */

ulonglong __cdecl LotRouting_BuildTypedFootprintOwnerId(byte kind,float *positionXZ,int level)

{
  float10 extraout_ST0;
  longlong lVar1;
  longlong lVar2;
  ulonglong uVar3;
  
  lVar1 = Compiler_TruncateX87ToInt64Fallback((float10)positionXZ[1] * (float10)DAT_00fa2b9c);
  lVar2 = Compiler_TruncateX87ToInt64Fallback(extraout_ST0 * (float10)*positionXZ);
  uVar3 = PackTypedObjectIdentifier(2,kind,(int)lVar1 << 0x10 | (uint)lVar2 & 0xffff,level & 0xff);
  return uVar3;
}

