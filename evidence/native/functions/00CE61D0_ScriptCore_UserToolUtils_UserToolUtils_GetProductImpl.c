/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189e20 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_GetProductImpl [assembly=ScriptCore token=0x06000BEB;
   productType: System.UInt32, instanceID: System.UInt64, groupID: System.UInt32, typeID:
   System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.UserToolUtils::UserToolUtils_GetProductImpl
          (uint param_1,uint param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5)

{
  undefined4 *puVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (DAT_011ee034 == (void *)0x0) {
    return 0;
  }
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  local_10 = param_2;
  local_8 = param_5;
  local_c = param_3;
  local_4 = param_4;
  if ((param_1 == 8) || ((0x14 < param_1 && (param_1 != 0x17)))) {
    switch(param_1) {
    case 8:
      puVar3 = ProductCatalog_LookupFenceProduct(DAT_011ee034,&local_10,1);
      if ((puVar3 != (undefined4 *)0x0) && (puVar3[0x38] == 0)) {
LAB_00ce62c1:
        (**(code **)*puVar3)();
        uVar4 = (**(code **)(*piVar2 + 200))(puVar3,0x45);
        return uVar4;
      }
      break;
    case 0x19:
      puVar3 = PatternCatalog_LookupBankProduct(DAT_011ee034,4,&local_10,'\x01');
      if (puVar3 != (undefined4 *)0x0) {
        (**(code **)*puVar3)();
        uVar4 = (**(code **)(*piVar2 + 200))(puVar3,0x45);
        return uVar4;
      }
      break;
    case 0x1a:
      puVar3 = ProductCatalog_LookupFenceProduct(DAT_011ee034,&local_10,1);
      if (puVar3 == (undefined4 *)0x0) {
        return 0;
      }
      puVar1 = (undefined4 *)puVar3[0x38];
      goto LAB_00ce6234;
    case 0x1f:
    case 0x20:
      puVar3 = CurvedPoolCatalog_LookupDescriptionProduct(DAT_011ee034,&local_10);
      if (puVar3 != (undefined4 *)0x0) goto LAB_00ce62c1;
    }
  }
  else {
    puVar3 = (undefined4 *)FUN_00c8f8c0(DAT_011ee034,param_1,&local_10);
    puVar1 = puVar3;
LAB_00ce6234:
    if (puVar1 != (undefined4 *)0x0) {
      (**(code **)*puVar3)();
      uVar4 = (**(code **)(*piVar2 + 200))(puVar3,0x45);
      return uVar4;
    }
  }
  return 0;
}

