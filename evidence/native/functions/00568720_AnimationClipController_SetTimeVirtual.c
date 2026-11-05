/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Vtable+0x10 one float argument, RET4;
   calls ClipController_SetTime. Used by original total-motion sampler to seek then restore. */

void __thiscall AnimationClipController_SetTimeVirtual(void *this,float param_1)

{
  AnimationClipController_SetTime(this,param_1);
  return;
}

