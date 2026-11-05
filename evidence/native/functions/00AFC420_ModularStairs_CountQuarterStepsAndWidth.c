/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 stair collision and renderer contract): cdecl seven stack arguments, caller
   cleanup/plain RET: direction32, top/bottom LotXZLevel pointers, UInt32 quarter-step/width
   outputs, float side-X/Z outputs. Coordinates subtract as binary32 then clear sign bits.
   Direction0/4 use absolute X run and Z width; direction2/6 use Z run and X width. Side vectors
   0=(0,-1),2=(-1,0),4=(0,1),6=(1,0), from original switch table AFC564. Run*4.0 binary32 then x87
   FISTP QWORD; width likewise FISTP; copy low DWORD. Conversion uses ambient x87 rounding, not
   unconditional truncation or invariant MathF.Round. Other switch/default directions use X
   magnitude for both counts and leave side outputs untouched; function returns no validation
   boolean. No finite/cap/residual checks. Exceptional conversions are not generalized. */

void __cdecl
ModularStairs_CountQuarterStepsAndWidth
          (int direction,LotXZLevel *top,LotXZLevel *bottom,uint *outQuarterSteps,uint *outWidth,
          float *outSideX,float *outSideZ)

{
  float fVar1;
  float fVar2;
  float local_14;
  uint local_10;
  
  local_14 = ABS(bottom->z - top->z);
  fVar1 = ABS(bottom->x - top->x);
  fVar2 = local_14;
  switch(direction) {
  case 0:
    *outSideX = 0.0;
    *outSideZ = FLOAT_00fab218;
    fVar2 = fVar1;
    break;
  default:
    fVar2 = fVar1;
    local_14 = fVar1;
    break;
  case 2:
    *outSideX = FLOAT_00fab218;
    *outSideZ = 0.0;
    local_14 = fVar1;
    break;
  case 4:
    *outSideX = 0.0;
    *outSideZ = FLOAT_00f998f8;
    fVar2 = fVar1;
    break;
  case 6:
    *outSideX = FLOAT_00f998f8;
    *outSideZ = 0.0;
    local_14 = fVar1;
  }
  local_10 = (uint)(longlong)ROUND(fVar2 * DAT_00fb3f7c);
  *outQuarterSteps = local_10;
  local_10 = (uint)(longlong)ROUND(local_14);
  *outWidth = local_10;
  return;
}

