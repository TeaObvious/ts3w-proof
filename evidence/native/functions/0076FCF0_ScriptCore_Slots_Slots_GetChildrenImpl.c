/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162100 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Slots::Slots_GetChildrenImpl [assembly=ScriptCore token=0x06000D44; scriptHandle:
   System.UInt64, slotNameHash: System.UInt32; return=System.UInt64[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.Slots::Slots_GetChildrenImpl(undefined4 param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  int *piVar2;
  void *pvVar3;
  byte *pbVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  void *allocation;
  undefined4 local_34;
  undefined4 *local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  void *local_24;
  undefined4 *local_20;
  undefined4 *local_1c;
  char *local_18;
  int aiStack_14 [5];
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pvVar3 = ObjectRegistry_GetGlobal();
  local_30 = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(param_2,param_1));
  if (local_30 == (undefined4 *)0x0) {
    pvVar3 = (void *)0x0;
  }
  else {
    LOCK();
    local_30[1] = local_30[1] + 1;
    UNLOCK();
    pvVar3 = Object_GetComponentByMask(local_30,DAT_011ea114);
  }
  puVar6 = (undefined4 *)0x0;
  allocation = (void *)0x0;
  local_24 = (void *)0x0;
  local_20 = (undefined4 *)0x0;
  local_1c = (undefined4 *)0x0;
  local_18 = "Scripting/SlotHost";
  puVar7 = puVar6;
  if (((pvVar3 != (void *)0x0) &&
      (pbVar4 = SlotComponent_FindFirstNameWordThunk(pvVar3,param_3), pbVar4 != (byte *)0x0)) &&
     (iVar5 = (**(code **)(*(int *)pbVar4 + 0xc))(1), iVar5 != 0)) {
    FUN_009518b0(pvVar3,aiStack_14,iVar5);
    iVar5 = FUN_00950f40(aiStack_14);
    if ((char)iVar5 != '\0') {
      do {
        iVar5 = FUN_009503c0((int)aiStack_14);
        puVar7 = puVar6;
        if (iVar5 != 0) {
          uStack_2c = *(undefined4 *)(iVar5 + 8);
          uStack_28 = *(undefined4 *)(iVar5 + 0xc);
          if (puVar6 < local_1c) {
            local_20 = puVar6 + 2;
            puVar7 = local_20;
            if (puVar6 != (undefined4 *)0x0) {
              *puVar6 = uStack_2c;
              puVar6[1] = uStack_28;
            }
          }
          else {
            FUN_00572360(&local_24,puVar6,&uStack_2c);
            puVar7 = local_20;
          }
        }
        iVar5 = FUN_00950f40(aiStack_14);
        puVar6 = puVar7;
      } while ((char)iVar5 != '\0');
      allocation = local_24;
    }
  }
  iVar5 = (int)puVar7 - (int)allocation >> 3;
  local_34 = 0;
  if (iVar5 != 0) {
    (**(code **)(*piVar2 + 0x88))(&local_34,iVar5);
    (**(code **)(*piVar2 + 0xa0))(aiStack_14 + -10,allocation,0,iVar5);
  }
  uVar1 = local_34;
  if (allocation != (void *)0x0) {
    Memory_FreeIfNonNull(allocation);
  }
  if (local_30 != (undefined4 *)0x0) {
    piVar2 = local_30 + 1;
    LOCK();
    iVar5 = *piVar2;
    *piVar2 = *piVar2 + -1;
    UNLOCK();
    if (iVar5 == 1) {
      LOCK();
      *piVar2 = 1;
      UNLOCK();
      (**(code **)*local_30)(1);
    }
  }
  return uVar1;
}

