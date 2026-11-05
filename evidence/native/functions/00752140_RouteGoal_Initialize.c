/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Initializes a 0x50-byte route goal. Refcount is +8; circular
   destination sentinel +0x18/+0x1c; valid-room vector +0x20/+0x24/+0x28 with definition mode2
   at+0x30. Follower ID +0x40/+0x44 is filled by producer00752300. Bytes+0x48/+0x49/+0x4a start
   0/1/0. */

void * __fastcall RouteGoal_Initialize(void *goal)

{
  int iVar1;
  
  *(undefined ***)goal = &PTR_LAB_0103b394;
  *(undefined ***)((int)goal + 4) = &PTR_LAB_00ff4a78;
  LOCK();
  *(undefined4 *)((int)goal + 8) = 0;
  UNLOCK();
  *(undefined4 *)((int)goal + 0x14) = 0;
  *(undefined4 *)((int)goal + 0xc) = 0;
  *(undefined4 *)((int)goal + 0x10) = 0;
  *(undefined ***)goal = &PTR_FUN_01005498;
  *(undefined ***)((int)goal + 4) = &PTR_LAB_01005488;
  iVar1 = (int)goal + 0x18;
  *(int *)((int)goal + 0x1c) = iVar1;
  *(int *)iVar1 = iVar1;
  *(undefined4 *)((int)goal + 0x20) = 0;
  *(undefined4 *)((int)goal + 0x24) = 0;
  *(undefined4 *)((int)goal + 0x28) = 0;
  *(char **)((int)goal + 0x2c) = "Routing/mValidRoomIds";
  *(undefined4 *)((int)goal + 0x30) = 2;
  *(undefined4 *)((int)goal + 0x38) = 0;
  *(undefined4 *)((int)goal + 0x3c) = 0;
  *(undefined4 *)((int)goal + 0x40) = 0;
  *(undefined4 *)((int)goal + 0x44) = 0;
  *(undefined1 *)((int)goal + 0x48) = 0;
  *(undefined1 *)((int)goal + 0x49) = 1;
  *(undefined1 *)((int)goal + 0x4a) = 0;
  return goal;
}

