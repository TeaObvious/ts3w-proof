/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Tests transformed enabled footprint areas against a candidate tile
   polygon. Resolves object footprint and location components, iterates area flags through 945080
   with caller mask, adds each area's signed level offset, transforms its polygon, and checks
   polygon intersection. This is a geometric occupancy predicate, not a pivot test.
   
   Analyst-reviewed PC 1.67 footprint contract (static original instructions). Reconfirmed original
   contract: AL geometric occupancy. Requires component bit1, named-independent iterator mask with
   all required bits, exact signed relative-level + integer base-level match, nonempty vertices.
   Converts owner-local vertices to lot-local XZ, computes bounds and polygon intersection. No
   pivot-point shortcut. Original strict AABB and determinant thresholds reside in 0x007ceaa0. */

bool __cdecl
LotQuery_TestFootprintPolygonIntersection
          (void *owner,int tileLevel,undefined4 *param_3,float *param_4,uint areaMask)

{
  void *this;
  bool bVar1;
  undefined *component;
  void *this_00;
  uint uVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float *pfVar6;
  uint local_54;
  float local_50;
  float local_4c;
  int local_48;
  void *local_44;
  undefined4 local_40;
  undefined4 local_3c;
  char *local_38;
  float local_34 [4];
  float local_24 [9];
  
  this = owner;
  if (owner != (void *)0x0) {
    component = Object_GetComponentByMask(owner,DAT_011e9fa8);
    this_00 = Object_GetComponentByMask(this,DAT_011edf08);
    if (((component != (undefined *)0x0) && (this_00 != (void *)0x0)) &&
       (uVar2 = FootprintComponent_IsRegisteredBit(component), (char)uVar2 != '\0')) {
      local_50 = -1.0;
      local_4c = -1.0;
      local_48 = 0;
      ObjectLocation_CopyXZLevel(this_00,&local_50,&local_4c,&local_48);
      pfVar6 = local_24;
      local_54 = 0;
      owner = (void *)0x0;
      fVar4 = local_50;
      fVar5 = local_4c;
      fVar3 = PlacementLocation_ReadYawWithRefresh(this_00);
      Footprint_BuildOwnerToLotXZMatrix(this,fVar3,fVar4,fVar5,pfVar6);
      uVar2 = areaMask;
      local_44 = (void *)0x0;
      local_40 = 0;
      local_3c = 0;
      local_38 = "World/Lot/ObjectFootprintIntersectsPolygon/footprintPolyVerts";
      bVar1 = FootprintComponent_NextPolygonByRuntimeFlags
                        (component,&local_54,areaMask,(int *)&owner,'\x01');
      pfVar6 = param_4;
      if (bVar1) {
        do {
          if ((*(int *)((int)owner + 0x30) != *(int *)((int)owner + 0x34)) &&
             (*(char *)((int)owner + 5) + local_48 == tileLevel)) {
            Geometry_TransformPolygonXZByMatrix3
                      ((int *)((int)owner + 0x30),local_24,(int *)&local_44);
            Geometry_GetPolygonXZBounds((int *)&local_44,local_34);
            bVar1 = Geometry_PolygonsIntersectWithBounds(param_3,pfVar6,&local_44,local_34);
            if (bVar1) {
              if (local_44 != (void *)0x0) {
                Memory_FreeIfNonNull(local_44);
              }
              return true;
            }
          }
          bVar1 = FootprintComponent_NextPolygonByRuntimeFlags
                            (component,&local_54,uVar2,(int *)&owner,'\x01');
        } while (bVar1);
      }
      if (local_44 != (void *)0x0) {
        Memory_FreeIfNonNull(local_44);
      }
    }
  }
  return false;
}

