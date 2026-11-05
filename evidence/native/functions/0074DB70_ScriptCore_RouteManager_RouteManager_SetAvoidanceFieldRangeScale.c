/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161d58 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_SetAvoidanceFieldRangeScale [assembly=ScriptCore
   token=0x0600107C; simObjId: System.UInt64, scale: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_RouteManager__RouteManager_SetAvoidanceFieldRangeScale
               (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  void *this;
  
  iVar1 = FUN_00937570();
  if (iVar1 != 0) {
    this = (void *)FUN_00937f80(iVar1);
    if (this != (void *)0x0) {
      iVar1 = FUN_00934260(this,DAT_011ea138);
      if ((iVar1 != 0) && (*(int *)(iVar1 + 0x10c) != 0)) {
        *(undefined4 *)(*(int *)(iVar1 + 0x10c) + 0xac) = param_3;
      }
    }
  }
  return;
}

