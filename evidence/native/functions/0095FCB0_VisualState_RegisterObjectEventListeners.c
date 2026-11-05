/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. PC1.67 static instruction review. Registers VisualState listeners; PUSH
   callback0095F5F0 / event0D / priority0 at0095FCE8..FCF1 establishes wall visibility consumer.
   Other registrations are retained but not all reviewed here.
   
   Analyst PC1.67 VisualState producer contract. Preserved prior wall-listener annotation.
   Complete206-byte body instruction checked: fourteen cdecl registrations, each
   event/callback/priority0. First three rawIDs1,2,7 register95FA20; remaining
   IDs11,D,19,21,1E,23,24,22,28,25,29 retain original callbacks. Registration does not establish who
   produces events1/2/7 or their order during world loading. No recovered enum names claimed. */

void __cdecl VisualState_RegisterObjectEventListeners(void)

{
  ObjectEvents_RegisterListener(1,VisualState_HandleRegisteredObjectEvent,0);
  ObjectEvents_RegisterListener(2,VisualState_HandleRegisteredObjectEvent,0);
  ObjectEvents_RegisterListener(7,VisualState_HandleRegisteredObjectEvent,0);
  ObjectEvents_RegisterListener(0x11,&LAB_0095f5c0,0);
  ObjectEvents_RegisterListener(0xd,VisualState_OnWallVisibility,0);
  ObjectEvents_RegisterListener(0x19,&LAB_0095f620,0);
  ObjectEvents_RegisterListener(0x21,&LAB_0095fc80,0);
  ObjectEvents_RegisterListener(0x1e,&LAB_0095e4f0,0);
  ObjectEvents_RegisterListener(0x23,&LAB_0095fa50,0);
  ObjectEvents_RegisterListener(0x24,&LAB_0095f650,0);
  ObjectEvents_RegisterListener(0x22,&LAB_0095e520,0);
  ObjectEvents_RegisterListener(0x28,&LAB_0095fa80,0);
  ObjectEvents_RegisterListener(0x25,&LAB_0095e550,0);
  ObjectEvents_RegisterListener(0x29,&LAB_0095e580,0);
  return;
}

