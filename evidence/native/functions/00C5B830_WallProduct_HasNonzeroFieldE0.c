/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: Plain RET; C8E760(global011EE034,key,1) result must be nonnull and UInt32
   field+0xE0 nonzero. Returns full EAX1 or0. The field is not yet joined to current
   FenceCatalog/WallTypeBits0x0B classification. Descriptive analyst role, not a recovered original
   symbol. */

undefined4 __cdecl WallProduct_HasNonzeroFieldE0(uint *param_1)

{
  int iVar1;
  
  iVar1 = FUN_00c8e760(DAT_011ee034,param_1,'\x01');
  if ((iVar1 != 0) && (*(int *)(iVar1 + 0xe0) != 0)) {
    return 1;
  }
  return 0;
}

