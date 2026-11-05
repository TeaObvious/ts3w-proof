/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. Physical ECX destination, three binary32 stack words, RET0C. Each
   lane MULSS by2000f from00FDF488 then separate ADDSS32768.5f from00FDF484, CVTTSS2SI truncates
   toInt32, low16 stored. No fused multiply-add or x87 round-to-nearest expression;
   nonfinite/out-of-range conversion retains SSE indefinite behavior. Called by BGEO version100
   conversion. */

void __thiscall BlendGeometry_QuantizeVector(void *this,float param_1,float param_2,float param_3)

{
  *(short *)this = (short)(int)(param_1 * 2000.0 + 32768.5);
  *(short *)((int)this + 2) = (short)(int)(param_2 * 2000.0 + 32768.5);
  *(short *)((int)this + 4) = (short)(int)(param_3 * 2000.0 + 32768.5);
  return;
}

