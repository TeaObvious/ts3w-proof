/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163130 (original PC 1.67 TS3W.exe).
   ScriptCore.VideoRecorder::VideoRecorder_GetStatus [assembly=ScriptCore token=0x06000CF7; ;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_VideoRecorder__VideoRecorder_GetStatus(void)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  
  puVar1 = (undefined4 *)FUN_009dff90();
  if (puVar1 != (undefined4 *)0x0) {
    uVar2 = (**(code **)*puVar1)();
    switch(uVar2) {
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    }
  }
  return 0;
}

