/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011636e0 (TS3W.exe).
   ScriptCore.World::World_ObjectFootprintContainsPoint [assembly=ScriptCore token=0x060007DC;
   objId: System.UInt64, footprintNameHash: System.UInt32, position: Sims3.SimIFace.Vector3;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst-reviewed PC 1.67 footprint contract (static original instructions). Reviewed registered
   contract: 64-bit GUID, hash and by-value Vector3 floats, cdecl, AL bool. Computes world XZ
   polygon geometry. Inside a lot, point's selected level must equal signed effective footprint
   level. Outside all lots, or absent world index, bypasses level check. Tests at most 16 vertices
   per polygon with point crossing kernel. No runtime enabled masks. Deep polygon copies are freed
   on normal exits. */

bool __cdecl
ScriptCore.World::World_ObjectFootprintContainsPoint
          (ulonglong objectGuid,uint footprintNameHash,float worldX,float worldY,float worldZ)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  bool bVar4;
  void *pvVar5;
  void *this;
  void *this_00;
  uint uVar6;
  uint uVar7;
  int *piVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  char local_111;
  void *local_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  int *local_100;
  int *local_fc;
  undefined4 local_f8;
  char *local_f4;
  float local_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  LotXZLevel local_dc;
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90 [35];
  
  pvVar5 = ObjectRegistry_GetGlobal();
  if (pvVar5 == (void *)0x0) {
    return false;
  }
  pvVar5 = ObjectRegistry_FindBorrowed(pvVar5,objectGuid);
  if (pvVar5 == (void *)0x0) {
    return false;
  }
  this = Object_GetComponentByMask(pvVar5,DAT_011e9fa8);
  this_00 = Object_GetComponentByMask(pvVar5,DAT_011ea158);
  local_110 = Object_GetComponentByMask(pvVar5,DAT_011edf08);
  if (this == (void *)0x0) {
    return false;
  }
  if (this_00 == (void *)0x0) {
    return false;
  }
  if (local_110 == (void *)0x0) {
    return false;
  }
  TransformComponent_GetWorldQuaternionTranslation(this_00,&local_b0);
  local_100 = (int *)0x0;
  local_fc = (int *)0x0;
  local_f8 = 0;
  local_f4 = "World/WorldHost/ObjectFootprintContainsPoint";
  FootprintComponent_CollectNamedPolygons(this,footprintNameHash,&local_100,&local_111);
  iVar2 = *(int *)((int)local_110 + 0x18);
  local_dc.x = DAT_00fab218;
  local_dc.z = DAT_00fab218;
  local_dc.level = 0;
  if ((DAT_011edbc4 != (void *)0x0) &&
     (pvVar5 = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,worldX,worldZ),
     pvVar5 != (void *)0x0)) {
    fStack_108 = worldZ;
    fStack_104 = worldX;
    fStack_10c = worldY;
    local_110 = (void *)worldX;
    local_f0 = worldX;
    fStack_ec = worldY;
    fStack_e8 = worldZ;
    fStack_e4 = worldX;
    Lot_WorldPositionToLocalLocation(pvVar5,&local_f0,&local_dc);
    if ((char)((-(iVar2 != 0x7fffffff) & (byte)iVar2) + local_111) != local_dc.level)
    goto LAB_00795382;
  }
  piVar3 = local_fc;
  if (local_100 != local_fc) {
    piVar8 = local_100 + 0xc;
    do {
      uVar6 = 0;
      uVar7 = piVar8[1] - *piVar8 >> 3;
      if (uVar7 != 0) {
        do {
          if (0xf < uVar6) break;
          local_f0 = *(float *)(*piVar8 + uVar6 * 8);
          fStack_e8 = *(float *)(*piVar8 + 4 + uVar6 * 8);
          fStack_ec = 0.0;
          fVar9 = (fStack_e8 * fStack_ac - fStack_a8 * 0.0) + fStack_a4 * local_f0;
          fVar10 = (local_f0 * fStack_a8 - fStack_e8 * local_b0) + fStack_a4 * 0.0;
          fVar11 = (local_b0 * 0.0 - local_f0 * fStack_ac) + fStack_a4 * fStack_e8;
          local_d0 = (fVar11 * fStack_ac - fVar10 * fStack_a8) * DAT_0103fd88 + local_f0 + local_a0;
          fStack_cc = (fVar9 * fStack_a8 - fVar11 * local_b0) * DAT_0103fd88 + 0.0 + fStack_9c;
          fStack_c8 = (fVar10 * local_b0 - fVar9 * fStack_ac) * DAT_0103fd88 + fStack_e8 + fStack_98
          ;
          fStack_c4 = (fVar9 * local_b0 - fVar9 * local_b0) * DAT_0103fd88 + local_f0 + fStack_94;
          local_90[uVar6 * 2] = local_d0;
          local_90[uVar6 * 2 + 1] = fStack_c8;
          uVar6 = uVar6 + 1;
          fStack_e4 = local_f0;
          local_c0 = local_d0;
          fStack_bc = fStack_cc;
          fStack_b8 = fStack_c8;
          fStack_b4 = fStack_c4;
        } while (uVar6 < uVar7);
      }
      local_110 = (void *)worldX;
      fStack_10c = worldZ;
      bVar4 = Geometry_PointInPolygonCrossing((float *)&local_110,local_90,uVar6);
      if (bVar4) {
        FootprintPolygonVector_Destroy((uint *)&local_100);
        return true;
      }
      piVar1 = piVar8 + 4;
      piVar8 = piVar8 + 0x10;
    } while (piVar1 != piVar3);
  }
LAB_00795382:
  FootprintPolygonVector_Destroy((uint *)&local_100);
  return false;
}

