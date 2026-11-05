/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115eb28 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Animation::Animation_SetBoneTimeRotation [assembly=ScriptCore token=0x06000DB8; objId:
   System.UInt64, boneId: System.UInt32, timeScale: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Animation__Animation_SetBoneTimeRotation
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  void *pvVar2;
  undefined4 *this;
  int iVar3;
  
  pvVar2 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_2,param_1));
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    pvVar2 = Object_GetComponentByMask(this,DAT_011dd484);
    if (((pvVar2 != (void *)0x0) && (iVar3 = FUN_0093cba0(pvVar2,15000), iVar3 != 0)) &&
       (pvVar2 = (void *)(**(code **)(*(int *)(iVar3 + 8) + 4))(0x664fb68), pvVar2 != (void *)0x0))
    {
      FUN_0056ca70(pvVar2,param_3,param_4);
    }
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
  return;
}

