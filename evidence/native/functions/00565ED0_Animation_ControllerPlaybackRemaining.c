/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Tail JMP through own vtable+0x1c
   preserves x87 float return. Previously recovered void signature was decompiler artifact.
   TimeScale/SuppressEvents/Sequence use this forwarding slot. */

float __thiscall Animation_ControllerPlaybackRemaining(void *this)

{
  float10 fVar1;
  
                    /* WARNING: Could not recover jumptable at 0x00565ed5. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  fVar1 = (float10)(**(code **)(*(int *)this + 0x1c))();
  return (float)fVar1;
}

