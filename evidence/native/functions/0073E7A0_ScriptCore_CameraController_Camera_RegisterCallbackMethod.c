/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ec38 (original PC 1.67 TS3W.exe).
   ScriptCore.CameraController::Camera_RegisterCallbackMethod [assembly=ScriptCore token=0x060006E9;
   cameraEvent: System.UInt32, typeName: System.String, methodName: System.String;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CameraController::Camera_RegisterCallbackMethod
          (uint param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  
  if (param_1 < 5) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    (**(code **)(*piVar1 + 0x58))(param_3);
    (**(code **)(*piVar1 + 0x58))(param_1);
    FUN_00590e60(&DAT_011d4e58 + param_1 * 8,&DAT_01000a0c);
    FUN_00590e60(&DAT_011d4e68 + param_1 * 8,&DAT_01000a0c);
  }
  return;
}

