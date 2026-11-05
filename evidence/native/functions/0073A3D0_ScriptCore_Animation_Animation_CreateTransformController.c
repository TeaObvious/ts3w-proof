/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115eb20 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Animation::Animation_CreateTransformController [assembly=ScriptCore token=0x06000DB7;
   objId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Animation__Animation_CreateTransformController(void)

{
  int *piVar1;
  int iVar2;
  void *pvVar3;
  undefined4 *this;
  void *this_00;
  undefined4 *puVar4;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  
  pvVar3 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(in_stack_00000008,in_stack_00000004));
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    pvVar3 = Object_GetComponentByMask(this,DAT_011dd484);
    if (pvVar3 != (void *)0x0) {
      this_00 = (void *)FUN_004e4500(0x48,"Animation/TransformController",0);
      if (this_00 == (void *)0x0) {
        puVar4 = (undefined4 *)0x0;
      }
      else {
        puVar4 = FUN_0056bcd0(this_00,(int)pvVar3 + 8);
        if (puVar4 != (undefined4 *)0x0) {
          puVar4[1] = puVar4[1] + 1;
        }
      }
      (**(code **)(*(int *)((int)pvVar3 + 8) + 0x14))(15000,puVar4,2,0xbf800000,0xbf800000,1,0,0,0);
      if ((puVar4 != (undefined4 *)0x0) &&
         (iVar2 = puVar4[1], puVar4[1] = iVar2 + -1, iVar2 + -1 == 0)) {
        puVar4[1] = 1;
        (**(code **)*puVar4)(1);
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

