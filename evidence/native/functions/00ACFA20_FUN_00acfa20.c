/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Support query one level below; descriptive label, not recovered original symbol.
   cdecl lot/packedlocation/allowType6/optionalout, plain RET. Copies X/Z, decrements LOW signed level byte with byte wrap, forwards toACF820. Physical cleanup/RET preserves child AL despite stored void prototype. Child forces fullmask and only writes optional output on success; caller record unchanged. */

void __cdecl FUN_00acfa20(void *param_1,undefined2 *param_2,undefined4 param_3,undefined1 *param_4)

{
  char *pcVar1;
  undefined2 uVar2;
  
  uVar2 = *param_2;
  pcVar1 = (char *)(param_2 + 1);
  param_2._0_3_ = CONCAT12(*pcVar1 + -1,uVar2);
  Lot_TestCellSupportRegionType(param_1,(char *)&param_2,(char)param_3,param_4);
  return;
}
