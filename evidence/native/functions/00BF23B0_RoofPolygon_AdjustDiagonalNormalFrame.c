/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 roof numeric instruction contract. cdecl aligned writable16-byte float4 pointer
   RET; modifies in place ONLY if abs(X)>stored 2^-23 AND abs(Z)>stored 2^-23. x87 FCOMIP/JBE
   rejects equality/unordered. Loads binary32 angle3F490FDB; x87 FSIN/FCOS each stored binary32,
   builds SSE matrix and multiplies original XYZ with ordered MULPS/ADDPS. This is an
   approximately45-degree Y rotation, NOT normalization; fourth lane is also overwritten by matrix.
   A source recomputed lot-frame cross product is not automatically equivalent. Caller BF2540
   applies it after indexed-normal/fallback acquisition. Caller/FPU setup, control state and
   exceptional-domain parity remain unresolved static research. Hardware and rendered acceptance are
   separate runtime checks. */

void __cdecl RoofPolygon_AdjustDiagonalNormalFrame(float *normal4)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float10 fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  
  if ((_DAT_010734e8 < ABS(*normal4)) && (_DAT_010734e8 < ABS(normal4[2]))) {
    fVar6 = (float10)fsin((float10)DAT_010734e4);
    fVar1 = (float)fVar6;
    fVar6 = (float10)fcos((float10)DAT_010734e4);
    fVar2 = (float)fVar6;
    fVar3 = *normal4;
    fVar4 = normal4[1];
    fVar5 = normal4[2];
    fVar11 = fVar3 * DAT_010f4ccc;
    fVar7 = fVar4 * FLOAT_00f998f8;
    fVar9 = fVar4 * DAT_010f4ccc;
    fVar10 = fVar4 * DAT_010f4ccc;
    fVar8 = fVar5 * DAT_010f4ccc;
    *normal4 = fVar3 * fVar2 + fVar4 * DAT_010f4ccc + fVar5 * fVar1;
    normal4[1] = fVar11 + fVar7 + fVar8;
    normal4[2] = fVar3 * (0.0 - fVar1) + fVar9 + fVar5 * fVar2;
    normal4[3] = fVar3 * fVar2 + fVar10 + fVar5 * fVar1;
    return;
  }
  return;
}

