/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_0050ec40. Physical ECX DrawContext plus renderer/byte-control words/RET8.
   Renderer0 selects default+44; changed current+40 flushes50EB00 before assignment. Store byte at94
   and return embedded builder+60. This receiver is distinct from transform matrix receiver with
   classification+40. */

int __thiscall UiDrawContext_SelectRenderer(void *this,int param_1,undefined1 param_2)

{
  if (param_1 == 0) {
    param_1 = *(int *)((int)this + 0x44);
  }
  if (param_1 != *(int *)((int)this + 0x40)) {
    UiDrawContext_FlushCommands((int)this);
    *(int *)((int)this + 0x40) = param_1;
  }
  *(undefined1 *)((int)this + 0x94) = param_2;
  return (int)this + 0x60;
}

