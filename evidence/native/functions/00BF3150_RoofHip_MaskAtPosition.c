/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 roof numeric instruction contract. thiscall roof,two binary32 coordinate stack
   words RET 8; AL mask. SSE (coordinate-origin+5C/+60)*stored exact2, store binary32, then
   FIST/FILD/subtract plus residual-sign ADC-1 for FLOOR-like finite in-range coordinates.
   Dimensions from virtual+10/+14; shared UInt32 mask called cdecl. No nearest rounding, coordinate
   bounds check or caller-domain proof. Data producer/call consumers are separate from source's
   mutable RoofGrid projection. Input coordinate frame is relative to the selected roof
   representation; global world versus lot-local frame requires its caller, not this leaf. */

byte __thiscall RoofHip_MaskAtPosition(void *this,float worldX,float worldZ)

{
  int iVar1;
  int iVar2;
  byte bVar3;
  uint height;
  uint width;
  float fVar4;
  float fVar5;
  
  fVar4 = (worldX - *(float *)((int)this + 0x5c)) * DAT_0103fd88;
  fVar5 = (worldZ - *(float *)((int)this + 0x60)) * DAT_0103fd88;
  iVar1 = (int)ROUND(fVar4);
  iVar2 = (int)ROUND(fVar5);
  height = (**(code **)(*(int *)this + 0x14))();
  width = (**(code **)(*(int *)this + 0x10))();
  bVar3 = RoofHipDiagonalMask_u32
                    (iVar1 + -1 + (uint)((uint)(fVar4 - (float)iVar1) < 0x80000001),
                     iVar2 + -1 + (uint)((uint)(fVar5 - (float)iVar2) < 0x80000001),width,height);
  return bVar3;
}

