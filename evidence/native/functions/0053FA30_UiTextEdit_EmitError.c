/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Physical ECX complete editor, one stack UInt32 RET4. Build
   event9B1552DB, controlID uses complete+3C ifnonzero else+38; payload error word from caller
   unchanged. Dispatch through IWindow+4 virtual118. Raw stack payload contains only initialized
   selected fields, no inferred zero fill. Managed TextEditErrors confirms1 InvalidKey,2
   ValidateFailed,3 CapacityReached,4 CursorLimit,5 UndoLimitReached,6 Misc. No current matching
   error path is added. */

void __thiscall UiTextEdit_EmitError(void *this,uint errorCode)

{
  undefined1 local_1c [8];
  undefined4 local_14;
  int local_10;
  uint local_c;
  
  local_10 = *(int *)((int)this + 0x3c);
  local_14 = 0x9b1552db;
  if (local_10 == 0) {
    local_10 = *(int *)((int)this + 0x38);
  }
  local_c = errorCode;
  (**(code **)(*(int *)((int)this + 4) + 0x118))(local_1c);
  return;
}

