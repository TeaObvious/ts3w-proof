/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161928.
   ScriptCore.Route::Route_AddRadialRangeDestination [assembly=ScriptCore token=0x060010F9; handle:
   System.UInt32, nTag: System.UInt32, fWeight: System.Single, scoreFunctionWeights:
   System.Single[], targetObject: System.UInt64, centralPoint: Sims3.SimIFace.Vector3, coneVector:
   Sims3.SimIFace.Vector3, facingPreference: System.UInt32, coneAngle: System.Single,
   preferredSpacing: System.Single, minRadius: System.Single, maxRadius: System.Single,
   preferredRadius: System.Single, rayCastVerticalOffsetY: System.Single; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst static routing contract: Managed cdecl inputs include 64-bit target, two12-byte vectors,
   facinguint and six floats. Stored radial offsets are documented in constructor. AL bool only.
   After append, if target resolves and transform exists, applies inverse target
   quaternion/translation to center and inverse rotation to cone. Missing target/transform leaves
   supplied values; append still succeeds. Expansion later applies current target transform, so
   object-relative goals follow target movement. */

bool __cdecl
ScriptCore.Route::Route_AddRadialRangeDestination
          (uint handle,uint tag,float weight,void *scoreWeights,ulonglong target,
          RoutingManagedVector3 center,RoutingManagedVector3 cone,uint facing,float angle,
          float spacing,float minRadius,float maxRadius,float preferredRadius,float rayOffset)

{
  int *piVar1;
  int *this;
  void *pvVar2;
  float *pfVar3;
  void *pvVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  undefined1 in_XMM3 [16];
  undefined1 auVar20 [16];
  uint uStack_4c;
  void *pvStack_48;
  int *local_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (DAT_011d50c4 != (void *)0x0) {
    piVar1 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,handle);
    if (piVar1 != (int *)0x0) {
      local_44 = piVar1;
      (**(code **)(*piVar1 + 0x10))();
      this = RouteHost_GetOrCreateGoal(piVar1);
      if (this != (int *)0x0) {
        (**(code **)*this)();
        pvVar2 = (void *)FUN_004e4500(0x80,"Routing/RadialRangeDestination",0);
        if (pvVar2 != (void *)0x0) {
          pvVar2 = RadialRangeDestination_Initialize(pvVar2);
          if (pvVar2 != (void *)0x0) {
            *(ulonglong *)((int)pvVar2 + 0x50) = target;
            pfVar3 = RouteVector_ExpandXYZWithXLane(&center,&fStack_40);
            fVar5 = pfVar3[1];
            fVar10 = pfVar3[2];
            fVar12 = pfVar3[3];
            *(float *)((int)pvVar2 + 0x40) = *pfVar3;
            *(float *)((int)pvVar2 + 0x44) = fVar5;
            *(float *)((int)pvVar2 + 0x48) = fVar10;
            *(float *)((int)pvVar2 + 0x4c) = fVar12;
            pfVar3 = RouteVector_ExpandXYZWithXLane(&cone,&fStack_40);
            fVar5 = pfVar3[1];
            fVar10 = pfVar3[2];
            fVar12 = pfVar3[3];
            *(float *)((int)pvVar2 + 0x30) = *pfVar3;
            *(float *)((int)pvVar2 + 0x34) = fVar5;
            *(float *)((int)pvVar2 + 0x38) = fVar10;
            *(float *)((int)pvVar2 + 0x3c) = fVar12;
            *(float *)((int)pvVar2 + 0x5c) = angle;
            *(float *)((int)pvVar2 + 0x6c) = spacing;
            *(float *)((int)pvVar2 + 0x60) = minRadius;
            *(float *)((int)pvVar2 + 100) = maxRadius;
            *(float *)((int)pvVar2 + 0x68) = preferredRadius;
            *(uint *)((int)pvVar2 + 0x58) = facing;
            *(float *)((int)pvVar2 + 0x70) = rayOffset;
            if (scoreWeights != (void *)0x0) {
              piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
              pvStack_48 = (void *)0x0;
              uStack_4c = 0;
              (**(code **)(*piVar1 + 0x78))(piVar1,scoreWeights,&pvStack_48,&uStack_4c);
              RouteDestination_CopyScoreWeights(pvVar2,(uint)pvStack_48,uStack_4c);
            }
            *(uint *)((int)pvVar2 + 0x28) = tag;
            *(float *)((int)pvVar2 + 0x2c) = weight;
            RouteGoal_AppendDestination(this,(int)pvVar2);
            if (*(int *)((int)pvVar2 + 0x50) != 0 || *(int *)((int)pvVar2 + 0x54) != 0) {
              pvVar4 = ObjectRegistry_GetGlobal();
              if (pvVar4 != (void *)0x0) {
                pvVar4 = ObjectRegistry_FindBorrowed(pvVar4,*(ulonglong *)((int)pvVar2 + 0x50));
                pvVar4 = (void *)Object_GetTransformComponentOrNull(pvVar4);
                if (pvVar4 != (void *)0x0) {
                  TransformComponent_GetWorldQuaternionTranslation(pvVar4,&fStack_30);
                  fVar5 = fStack_24 * fStack_24 + fStack_2c * fStack_2c +
                          fStack_28 * fStack_28 + fStack_30 * fStack_30;
                  auVar20._4_4_ = fVar5;
                  auVar20._0_4_ = fVar5;
                  auVar20._8_4_ = fVar5;
                  auVar20._12_4_ = fVar5;
                  auVar20 = rcpps(in_XMM3,auVar20);
                  fVar10 = (DAT_0103fd88 - auVar20._0_4_ * fVar5) * auVar20._0_4_;
                  fVar12 = (DAT_0103fd88 - auVar20._4_4_ * fVar5) * auVar20._4_4_;
                  fVar14 = (DAT_0103fd88 - auVar20._8_4_ * fVar5) * auVar20._8_4_;
                  fVar16 = (DAT_0103fd88 - auVar20._12_4_ * fVar5) * auVar20._12_4_;
                  pvStack_48 = (void *)0x80000000;
                  fVar6 = (DAT_0103fd88 - fVar10 * fVar5) * fVar10 * -fStack_30;
                  fVar7 = (DAT_0103fd88 - fVar12 * fVar5) * fVar12 * -fStack_2c;
                  fVar8 = (DAT_0103fd88 - fVar14 * fVar5) * fVar14 * -fStack_28;
                  fStack_40 = (DAT_0103fd88 - fVar16 * fVar5) * fVar16 * fStack_24;
                  fVar5 = (fStack_18 * fVar7 - fStack_1c * fVar8) + fStack_40 * fStack_20;
                  fVar10 = (fStack_20 * fVar8 - fStack_18 * fVar6) + fStack_40 * fStack_1c;
                  fVar12 = (fStack_1c * fVar6 - fStack_20 * fVar7) + fStack_40 * fStack_18;
                  fStack_20 = 0.0 - ((fVar12 * fVar7 - fVar10 * fVar8) * DAT_0103fd88 + fStack_20);
                  fStack_1c = 0.0 - ((fVar5 * fVar8 - fVar12 * fVar6) * DAT_0103fd88 + fStack_1c);
                  fStack_18 = 0.0 - ((fVar10 * fVar6 - fVar5 * fVar7) * DAT_0103fd88 + fStack_18);
                  fStack_14 = 0.0 - ((fVar5 * fVar6 - fVar5 * fVar6) * DAT_0103fd88 + fStack_14);
                  fVar5 = *(float *)((int)pvVar2 + 0x40);
                  fVar10 = *(float *)((int)pvVar2 + 0x44);
                  fVar12 = *(float *)((int)pvVar2 + 0x48);
                  fVar11 = (fVar12 * fVar7 - fVar10 * fVar8) + fVar5 * fStack_40;
                  fVar13 = (fVar5 * fVar8 - fVar12 * fVar6) + fVar10 * fStack_40;
                  fVar15 = (fVar10 * fVar6 - fVar5 * fVar7) + fVar12 * fStack_40;
                  fVar14 = *(float *)((int)pvVar2 + 0x30);
                  fVar16 = *(float *)((int)pvVar2 + 0x34);
                  fVar9 = *(float *)((int)pvVar2 + 0x38);
                  fVar17 = (fVar9 * fVar7 - fVar16 * fVar8) + fVar14 * fStack_40;
                  fVar18 = (fVar14 * fVar8 - fVar9 * fVar6) + fVar16 * fStack_40;
                  fVar16 = (fVar16 * fVar6 - fVar14 * fVar7) + fVar9 * fStack_40;
                  fVar14 = (fVar16 * fVar7 - fVar18 * fVar8) * DAT_0103fd88;
                  fVar16 = (fVar17 * fVar8 - fVar16 * fVar6) * DAT_0103fd88;
                  fVar9 = (fVar18 * fVar6 - fVar17 * fVar7) * DAT_0103fd88;
                  fVar17 = (fVar17 * fVar6 - fVar17 * fVar6) * DAT_0103fd88;
                  fVar18 = (fVar11 * fVar8 - fVar15 * fVar6) * DAT_0103fd88;
                  fVar19 = (fVar13 * fVar6 - fVar11 * fVar7) * DAT_0103fd88;
                  fVar6 = (fVar11 * fVar6 - fVar11 * fVar6) * DAT_0103fd88;
                  *(float *)((int)pvVar2 + 0x40) =
                       (fVar15 * fVar7 - fVar13 * fVar8) * DAT_0103fd88 + fVar5 + fStack_20;
                  *(float *)((int)pvVar2 + 0x44) = fVar18 + fVar10 + fStack_1c;
                  *(float *)((int)pvVar2 + 0x48) = fVar19 + fVar12 + fStack_18;
                  *(float *)((int)pvVar2 + 0x4c) =
                       fVar6 + *(float *)((int)pvVar2 + 0x4c) + fStack_14;
                  *(float *)((int)pvVar2 + 0x30) = fVar14 + *(float *)((int)pvVar2 + 0x30);
                  *(float *)((int)pvVar2 + 0x34) = fVar16 + *(float *)((int)pvVar2 + 0x34);
                  *(float *)((int)pvVar2 + 0x38) = fVar9 + *(float *)((int)pvVar2 + 0x38);
                  *(float *)((int)pvVar2 + 0x3c) = fVar17 + *(float *)((int)pvVar2 + 0x3c);
                  fStack_3c = fStack_40;
                  fStack_38 = fStack_40;
                  fStack_34 = fStack_40;
                }
              }
            }
            (**(code **)(*this + 4))();
            (**(code **)(*local_44 + 0x14))();
            return true;
          }
        }
        (**(code **)(*this + 4))();
      }
      (**(code **)(*piVar1 + 0x14))();
    }
  }
  return false;
}

