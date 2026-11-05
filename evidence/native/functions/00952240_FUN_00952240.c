/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note. Physical ECX is the full steering component; one float word on stack, RET4. Copies input to component+E0 and stores positive zero at+E4. No input clamp or interval-validity check in this setter. Display alias Steering_SetTravellingIntervalAndResetElapsed is a reference-file annotation; database symbols are unchanged. */

void __thiscall FUN_00952240(void *this,undefined4 param_1)

{
  *(undefined4 *)((int)this + 0xe0) = param_1;
  *(undefined4 *)((int)this + 0xe4) = 0;
  return;
}

