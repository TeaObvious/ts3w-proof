/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 static: Plain RET; C8E760(global011EE034,key,1) result must be nonnull and UInt32
   field+0xE0 nonzero. Returns full EAX1 or0. The field is not yet joined to current
   FenceCatalog/WallTypeBits0x0B classification. Descriptive analyst role, not a recovered original
   symbol. */

undefined4 __cdecl WallProduct_HasNonzeroFieldE0(uint *param_1)

{
  void *pvVar1;
  
  pvVar1 = ProductCatalog_LookupFenceProduct(DAT_011ee034,param_1,1);
  if ((pvVar1 == (void *)0x0) || (*(int *)((int)pvVar1 + 0xe0) == 0)) {
    return 0;
  }
  return 1;
}

