/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst: original PC1.67. Applies lot-map inverse affine transform at record+0xe0 to float X/Z;
   third DWORD signed floor level is copied unchanged (MOV), never FLD conversion. Packed GUID64
   followed by input/output pointers, ECXthis RET16.
   
   PC 1.67 lot spatial resource / main-entrance boundary review (2026-10-17). ECX routing manager
   plus lot-ID low/high, input point/level pointer and output pointer; RET0x10. Looks up its record
   via0062F2D0 on manager+48, then applies stored inverse matrix at record+E0 through SSE operations
   to two coordinates. Third DWORD is copied by MOV as raw signed integer level, not loaded as a
   float. Current yaw transform and independent float helpers have separate precision limits; no
   type/prototype repair proposed. Complete actual C/Listing and pristine PE support the selected
   observations. Names/IDs/prototypes/types/body/bytes/Listing/flow/analysis otherwise remain
   unchanged; current managed resource/cache policy is preserved. */

void __thiscall
LotRouteGraph_ApplyInverseLotPositionMatrix
          (void *this,ulonglong lotId,TS3WPortalXZLevel *graphPosition,
          TS3WPortalXZLevel *outPosition)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  int iVar7;
  
  iVar7 = FUN_0062f2d0((void *)((int)this + 0x48),(uint *)&lotId);
  fVar3 = *(float *)(iVar7 + 0xf8);
  fVar4 = *(float *)(iVar7 + 0xe8);
  fVar1 = graphPosition->z;
  fVar2 = graphPosition->x;
  fVar5 = *(float *)(iVar7 + 0x108);
  fVar6 = *(float *)(iVar7 + 0x118);
  outPosition->x =
       *(float *)(iVar7 + 0xf0) * 0.0 + fVar2 * *(float *)(iVar7 + 0xe0) +
       fVar1 * *(float *)(iVar7 + 0x100) + *(float *)(iVar7 + 0x110) * 1.0;
  outPosition->z = fVar3 * 0.0 + fVar2 * fVar4 + fVar1 * fVar5 + fVar6 * 1.0;
  outPosition->level = graphPosition->level;
  return;
}

