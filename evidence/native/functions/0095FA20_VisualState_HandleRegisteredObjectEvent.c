/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 VisualState producer contract. Analyst-assigned event adapter; CDECL TWO physical
   stack pointers object,eventPayload, plainRET caller cleanup. Null object or absent VisualState
   mask11EA2A8 returns AL1. Otherwise ECX resolved component, PUSH eventPayload ->95F890 and
   propagate AL. Both success paths only define AL; prior fullEAX/one-argument rendering was an ABI
   artifact. Original95FCB0 installs this exact callback for raw event IDs1,2,7 at priority0; those
   IDs' producer meaning/order is not inferred from this adapter. */

bool __cdecl VisualState_HandleRegisteredObjectEvent(void *object,void *eventPayload)

{
  bool bVar1;
  void *this;
  
  if (object != (void *)0x0) {
    this = Object_GetComponentByMask(object,DAT_011ea2a8);
    if (this != (void *)0x0) {
      bVar1 = VisualState_PublishSelectedObjectCommands(this,eventPayload);
      return bVar1;
    }
  }
  return true;
}

