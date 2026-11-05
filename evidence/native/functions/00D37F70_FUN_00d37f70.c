/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction-qualified semantics. stdcall two words key pointer/depreciation RET8, x87ST0. Bank2 C8EA70 ->D1A900 exact thunk ->CEF6B0, missing0; low-byte depreciation rounds result tobinary32 before MULSS0.8. Unlike floor leaf no leading11EC8D0 comparison. */

float10 FUN_00d37f70(uint *param_1,char param_2)

{
  undefined *product;
  float10 fVar1;
  float local_4;
  
  local_4 = 0.0;
  product = PatternCatalog_LookupBankProduct(DAT_011ee034,2,param_1,'\x01');
  if (product != (undefined *)0x0) {
    fVar1 = CatalogPrice_ForwardDisplayPrice(product);
    if (param_2 == '\0') {
      return fVar1;
    }
    local_4 = (float)fVar1 * 0.8;
  }
  return (float10)local_4;
}
