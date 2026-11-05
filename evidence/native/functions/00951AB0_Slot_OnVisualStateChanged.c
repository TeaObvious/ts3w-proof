/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. PC1.67 static instruction review. Object event24 listener registered
   at00951BB0. Resolves Slot011EA114, forwards summary pointer to00951A20; no object/component
   returns AL1. Only AL return meaningful. */

bool __cdecl Slot_OnVisualStateChanged(void *object,char *summary3)

{
  bool bVar1;
  void *this;
  
  if (object != (void *)0x0) {
    this = Object_GetComponentByMask(object,DAT_011ea114);
    if (this != (void *)0x0) {
      bVar1 = Slot_PropagateAggregateVisibility(this,summary3);
      return bVar1;
    }
  }
  return true;
}

