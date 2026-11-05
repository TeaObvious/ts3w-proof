/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. cdecl no arguments RETvoid.
   Calls9355F0(eventId,callback,priority): 0/7/1->942390
   priority50;5->942CA0;0E->9423C0;0F->9423F0;0B->943530;0C->942420;14->943560, remaining
   priorities0. Existing component descriptor identifies this as REGISTRATION, not component
   constructor (constructor callback942730). Global event dispatch implementation and additional
   callback bodies unexpanded. */

void __cdecl ObjectSound_RegisterOwnerEventHandlers(void)

{
  ObjectEvents_RegisterListener(0,&LAB_00942390,0x32);
  ObjectEvents_RegisterListener(7,&LAB_00942390,0x32);
  ObjectEvents_RegisterListener(1,&LAB_00942390,0x32);
  ObjectEvents_RegisterListener(5,ObjectSound_OnOwnerRemoval,0);
  ObjectEvents_RegisterListener(0xe,&LAB_009423c0,0);
  ObjectEvents_RegisterListener(0xf,&LAB_009423f0,0);
  ObjectEvents_RegisterListener(0xb,ObjectSound_OnActivate,0);
  ObjectEvents_RegisterListener(0xc,ObjectSound_OnDeactivate,0);
  ObjectEvents_RegisterListener(0x14,ObjectSound_OnActivationState,0);
  return;
}

