/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189e48 (original PC 1.67 TS3W.exe).
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
  undefined8 uVar4;
  int *piVar5;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  pvVar3 = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    piVar5 = (int *)0x0;
    uVar4 = FUN_00c5f560((int)DAT_011edbc4);
    piVar5 = FUN_00c62810(pvVar3,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),piVar5);
    pvVar3 = DAT_011ee034;
    in_EAX = (undefined4 *)0x0;
    if (piVar5 != (int *)0x0) {
      in_EAX = (undefined4 *)FUN_00c6dc50((int)piVar5);
      piVar1 = (int *)in_EAX[1];
      for (piVar5 = (int *)*in_EAX; piVar5 != piVar1; piVar5 = piVar5 + 1) {
        iVar2 = *piVar5;
        in_EAX = (undefined4 *)0x0;
        if (iVar2 != 0) {
          local_10 = *(uint *)(iVar2 + 0x18);
          local_c = *(undefined4 *)(iVar2 + 0x1c);
          local_8 = *(undefined4 *)(iVar2 + 0x20);
          local_4 = *(undefined4 *)(iVar2 + 0x24);
          in_EAX = (undefined4 *)FUN_00c8ebb0(pvVar3,&local_10);
          if ((in_EAX != (undefined4 *)0x0) && (((uint)in_EAX[0x34] >> 0x1c & 1) != 0)) {
            return CONCAT31((int3)((uint)in_EAX >> 8),1);
          }
        }
      }
    }
  }
  return (uint)in_EAX & 0xffffff00;
}

