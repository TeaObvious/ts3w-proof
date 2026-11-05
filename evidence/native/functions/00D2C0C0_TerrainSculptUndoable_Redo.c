/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PhysicalthiscallECX noargs/plainRET fullEAXstatus0.
   FIRSTswapD2BF20,THENapplyPOSITIVEFLOATtotal110throughD1A8B0(sharedfractionalworldremainder,capturedfree14).
   SelectedwrapperdoesnotcallCanCharge;
   anyouterredoeligibilityorcallbackrejectionbelongsseparatecallers.
   Preservehostrejection/contextguardsasexplicitstrongerpolicy,not claimnativealways
   checksfundsbeforehistorymutation. */

int __thiscall TerrainSculptUndoable_Redo(void *this)

{
  TerrainSculptUndoable_SwapHeightAndPondState(this);
  ToolUndoable_ApplyCharge(this,*(float *)((int)this + 0x110));
  return 0;
}

