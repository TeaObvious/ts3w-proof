/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 rendered-pick contract. ECX=candidate map, output iterator RET4, returns output
   EAX. Chooses first nonzero bucket ascending, reaching the nonzero sentinel when empty. Iterator
   is node+bucket-slot pointer; subsequent selected consumer walks nextC then advances bucket slots.
   This traversal is not insertion order or stable key order. */

void * __thiscall PickCandidateMap_Begin(void *this,void *outputIterator)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = *(int **)((int)this + 4);
  iVar2 = *piVar1;
  *(int *)outputIterator = iVar2;
  *(int **)((int)outputIterator + 4) = piVar1;
  if (iVar2 == 0) {
    iVar2 = piVar1[1];
    *(int **)((int)outputIterator + 4) = piVar1 + 1;
    while (iVar2 == 0) {
      *(int *)((int)outputIterator + 4) = *(int *)((int)outputIterator + 4) + 4;
      iVar2 = **(int **)((int)outputIterator + 4);
    }
    *(undefined4 *)outputIterator = **(undefined4 **)((int)outputIterator + 4);
  }
  return outputIterator;
}

