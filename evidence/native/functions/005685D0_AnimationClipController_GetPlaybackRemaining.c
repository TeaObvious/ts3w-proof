/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Vtable+0x24 returns
   clipDuration(vtable+0x28)-localClipTime(vtable+0x18), via x87 float calls. */

float10 __fastcall AnimationClipController_GetPlaybackRemaining(int *param_1)

{
  float10 fVar1;
  float10 fVar2;
  
  fVar1 = (float10)(**(code **)(*param_1 + 0x28))();
  fVar2 = (float10)(**(code **)(*param_1 + 0x18))();
  return (float10)(float)fVar1 - fVar2;
}

