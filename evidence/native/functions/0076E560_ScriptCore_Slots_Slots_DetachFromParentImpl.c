/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011620e0 (original PC 1.67 TS3W.exe).
   ScriptCore.Slots::Slots_DetachFromParentImpl [assembly=ScriptCore token=0x06000D3F; objectId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore.Slots::Slots_DetachFromParentImpl(void)

{
  char cVar1;
  int iVar2;
  void *pvVar3;
  undefined3 extraout_var;
  undefined4 uVar5;
  undefined4 extraout_EDX;
  float local_30 [11];
  uint uVar4;
  
  iVar2 = FUN_00937570();
  pvVar3 = (void *)FUN_00937f80(iVar2);
  uVar4 = 0;
  if (pvVar3 != (void *)0x0) {
    pvVar3 = (void *)FUN_00934260(pvVar3,DAT_011ea158);
    uVar4 = 0;
    if (pvVar3 != (void *)0x0) {
      FUN_00957910(pvVar3,local_30);
      cVar1 = FUN_009595b0(pvVar3);
      uVar4 = CONCAT31(extraout_var,cVar1);
      if (cVar1 != '\0') {
        uVar5 = FUN_00958150(pvVar3,extraout_EDX,local_30);
        return CONCAT31((int3)((uint)uVar5 >> 8),1);
      }
    }
  }
  return uVar4 & 0xffffff00;
}

