/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 rendered-pick contract. ECX=scene vector owner, UInt32 index RET4 pointer EAX.
   Computes (end8-begin4) SAR2 then unsigned bound comparison; out of range returns NULL, otherwise
   returns begin[index] unchanged. Background FFFFFFFF therefore misses for an ordinary valid
   vector. No retain or generation validation in this leaf. */

void * __thiscall RenderScene_GetBorrowedAtIndex(void *this,uint sceneIndex)

{
  if ((uint)(*(int *)((int)this + 8) - *(int *)((int)this + 4) >> 2) <= sceneIndex) {
    return (void *)0x0;
  }
  return *(void **)(*(int *)((int)this + 4) + sceneIndex * 4);
}

