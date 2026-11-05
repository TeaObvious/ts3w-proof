/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 placed footprint selector. cdecl six physical stack words, RET caller cleanup;
   Boolean AL only, upperEAX unspecified. Fifth word UNUSED. Sixth LOW BYTE nonzero selects band
   expansion1, else0. SSE FLOAT32: dz=B[1]-A[1], dx=B[0]-A[0], dzSquared then dxSquared then SUM;
   store sum FLOAT32. x87 reload, subtract original1 and FABS; compare STRICTLY against x87
   (expansion + original FLOAT32 0.009999999776482582 at106D704). Unordered distance rejects via
   JBE. Then UCOMISS yawB,yawA and LAHF/TEST AH44/JP admit ONLY ordered exact equality; NaN yaw
   rejects, signed zeros equal, no modulo/tolerance/octant conversion here. Original C old CONCAT
   upper-byte/param4 pointer expressions were undefined upperEAX flag artifacts, not pointer
   outputs. Positions borrowed two floats X/Z, no third coordinate. No allocation/callback/retention
   and no local catch. B42180 caller family uses this leaf for selected catalogD0 40/80 pair
   branches; full parent validation remains separately unreviewed. */

bool __cdecl
Placement_TestEqualYawAndSquaredUnitSeparation
          (float yawA,float *positionA_XZ,float yawB,float *positionB_XZ,uint unusedWord,
          uchar expandedBand)

{
  float fVar1;
  
  fVar1 = FLOAT_00f998f8;
  if (expandedBand == '\0') {
    fVar1 = 0.0;
  }
                    /* Strict bound > ABS(stored squared XZ separation minus1); JBE includes
                       unordered rejection. Boundary equality fails. */
                    /* Ordered yaw equality only. LAHF; TEST AH,44; JP rejects both ordinary
                       inequality and unordered NaN. Consumed return AL only. */
  if ((ABS(((positionB_XZ[1] - positionA_XZ[1]) * (positionB_XZ[1] - positionA_XZ[1]) +
           (*positionB_XZ - *positionA_XZ) * (*positionB_XZ - *positionA_XZ)) - FLOAT_00f998f8) <
       fVar1 + DAT_0106d704) && (yawB == yawA)) {
    return true;
  }
  return false;
}

