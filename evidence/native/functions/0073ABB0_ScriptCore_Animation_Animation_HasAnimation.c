/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* Verified PC 1.67 registration table at 0x0115eb70 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Animation::Animation_HasAnimation [assembly=ScriptCore token=0x06000DC1; objId:
   System.UInt64, track: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore_Animation__Animation_HasAnimation(undefined4 param_1,undefined4 param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  void *pvVar3;
  undefined4 *this;
  int *piVar4;
  int iVar5;
  undefined1 auStack_4344 [4];
  undefined1 auStack_4340 [17212];
  undefined4 uStack_4;
  
  uStack_4 = 0x73abba;
  pvVar3 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(param_2,param_1));
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    pvVar3 = Object_GetComponentByMask(this,DAT_011dd484);
    if (pvVar3 != (void *)0x0) {
      piVar4 = (int *)FUN_0093cba0(pvVar3,param_3);
      if (piVar4 != (int *)0x0) {
        FUN_0054ca40((int)auStack_4340);
        iVar5 = (**(code **)(*piVar4 + 0xc))(auStack_4340);
        FUN_0054ca00((int)auStack_4344);
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
        return iVar5 != 0;
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
  return false;
}

