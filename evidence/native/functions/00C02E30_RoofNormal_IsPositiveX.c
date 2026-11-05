/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 roof numeric instruction contract. cdecl pointer to normal components, one stack
   word RET, boolean AL only. Selected X or Z component compared strictly to stored signed binary32
   threshold: +/-0x3A83126F (0.0010000000474974513). COMISS/JBE rejects equality and unordered NaN.
   No direction normalization, clamp or whole-vector validity test. Sign and component are
   established by instructions; values outside the threshold are admitted even if another component
   is nonfinite. */

bool __cdecl RoofNormal_IsPositiveX(float *normal)

{
  if (DAT_010746e8 < *normal) {
    return true;
  }
  return false;
}

