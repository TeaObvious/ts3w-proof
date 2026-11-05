/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 uniquely owned native render-state replacement. ECX scene component plus one stack
   pointer, RET04. If old component+298 is nonnull, call00574050 on that allocation, free it
   with004E44E0, then clear the field. Only afterward assign the incoming pointer; nonnull
   replacement invokes006FC770 attachment-child propagation. There is no pointer-equality fast path,
   retain of the replacement, transaction or safe same-pointer assignment promise in this whole
   function. Actual callers avoid or establish their own source lifetime. This differs from
   reference-counted input/pose ownership inside the render state and from current shared resident
   model leases. */

void __thiscall SceneAnimation_ReplaceOwnedRenderState(void *this,int param_1)

{
  undefined4 *allocation;
  
  allocation = *(undefined4 **)((int)this + 0x298);
  if (allocation != (undefined4 *)0x0) {
                    /* Destroy old uniquely owned state before free, field clear and replacement; no
                       same-pointer guard here. */
    AnimationRenderState_Destroy(allocation);
    Memory_FreeIfNonNull(allocation);
    *(undefined4 *)((int)this + 0x298) = 0;
  }
  *(int *)((int)this + 0x298) = param_1;
  if (param_1 != 0) {
    SceneObject_UpdateAttachmentChildren(this);
  }
  return;
}

