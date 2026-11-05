/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01189e40 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_GetTerrainProductListByCategoryImpl [assembly=ScriptCore
   token=0x06000BEF; category: System.UInt32; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_UserToolUtils__UserToolUtils_GetTerrainProductListByCategoryImpl(int param_1)

{
  uint uVar1;
  void *pvStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  char *pcStack_4;
  
  if (DAT_011ee034 == (void *)0x0) {
    return 0;
  }
  pvStack_10 = (void *)0x0;
  uStack_c = 0;
  uStack_8 = 0;
  pcStack_4 = "World/Catalog/ProductVector";
  TerrainPaintCatalog_CollectByCategory(DAT_011ee034,param_1,&pvStack_10);
  uVar1 = ProductVector_SortAndExportHandles(&pvStack_10,0x12,(void *)0x0);
  if (pvStack_10 != (void *)0x0) {
    Memory_FreeIfNonNull(pvStack_10);
  }
  return uVar1;
}

