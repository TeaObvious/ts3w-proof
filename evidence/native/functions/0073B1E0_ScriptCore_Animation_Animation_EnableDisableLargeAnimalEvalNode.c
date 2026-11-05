/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115eba8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Animation::Animation_EnableDisableLargeAnimalEvalNode [assembly=ScriptCore
   token=0x06000DC8; id: System.UInt64, bEnable: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Animation__Animation_EnableDisableLargeAnimalEvalNode
               (undefined4 param_1,undefined4 param_2,char param_3)

{
  int *piVar1;
  int iVar2;
  void *pvVar3;
  undefined4 *this;
  
  pvVar3 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(param_2,param_1));
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    pvVar3 = Object_GetComponentByMask(this,DAT_011dd484);
    if (pvVar3 != (void *)0x0) {
      if (param_3 == '\0') {
        *(uint *)((int)pvVar3 + 0x2c) = *(uint *)((int)pvVar3 + 0x2c) | 0x40000;
      }
      else {
        *(uint *)((int)pvVar3 + 0x2c) = *(uint *)((int)pvVar3 + 0x2c) & 0xfffbffff;
      }
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
  return;
}

