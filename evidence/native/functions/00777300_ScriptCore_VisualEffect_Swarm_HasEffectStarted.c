/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162a20 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.VisualEffect::Swarm_HasEffectStarted [assembly=ScriptCore token=0x060004C8;
   effectHandle: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

byte ScriptCore_VisualEffect__Swarm_HasEffectStarted(void)

{
  int *piVar1;
  int iVar2;
  byte bVar3;
  void *pvVar4;
  undefined4 *this;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  
  pvVar4 = ObjectRegistry_GetGlobal();
  if (pvVar4 != (void *)0x0) {
    this = ObjectRegistry_FindBorrowed(pvVar4,CONCAT44(in_stack_00000008,in_stack_00000004));
    if (this != (undefined4 *)0x0) {
      piVar1 = this + 1;
      LOCK();
      *piVar1 = *piVar1 + 1;
      UNLOCK();
      pvVar4 = Object_GetComponentByMask(this,DAT_011e9e90);
      if (pvVar4 != (void *)0x0) {
        bVar3 = FUN_00943720((int)pvVar4);
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
        return bVar3;
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
  }
  return 0;
}

