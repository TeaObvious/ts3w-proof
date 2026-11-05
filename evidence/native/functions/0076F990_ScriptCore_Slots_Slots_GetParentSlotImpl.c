/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011620f8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Slots::Slots_GetParentSlotImpl [assembly=ScriptCore token=0x06000D42; handle:
   System.UInt64, connectToBone: System.Boolean&; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int __cdecl
ScriptCore.Slots::Slots_GetParentSlotImpl(undefined4 param_1,undefined4 param_2,char *param_3)

{
  int *piVar1;
  int iVar2;
  void *pvVar3;
  undefined4 *this;
  undefined4 uVar4;
  undefined1 local_9;
  int local_8 [2];
  
  GetGlobalInterfacePointer_11D5BBC();
  pvVar3 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(param_2,param_1));
  if (this == (undefined4 *)0x0) {
    return 0;
  }
  piVar1 = this + 1;
  LOCK();
  *piVar1 = *piVar1 + 1;
  UNLOCK();
  pvVar3 = Object_GetComponentByMask(this,DAT_011ea158);
  uVar4 = TransformComponent_QueryParentPointAndFlags(pvVar3,param_3,&local_9,local_8);
  if ((char)uVar4 == '\0') {
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
    return 0;
  }
  LOCK();
  iVar2 = *piVar1;
  *piVar1 = *piVar1 + -1;
  UNLOCK();
  if (iVar2 == 1) {
    LOCK();
    *piVar1 = 1;
    UNLOCK();
    (**(code **)*this)(1);
  }
  return local_8[0];
}

