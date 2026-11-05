/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161ca0 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_FootprintAddLockKey [assembly=ScriptCore token=0x06001059;
   footprintId: System.UInt64, lockType: System.UInt32, lockKey: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_RouteManager__RouteManager_FootprintAddLockKey
               (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,
               undefined4 param_5)

{
  void *pvVar1;
  
  pvVar1 = (void *)thunk_FUN_00835d40();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = (void *)FUN_0082ade0(pvVar1,param_1,param_2,(int *)0x1);
    if (pvVar1 != (void *)0x0) {
      FUN_00946b10(pvVar1,param_4,param_5,param_3);
    }
  }
  return;
}

