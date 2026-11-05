/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical cdecl TWO stack DWORDs: handle and stop parameter. Missing manager8AFE00 or zero handle
   returns. Sends kind0347536B via virtual44, handle property03475385 and supplied stop
   property034753A0 via virtual4C, then tail-jumps virtual68. Callers in this tool path pass stop0.
   Backend hard/fade interpretation remains unresolved. Stored one-parameter C loses the second
   word; no prototype mutation. */

void __cdecl Audio_SubmitHandleStopCommand(int param_1)

{
  int *piVar1;
  undefined4 unaff_ESI;
  
  piVar1 = (int *)FUN_008afe00();
  if ((piVar1 != (int *)0x0) && (param_1 != 0)) {
    (**(code **)(*piVar1 + 0x44))(0x347536b);
    (**(code **)(*piVar1 + 0x4c))(0x3475385,param_1);
    (**(code **)(*piVar1 + 0x4c))(0x34753a0,unaff_ESI);
                    /* WARNING: Could not recover jumptable at 0x0086092e. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x68))();
    return;
  }
  return;
}

