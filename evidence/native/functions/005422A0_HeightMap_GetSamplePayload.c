/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. ECX owner, no stack args; returns owner+38 sample backing
   pointer inEAX. Used by optimizer producer; this getter does not retain or copy data. */

void * __thiscall HeightMap_GetSamplePayload(void *this)

{
  return *(void **)((int)this + 0x38);
}

