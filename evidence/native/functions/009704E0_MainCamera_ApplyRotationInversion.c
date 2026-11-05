/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Applies horizontal inversion to field5 and vertical inversion to field4
   across all four gameplay input banks at controller+40. CameraInputBank_SetAxisInverted writes
   signed modifier at bank+1C+4*field. */

void __thiscall MainCamera_ApplyRotationInversion(void *this,char param_1,char param_2)

{
  void *this_00;
  int iVar1;

  this_00 = (void *)((int)this + 0x40);
  iVar1 = 4;
  do {
    CameraInputBank_SetAxisInverted(this_00,5,param_1);
    CameraInputBank_SetAxisInverted(this_00,4,param_2);
    this_00 = (void *)((int)this_00 + 0x100);
    iVar1 = iVar1 + -1;
  } while (iVar1 != 0);
  return;
}

