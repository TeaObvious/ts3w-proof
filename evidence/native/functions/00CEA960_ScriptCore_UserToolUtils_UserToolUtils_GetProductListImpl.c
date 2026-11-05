/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189e38 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_GetProductListImpl [assembly=ScriptCore token=0x06000BEE;
   productType: System.UInt32; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static; analyst-assigned role names except retained registered
   export. Registered ScriptCore.UserToolUtils::UserToolUtils_GetProductListImpl original identity
   retained. Physical cdecloneUInt32stackfamily/plainRET,EAXopaque32-bit arrayhandle, not
   stdcallcallee-pop. Full actual flow ends atRETCEAA52orRETCEAA58, followingCCandCEAA60 excluded.
   Calls C90FF0; family8 removes entries with wall predicate through CE5C50, family26 selects same
   family8 pool and inversepredicateCE5C60; all thenCEA820(vector,family,nullfilter), freesvector.
   Globalcatalogabsent returns0. Former one-byte Ghidra body and bounded256byte ASMwindow did not
   establish the full function; corrected only toactualflow-owned instructions. */

uint __cdecl ScriptCore_UserToolUtils__UserToolUtils_GetProductListImpl(uint family)

{
  undefined4 *_Dst;
  undefined4 *puVar1;
  uint uVar2;
  undefined4 *puStack_10;
  undefined4 *puStack_c;
  undefined4 uStack_8;
  char *pcStack_4;
  
  if (DAT_011ee034 != (void *)0x0) {
    puStack_10 = (undefined4 *)0x0;
    puStack_c = (undefined4 *)0x0;
    uStack_8 = 0;
    pcStack_4 = "World/Catalog/ProductVector";
    if (family == 8) {
      ProductCatalog_CollectFamily(DAT_011ee034,8,&puStack_10);
      _Dst = FUN_00ce6b70(puStack_10,puStack_c,&LAB_00ce5c50);
      puVar1 = puStack_c;
      memmove(_Dst,puStack_c,0);
      puStack_c = puStack_c + -((int)puVar1 - (int)_Dst >> 2);
    }
    else if (family == 0x1a) {
      ProductCatalog_CollectFamily(DAT_011ee034,8,&puStack_10);
      puVar1 = FUN_00ce6b70(puStack_10,puStack_c,&LAB_00ce5c60);
      FUN_00ce9300(&puStack_10,puVar1,puStack_c);
    }
    else {
      ProductCatalog_CollectFamily(DAT_011ee034,family,&puStack_10);
    }
    uVar2 = ProductVector_SortAndExportHandles(&puStack_10,family,(void *)0x0);
    if (puStack_10 != (undefined4 *)0x0) {
      Memory_FreeIfNonNull(puStack_10);
    }
    return uVar2;
  }
  return 0;
}

