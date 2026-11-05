/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Traverses goal circular list and invokes each destination
   vtable+0x10 with actor/option/start/candidate/noncandidate/valid-room/result parameters. ORs AL
   results across all entries (no early stop). Any success clears blockerID and blockerlocation in
   result. If expansion fails with blocker ID and transform resolves, emits
   result16(NoPathToDestination), blockerType3, blocker world position. */

byte __thiscall
RouteGoal_ExpandDestinations
          (void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 *param_6,undefined4 param_7)

{
  int *piVar1;
  int iVar2;
  byte bVar3;
  void *pvVar4;
  undefined4 *this_00;
  float *pfVar5;
  int *piVar6;
  int *piVar7;
  byte bStack_29;
  byte local_25;
  undefined4 auStack_20 [7];
  
  piVar1 = (int *)((int)this + 0x18);
  piVar7 = (int *)*piVar1;
  local_25 = 0;
  if (piVar7 != piVar1) {
    do {
      if (piVar7 == (int *)0x0) {
        piVar6 = (int *)0x0;
      }
      else {
        piVar6 = piVar7 + -1;
      }
      bVar3 = (**(code **)(*piVar6 + 0x10))
                        (param_1,param_2,param_3,param_4,param_5,(int)this + 0x20,param_6,param_7);
      piVar7 = (int *)*piVar7;
      local_25 = local_25 | bVar3;
    } while (piVar7 != piVar1);
    if (local_25 != 0) {
      FUN_0076bf70(param_6 + 0xb,0,0,0);
      param_6[8] = 0;
      param_6[9] = 0;
      return local_25;
    }
  }
  pvVar4 = ObjectRegistry_GetGlobal();
  if ((int)*(ulonglong *)(param_6 + 8) == 0 && param_6[9] == 0) {
    return local_25;
  }
  this_00 = ObjectRegistry_FindBorrowed(pvVar4,*(ulonglong *)(param_6 + 8));
  if (this_00 != (undefined4 *)0x0) {
    LOCK();
    this_00[1] = this_00[1] + 1;
    UNLOCK();
    pvVar4 = Object_GetComponentByMask(this_00,DAT_011ea158);
    if (pvVar4 != (void *)0x0) {
      pfVar5 = TransformComponent_GetWorldPosition(pvVar4,auStack_20);
      FUN_0076c100(param_6 + 0xb,pfVar5);
      *param_6 = 0x10;
      param_6[10] = 3;
      goto LAB_0075228f;
    }
  }
  param_6[8] = 0;
  param_6[9] = 0;
LAB_0075228f:
  if (this_00 != (undefined4 *)0x0) {
    piVar1 = this_00 + 1;
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this_00)(1);
      return bStack_29;
    }
  }
  return local_25;
}

