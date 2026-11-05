/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical cdecl TWO stack DWORDs and plain RET; obtains manager8AFE00 and allocates sound ID via
   virtual28 or uses0 when absent. Always calls860880(key low,key high,ID), then returns ID in EAX.
   No existing-handle test and no separate loop flag here. Stored one-parameter C prototype omits
   the second key word; no ABI/type mutation made. */

undefined4 __cdecl UserTool_StartKeyedSound(undefined4 param_1)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)FUN_008afe00();
  if (piVar1 == (int *)0x0) {
    uVar2 = 0;
  }
  else {
    uVar2 = (**(code **)(*piVar1 + 0x28))();
  }
  Audio_SubmitKeyedPlayCommand(param_1);
  return uVar2;
}

