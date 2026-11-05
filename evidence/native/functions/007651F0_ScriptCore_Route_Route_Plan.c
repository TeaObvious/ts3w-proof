/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011618f0.
   ScriptCore.Route::Route_Plan [assembly=ScriptCore token=0x060010FD; handle: System.UInt32;
   return=Sims3.SimIFace.RoutePlanResult]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst static routing contract: cdecl hidden72-byte result output pointer then uint handle.
   Invalid registry/handle yields type2. Otherwise route retain,00764260 follower-start path,18dword
   result copy, release. Recovered full function body through final RET because earlier Ghidra entry
   had zero instruction body. */

RoutingPlanResult72 * __cdecl ScriptCore_Route__Route_Plan(RoutingPlanResult72 *result,uint handle)

{
  code *pcVar1;
  void *this;
  int *this_00;
  uint *puVar2;
  int iVar3;
  RoutingPlanResult72 *pRVar4;
  bool bVar5;
  int aiStack_48 [18];
  
  this = DAT_011d50c4;
  bVar5 = DAT_011d50c4 != (void *)0x0;
  result->type = 2;
  result->startSlot = 0;
  result->destinationSlot = 0;
  result->destinationX = 0.0;
  result->destinationY = 0.0;
  result->destinationZ = 0.0;
  result->distanceTotal = 0.0;
  *(undefined4 *)&result->blockerObject = 0;
  *(undefined4 *)((int)&result->blockerObject + 4) = 0;
  result->blockerType = 0;
  result->blockerX = 0.0;
  result->blockerY = 0.0;
  result->blockerZ = 0.0;
  result->candidates = 0;
  result->accepted = 0;
  result->rejected = 0;
  if (bVar5) {
    this_00 = (int *)RouteRegistry_ResolveTypedHandle(this,handle);
    if (this_00 == (int *)0x0) {
      result->startSlot = 0;
      result->destinationSlot = 0;
      *(undefined4 *)&result->blockerObject = 0;
      *(undefined4 *)((int)&result->blockerObject + 4) = 0;
      result->type = 2;
      result->destinationX = 0.0;
      result->destinationY = 0.0;
      result->destinationZ = 0.0;
      result->distanceTotal = 0.0;
      return result;
    }
    (**(code **)(*this_00 + 0x10))();
    puVar2 = (uint *)RouteHost_PlanFromFollowerStart(this_00,aiStack_48);
    pcVar1 = *(code **)(*this_00 + 0x14);
    pRVar4 = result;
    for (iVar3 = 0x12; iVar3 != 0; iVar3 = iVar3 + -1) {
      pRVar4->type = *puVar2;
      puVar2 = puVar2 + 1;
      pRVar4 = (RoutingPlanResult72 *)&pRVar4->startSlot;
    }
    (*pcVar1)();
  }
  return result;
}

