/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161430 (TS3W.exe).
   ScriptCore.Objects::Objects_SetPosition [assembly=ScriptCore token=0x06000007; id: System.UInt64,
   position: Sims3.SimIFace.Vector3; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC 1.67 original contract. Full64 GUID and by-value Vector3. Animation interface+28 or
   Transform dirty fallback BEFORE mutation. Exact world XYZ difference clears Location+2c bit80;
   then SetWorldPosition. Sim/Steering gates control lot refresh. For changed XYZ, notify only if
   new owner is non-null AND EQUAL to old owner (CMP EDI,EAX; JNZ skip at745191). Steering final
   vtable+34. Managed void result. */

void __cdecl ScriptCore.Objects::Objects_SetPosition(ulonglong guid,TS3WManagedVector3 position)

{
  undefined1 auVar1 [16];
  void *pvVar2;
  void *pvVar3;
  void *pvVar4;
  float *worldPosition;
  int *piVar5;
  int *piVar6;
  undefined4 extraout_EDX;
  undefined4 uVar7;
  bool bVar8;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  pvVar2 = ObjectRegistry_GetGlobal();
  pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,guid);
  if (pvVar2 != (void *)0x0) {
    pvVar3 = Object_GetComponentByMask(pvVar2,DAT_011dd484);
    if (pvVar3 == (void *)0x0) {
      pvVar3 = Object_GetComponentByMask(pvVar2,DAT_011ea158);
      if (pvVar3 != (void *)0x0) {
        TransformComponent_MarkDerivedStateDirty(pvVar3);
      }
    }
    else {
      (**(code **)(*(int *)((int)pvVar3 + 8) + 0x28))();
    }
    bVar8 = false;
    pvVar3 = Object_GetComponentByMask(pvVar2,DAT_011edf08);
    pvVar4 = Object_GetComponentByMask(pvVar2,DAT_011ea158);
    if (pvVar4 != (void *)0x0) {
      TransformComponent_GetWorldPosition(pvVar4,&fStack_20);
      fStack_28 = position.lane2;
      fStack_24 = position.lane0;
      fStack_2c = position.lane1;
      fStack_30 = position.lane0;
      auVar1._4_4_ = -(uint)(position.lane1 == fStack_1c);
      auVar1._0_4_ = -(uint)(position.lane0 == fStack_20);
      auVar1._8_4_ = -(uint)(position.lane2 == fStack_18);
      auVar1._12_4_ = -(uint)(position.lane0 == fStack_14);
      uVar7 = movmskps(extraout_EDX,auVar1);
      bVar8 = ((byte)uVar7 & 7) != 7;
      if ((bVar8) && (pvVar3 != (void *)0x0)) {
        *(uint *)((int)pvVar3 + 0x2c) = *(uint *)((int)pvVar3 + 0x2c) & 0xffffff7f;
      }
      worldPosition = RouteVector_ExpandXYZWithXLane(&position,&fStack_30);
      TransformComponent_SetWorldPosition(pvVar4,worldPosition);
    }
    pvVar4 = Object_GetComponentByMask(pvVar2,DAT_011ea0fc);
    piVar5 = Object_GetComponentByMask(pvVar2,DAT_011ea138);
    if ((pvVar4 == (void *)0x0) &&
       (((piVar5 == (int *)0x0 || (uVar7 = FUN_009521f0((int)piVar5), (char)uVar7 == '\0')) &&
        (pvVar3 != (void *)0x0)))) {
      if (bVar8) {
        piVar6 = (int *)FUN_0068f130((int)pvVar2);
        pvVar4 = (void *)FUN_00744c50(piVar6);
        LocationComponent_ResolveAndSetOwningLot(pvVar3,(void *)0x0);
        piVar6 = (int *)FUN_0068f130((int)pvVar2);
        pvVar3 = (void *)FUN_00744c50(piVar6);
        if ((pvVar3 != (void *)0x0) && (pvVar4 == pvVar3)) {
          Lot_NotifyObjectLocationChanged(pvVar3,pvVar2);
        }
      }
      else {
        LocationComponent_ResolveAndSetOwningLot(pvVar3,(void *)0x0);
      }
    }
    if (piVar5 != (int *)0x0) {
      (**(code **)(*piVar5 + 0x34))();
    }
  }
  return;
}

