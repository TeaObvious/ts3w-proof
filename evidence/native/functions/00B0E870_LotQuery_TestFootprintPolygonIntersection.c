/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  uint uVar1;
  byte bVar2;
  bool bVar3;
  void *this_00;
  void *this_01;
  float10 fVar4;
  float fVar5;
  float fVar6;
  float *pfVar7;
  uint local_54;
  float local_50;
  float local_4c;
  int local_48;
  int local_44 [3];
  char *local_38;
  float local_34 [4];
  float local_24 [9];
  
  this = owner;
  if (owner != (void *)0x0) {
    this_00 = Object_GetComponentByMask(owner,DAT_011e9fa8);
    this_01 = Object_GetComponentByMask(this,DAT_011edf08);
    if (((this_00 != (void *)0x0) && (this_01 != (void *)0x0)) &&
       (bVar2 = FootprintComponent_IsRegisteredBit((int)this_00), bVar2 != 0)) {
      local_50 = DAT_00fab218;
      local_4c = DAT_00fab218;
      local_48 = 0;
      FUN_00c894e0(this_01,&local_50,&local_4c,&local_48);
      pfVar7 = local_24;
      local_54 = 0;
      owner = (void *)0x0;
      fVar5 = local_50;
      fVar6 = local_4c;
      fVar4 = FUN_00c89940((float)this_01);
      Footprint_BuildOwnerToLotXZMatrix(this,(float)fVar4,fVar5,fVar6,pfVar7);
      uVar1 = areaMask;
      local_44[0] = 0;
      local_44[1] = 0;
      local_44[2] = 0;
      local_38 = "World/Lot/ObjectFootprintIntersectsPolygon/footprintPolyVerts";
      bVar3 = FootprintComponent_NextPolygonByRuntimeFlags
                        (this_00,&local_54,areaMask,(int *)&owner,'\x01');
      pfVar7 = param_4;
      if (bVar3) {
        do {
          if ((*(int *)((int)owner + 0x30) != *(int *)((int)owner + 0x34)) &&
             (*(char *)((int)owner + 5) + local_48 == tileLevel)) {
            Geometry_TransformPolygonXZByMatrix3((int *)((int)owner + 0x30),local_24,local_44);
            Geometry_GetPolygonXZBounds(local_44,local_34);
            bVar3 = Geometry_PolygonsIntersectWithBounds(param_3,pfVar7,local_44,local_34);
            if (bVar3) {
              if (local_44[0] != 0) {
                FUN_004e44e0(local_44[0]);
              }
              return true;
            }
          }
          bVar3 = FootprintComponent_NextPolygonByRuntimeFlags
                            (this_00,&local_54,uVar1,(int *)&owner,'\x01');
        } while (bVar3);
      }
      if (local_44[0] != 0) {
        FUN_004e44e0(local_44[0]);
      }
    }
  }
  return false;
}

