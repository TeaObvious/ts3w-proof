/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162100 (original PC 1.67 TS3W.exe).
   ScriptCore.Slots::Slots_GetChildrenImpl [assembly=ScriptCore token=0x06000D44; scriptHandle:
   System.UInt64, slotNameHash: System.UInt32; return=System.UInt64[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.Slots::Slots_GetChildrenImpl(undefined4 param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  char cVar2;
  int *piVar3;
  int iVar4;
  void *this;
  int *piVar5;
  int iVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  undefined4 local_34;
  undefined4 *local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  int local_24;
  undefined4 *local_20;
  undefined4 *local_1c;
  char *local_18;
  int aiStack_14 [5];
  
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar4 = FUN_00937570();
  local_30 = (undefined4 *)FUN_00937f80(iVar4);
  if (local_30 == (undefined4 *)0x0) {
    this = (void *)0x0;
  }
  else {
    LOCK();
    local_30[1] = local_30[1] + 1;
    UNLOCK();
    this = (void *)FUN_00934260(local_30,DAT_011ea114);
  }
  puVar7 = (undefined4 *)0x0;
  iVar4 = 0;
  local_24 = 0;
  local_20 = (undefined4 *)0x0;
  local_1c = (undefined4 *)0x0;
  local_18 = "Scripting/SlotHost";
  if (((this != (void *)0x0) &&
      (piVar5 = (int *)thunk_FUN_009501a0(this,param_3), piVar5 != (int *)0x0)) &&
     (iVar6 = (**(code **)(*piVar5 + 0xc))(1), iVar6 != 0)) {
    FUN_009518b0(this,aiStack_14,iVar6);
    iVar6 = FUN_00950f40(aiStack_14);
    cVar2 = (char)iVar6;
    while (cVar2 != '\0') {
      iVar4 = FUN_009503c0((int)aiStack_14);
      puVar8 = puVar7;
      if (iVar4 != 0) {
        uStack_2c = *(undefined4 *)(iVar4 + 8);
        uStack_28 = *(undefined4 *)(iVar4 + 0xc);
        if (puVar7 < local_1c) {
          local_20 = puVar7 + 2;
          puVar8 = local_20;
          if (puVar7 != (undefined4 *)0x0) {
            *puVar7 = uStack_2c;
            puVar7[1] = uStack_28;
          }
        }
        else {
          FUN_00572360(&local_24,puVar7,&uStack_2c);
          puVar8 = local_20;
        }
      }
      iVar4 = FUN_00950f40(aiStack_14);
      cVar2 = (char)iVar4;
      puVar7 = puVar8;
      iVar4 = local_24;
    }
  }
  iVar6 = (int)puVar7 - iVar4 >> 3;
  local_34 = 0;
  if (iVar6 != 0) {
    (**(code **)(*piVar3 + 0x88))(&local_34,iVar6);
    (**(code **)(*piVar3 + 0xa0))(&stack0xffffffc4,iVar4,0,iVar6);
  }
  uVar1 = local_34;
  if (iVar4 != 0) {
    FUN_004e44e0(iVar4);
  }
  if (local_30 != (undefined4 *)0x0) {
    piVar3 = local_30 + 1;
    LOCK();
    iVar4 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar4 == 1) {
      LOCK();
      *piVar3 = 1;
      UNLOCK();
      (**(code **)*local_30)(1);
    }
  }
  return uVar1;
}

