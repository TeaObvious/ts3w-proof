/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163128 (original PC 1.67 TS3W.exe).
   ScriptCore.VideoRecorder::VideoRecorder_TakeSnapshotWithUI [assembly=ScriptCore token=0x06000CFC;
   ; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_VideoRecorder__VideoRecorder_TakeSnapshotWithUI(void)

{
  int *piVar1;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined1 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  piVar1 = (int *)FUN_009dff90();
  if (piVar1 != (int *)0x0) {
    uStack_24 = 1;
    uStack_30 = 1;
    uStack_2c = 0;
    uStack_28 = 0;
    uStack_20 = 0;
    uStack_1c = 0;
    uStack_18 = 0;
    uStack_14 = 0;
    uStack_10 = 0;
    uStack_c = 0;
    uStack_8 = 0;
    uStack_4 = 0;
    (**(code **)(*piVar1 + 0x34))(&uStack_30);
  }
  return;
}

