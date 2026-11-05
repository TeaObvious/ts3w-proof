/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162eb8 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_SetCaptureTargetImpl [assembly=ScriptCore token=0x06000E12;
   context: System.UInt32, winHandle: System.UInt32, captureOnlyMouseButtons: System.Boolean;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UIManager__UIManager_SetCaptureTargetImpl(undefined4 param_1,uint param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((((param_2 & 0xff000000) == 0x30000000) &&
      (piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_2), piVar1 != (int *)0x0)) &&
     (iVar2 = (**(code **)(*piVar1 + 0xc))(0xeeee8218), iVar2 != 0)) {
    piVar1 = (int *)FUN_0050af90();
    (**(code **)(*piVar1 + 100))(param_2,iVar2,param_1);
  }
  return;
}

