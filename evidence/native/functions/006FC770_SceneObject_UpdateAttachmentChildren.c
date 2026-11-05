/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 scene attachment-child transform walk. Physical parent receiver in ECX, no stack
   arguments, plain RET; existing inferred fastcall prototype retained. Circular intrusive list head
   is parent+194. If tail differs from head, walk next links until head; each nonnull node maps to
   containing child at node-20, pass parent on stack and call006FB340, then load the next link. The
   explicit null-node path passes null to that callee; it is not a safe-null guarantee for a corrupt
   list. Selected producer00940B10 invokes this after pose publication and before later dirty/bounds
   work. The concrete006FB340 attachment-mode transform kernel is a separate body, not a vertex
   write/equality memo, and no child GPU completion is claimed. */

void __fastcall SceneObject_UpdateAttachmentChildren(int *param_1)

{
  int *piVar1;
  int *piVar2;
  int *this;
  
  piVar1 = param_1 + 0x65;
  if ((int *)param_1[0x66] != piVar1) {
    for (piVar2 = (int *)*piVar1; piVar2 != piVar1; piVar2 = (int *)*piVar2) {
      if (piVar2 == (int *)0x0) {
        this = (int *)0x0;
      }
      else {
        this = piVar2 + -8;
      }
                    /* Child containing-object pointer from intrusive node-20 in ECX; parent
                       receiver pushed as the one callee stack argument. */
      FUN_006fb340(this,param_1);
    }
  }
  return;
}

