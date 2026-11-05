/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: VideoRecorder_Start. Export ordinal(s): 1249.
   Entry VA: 0x10575cb0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F13. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void VideoRecorder_Start(void)

{
  int *piVar1;
  
                    /* 0x575cb0  1249  VideoRecorder_Start */
  piVar1 = (int *)FUN_107cd170();
  if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x10575cc0. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x2c))();
    return;
  }
  return;
}

