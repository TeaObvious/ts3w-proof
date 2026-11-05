/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_0053d600. Iterates actual stored attached-object membership and calls each
   object virtual98 before advancing. Set helpers remain providers; mutation/reentrance safety
   beyond these instructions is not inferred. */

void __fastcall StaticRotate_NotifyAttachedWindows(int param_1)

{
  int *piVar1;
  
  for (piVar1 = *(int **)(param_1 + 0x2c); piVar1 != (int *)(param_1 + 0x28);
      piVar1 = FUN_004e1030(piVar1)) {
    (**(code **)(*(int *)piVar1[4] + 0x98))();
  }
  return;
}

