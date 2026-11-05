/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* thiscallpaintconstructorECX/noargs/plainRET fullEAXreceiver afterbaseD1AF00.
   InitializespriceB0andTotalCostB4to0; specificbeginCEEE2E assignsB0fromcatalogx87price. Undo/redo
   laterreadB4,while actualsamplehelperscharge throughbaseD1A8B0.
   DoNOTinferthatinitialB4zeroorhistoryzero means livepaintingneverchargeshousehold.
   AllpossibleotherB4writersarenotclosedbythisannotation. */

undefined * __thiscall PaintUndoable_Initialize(void *this)

{
  ToolUndoable_Initialize(this);
  *(undefined4 *)((int)this + 0x50) = 0;
  *(undefined4 *)((int)this + 0x54) = 0;
  *(undefined ***)this = &PTR_FUN_01086af0;
  *(undefined ***)((int)this + 8) = &PTR_LAB_0108708c;
  *(undefined4 *)((int)this + 0x58) = 0xffffffff;
  *(undefined4 *)((int)this + 0x68) = 0;
  *(undefined4 *)((int)this + 0x6c) = 0;
  *(undefined4 *)((int)this + 0x70) = 0;
  *(undefined4 *)((int)this + 0x74) = 0;
  *(undefined4 *)((int)this + 0x78) = 0;
  *(undefined4 *)((int)this + 0x7c) = 0;
  *(undefined4 *)((int)this + 0x80) = 0;
  *(undefined4 *)((int)this + 0x84) = 0;
  *(undefined4 *)((int)this + 0x8c) = 0;
  *(undefined4 *)((int)this + 0x90) = 0;
  *(undefined4 *)((int)this + 0x94) = 0;
  *(char **)((int)this + 0x98) = "UserTool/UserToolUndoableLotPaint/GridPointToInfoMap";
  *(undefined4 *)((int)this + 0xa0) = 0;
  *(undefined4 *)((int)this + 0xa4) = 0;
  *(undefined4 *)((int)this + 0xa8) = 0;
  *(char **)((int)this + 0xac) = "UserTool/UserToolUndoableLotPaint/AlphaValues";
  *(undefined1 *)((int)this + 0xb8) = 0;
  *(undefined4 *)((int)this + 0x60) = 0;
  *(undefined4 *)((int)this + 0xb0) = 0;
  *(undefined4 *)((int)this + 0xb4) = 0;
  return this;
}

