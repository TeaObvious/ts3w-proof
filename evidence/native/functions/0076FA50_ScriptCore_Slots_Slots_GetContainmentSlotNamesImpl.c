/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011620c0 (original PC 1.67 TS3W.exe).
   ScriptCore.Slots::Slots_GetContainmentSlotNamesImpl [assembly=ScriptCore token=0x06000D39;
   scriptHandle: System.UInt64; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.Slots::Slots_GetContainmentSlotNamesImpl(void)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *this;
  void *this_00;
  int iVar4;
  undefined4 *puVar5;
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
  this = (undefined4 *)FUN_00937f80(iVar3);
  local_1c = this;
  if (this == (undefined4 *)0x0) {
    this_00 = (void *)0x0;
  }
  else {
    LOCK();
    this[1] = this[1] + 1;
    UNLOCK();
    FUN_00934260(this,DAT_011ea158);
    this_00 = (void *)FUN_00934260(this,DAT_011ea114);
  }
  iVar3 = 0;
  local_10 = 0;
  local_c = (undefined4 *)0x0;
  local_8 = (undefined4 *)0x0;
  local_4 = "Scripting/SlotsHost/names";
  if (this_00 != (void *)0x0) {
    iVar3 = FUN_00950290((int)this_00);
    uVar6 = 0;
    puVar5 = (undefined4 *)0x0;
    this = local_1c;
    if (0 < iVar3) {
      do {
        iVar4 = FUN_009502a0(this_00,uVar6);
        local_18 = *(undefined4 *)(iVar4 + 4);
        if (puVar5 < local_8) {
          local_c = puVar5 + 1;
          if (puVar5 != (undefined4 *)0x0) {
            *puVar5 = local_18;
          }
        }
        else {
          FUN_00982420(&local_10,puVar5,&local_18);
        }
        uVar6 = uVar6 + 1;
        puVar5 = local_c;
        this = local_1c;
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
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    iVar3 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar3 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return uVar2;
}

