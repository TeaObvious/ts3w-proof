/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161d38 (TS3W.exe).
   ScriptCore.RouteManager::RouteManager_BeginPortalRouting [assembly=ScriptCore token=0x06001078;
   simObjectId: System.UInt64, rPortalSpec: Sims3.SimIFace.PortalRoutingSpec, rAnimSpec:
   Sims3.SimIFace.RouteAnimationSpec; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: original PC 1.67 portal contract. Exact packed managed ABI: actorGUID64 +
   PortalRoutingSpec80bytes + RouteAnimationSpec16bytes. Builds native request and calls
   Steering_BeginAnimatedStairs. Native enum0=Success/start,1=Failure,2=Skip. IMPORTANT: early
   invalid-actor/component branches also return0, so wrapper0 alone does not prove completion.
   Script waits for completion callback separately. */

uint __cdecl
ScriptCore.RouteManager::RouteManager_BeginPortalRouting
          (ulonglong actorId,TS3WPortalRoutingSpec spec,TS3WRouteAnimationSpec animation)

{
  void *pvVar1;
  int *piVar2;
  uint uVar3;
  undefined8 uVar4;
  undefined4 uStack_98;
  void *local_94;
  undefined8 uStack_90;
  int iStack_88;
  int iStack_84;
  uint uStack_80;
  uint uStack_7c;
  uint uStack_78;
  uint uStack_74;
  uint uStack_70;
  undefined4 uStack_6c;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  uint uStack_20;
  uint uStack_1c;
  uint uStack_18;
  uint uStack_14;
  
  if (actorId != 0) {
    pvVar1 = ObjectRegistry_GetGlobal();
    if (pvVar1 != (void *)0x0) {
      pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,actorId);
      if (pvVar1 != (void *)0x0) {
        local_94 = Object_GetComponentByMask(pvVar1,DAT_011ea138);
        if (local_94 != (void *)0x0) {
          piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
          uVar4 = (**(code **)(*piVar2 + 0x118))();
          uStack_98 = 0;
          if ((int)spec.portalObjectId != 0 || spec.portalObjectId._4_4_ != 0) {
            pvVar1 = LotSpatialIndex_FindContainingLotAtWorldXZ
                               (DAT_011edbc4,spec.endPosition.lane0,spec.endPosition.lane2);
            if (pvVar1 != (void *)0x0) {
              FUN_00b17640(*(void **)((int)pvVar1 + 0x2b4),spec.portalObjectId,&uStack_98);
            }
          }
          fStack_60 = spec.beginPosition.lane0;
          fStack_5c = spec.beginPosition.lane1;
          fStack_58 = spec.beginPosition.lane2;
          fStack_54 = spec.beginPosition.lane0;
          fStack_50 = spec.beginOrient.x;
          fStack_4c = spec.beginOrient.y;
          fStack_48 = spec.beginOrient.z;
          fStack_44 = spec.beginOrient.w;
          fStack_40 = spec.endPosition.lane0;
          fStack_3c = spec.endPosition.lane1;
          fStack_38 = spec.endPosition.lane2;
          fStack_34 = spec.endPosition.lane0;
          uStack_78 = spec.slotBegin;
          uStack_80 = spec.direction;
          uStack_74 = spec.slotEnd;
          uStack_70 = spec.slotEnd;
          uStack_7c = spec.laneIndex;
          uStack_6c = uStack_98;
          uStack_1c = animation.age;
          uStack_20 = animation.styleNameHash;
          uStack_18 = animation.gender;
          iStack_88 = (int)spec.portalObjectId;
          iStack_84 = spec.portalObjectId._4_4_;
          fStack_30 = spec.endOrient.x;
          fStack_2c = spec.endOrient.y;
          fStack_28 = spec.endOrient.z;
          fStack_24 = spec.endOrient.w;
          uStack_14 = animation.species;
          uStack_90 = uVar4;
          uVar3 = Steering_BeginAnimatedStairs(local_94,&uStack_90);
          return uVar3;
        }
      }
    }
  }
  return 0;
}

