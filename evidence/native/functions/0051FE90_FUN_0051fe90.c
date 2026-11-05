/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: ECX output float4, two input rectangle pointers, void RET8. Zero-width or zero-height second input copies first; degenerate first copies second; otherwise ordered SSE comparisons choose each min/max lane. Input/output alias at7EC490 is intentional. UCOMISS/LAHF/TEST parity paths, NaN selection, CVTT and machine FP controls are not a generic Math.Min/Max equivalence proof. */

void __thiscall FUN_0051fe90(void *this,float *param_1,float *param_2)

{
  float fVar1;
  float fVar2;
  
  fVar2 = *param_2;
  if ((param_2[2] == fVar2) || (param_2[3] == param_2[1])) {
    *(float *)this = *param_1;
    *(float *)((int)this + 4) = param_1[1];
    *(float *)((int)this + 8) = param_1[2];
    *(float *)((int)this + 0xc) = param_1[3];
    return;
  }
  fVar1 = *param_1;
  if ((param_1[2] == fVar1) || (param_1[3] == param_1[1])) {
    *(float *)this = fVar2;
    *(float *)((int)this + 4) = param_2[1];
    *(float *)((int)this + 8) = param_2[2];
    *(float *)((int)this + 0xc) = param_2[3];
    return;
  }
  if (fVar1 < fVar2) {
    fVar2 = fVar1;
  }
  *(float *)this = fVar2;
  fVar2 = param_1[1];
  if (param_2[1] <= param_1[1]) {
    fVar2 = param_2[1];
  }
  *(float *)((int)this + 4) = fVar2;
  fVar2 = param_1[2];
  if (param_1[2] <= param_2[2]) {
    fVar2 = param_2[2];
  }
  *(float *)((int)this + 8) = fVar2;
  fVar2 = param_1[3];
  if (param_1[3] <= param_2[3]) {
    fVar2 = param_2[3];
  }
  *(float *)((int)this + 0xc) = fVar2;
  return;
}
