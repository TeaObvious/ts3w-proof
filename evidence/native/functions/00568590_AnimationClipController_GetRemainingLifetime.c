/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC 1.67 original instruction review. Analyst-assigned name. Vtable+0x1c: returns FLT_MAX
   unchanged when total duration sentinel matches; otherwise
   totalDuration(vtable+0x20)-accumulatedTime(vtable+0x14), using x87 floats. Negative result is
   intentionally possible and is consumed by Update/SequenceController. */

float10 __fastcall AnimationClipController_GetRemainingLifetime(int *param_1)

{
  float10 fVar1;
  float10 fVar2;
  
  fVar1 = (float10)(**(code **)(*param_1 + 0x20))();
  fVar2 = (float10)_DAT_01150594;
  if (fVar1 != fVar2) {
    fVar1 = (float10)(**(code **)(*param_1 + 0x20))();
    fVar2 = (float10)(**(code **)(*param_1 + 0x14))();
    fVar2 = (float10)(float)fVar1 - fVar2;
  }
  return fVar2;
}

