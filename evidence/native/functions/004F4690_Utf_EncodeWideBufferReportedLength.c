/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 complete existing body [[004f4690, 004f46d1]]: 66 original owned bytes/27 actual Listing
   instructions. Four physical destination/capacity/source/sourceCount arguments, plain RET.
   FFFFFFFF count calls004FE2C0 and adds1; explicit count does not. Invoke004F40F0 with
   sourceEncoding16 and destinationEncoding8. Return produced count MINUS1 when produced is nonzero,
   otherwise0; do not assume this arithmetic only happens for sentinel input. WriteChar007752F0
   passes explicit count1 and forwards this result as native virtual-write length. Preserve stored
   inferred LPWSTR destination projection; concrete code units/counts follow instructions. */

int __cdecl
Utf_EncodeWideBufferReportedLength(LPWSTR param_1,uint param_2,LPCWSTR param_3,uint param_4)

{
  LPCWSTR pWVar1;
  int iVar2;
  uint uVar3;
  
  pWVar1 = param_3;
  uVar3 = param_4;
  if (param_4 == 0xffffffff) {
    iVar2 = FUN_004fe2c0(param_3);
    uVar3 = iVar2 + 1;
  }
  Utf_ConvertEncodingUnits(pWVar1,uVar3,0x10,param_1,&param_2,8);
  if (param_2 != 0) {
    return param_2 - 1;
  }
  return 0;
}

