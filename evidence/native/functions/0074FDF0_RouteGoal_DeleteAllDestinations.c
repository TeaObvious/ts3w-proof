/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Destroys all goal-owned intrusive destination nodes. Unlinks
   node first, subtracts4 to recover destination, invokes destination vtable+8 with deleting flag1,
   repeats to sentinel and restores empty links. This supplies ownership consumer for0074f100. */

void __fastcall RouteGoal_DeleteAllDestinations(undefined4 *param_1)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  
  piVar1 = (int *)*param_1;
  while (piVar1 != param_1) {
    if (piVar1 == (int *)0x0) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = piVar1 + -1;
    }
    piVar2 = (int *)piVar1[1];
    piVar1 = (int *)*piVar1;
    *piVar2 = (int)piVar1;
    piVar1[1] = (int)piVar2;
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 8))(1);
    }
  }
  *param_1 = param_1;
  param_1[1] = param_1;
  return;
}

