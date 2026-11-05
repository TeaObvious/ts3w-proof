/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Original PC 1.67: Update nonnull managers in literal order; ceiling at+250 callsA4DDA0 with no
   delta argument. Ordering does not establish scheduler cadence, exception recovery or other
   manager internals. RET4. */

void __thiscall LotRenderer_UpdatePartManagers(void *this,float param_1)

{
  if (*(int *)((int)this + 0x230) != 0) {
    FUN_00aa1930(*(int *)((int)this + 0x230));
  }
  if (*(void **)((int)this + 0x234) != (void *)0x0) {
    FUN_00afb980(*(void **)((int)this + 0x234),param_1);
  }
  if (*(void **)((int)this + 0x238) != (void *)0x0) {
    FUN_00c59ab0(*(void **)((int)this + 0x238));
  }
  if (*(int *)((int)this + 0x248) != 0) {
    FUN_00a6a190(*(int *)((int)this + 0x248));
  }
  if (*(void **)((int)this + 600) != (void *)0x0) {
    FUN_00a80eb0(*(void **)((int)this + 600),param_1);
  }
  if (*(void **)((int)this + 0x23c) != (void *)0x0) {
    FUN_00ada820(*(void **)((int)this + 0x23c),(int *)((int)this + 0x29c));
    FUN_00ada990(*(int *)((int)this + 0x23c));
  }
  if (*(int *)((int)this + 0x24c) != 0) {
    FUN_00b6d410(*(int *)((int)this + 0x24c));
  }
  if (*(int *)((int)this + 0x250) != 0) {
    CeilingRenderManager_PollDeferredRoomRequest(*(int *)((int)this + 0x250));
  }
  if (*(int *)((int)this + 0x260) != 0) {
    ScriptCore.Animation::Animation_SetMissingAnimationCallback();
  }
  FUN_00ae2be0((int)this);
  if ((*(void **)((int)this + 0x198) != (void *)0x0) && (*(char *)((int)this + 0x1e) != '\0')) {
    FUN_00d658a0(*(void **)((int)this + 0x198));
  }
  return;
}

