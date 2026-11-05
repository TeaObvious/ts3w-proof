/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 slot contract. ECX component, stackbindingDWORD RET4, ALalways1. If
   currentbinding40==0 AND wrapping slot total==0, calls950EC0 first; thenstores callerword40. If
   either guardfails, stillstoresword. No readiness/failure propagation. Counts including original
   cleanup's retainedcone28 affect this admission. */

bool __thiscall SlotComponent_SetBindingWord(void *this,uint bindingWord)

{
  if (*(int *)((int)this + 0x40) != 0) {
    *(uint *)((int)this + 0x40) = bindingWord;
    return true;
  }
  if ((*(int *)((int)this + 0x58) - *(int *)((int)this + 0x54) >> 2) + *(int *)((int)this + 0x28) +
      *(int *)((int)this + 0x20) + *(int *)((int)this + 0x18) + *(int *)((int)this + 0x10) +
      *(int *)((int)this + 8) == 0) {
    SlotComponent_TryResourceAndComplete(this);
    *(uint *)((int)this + 0x40) = bindingWord;
    return true;
  }
  *(uint *)((int)this + 0x40) = bindingWord;
  return true;
}

