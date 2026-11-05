/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115eb60 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Animation::Animation_StopRandomClipController [assembly=ScriptCore token=0x06000DBF;
   objId: System.UInt64, track: System.UInt32, id: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Animation__Animation_StopRandomClipController
               (undefined4 param_1,undefined4 param_2,int param_3,int param_4)

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
    if (((pvVar2 != (void *)0x0) && (iVar3 = FUN_0093c9c0(pvVar2,param_3,param_4), iVar3 != 0)) &&
       (iVar3 = (**(code **)(*(int *)(iVar3 + 8) + 4))(0x6c12d61), iVar3 != 0)) {
      FUN_0056d190(iVar3);
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

