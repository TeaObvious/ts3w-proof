/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011618f8.
   ScriptCore.Route::Route_PlanFromPoint [assembly=ScriptCore token=0x060010FE; handle:
   System.UInt32, x: System.Single, y: System.Single, z: System.Single;
   return=Sims3.SimIFace.RoutePlanResult]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst static routing contract: cdecl hidden first72-byte result buffer pointer is returned EAX,
   then handle,x,y,z. Initializes result type2; some semantic/tag and ABI padding bytes are not
   assigned on failure. Acquires route, finds lot atXZ, computes signed level using00adc8c0 and
   property/next-level checks, snaps Y via00828e90, calls00764350, copies18dwords to output,
   releases route. Initial C stack overlay with float vector/LotXZLevel can invent conversions;
   integer level and original ASM govern. */

RoutingPlanResult72 * __cdecl
ScriptCore.Route::Route_PlanFromPoint
          (RoutingPlanResult72 *result,uint handle,float x,float y,float z)

{
  bool bVar1;
  int *this;
  void *pvVar2;
  uint uVar3;
  uint *puVar4;
  int iVar5;
  RoutingPlanResult72 *pRVar6;
  bool bVar7;
  float10 fVar8;
  float fStack_8c;
  char cStack_88;
  LotXZLevel LStack_80;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  int aiStack_58 [21];
  
  pvVar2 = DAT_011d50c4;
  bVar7 = DAT_011d50c4 == (void *)0x0;
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
  if (bVar7) {
    return result;
  }
  this = (int *)RouteRegistry_ResolveTypedHandle(pvVar2,handle);
  if (this == (int *)0x0) {
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
  (**(code **)(*this + 0x10))();
  if (DAT_011edbc4 == (void *)0x0) {
    pvVar2 = (void *)0x0;
  }
  else {
    pvVar2 = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,x,z);
  }
  LStack_80.level = (int)z;
  fStack_74 = x;
  LStack_80.z = y;
  LStack_80.x = x;
  fStack_70 = x;
  fStack_6c = y;
  fStack_68 = z;
  fStack_64 = x;
  fStack_8c = 0.0;
  if (pvVar2 != (void *)0x0) {
    LStack_80.x = DAT_00fab218;
    LStack_80.z = DAT_00fab218;
    LStack_80.level = 0;
    Lot_WorldPositionToLocalXZLevel(pvVar2,&fStack_70,&LStack_80);
    iVar5 = LStack_80.level;
    fStack_8c = (float)LStack_80.level;
    if (LStack_80.level < 0) {
      bVar1 = Lot_TestProperty15AtLocalLocation(pvVar2,&LStack_80);
      bVar7 = true;
      if (!bVar1) goto LAB_00765404;
    }
    else {
LAB_00765404:
      bVar7 = false;
    }
    if (((iVar5 < 0) && (!bVar7)) &&
       (uVar3 = Lot_TestNextLevelAtLocalLocation(pvVar2,&LStack_80,1), (char)uVar3 == '\0')) {
      fStack_8c = 0.0;
    }
    if ((((*(int *)((int)pvVar2 + 0x408) == 1) && (*(int *)((int)pvVar2 + 0x40c) == 0x50)) &&
        ((float)LStack_80.level == 0.0)) || (bVar7)) {
      cStack_88 = '\0';
      goto LAB_00765459;
    }
  }
  cStack_88 = '\x01';
LAB_00765459:
  pvVar2 = (void *)thunk_FUN_00835d40();
  if (pvVar2 == (void *)0x0) {
    LStack_80.z = 0.0;
  }
  else {
    fVar8 = RoutingSystem_QueryHeightForLevel(pvVar2,x,z,(int)fStack_8c,'\x01',cStack_88);
    LStack_80.z = (float)fVar8;
  }
  LStack_80.x = fStack_70;
  LStack_80.level = (int)fStack_68;
  fStack_74 = fStack_64;
  fStack_6c = LStack_80.z;
  puVar4 = (uint *)RouteHost_PlanFromExplicitStart(this,aiStack_58,&fStack_70);
  pRVar6 = result;
  for (iVar5 = 0x12; iVar5 != 0; iVar5 = iVar5 + -1) {
    pRVar6->type = *puVar4;
    puVar4 = puVar4 + 1;
    pRVar6 = (RoutingPlanResult72 *)&pRVar6->startSlot;
  }
  (**(code **)(*this + 0x14))();
  return result;
}

