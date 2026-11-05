/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01189e48 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_IsBlueprintOnLotImpl [assembly=ScriptCore
   token=0x06000BFE; ; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore.UserToolUtils::UserToolUtils_IsBlueprintOnLotImpl(void)

{
  int *piVar1;
  int iVar2;
  void *pvVar3;
  undefined4 *in_EAX;
  int *piVar4;
  undefined8 uVar5;
  uint *visitCounter;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  pvVar3 = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    visitCounter = (uint *)0x0;
    uVar5 = FUN_00c5f560((int)DAT_011edbc4);
    piVar4 = WorldObjects_FindLotByGuid
                       (pvVar3,(uint)uVar5,(uint)((ulonglong)uVar5 >> 0x20),visitCounter);
    pvVar3 = DAT_011ee034;
    in_EAX = (undefined4 *)0x0;
    if (piVar4 != (int *)0x0) {
      in_EAX = (undefined4 *)FUN_00c6dc50((int)piVar4);
      piVar1 = (int *)in_EAX[1];
      for (piVar4 = (int *)*in_EAX; piVar4 != piVar1; piVar4 = piVar4 + 1) {
        iVar2 = *piVar4;
        in_EAX = (undefined4 *)0x0;
        if (iVar2 != 0) {
          local_10 = *(uint *)(iVar2 + 0x18);
          local_c = *(undefined4 *)(iVar2 + 0x1c);
          local_8 = *(undefined4 *)(iVar2 + 0x20);
          local_4 = *(undefined4 *)(iVar2 + 0x24);
          in_EAX = (undefined4 *)ObjectCatalog_FindByTypedKey(pvVar3,&local_10);
          if ((in_EAX != (undefined4 *)0x0) && (((uint)in_EAX[0x34] >> 0x1c & 1) != 0)) {
            return CONCAT31((int3)((uint)in_EAX >> 8),1);
          }
        }
      }
    }
  }
  return (uint)in_EAX & 0xffffff00;
}

