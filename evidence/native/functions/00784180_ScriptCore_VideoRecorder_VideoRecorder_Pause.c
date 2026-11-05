/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163108 (original PC 1.67 TS3W.exe).
   ScriptCore.VideoRecorder::VideoRecorder_Pause [assembly=ScriptCore token=0x06000CF8; ;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_VideoRecorder__VideoRecorder_Pause(void)

{
  int *piVar1;
  
  piVar1 = (int *)FUN_009dff90();
  if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x00784190. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x28))();
    return;
  }
  return;
}

