/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX controller, float argument RET4, MOVSS
   stores+3C0. Thumbnail caller passes0; consumer0054E810 FLD+3C0 passes seconds to
   ClipCodec_SampleByVersion00588B40. This is sample time, not a guessed integer or locomotion root
   displacement. */

void __thiscall ClipPoseController_SetSampleSeconds(void *this,undefined4 param_1)

{
  *(undefined4 *)((int)this + 0x3c0) = param_1;
  return;
}

