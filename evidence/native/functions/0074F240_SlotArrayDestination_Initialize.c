/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Producer00760040 allocates0x58. EAX pointer return.
   Vtable0100528c identifies slot-array destination. Shared score/tag/weight header as point. Slot
   vector+0x30..+0x3c, follower ID+0x40/+0x44, targetID+0x48/+0x4c, AGS+0x50 and byte portal-offset
   flag+0x54. */

void * __fastcall SlotArrayDestination_Initialize(void *destination)

{
  undefined4 uVar1;
  
  uVar1 = DAT_00f998f8;
  *(undefined4 *)((int)destination + 4) = 0;
  *(undefined4 *)((int)destination + 8) = 0;
  *(undefined4 *)((int)destination + 0x28) = 0;
  *(undefined4 *)((int)destination + 0x2c) = uVar1;
  *(undefined4 *)((int)destination + 0xc) = 0;
  *(undefined4 *)((int)destination + 0x10) = 0;
  *(undefined4 *)((int)destination + 0x14) = 0;
  *(undefined4 *)((int)destination + 0x18) = 0;
  *(undefined4 *)((int)destination + 0x1c) = 0;
  *(undefined4 *)((int)destination + 0x20) = 0;
  *(undefined4 *)((int)destination + 0x24) = 0;
  *(undefined ***)destination = &PTR_SlotArrayDestination_GetTypeTag_0100528c;
  *(undefined4 *)((int)destination + 0x30) = 0;
  *(undefined4 *)((int)destination + 0x34) = 0;
  *(undefined4 *)((int)destination + 0x38) = 0;
  *(char **)((int)destination + 0x3c) = "Routing/RoutingHost/SlotArrayDestination/SlotGoals";
  *(undefined4 *)((int)destination + 0x40) = 0;
  *(undefined4 *)((int)destination + 0x44) = 0;
  *(undefined4 *)((int)destination + 0x48) = 0;
  *(undefined4 *)((int)destination + 0x4c) = 0;
  *(undefined4 *)((int)destination + 0x50) = 0;
  *(undefined1 *)((int)destination + 0x54) = 0;
  return destination;
}

