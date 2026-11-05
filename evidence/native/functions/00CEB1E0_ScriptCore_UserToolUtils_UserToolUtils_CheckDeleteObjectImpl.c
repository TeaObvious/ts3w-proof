/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01189fc0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  void *pvVar4;
  undefined4 *puVar5;
  int *piVar6;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  undefined4 local_118;
  bool local_114;
  undefined3 uStack_113;
  void *local_110 [2];
  int local_108;
  void *local_100 [2];
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
  pvVar4 = ObjectRegistry_GetGlobal();
  if (pvVar4 == (void *)0x0) {
    return local_118;
  }
  pvVar4 = ObjectRegistry_FindBorrowed(pvVar4,CONCAT44(in_stack_00000008,in_stack_00000004));
  if (pvVar4 == (void *)0x0) {
    return local_118;
  }
  FUN_00ad7740((int)local_d0);
  cVar1 = ScriptCore.GameUtils::GameUtils_AddOrConfigureProfiler();
  _local_114 = CONCAT31(uStack_113,cVar1 == '\0');
  cVar1 = FUN_00ccd690(pvVar4,cVar1 == '\0',local_d0,'\0',0,'\0',0);
  if (((cVar1 == '\0') || (bVar2 = FUN_00cfe310((int)pvVar4), bVar2 == 0)) ||
     (((*(uint *)((int)pvVar4 + 0x2c) & DAT_011ea0f8) != 0 &&
      (cVar1 = FUN_0078fd30(), cVar1 == '\0')))) {
    puVar5 = EaString_FromUtf8Bytes
                       (local_110,(byte *)"Ui/Caption/Build/Delete:GenericNoSell",0xffffffff,
                        (byte *)"UserTool/CanDeleteObject");
    FUN_00408df0(local_100,puVar5);
    if ((2 < (int)(local_108 - (int)local_110[0] & 0xfffffffeU)) && (local_110[0] != (void *)0x0)) {
      Memory_FreeIfNonNull(local_110[0]);
    }
    bVar3 = FUN_00ad6f10((int)local_d0);
    if (bVar3) {
      FUN_00ad7520(local_d0,local_50);
      if (local_50[0] == 0x61) {
        puVar5 = EaString_FromUtf8Bytes
                           (local_110,(byte *)"Ui/Caption/Build/Delete:NoSellContainsItems",
                            0xffffffff,(byte *)"UserTool/CanDeleteObject");
        FUN_00408e50(local_100,puVar5);
        FUN_004ef8f0((int *)local_110);
      }
      FUN_00ad70d0((int)local_50);
    }
    local_f0[0] = &PTR_FUN_0100886c;
    local_e6 = 0x13;
    local_e8 = 0xb;
    FUN_004f59c0(local_f0,0x13,9,local_100,0x10,1);
    piVar6 = (int *)GetGlobalInterfacePointer_11D5BBC();
    (**(code **)(*piVar6 + 0x50))(local_f0,&local_118);
    local_f0[0] = &PTR_FUN_00fba6f4;
    if ((local_e8 & 4) != 0) {
      FUN_004f5760(local_f0,'\0');
    }
    if ((2 < (int)(iStack_f8 - (int)local_100[0] & 0xfffffffeU)) && (local_100[0] != (void *)0x0)) {
      Memory_FreeIfNonNull(local_100[0]);
    }
  }
  FUN_00a527c0(local_70);
  FUN_00a527c0(puStack_8c);
  FUN_00a527c0(puStack_a8);
  FUN_00a52780(puStack_c4);
  return local_118;
}

