/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: VideoRecorder_Pause. Export ordinal(s): 1245.
   Entry VA: 0x10575c90. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F12. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void VideoRecorder_Pause(void)

{
  int *piVar1;
  
                    /* 0x575c90  1245  VideoRecorder_Pause */
  piVar1 = (int *)FUN_107cd170();
  if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x10575ca0. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x28))();
    return;
  }
  return;
}

