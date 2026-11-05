/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161dc0 (original PC 1.67 TS3W.exe).
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
  undefined4 *this;
  void *this_00;
  
  iVar2 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar2);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    this_00 = (void *)FUN_00934260(this,DAT_011ea138);
    if (this_00 != (void *)0x0) {
      if (param_6 == '\0') {
        FUN_00953e70(this_00,param_3,param_4,param_5);
      }
      else {
        FUN_00953a30(this_00,param_3,param_4,param_5);
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

