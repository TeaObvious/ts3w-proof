/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163bb8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ReplaceUndoableObjectImpl [assembly=ScriptCore token=0x06000879;
   oldObjId: System.UInt64, newObjId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ReplaceUndoableObjectImpl
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  iVar1 = FUN_00cef500();
  if ((iVar1 != 0) && (*(void **)(iVar1 + 0x28) != (void *)0x0)) {
    FUN_00d39600(*(void **)(iVar1 + 0x28),param_1,param_2,param_3,param_4);
  }
  return;
}

