/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. ECX proxy, no stack args RET, EAX0/1. Exactly
   word+10 !=0 and (word&3)==0. No call, wait, pointer dereference or existence query. Service
   consumer729D80/729460 establishes ready pointer vs record|1 and failure2; failure predicate alone
   cannot distinguish missing, pending, failure and zero. */

bool __thiscall TextureProxy_HasUntaggedResource(void *this)

{
  if ((*(int *)((int)this + 0x10) != 0) && ((*(uint *)((int)this + 0x10) & 3) == 0)) {
    return true;
  }
  return false;
}

