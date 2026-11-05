/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163bb8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
    UndoHistory_ReplaceObjectReferences(*(void **)(iVar1 + 0x28),param_1,param_2,param_3,param_4);
  }
  return;
}

