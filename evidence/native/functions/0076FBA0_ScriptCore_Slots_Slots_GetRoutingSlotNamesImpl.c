/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162118 (original PC 1.67 TS3W.exe).
   ScriptCore.Slots::Slots_GetRoutingSlotNamesImpl [assembly=ScriptCore token=0x06000D43;
   scriptHandle: System.UInt64; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.Slots::Slots_GetRoutingSlotNamesImpl(void)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  void *this;
  int iVar5;
  uint uVar6;
  undefined4 local_20;
  undefined4 *local_1c;
  undefined4 local_18;
  int *local_14;
  int local_10;
  undefined4 *local_c;
  undefined4 *local_8;
  char *local_4;
  
  local_14 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar3 = FUN_00937570();
  puVar4 = (undefined4 *)FUN_00937f80(iVar3);
  local_1c = puVar4;
  if (puVar4 == (undefined4 *)0x0) {
    this = (void *)0x0;
  }
  else {
    LOCK();
    puVar4[1] = puVar4[1] + 1;
    UNLOCK();
    FUN_00934260(puVar4,DAT_011ea158);
    this = (void *)FUN_00934260(puVar4,DAT_011ea114);
  }
  iVar3 = 0;
  local_10 = 0;
  local_c = (undefined4 *)0x0;
  local_8 = (undefined4 *)0x0;
  local_4 = "Scripting/SlotHost";
  if (this != (void *)0x0) {
    iVar3 = *(int *)((int)this + 8);
    uVar6 = 0;
    puVar4 = local_1c;
    if (0 < iVar3) {
      do {
        puVar4 = local_c;
        iVar5 = FUN_0094fe50(this,uVar6);
        local_18 = *(undefined4 *)(iVar5 + 4);
        if (puVar4 < local_8) {
          local_c = puVar4 + 1;
          if (puVar4 != (undefined4 *)0x0) {
            *puVar4 = local_18;
          }
        }
        else {
          FUN_00982420(&local_10,puVar4,&local_18);
        }
        uVar6 = uVar6 + 1;
        puVar4 = local_1c;
      } while ((int)uVar6 < iVar3);
    }
  }
  piVar1 = local_14;
  local_20 = 0;
  if (0 < iVar3) {
    (**(code **)(*local_14 + 0x84))(&local_20,iVar3);
    (**(code **)(*piVar1 + 0x9c))(&stack0xffffffd8,local_18,0,iVar3);
  }
  uVar2 = local_20;
  if (local_10 != 0) {
    FUN_004e44e0(local_10);
  }
  if (puVar4 != (undefined4 *)0x0) {
    piVar1 = puVar4 + 1;
    LOCK();
    iVar3 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar3 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*puVar4)(1);
    }
  }
  return uVar2;
}

