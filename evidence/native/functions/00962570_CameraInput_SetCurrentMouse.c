/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Stores current mouse at input+500/+504 (and duplicated SIMD
   lanes+508/+50C). Coordinate producer has already converted physical pixels to logical units. */

void __thiscall CameraInput_SetCurrentMouse(void *this,undefined4 param_1,undefined4 param_2)

{
  *(undefined4 *)((int)this + 0x500) = param_1;
  *(undefined4 *)((int)this + 0x504) = param_2;
  *(undefined4 *)((int)this + 0x508) = param_1;
  *(undefined4 *)((int)this + 0x50c) = param_1;
  return;
}

