/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161dc0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.RouteManager::RouteManager_InitShutdownPairedAvoidance [assembly=ScriptCore
   token=0x06001089; masterObjId: System.UInt64, slaveObjId: System.UInt64, slaveAGS: System.UInt32,
   bInit: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_RouteManager__RouteManager_InitShutdownPairedAvoidance
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               uint param_5,char param_6)

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
    pvVar3 = Object_GetComponentByMask(this,DAT_011ea138);
    if (pvVar3 != (void *)0x0) {
      if (param_6 == '\0') {
        FUN_00953e70(pvVar3,param_3,param_4,param_5);
      }
      else {
        FUN_00953a30(pvVar3,param_3,param_4,param_5);
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

