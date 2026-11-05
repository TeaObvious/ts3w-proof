/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163148 (original PC 1.67 TS3W.exe).
   ScriptCore.VideoRecorder::VideoRecorder_SetFileName [assembly=ScriptCore token=0x06000CFF;
   fileName: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_VideoRecorder__VideoRecorder_SetFileName(undefined4 param_1)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  undefined4 uVar4;
  
  piVar2 = (int *)FUN_009dff90();
  if (piVar2 != (int *)0x0) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar1 = *piVar2;
    uVar4 = (**(code **)(*piVar3 + 0x58))(param_1);
    (**(code **)(iVar1 + 0xc))(uVar4);
  }
  return;
}

