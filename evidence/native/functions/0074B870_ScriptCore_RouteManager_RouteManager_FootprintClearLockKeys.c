/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161cb8 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_FootprintClearLockKeys [assembly=ScriptCore
   token=0x0600105C; footprintId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_RouteManager__RouteManager_FootprintClearLockKeys
               (undefined4 param_1,undefined4 param_2)

{
  void *this;
  int iVar1;
  
  this = (void *)thunk_FUN_00835d40();
  if (this != (void *)0x0) {
    iVar1 = FUN_0082ade0(this,param_1,param_2,(int *)0x0);
    if (iVar1 != 0) {
      FUN_009460e0(iVar1);
      return;
    }
  }
  return;
}

