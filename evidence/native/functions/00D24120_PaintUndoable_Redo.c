/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* thiscallnoargs/plainRET Int32status0. SwapPaintStateD23FF0 thenD1A8B0 withcurrentTotalCostB4.
   This bounds historymoneybehaviorbutdoesnotbyitselfproveB4always0orallotherwritersabsent. */

int __thiscall PaintUndoable_Redo(void *this)

{
  PaintUndoable_SwapPaintState(this);
  ToolUndoable_ApplyCharge(this,*(float *)((int)this + 0xb4));
  return 0;
}

