/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original semantics. ECX VisualState plus rawUInt32hash, RET4void. Compare fullDWORD+14, equal no-op; changed stores exactinput BEFORE95E350 enqueues04D18170. This internal setter accepts0; it does not normalize empty-string seed811C9DC5. No dispatcher/result/resource rollback or GPU readiness is established. */

void __thiscall FUN_0095e890(void *this,int param_1)

{
  if (*(int *)((int)this + 0x14) != param_1) {
    *(int *)((int)this + 0x14) = param_1;
    VisualState_EnqueueGeometryStateByGuid(this);
  }
  return;
}
