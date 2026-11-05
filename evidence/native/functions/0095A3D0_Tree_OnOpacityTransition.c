/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original instruction review. Object event26 listener registered0095CF20. Resolves
   Tree011EA290, forwards owner+4/payload to0095F210. ALtrue; missing component accepted. No Effect
   listener established by the reviewed direct-registration search. */

bool __cdecl Tree_OnOpacityTransition(void *object,uint *payload16)

{
  void *pvVar1;
  
  if (object != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(object,DAT_011ea290);
    if (pvVar1 != (void *)0x0) {
      VisualState_PostOpacityTransition(*(void **)((int)pvVar1 + 4),payload16);
    }
  }
  return true;
}

