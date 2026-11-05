/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01189e30 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_GetProductSetImpl [assembly=ScriptCore token=0x06000BEC;
   productType: System.UInt32, productSetID: System.UInt32; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_UserToolUtils__UserToolUtils_GetProductSetImpl(uint param_1,int param_2)

{
  uint uVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  void *allocation;
  int iStack_24;
  void *pvStack_20;
  int *piStack_1c;
  int *piStack_18;
  char *pcStack_14;
  int *piStack_10;
  int *piStack_c;
  undefined4 uStack_8;
  char *pcStack_4;
  
  if ((0x14 < param_1) && (param_1 != 0x17)) {
    return 0;
  }
  if (DAT_011ee034 == (void *)0x0) {
    return 0;
  }
  pcStack_4 = "World/Catalog/ProductVector";
  pcStack_14 = "World/Catalog/ProductVector";
  piVar3 = (int *)0x0;
  piStack_10 = (int *)0x0;
  piStack_c = (int *)0x0;
  uStack_8 = 0;
  pvStack_20 = (void *)0x0;
  piStack_1c = (int *)0x0;
  piStack_18 = (int *)0x0;
  ProductCatalog_CollectFamily(DAT_011ee034,param_1,&piStack_10);
  piVar2 = piStack_10;
  allocation = (void *)0x0;
  if (piStack_10 != piStack_c) {
    do {
      iStack_24 = *piVar2;
      piVar4 = piVar3;
      if (((iStack_24 != 0) && (param_2 != 0)) && (param_2 == *(int *)(iStack_24 + 0x80))) {
        if (piVar3 < piStack_18) {
          piStack_1c = piVar3 + 1;
          piVar4 = piStack_1c;
          if (piVar3 != (int *)0x0) {
            *piVar3 = iStack_24;
          }
        }
        else {
          FUN_00982420(&pvStack_20,piVar3,&iStack_24);
          piVar4 = piStack_1c;
        }
      }
      piVar2 = piVar2 + 1;
      piVar3 = piVar4;
    } while (piVar2 != piStack_c);
    allocation = pvStack_20;
  }
  uVar1 = ProductVector_SortAndExportHandles(&pvStack_20,param_1,(void *)0x0);
  if (allocation != (void *)0x0) {
    Memory_FreeIfNonNull(allocation);
  }
  if (piStack_10 != (int *)0x0) {
    Memory_FreeIfNonNull(piStack_10);
  }
  return uVar1;
}

