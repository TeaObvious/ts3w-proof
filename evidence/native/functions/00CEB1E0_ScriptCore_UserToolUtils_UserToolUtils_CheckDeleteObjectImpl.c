/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189fc0 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_CheckDeleteObjectImpl [assembly=ScriptCore
   token=0x06000C1E; objId: System.UInt64; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.UserToolUtils::UserToolUtils_CheckDeleteObjectImpl(void)

{
  char cVar1;
  byte bVar2;
  bool bVar3;
  int iVar4;
  void *pvVar5;
  undefined4 *puVar6;
  int *piVar7;
  undefined4 local_118;
  bool local_114;
  undefined3 uStack_113;
  int local_110 [2];
  int local_108;
  int local_100 [2];
  int iStack_f8;
  undefined **local_f0 [2];
  ushort local_e8;
  undefined2 local_e6;
  undefined1 local_d0 [12];
  undefined4 *puStack_c4;
  undefined4 *puStack_a8;
  undefined4 *puStack_8c;
  undefined4 *local_70;
  int local_50 [19];
  
  local_118 = 0;
  iVar4 = FUN_00937570();
  if (iVar4 == 0) {
    return local_118;
  }
  pvVar5 = (void *)FUN_00937f80(iVar4);
  if (pvVar5 != (void *)0x0) {
    FUN_00ad7740((int)local_d0);
    cVar1 = ScriptCore.GameUtils::GameUtils_AddOrConfigureProfiler();
    _local_114 = CONCAT31(uStack_113,cVar1 == '\0');
    cVar1 = FUN_00ccd690(pvVar5,cVar1 == '\0',local_d0,'\0',0,'\0',0);
    if (((cVar1 == '\0') || (bVar2 = FUN_00cfe310((int)pvVar5), bVar2 == 0)) ||
       (((*(uint *)((int)pvVar5 + 0x2c) & DAT_011ea0f8) != 0 &&
        (cVar1 = FUN_0078fd30(), cVar1 == '\0')))) {
      puVar6 = FUN_004f3b50(local_110,(LPCWSTR)"Ui/Caption/Build/Delete:GenericNoSell",0xffffffff,
                            "UserTool/CanDeleteObject");
      FUN_00408df0(local_100,puVar6);
      if ((2 < (int)(local_108 - local_110[0] & 0xfffffffeU)) && (local_110[0] != 0)) {
        FUN_004e44e0(local_110[0]);
      }
      bVar3 = FUN_00ad6f10((int)local_d0);
      if (bVar3) {
        FUN_00ad7520(local_d0,local_50);
        if (local_50[0] == 0x61) {
          puVar6 = FUN_004f3b50(local_110,(LPCWSTR)"Ui/Caption/Build/Delete:NoSellContainsItems",
                                0xffffffff,"UserTool/CanDeleteObject");
          FUN_00408e50(local_100,puVar6);
          FUN_004ef8f0(local_110);
        }
        FUN_00ad70d0((int)local_50);
      }
      local_f0[0] = &PTR_FUN_0100886c;
      local_e6 = 0x13;
      local_e8 = 0xb;
      FUN_004f59c0(local_f0,0x13,9,local_100,0x10,1);
      piVar7 = (int *)GetGlobalInterfacePointer_11D5BBC();
      (**(code **)(*piVar7 + 0x50))(local_f0,&local_118);
      local_f0[0] = &PTR_FUN_00fba6f4;
      if ((local_e8 & 4) != 0) {
        FUN_004f5760(local_f0,'\0');
      }
      if ((2 < (int)(iStack_f8 - local_100[0] & 0xfffffffeU)) && (local_100[0] != 0)) {
        FUN_004e44e0(local_100[0]);
      }
    }
    FUN_00a527c0(local_70);
    FUN_00a527c0(puStack_8c);
    FUN_00a527c0(puStack_a8);
    FUN_00a52780(puStack_c4);
    return local_118;
  }
  return local_118;
}

