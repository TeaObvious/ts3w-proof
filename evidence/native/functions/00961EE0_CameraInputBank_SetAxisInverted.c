/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Inversion true writes float -1; false writes float +1 to bank+1C+4*field.
   These modifiers multiply primary gains when aggregating camera motion. */

void __thiscall CameraInputBank_SetAxisInverted(void *this,int param_1,char param_2)

{
  if (param_2 != '\0') {
    *(undefined4 *)((int)this + param_1 * 4 + 0x1c) = DAT_00fab218;
    return;
  }
  *(undefined4 *)((int)this + param_1 * 4 + 0x1c) = DAT_00f998f8;
  return;
}

