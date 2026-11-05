/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical cdecl THREE stack DWORDs: two-word event key then sound ID. Missing manager8AFE00 is a
   no-op. Manager virtual44 gets kind03475365; virtual50 gets property03475381 plus both key DWORDs;
   virtual4C gets03475385 and ID; tail-jumps virtual68. Stored one-parameter C and unaff-retaddr/ESI
   are decompiler artifacts. Submission does not prove audible playback or forced loop behavior. */

void __cdecl Audio_SubmitKeyedPlayCommand(undefined4 param_1)

{
  int *piVar1;
  undefined4 unaff_ESI;
  undefined4 unaff_retaddr;
  
  piVar1 = (int *)FUN_008afe00();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x44))(0x3475365);
    (**(code **)(*piVar1 + 0x50))(0x3475381,unaff_retaddr,param_1);
    (**(code **)(*piVar1 + 0x4c))(0x3475385,unaff_ESI);
                    /* WARNING: Could not recover jumptable at 0x008608cd. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x68))();
    return;
  }
  return;
}

