/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163358 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_LotIsEmptyImpl [assembly=ScriptCore token=0x06000768; lotId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_LotIsEmptyImpl(int param_1,int param_2)

{
  undefined4 *puVar1;
  uint *puVar2;
  void *this;
  uint in_EAX;
  int *piVar3;
  uint uVar4;
  uint *puVar5;
  undefined4 *puVar6;
  
  if (DAT_011edbc4 == (void *)0x0) {
    return in_EAX & 0xffffff00;
  }
  piVar3 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
  uVar4 = 0;
  if ((piVar3 == (int *)0x0) ||
     (uVar4 = FUN_00b01c70((int)piVar3,'\0'), this = DAT_011ee034, (char)uVar4 == '\0')) {
    return uVar4 & 0xffffff00;
  }
  if (DAT_011ee034 == (void *)0x0) {
    return uVar4 & 0xffffff00;
  }
  puVar5 = (uint *)FUN_00c6dc50((int)piVar3);
  puVar6 = (undefined4 *)*puVar5;
  puVar1 = (undefined4 *)puVar5[1];
  while( true ) {
    if (puVar6 == puVar1) {
      return CONCAT31((int3)((uint)puVar5 >> 8),1);
    }
    puVar2 = (uint *)*puVar6;
    puVar5 = puVar2;
    if (((((puVar2[0xb] & DAT_011ea0f8) == 0) && (puVar5 = puVar2 + 6, puVar2[8] == 0x319e4f1d)) &&
        (puVar5 = (uint *)ObjectCatalog_FindByTypedKey(this,puVar5), puVar5 != (uint *)0x0)) &&
       ((puVar5[0x19] & 1) != 0)) break;
    puVar6 = puVar6 + 1;
  }
  return (uint)puVar5 & 0xffffff00;
}

