/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 complete existing body [[004f46e0, 004f472a]]: 75 original owned bytes/30 actual Listing
   instructions. Four physical destination/capacity/source/sourceCount arguments, plain RET.
   FFFFFFFF source count calls004FE2A0; explicit count is retained. Invoke004F40F0 with
   sourceEncoding8 and destinationEncoding16. If producedUnits<originalCapacity, write a UTF-16 zero
   at destination[producedUnits]; return producedUnits. No terminator is promised when output fills
   capacity. Preserve inferred pointer types and current ReadChar caller trailing-count argument
   rather than silently expanding its input length. */

uint __cdecl
Utf_DecodeByteBufferWithOptionalTerminator(LPWSTR param_1,uint param_2,LPCWSTR param_3,uint param_4)

{
  uint uVar1;
  LPCWSTR pWVar2;
  uint uVar3;
  
  pWVar2 = param_3;
  uVar1 = param_2;
  uVar3 = param_4;
  if (param_4 == 0xffffffff) {
    uVar3 = FUN_004fe2a0((char *)param_3);
  }
  Utf_ConvertEncodingUnits(pWVar2,uVar3,8,param_1,&param_2,0x10);
  if (param_2 < uVar1) {
    param_1[param_2] = L'\0';
  }
  return param_2;
}

