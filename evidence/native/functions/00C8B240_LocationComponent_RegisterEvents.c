/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Descriptor callback registers object listeners for
   events1,7,2,8,0e,10,5,21. Pose event0e listener00c8b210 priority50; other listedlisteners
   priority0. Assignedmask unused. */

void __cdecl LocationComponent_RegisterEvents(uint assignedMask)

{
  ObjectEvents_RegisterListener(1,&LAB_00c8a4f0,0);
  ObjectEvents_RegisterListener(7,&LAB_00c8a4f0,0);
  ObjectEvents_RegisterListener(2,&LAB_00c8a4f0,0);
  ObjectEvents_RegisterListener(8,FUN_00c8b1b0,0);
  ObjectEvents_RegisterListener(0xe,LocationComponent_OnWorldPoseChanged,0x32);
  ObjectEvents_RegisterListener(0x10,&LAB_00c8b050,0);
  ObjectEvents_RegisterListener(5,&LAB_00c8a520,0);
  ObjectEvents_RegisterListener(0x21,&LAB_00c8b080,0);
  return;
}

