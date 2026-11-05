/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. PC1.67 static instruction review. Object event24 listener registered
   at009447BF. Resolves Effect using011E9E90; when present calls0095EFF0 on component's owner+4.
   Ignores summary payload and recomputes current full VisualState. Returns AL1 even on absent
   object/component; no upperEAX guarantee. */

bool __cdecl Effect_OnVisualStateChanged(void *object,char *summary3)

{
  void *pvVar1;
  
  if (object != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(object,DAT_011e9e90);
    if (pvVar1 != (void *)0x0) {
      VisualState_PublishDerivedObjectState(*(void **)((int)pvVar1 + 4));
    }
  }
  return true;
}

