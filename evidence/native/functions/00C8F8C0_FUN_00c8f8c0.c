/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


undefined4 __thiscall FUN_00c8f8c0(void *this,undefined4 param_1,uint *param_2)

{
  undefined4 uVar1;
  void *pvVar2;
  
  switch(param_1) {
  case 0:
    uVar1 = FUN_00c8e6b0(this,param_2,'\x01');
    return uVar1;
  case 1:
    pvVar2 = PatternCatalog_LookupBankProduct(this,2,param_2,'\x01');
    return pvVar2;
  case 2:
    pvVar2 = PatternCatalog_LookupBankProduct(this,1,param_2,'\x01');
    return pvVar2;
  case 3:
    uVar1 = FUN_00c8eb60(this,param_2);
    return uVar1;
  case 4:
  case 0x14:
    uVar1 = ObjectCatalog_FindByTypedKey(this,param_2);
    return uVar1;
  default:
    return 0;
  case 6:
    pvVar2 = ProductCatalog_LookupRoofStyle(this,param_2,1);
    return pvVar2;
  case 7:
    pvVar2 = ProductCatalog_LookupRoofPattern(this,param_2,1);
    return pvVar2;
  case 8:
    pvVar2 = ProductCatalog_LookupFenceProduct(this,param_2,1);
    return pvVar2;
  case 0xf:
    uVar1 = FUN_00c8ee30(this,param_2);
    return uVar1;
  case 0x10:
    uVar1 = FUN_00c8e7d0(this,param_2,'\x01');
    return uVar1;
  case 0x11:
    uVar1 = FUN_00c8e830(this,param_2,'\x01');
    return uVar1;
  case 0x12:
    uVar1 = FUN_00c8ee80(this,param_2,'\x01');
    return uVar1;
  case 0x13:
    uVar1 = FUN_00c8e890(this,param_2,'\x01');
    return uVar1;
  case 0x17:
    uVar1 = FUN_00c8ef40(this,param_2);
    return uVar1;
  case 0x1f:
    pvVar2 = CurvedPoolCatalog_LookupDescriptionProduct(this,param_2);
    return pvVar2;
  }
}

