/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 complete existing body [[004f40d0, 004f40e6]]: 23 original owned bytes/8 actual Listing
   instructions. One byte-pointer stack argument, plain RET. Zero-extend the first byte and load
   256-byte table00FBA588; return tableValue-1 when nonzero, otherwise0.
   Table00..7F=1,80..C1=0,C2..DF=2,E0..EF=3,F0..F4=4,F5..FF=0. Thus ASCII and rejected leads both
   yield0. This is trailing-byte count classification, not a complete validator or converter.
   Misleading existing data alias is a decompiler symbol artifact; no data type/storage repair. */

int __cdecl Utf_GetTrailingByteCount(byte *param_1)

{
  if (*(byte *)((int)&PTR_s_anager_IsCustomProxyControlImpl_010100e8_0x19_00fba588 + (uint)*param_1)
      == 0) {
    return 0;
  }
  return *(byte *)((int)&PTR_s_anager_IsCustomProxyControlImpl_010100e8_0x19_00fba588 +
                  (uint)*param_1) - 1;
}

