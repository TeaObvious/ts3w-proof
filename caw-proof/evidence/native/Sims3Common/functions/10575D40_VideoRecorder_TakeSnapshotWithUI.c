/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: VideoRecorder_TakeSnapshotWithUI. Export
   ordinal(s): 1252. Entry VA: 0x10575d40. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000F16. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void VideoRecorder_TakeSnapshotWithUI(void)

{
  int *piVar1;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined1 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x575d40  1252  VideoRecorder_TakeSnapshotWithUI */
  piVar1 = (int *)FUN_107cd170();
  if (piVar1 != (int *)0x0) {
    local_24 = 1;
    local_30 = 1;
    local_2c = 0;
    local_28 = 0;
    local_20 = 0;
    local_1c = 0;
    local_18 = 0;
    local_14 = 0;
    local_10 = 0;
    local_c = 0;
    local_8 = 0;
    local_4 = 0;
    (**(code **)(*piVar1 + 0x34))(&local_30);
  }
  return;
}

