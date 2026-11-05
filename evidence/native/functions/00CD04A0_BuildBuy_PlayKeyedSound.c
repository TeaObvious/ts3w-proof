/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical cdecl TWO stack DWORDs and plain RET. Manager virtual28 supplies sound ID or absence
   uses0; submits the two-word event key and ID through860880, discarding the ID. This body takes no
   position/loop flag. Stored one-parameter C prototype omits a key word; no ABI/type mutation made.
    */

void __cdecl BuildBuy_PlayKeyedSound(undefined4 param_1)

{
  int *piVar1;
  
  piVar1 = (int *)FUN_008afe00();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x28))();
    Audio_SubmitKeyedPlayCommand(param_1);
    return;
  }
  Audio_SubmitKeyedPlayCommand(param_1);
  return;
}

