/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161e58 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SACS::SACS_GetDebugStringImpl [assembly=ScriptCore token=0x06000D6A; scriptObjectId:
   System.UInt64; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.SACS::SACS_GetDebugStringImpl(void)

{
  int iVar1;
  char *pcVar2;
  char *pcVar3;
  char *pcVar4;
  undefined4 *puVar5;
  void *pvVar6;
  undefined4 *this;
  int *piVar7;
  undefined4 unaff_EBP;
  undefined4 *puVar8;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  void *local_48 [2];
  undefined1 *local_40;
  undefined1 *local_3c;
  char *local_38;
  char *local_34;
  undefined4 *local_30;
  undefined4 *local_2c;
  undefined **local_28;
  char *local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  pvVar6 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar6,CONCAT44(in_stack_00000008,in_stack_00000004));
  if (this != (undefined4 *)0x0) {
    LOCK();
    this[1] = this[1] + 1;
    UNLOCK();
  }
  local_34 = "Scripting/SacsHost";
  local_40 = &DAT_011c8e54;
  local_3c = &DAT_011c8e54;
  local_38 = &DAT_011c8e55;
  if (this == (undefined4 *)0x0) {
    FUN_00405910(&local_40,"<Game Object Not Found>","");
  }
  else {
    pvVar6 = Object_GetComponentByMask(this,DAT_011ea0f0);
    if (pvVar6 != (void *)0x0) goto LAB_00768d40;
  }
  FUN_00405910(&local_40,"<Sacs Component Not Found>","");
LAB_00768d40:
  local_30 = (undefined4 *)0x0;
  local_2c = (undefined4 *)0x0;
  local_28 = (undefined **)0x0;
  local_24 = "SACS/DebugStringVector";
  FUN_009144a0();
  puVar5 = local_2c;
  for (puVar8 = local_30; puVar8 != puVar5; puVar8 = puVar8 + 4) {
    FUN_00405700(&local_40,(undefined1 *)*puVar8,(undefined1 *)puVar8[1]);
    FUN_00405700(&local_40,&DAT_00f99a14,&DAT_00f99a15);
  }
  local_20[0] = &PTR_FUN_0100886c;
  local_16 = 0x12;
  local_18 = 0xb;
  FUN_004f59c0(local_20,0x12,9,&local_40,0x10,1);
  piVar7 = (int *)GetGlobalInterfacePointer_11D5BBC();
  (**(code **)(*piVar7 + 0x50))(local_20,local_48);
  local_28 = &PTR_FUN_00fba6f4;
  pcVar2 = local_38;
  pcVar3 = local_34;
  if (((uint)local_20[0] & 4) != 0) {
    FUN_004f5760(&local_28,'\0');
    pcVar2 = local_38;
    pcVar3 = local_34;
  }
  for (; pcVar4 = local_34, pcVar2 < local_34; pcVar2 = pcVar2 + 0x10) {
    pvVar6 = *(void **)pcVar2;
    local_34 = pcVar3;
    if ((1 < *(int *)(pcVar2 + 8) - (int)pvVar6) && (pvVar6 != (void *)0x0)) {
      Memory_FreeIfNonNull(pvVar6);
    }
    pcVar3 = local_34;
    local_34 = pcVar4;
  }
  local_34 = pcVar3;
  if (local_38 != (char *)0x0) {
    Memory_FreeIfNonNull(local_38);
  }
  if ((1 < (int)local_40 - (int)local_48[0]) && (local_48[0] != (void *)0x0)) {
    Memory_FreeIfNonNull(local_48[0]);
  }
  if (this != (undefined4 *)0x0) {
    piVar7 = this + 1;
    LOCK();
    iVar1 = *piVar7;
    *piVar7 = *piVar7 + -1;
    UNLOCK();
    if (iVar1 == 1) {
      LOCK();
      *piVar7 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return unaff_EBP;
}

