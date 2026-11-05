/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: ECX public handle is converted to internal handle-8, then
   invokes owner manager internal+34 via0059ab50. The apparent null branch dereferences address34
   and is not a safe null no-op. No stack arguments. */

void __thiscall Job_Submit(void *this)

{
  if (this != (void *)0x0) {
    JobManager_SubmitInternal(*(void **)((int)this + 0x2c),(void *)((int)this + -8));
    return;
  }
  JobManager_SubmitInternal(pvRam00000034,(void *)0x0);
  return;
}

