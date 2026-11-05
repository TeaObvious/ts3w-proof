/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: Use global device/vertex-format/index/vertex buffers, then
   SubmitIndexedRange with primitive3, base/minimum0, four vertices, start0 and two primitives.
   Plain RET; no explicit stack input is read, although selected caller5F84F0 pushes/cleans one
   unused word. This selected indexed quad does not establish the current six-vertex nonindexed
   Vulkan path or all original draw dispatch. Descriptive analyst role, not a recovered symbol. */

void RenderDevice_SubmitGlobalQuad(void)

{
  void *this;
  
  this = DAT_011cfcc8;
  FUN_0060f5f0(DAT_011cfcc8,DAT_01158dd4);
  FUN_0060f730(this,DAT_01158dd8);
  FUN_0060f660(this,0,DAT_01158ddc,0,**(uint **)(DAT_01158dd4 + 0x20));
  RenderDevice_SubmitIndexedRange(this,3,0,0,4,0,2);
  return;
}

