/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011564a8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SetCameraOffsetImpl [assembly=ScriptCore token=0x060002F3; x:
   System.Single, y: System.Single, z: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CASUtils__CASUtils_SetCameraOffsetImpl(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  int *piVar2;
  undefined4 unaff_retaddr;
  
  iVar1 = FUN_00969bd0();
  iVar1 = FUN_00f21ff0(iVar1);
  piVar2 = (int *)FUN_00513de0(iVar1);
  if (piVar2 != (int *)0x0) {
    piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xe5b55c53);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x68))(unaff_retaddr,param_1,param_2);
    }
  }
  return;
}

