/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_GetProductListImpl. Export
   ordinal(s): 1204. Entry VA: 0x102c2b10. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000A85. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl UserToolUtils_GetProductListImpl(int param_1)

{
  undefined4 *_Dst;
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 *puStack_10;
  undefined4 *puStack_c;
  undefined4 uStack_8;
  char *pcStack_4;
  
  if (DAT_10c70534 != (void *)0x0) {
    puStack_10 = (undefined4 *)0x0;
    puStack_c = (undefined4 *)0x0;
    uStack_8 = 0;
    pcStack_4 = "World/Catalog/ProductVector";
    if (param_1 == 8) {
      FUN_10267b10(DAT_10c70534,8,&puStack_10);
      _Dst = FUN_102be260(puStack_10,puStack_c,&LAB_102bd320);
      puVar1 = puStack_c;
      memmove(_Dst,puStack_c,0);
      puStack_c = puStack_c + -((int)puVar1 - (int)_Dst >> 2);
    }
    else if (param_1 == 0x1a) {
      FUN_10267b10(DAT_10c70534,8,&puStack_10);
      puVar1 = FUN_102be260(puStack_10,puStack_c,&LAB_102bd330);
      FUN_102c0e70(&puStack_10,puVar1,puStack_c);
    }
    else {
      FUN_10267b10(DAT_10c70534,param_1,&puStack_10);
    }
    uVar2 = FUN_102c2510((int *)&puStack_10,param_1,0);
    if (puStack_10 != (undefined4 *)0x0) {
      FUN_10918e90((int)puStack_10);
    }
    return uVar2;
  }
  return 0;
}

