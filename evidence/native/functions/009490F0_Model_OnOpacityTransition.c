/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original instruction review. Object event26 listener registered0094C3C8. Resolves
   Model011E9FC4; present component forwards owner+4 and16-byte payload to0095F210. ALtrue for
   no-op/processed, upper EAX unspecified. */

bool __cdecl Model_OnOpacityTransition(void *object,uint *payload16)

{
  void *pvVar1;
  
  if (object != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(object,DAT_011e9fc4);
    if (pvVar1 != (void *)0x0) {
      VisualState_PostOpacityTransition(*(void **)((int)pvVar1 + 4),payload16);
    }
  }
  return true;
}

