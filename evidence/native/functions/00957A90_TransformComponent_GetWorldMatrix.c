/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 world-matrix assembly. ECX Transform, one stack float*output RET4, returns SAME
   output pointer EAX (957B21 then unchanged untilRET); corrected falsevoid result. Calls957910
   with16byte-aligned32byte scratch to obtain world XYZWquaternion and XYZtranslation. All
   matrixoutput MOVAPS stores require16bytealigned64bytes. Original s at1045830 hasword3FB504F3
   (rounded sqrt2); first r_i=fl(s*q_i). SIMD h_i=fl(fl(fl(0-r_i)*r_i)+0.5) withhalf3F000000.
   Products and subsequent ADDPS/SUBPS are SEPARATE rounded SSEoperations, noFMA, no quaternion
   normalization/finiteguard here. Diagonal rows are fl(h_z+h_y),fl(h_x+h_z),fl(h_y+h_x).
   Offdiagonal rows: fl(fl(r_w*r_z)+fl(r_y*r_x)),fl(fl(r_x*r_z)-fl(r_w*r_y));
   fl(fl(r_y*r_x)-fl(r_w*r_z)),fl(fl(r_w*r_x)+fl(r_z*r_y));
   fl(fl(r_w*r_y)+fl(r_x*r_z)),fl(fl(r_z*r_y)-fl(r_w*r_x)). Do not replace by reassociated
   conventional 2*q products for bitparity. Rows0..2 ANDPS global11B0670; initializerF80590 writes
   FFFFFFFF/FFFFFFFF/FFFFFFFF/00000000, preserving first3FLOATBITPATTERNS and making
   fourthpositivezero AFTERthat initialization. Ghidra numeric-looking float->uint/uint->float
   Ccasts here are BITREINTERPRET artifacts, NOT CVTT/CVT numeric conversions; rawANDPS governs.
   Finalrow translationXYZ plus exact1.0, ignoresincomingtranslation fourthlane. SSEMXCSR
   rounding/FTZ/DAZ environment and full initializationorder notestablished. ActualC is unedited
   decompiler output; scalar spelling does not authorize alteredprecision or casts. */

float * __thiscall TransformComponent_GetWorldMatrix(void *this,float *alignedOutputMatrix)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  float *pfVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float local_30 [11];
  
  pfVar9 = TransformComponent_GetWorldQuaternionTranslation(this,local_30);
  uVar8 = uRam011b067c;
  uVar7 = uRam011b0678;
  uVar6 = uRam011b0674;
  uVar5 = _DAT_011b0670;
  fVar4 = FLOAT_00f998f8;
                    /* Rounded sqrt2 scaling precedes every product; preserve this SSE
                       multiplication boundary. */
  fVar10 = DAT_01045830 * *pfVar9;
  fVar12 = DAT_01045830 * pfVar9[1];
  fVar13 = DAT_01045830 * pfVar9[2];
  fVar14 = DAT_01045830 * pfVar9[3];
  fVar15 = (0.0 - fVar10) * fVar10 + _DAT_00f9b5b4;
  fVar16 = (0.0 - fVar12) * fVar12 + _DAT_00f9b5b4;
  fVar18 = (0.0 - fVar13) * fVar13 + _DAT_00f9b5b4;
  fVar11 = fVar14 * fVar13 + fVar12 * fVar10;
  fVar21 = fVar12 * fVar10 - fVar14 * fVar13;
  fVar22 = fVar16 + fVar15;
  fVar1 = pfVar9[4];
  fVar2 = pfVar9[5];
  fVar3 = pfVar9[6];
                    /* EAX=calleroutput remains returnpointer throughRET4; all4 outputrows stored
                       withMOVAPS. */
                    /* ANDPS preserves float bit patterns. C casts do NOT mean numeric uint
                       conversion. Mask runtime producer isF80590. */
  fVar17 = (float)((uint)fVar11 & uRam011b0674);
  fVar19 = (float)((uint)(fVar10 * fVar13 - fVar14 * fVar12) & uRam011b0678);
  fVar20 = (float)((uint)fVar21 & uRam011b067c);
  *alignedOutputMatrix = (float)((uint)(fVar18 + fVar16) & _DAT_011b0670);
  alignedOutputMatrix[1] = fVar17;
  alignedOutputMatrix[2] = fVar19;
  alignedOutputMatrix[3] = fVar20;
  alignedOutputMatrix[4] = (float)((uint)fVar21 & uVar5);
  alignedOutputMatrix[5] = (float)((uint)(fVar15 + fVar18) & uVar6);
  alignedOutputMatrix[6] = (float)((uint)(fVar14 * fVar10 + fVar13 * fVar12) & uVar7);
  alignedOutputMatrix[7] = (float)((uint)fVar11 & uVar8);
  alignedOutputMatrix[8] = (float)((uint)(fVar14 * fVar12 + fVar10 * fVar13) & uVar5);
  alignedOutputMatrix[9] = (float)((uint)(fVar13 * fVar12 - fVar14 * fVar10) & uVar6);
  alignedOutputMatrix[10] = (float)((uint)fVar22 & uVar7);
  alignedOutputMatrix[0xb] = (float)((uint)fVar22 & uVar8);
  alignedOutputMatrix[0xc] = fVar1;
  alignedOutputMatrix[0xd] = fVar2;
  alignedOutputMatrix[0xe] = fVar3;
  alignedOutputMatrix[0xf] = fVar4;
  return alignedOutputMatrix;
}

