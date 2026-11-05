/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Resolved main-camera path from
   registered Camera_GetZoom0073d800. Returns x87 float Euclidean XYZ distance between controller
   base position+0x770 and base target+0x780. Original SSE squares four lanes but horizontal
   reduction selects XYZ only; SQRTPS then FLD returns ST0. No universal zoom scale for other
   controller types is established. */

float __thiscall MainCamera_GetBaseZoomDistance(void *this)

{
  float fVar1;
  float fVar3;
  float fVar4;
  undefined1 auVar2 [16];
  undefined4 local_20;
  
  fVar1 = *(float *)((int)this + 0x770) - *(float *)((int)this + 0x780);
  fVar3 = *(float *)((int)this + 0x774) - *(float *)((int)this + 0x784);
  fVar4 = *(float *)((int)this + 0x778) - *(float *)((int)this + 0x788);
  auVar2._0_4_ = fVar4 * fVar4 + fVar3 * fVar3 + fVar1 * fVar1;
  auVar2._4_4_ = auVar2._0_4_;
  auVar2._8_4_ = auVar2._0_4_;
  auVar2._12_4_ = auVar2._0_4_;
  auVar2 = sqrtps(auVar2,auVar2);
  local_20 = auVar2._0_4_;
  return local_20;
}

