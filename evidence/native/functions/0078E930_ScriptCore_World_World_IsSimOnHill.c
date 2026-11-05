/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163cd8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_IsSimOnHill [assembly=ScriptCore token=0x06000896; simObjId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore.World::World_IsSimOnHill(void)

{
  int *piVar1;
  int iVar2;
  void *pvVar3;
  undefined4 *this;
  float *pfVar4;
  float *pfVar5;
  undefined4 uVar6;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  undefined4 local_30 [4];
  undefined4 local_20 [7];
  
  pvVar3 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(in_stack_00000008,in_stack_00000004));
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    pvVar3 = Object_GetComponentByMask(this,DAT_011ea158);
    if (pvVar3 != (void *)0x0) {
      pfVar4 = (float *)FUN_00957a60(pvVar3,local_30);
      pfVar5 = TransformComponent_GetWorldPosition(pvVar3,local_20);
      uVar6 = FUN_00c72d10(this,pfVar5,pfVar4);
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
      return (char)uVar6 == '\0';
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
  }
  return false;
}

