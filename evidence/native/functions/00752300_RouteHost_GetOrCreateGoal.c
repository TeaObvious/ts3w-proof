/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Lazily creates a 0x50-byte Routing/RoutGoal at host+0x144.
   Constructor return is EAX pointer, not void. Goal's vtable+0/+4 are retain/release (shared
   counter+8), and host takes its retained pointer. Copies follower ObjectGuid host+0x40/+0x44 to
   goal+0x40/+0x44. Allocation-failure dereference behavior is not normalized here. */

void * __fastcall RouteHost_GetOrCreateGoal(void *host)

{
  int *piVar1;
  int iVar2;
  void *goal;
  int *piVar3;
  
  if (*(int *)((int)host + 0x144) == 0) {
    goal = (void *)FUN_004e4500(0x50,"Routing/RoutGoal",0);
    if (goal == (void *)0x0) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = RouteGoal_Initialize(goal);
    }
    piVar1 = *(int **)((int)host + 0x144);
    if (piVar3 != piVar1) {
      if (piVar3 != (int *)0x0) {
        (**(code **)*piVar3)();
      }
      *(int **)((int)host + 0x144) = piVar3;
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 4))();
      }
    }
    iVar2 = *(int *)((int)host + 0x144);
    *(undefined4 *)(iVar2 + 0x40) = *(undefined4 *)((int)host + 0x40);
    *(undefined4 *)(iVar2 + 0x44) = *(undefined4 *)((int)host + 0x44);
  }
  return *(void **)((int)host + 0x144);
}

