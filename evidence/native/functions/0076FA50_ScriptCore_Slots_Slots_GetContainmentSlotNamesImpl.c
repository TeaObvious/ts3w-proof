/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011620c0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Slots::Slots_GetContainmentSlotNamesImpl [assembly=ScriptCore token=0x06000D39;
   scriptHandle: System.UInt64; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.Slots::Slots_GetContainmentSlotNamesImpl(void)

{
  int *piVar1;
  undefined4 uVar2;
  void *pvVar3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  undefined4 local_20;
  undefined4 *local_1c;
  undefined4 local_18;
  int *local_14;
  void *local_10;
  undefined4 *local_c;
  undefined4 *local_8;
  char *local_4;
  
  local_14 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pvVar3 = ObjectRegistry_GetGlobal();
  puVar4 = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(in_stack_00000008,in_stack_00000004));
  local_1c = puVar4;
  if (puVar4 == (undefined4 *)0x0) {
    pvVar3 = (void *)0x0;
  }
  else {
    LOCK();
    puVar4[1] = puVar4[1] + 1;
    UNLOCK();
    Object_GetComponentByMask(puVar4,DAT_011ea158);
    pvVar3 = Object_GetComponentByMask(puVar4,DAT_011ea114);
  }
  iVar6 = 0;
  local_10 = (void *)0x0;
  local_c = (undefined4 *)0x0;
  local_8 = (undefined4 *)0x0;
  local_4 = "Scripting/SlotsHost/names";
  if (pvVar3 != (void *)0x0) {
    iVar6 = FUN_00950290((int)pvVar3);
    uVar7 = 0;
    puVar4 = (undefined4 *)0x0;
    if (0 < iVar6) {
      do {
        iVar5 = FUN_009502a0(pvVar3,uVar7);
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
        uVar7 = uVar7 + 1;
        puVar4 = local_c;
      } while ((int)uVar7 < iVar6);
    }
    puVar4 = local_1c;
  }
  piVar1 = local_14;
  local_20 = 0;
  if (0 < iVar6) {
    (**(code **)(*local_14 + 0x84))(&local_20,iVar6);
    (**(code **)(*piVar1 + 0x9c))((int)register0x00000010 + -0x28,local_18,0,iVar6);
  }
  uVar2 = local_20;
  if (local_10 != (void *)0x0) {
    Memory_FreeIfNonNull(local_10);
  }
  if (puVar4 != (undefined4 *)0x0) {
    piVar1 = puVar4 + 1;
    LOCK();
    iVar6 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar6 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*puVar4)(1);
    }
  }
  return uVar2;
}

