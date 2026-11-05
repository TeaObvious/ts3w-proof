/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. PC1.67 static instruction review. Object event24 listener registered
   at0095CF0F. Resolves Tree011EA290 and recomputes owner state through0095EFF0. Ignores summary
   payload. Return contract AL1. */

bool __cdecl Tree_OnVisualStateChanged(void *object,char *summary3)

{
  void *pvVar1;
  
  if (object != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(object,DAT_011ea290);
    if (pvVar1 != (void *)0x0) {
      VisualState_PublishDerivedObjectState(*(void **)((int)pvVar1 + 4));
    }
  }
  return true;
}

