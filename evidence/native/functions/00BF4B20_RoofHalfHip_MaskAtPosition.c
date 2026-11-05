/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 roof numeric instruction contract. thiscall ECX roof; two binary32 stack words
   positionX/positionZ, RET 8, AL mask. Rect endpoints +10/+1C and+14/+20 supply minima/absolute
   extents; byte+30 enables min-offset+34 and extent+1. SSE separate subtract/multiply by exact2;
   x87 FIST/FILD/subtract, binary32 residual sign-bit compare80000001 and ADC-1 implement FLOOR-like
   finite in-range coordinate conversion, not C# Round. Width/height use truncating FISTP64 under
   temporarily selected truncation controlword; low32*2+1 passed with raw flag bytes+39/+3A to
   six-word wrapper. Original controlword is restored. Decompiler ROUND/int casts can obscure this
   conversion; exceptional/nonfinite domains not generalized. No source-style inward-neighbor corner
   extension occurs here. Endpoint minima specifically use COMISS/JA: unordered comparisons choose
   the FIRST endpoint. The decompiler's less-than-or-equal spelling can omit that NaN path.
   Residual-to-uint expressions in C are raw float-bit reinterpretations before comparison, not
   numeric float-to-integer casts; controlword-directed truncation of extents is also obscured by
   ROUND. Input coordinate frame is relative to the selected roof representation; global world
   versus lot-local frame requires its caller, not this leaf. */

byte __thiscall RoofHalfHip_MaskAtPosition(void *this,float worldX,float worldZ)

{
  int iVar1;
  int iVar2;
  int iVar3;
  byte bVar4;
  float *pfVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float local_14;
  float local_10;
  undefined4 local_8;
  
  pfVar5 = (float *)((int)this + 0x1c);
  if (*(float *)((int)this + 0x10) < *(float *)((int)this + 0x1c) ||
      *(float *)((int)this + 0x10) == *(float *)((int)this + 0x1c)) {
    pfVar5 = (float *)((int)this + 0x10);
  }
  fVar7 = *pfVar5;
  pfVar5 = (float *)((int)this + 0x20);
  if (*(float *)((int)this + 0x14) < *(float *)((int)this + 0x20) ||
      *(float *)((int)this + 0x14) == *(float *)((int)this + 0x20)) {
    pfVar5 = (float *)((int)this + 0x14);
  }
  fVar6 = *pfVar5;
  local_10 = ABS(*(float *)((int)this + 0x10) - *(float *)((int)this + 0x1c));
  local_14 = ABS(*(float *)((int)this + 0x14) - *(float *)((int)this + 0x20));
  if (*(char *)((int)this + 0x30) != '\0') {
    fVar7 = fVar7 - *(float *)((int)this + 0x34);
    fVar6 = fVar6 - *(float *)((int)this + 0x34);
    local_10 = local_10 + FLOAT_00f998f8;
    local_14 = local_14 + FLOAT_00f998f8;
  }
  fVar8 = (worldX - fVar7) * DAT_0103fd88;
  fVar7 = (worldZ - fVar6) * DAT_0103fd88;
  iVar1 = (int)ROUND(fVar8);
  iVar2 = (int)ROUND(fVar7);
  local_8 = (int)(longlong)ROUND(local_14);
  iVar3 = local_8 * 2;
  local_8 = (int)(longlong)ROUND(local_10);
  bVar4 = RoofHalfHipDiagonalMask_u32
                    (iVar1 + -1 + (uint)((uint)(fVar8 - (float)iVar1) < 0x80000001),
                     iVar2 + -1 + (uint)((uint)(fVar7 - (float)iVar2) < 0x80000001),local_8 * 2 + 1,
                     iVar3 + 1,(uint)*(byte *)((int)this + 0x39),(uint)*(byte *)((int)this + 0x3a));
  return bVar4;
}

