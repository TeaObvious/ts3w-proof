/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161d30 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_MarkRoomForUpdate [assembly=ScriptCore token=0x06001077;
   lotId: System.UInt64, roomId: System.Int32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_RouteManager__RouteManager_MarkRoomForUpdate(uint param_1,uint param_2,int param_3)

{
  int iVar1;
  void *this;
  
  iVar1 = thunk_FUN_00835d40();
  if (iVar1 != 0) {
    this = (void *)FUN_008295c0(iVar1);
    if (this != (void *)0x0) {
      FUN_00635e20(this,param_1,param_2,param_3);
    }
  }
  return;
}

