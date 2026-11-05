/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161b80 (TS3W.exe).
   ScriptCore.Route::Route_InsertPortalSubPathAtIndex [assembly=ScriptCore token=0x0600114D; handle:
   System.UInt32, pathIndex: System.UInt32, portalObjectId: Sims3.SimIFace.ObjectGuid;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: original PC 1.67 portal contract. Route handle resolved through existing host route
   interface. Inserts an object portal subpath at uint index after object/owner/graph/endpoint
   checks; boolean AL is separate from eventual traversal completion. */

bool __cdecl
ScriptCore.Route::Route_InsertPortalSubPathAtIndex
          (uint routeHandle,uint pathIndex,ulonglong portalObjectId)

{
  int *piVar1;
  int iVar2;
  ulonglong guid;
  int *this;
  undefined4 *puVar3;
  float *pfVar4;
  void *pvVar5;
  int *piVar6;
  int *piVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  undefined8 uVar16;
  int *piStack_3c;
  void *pvStack_38;
  int *piStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (DAT_011d50c4 != (void *)0x0) {
    this = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,routeHandle);
    if (this == (int *)0x0) {
      return false;
    }
    (**(code **)(*this + 0x10))();
    if (pathIndex == 0) {
      piStack_3c = (int *)0x0;
    }
    else {
      piStack_3c = (int *)FUN_007500b0(this,pathIndex - 1);
      if (piStack_3c != (int *)0x0) {
        piStack_34 = (int *)(**(code **)(*piStack_3c + 0x7c))();
        puVar3 = (undefined4 *)(**(code **)(*piStack_3c + 0x134))(&fStack_20);
        fStack_24 = (float)*puVar3;
        fStack_20 = (float)puVar3[1];
        fStack_1c = (float)puVar3[2];
        fStack_18 = (float)puVar3[3];
        pfVar4 = (float *)(**(code **)(*piStack_3c + 0x140))(&piStack_34);
        fStack_30 = *pfVar4;
        fStack_2c = pfVar4[1];
        fStack_28 = pfVar4[2];
        fStack_24 = pfVar4[3];
        goto LAB_00762feb;
      }
    }
    piStack_34 = (int *)0x0;
    guid = *(ulonglong *)(this + 0x10);
    pvVar5 = ObjectRegistry_GetGlobal();
    if (pvVar5 == (void *)0x0) {
      pvStack_38 = (void *)0x0;
    }
    else {
      pvStack_38 = ObjectRegistry_FindBorrowed(pvVar5,guid);
    }
    if (pvStack_38 != (void *)0x0) {
      LOCK();
      *(int *)((int)pvStack_38 + 4) = *(int *)((int)pvStack_38 + 4) + 1;
      UNLOCK();
      pvVar5 = Object_GetComponentByMask(pvStack_38,DAT_011ea158);
      if (pvVar5 == (void *)0x0) {
        FUN_007462e0((int *)&pvStack_38);
        (**(code **)(*this + 0x14))();
        return false;
      }
      pfVar4 = TransformComponent_GetWorldPosition(pvVar5,&fStack_20);
      fStack_20 = *pfVar4;
      fStack_1c = pfVar4[1];
      fStack_18 = pfVar4[2];
      fStack_14 = pfVar4[3];
      pfVar4 = (float *)FUN_00957a60(pvVar5,&fStack_30);
      fStack_30 = *pfVar4;
      fStack_2c = pfVar4[1];
      fStack_28 = pfVar4[2];
      fStack_24 = pfVar4[3];
      FUN_007462e0((int *)&pvStack_38);
LAB_00762feb:
      fVar8 = (fStack_2c * 1.0 - fStack_28 * 0.0) + fStack_24 * 0.0;
      fVar9 = (fStack_28 * 0.0 - fStack_30 * 1.0) + fStack_24 * 0.0;
      fVar10 = (fStack_30 * 0.0 - fStack_2c * 0.0) + fStack_24 * 1.0;
      fVar11 = fVar9 * fStack_30;
      fVar12 = fVar8 * fStack_30;
      fVar13 = fVar10 * fStack_30;
      fVar14 = fVar8 * fStack_2c;
      fVar15 = fVar8 * fStack_30;
      fStack_30 = (fVar10 * fStack_2c - fVar9 * fStack_28) * 2.0 + 0.0;
      fStack_2c = (fVar8 * fStack_28 - fVar13) * 2.0 + 0.0;
      fStack_28 = (fVar11 - fVar14) * 2.0 + 1.0;
      fStack_24 = (fVar12 - fVar15) * 2.0 + 0.0;
      puVar3 = (undefined4 *)FUN_004e4500(400,"Routing/RoutingPathImp",0);
      if (puVar3 == (undefined4 *)0x0) {
        piVar7 = (int *)0x0;
      }
      else {
        uVar16 = ConstructRoutingPathImp(puVar3);
        piVar7 = (int *)uVar16;
        if (piVar7 != (int *)0x0) {
          LOCK();
          piVar7[1] = piVar7[1] + 1;
          UNLOCK();
        }
      }
      *(ulonglong *)(piVar7 + 0x2e) = portalObjectId;
      piVar7[0x2c] = 0x50660d52;
      piVar7[0x30] = (int)fStack_20;
      piVar7[0x31] = (int)fStack_1c;
      piVar7[0x32] = (int)fStack_18;
      piVar7[0x33] = (int)fStack_14;
      puVar3 = (undefined4 *)(**(code **)(*piVar7 + 0xdc))();
      ResizeRecord48Vector(puVar3,1);
      pfVar4 = (float *)*puVar3;
      *pfVar4 = fStack_20;
      pfVar4[1] = fStack_1c;
      pfVar4[2] = fStack_18;
      pfVar4[3] = fStack_14;
      pfVar4[8] = 0.0;
      piVar1 = piVar7 + 1;
      pfVar4[4] = fStack_30;
      pfVar4[5] = fStack_2c;
      pfVar4[6] = fStack_28;
      pfVar4[7] = fStack_24;
      pfVar4[9] = 0.0;
      LOCK();
      *piVar1 = *piVar1 + 1;
      UNLOCK();
      piVar6 = (int *)FUN_004e4500(0xc,this[0x3a],0);
      if (piVar6 + 2 != (int *)0x0) {
        piVar6[2] = (int)piVar7;
        LOCK();
        *piVar1 = *piVar1 + 1;
        UNLOCK();
      }
      *piVar6 = (int)(this + 0x38);
      piVar6[1] = this[0x39];
      *(int **)this[0x39] = piVar6;
      this[0x39] = (int)piVar6;
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*piVar7)(1);
      }
      if (piStack_3c != (int *)0x0) {
        (**(code **)(*piStack_3c + 0x78))(piVar7);
      }
      if (piStack_34 != (int *)0x0) {
        (**(code **)(*piStack_34 + 0x80))(piVar7);
      }
      (**(code **)(*piVar7 + 0x80))(piStack_3c);
      (**(code **)(*piVar7 + 0x78))(pvStack_38);
      (**(code **)(*piVar7 + 0x10))(this + 0x56);
      FUN_00756970((int)this);
      FUN_00750130(this,'\0');
      FUN_00750450((int)this);
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*piVar7)(1);
      }
      (**(code **)(*this + 0x14))();
      return true;
    }
    FUN_007462e0((int *)&pvStack_38);
    (**(code **)(*this + 0x14))();
  }
  return false;
}

