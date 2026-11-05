/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction-qualified semantics. cdecl key pointer/low-byte depreciation/plainRET, x87ST0 price. Key comparison to runtime global11EC8D0 can return0; its full runtime identity is not inferred from initial bytes. Otherwise bank1 C8EA70 then CEF6B0. Nondepreciated result staysST0 untilcaller; depreciated result explicitly rounds tobinary32 then MULSS0.8 F9E51C and FLD. No host price finite/nonnegative validation in this leaf. */

float10 __cdecl FUN_00cb0e60(uint *param_1,char param_2)

{
  undefined *product;
  float10 fVar1;
  float local_4;
  
  local_4 = 0.0;
  if (((((*param_1 != DAT_011ec8d0) || (param_1[2] != DAT_011ec8d8)) || (param_1[3] != DAT_011ec8dc)
       ) || (param_1[1] != DAT_011ec8d4)) &&
     (product = PatternCatalog_LookupBankProduct(DAT_011ee034,1,param_1,'\x01'),
     product != (undefined *)0x0)) {
    fVar1 = CatalogProduct_ComputeDisplayPrice(product);
    if (param_2 == '\0') {
      return fVar1;
    }
    local_4 = (float)fVar1 * 0.8;
  }
  return (float10)local_4;
}
