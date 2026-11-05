/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. cdecl factory(memory,owner); NULL memoryreturnsNULL;
   otherwise calls concretector00957c60 with ECXmemory. Descriptor construction callback at+0c. */

void * __cdecl TransformComponent_ConstructInPlace(void *memory,void *owner)

{
  void *pvVar1;
  
  if (memory != (void *)0x0) {
    pvVar1 = TransformComponent_Construct(memory,owner);
    return pvVar1;
  }
  return (void *)0x0;
}

