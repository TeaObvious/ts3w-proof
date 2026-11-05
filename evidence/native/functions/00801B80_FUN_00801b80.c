/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified analyst note: ECXdriver plus paramHash/valueHash RET8; lookup801B00, absent slot no-op, present slot7FD180 clears text then stores supplied hash including0. */
void __thiscall FUN_00801b80(void *this,int param_1,undefined4 param_2)

{
  int *this_00;
  
  this_00 = FUN_00801b00(this,param_1);
  if (this_00 != (int *)0x0) {
    SacsParameter_SetHashAndClearText(this_00,param_2);
  }
  return;
}

