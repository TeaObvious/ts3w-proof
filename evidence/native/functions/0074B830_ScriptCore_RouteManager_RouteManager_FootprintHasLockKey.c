/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161cb0 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_FootprintHasLockKey [assembly=ScriptCore token=0x0600105B;
   footprintId: System.UInt64, lockType: System.UInt32, lockKey: System.UInt64;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore_RouteManager__RouteManager_FootprintHasLockKey
               (undefined4 param_1,undefined4 param_2,int param_3,uint param_4,uint param_5)

{
  bool bVar1;
  void *pvVar2;
  
  pvVar2 = (void *)thunk_FUN_00835d40();
  if (pvVar2 != (void *)0x0) {
    pvVar2 = (void *)FUN_0082ade0(pvVar2,param_1,param_2,(int *)0x0);
    if (pvVar2 != (void *)0x0) {
      bVar1 = FUN_009462c0(pvVar2,param_4,param_5,param_3);
      return bVar1;
    }
  }
  return false;
}

