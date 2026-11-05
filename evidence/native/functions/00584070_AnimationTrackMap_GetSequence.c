/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Calls FindOrCreate(track),
   dereferences returned node payload and returns SequenceController pointer in EAX. Original RET4;
   no extra return-by-reference ABI. */

int * __thiscall AnimationTrackMap_GetSequence(void *this,uint track)

{
  int **ppiVar1;
  
  ppiVar1 = AnimationTrackMap_FindOrCreate(this,track);
  return *ppiVar1;
}

