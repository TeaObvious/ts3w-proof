/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ReplaceUndoableObjectImpl. Export
   ordinal(s): 1568. Entry VA: 0x10577d70. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CD1. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
World_ReplaceUndoableObjectImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
                    /* 0x577d70  1568  World_ReplaceUndoableObjectImpl */
  iVar1 = FUN_102c72b0();
  if ((iVar1 != 0) && (*(void **)(iVar1 + 0x28) != (void *)0x0)) {
    FUN_10311110(*(void **)(iVar1 + 0x28),param_1,param_2,param_3,param_4);
  }
  return;
}

