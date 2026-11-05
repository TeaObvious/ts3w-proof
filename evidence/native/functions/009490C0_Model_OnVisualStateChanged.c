/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. PC1.67 static instruction review. Object event24 listener registered
   at0094C3BA. Resolves Model using011E9FC4; calls0095EFF0 on owner+4. Recomputes full VisualState
   rather than interpreting wall mask as a model swap. AL1 on no-op; upperEAX undefined. */

bool __cdecl Model_OnVisualStateChanged(void *object,char *summary3)

{
  void *pvVar1;
  
  if (object != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(object,DAT_011e9fc4);
    if (pvVar1 != (void *)0x0) {
      VisualState_PublishDerivedObjectState(*(void **)((int)pvVar1 + 4));
    }
  }
  return true;
}

