/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: ECX modifier, one stack flag byte, EAX=this, RET4. Restores vptr00FF409C, releases
   nonnull retained model+8 through its virtual+4, stores basevptr00FA2B80, and calls memory free
   only when flags bit0 is set. Does not clear or replace the model before that release, invent flag
   meanings or modify original bytes/ABI. This is the actual deleting-destructor order, not a no-op
   retirement. */

void * __thiscall SimHeadIsolationModifier_DeletingDestructor(void *this,byte param_1)

{
  *(undefined ***)this = &PTR_FUN_00ff409c;
  if (*(int **)((int)this + 8) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 8) + 4))();
  }
  *(undefined ***)this = &PTR_LAB_00fa2b80;
  if ((param_1 & 1) != 0) {
    Memory_FreeIfNonNull(this);
  }
  return this;
}

