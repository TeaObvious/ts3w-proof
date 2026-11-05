/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Type propagation algorithm not settling */
/* Verified PC 1.67 registration table at 0x0115ec90 (original PC 1.67 TS3W.exe).
   ScriptCore.CameraController::Camera_LoadTuning [assembly=ScriptCore token=0x060006F4; type:
   System.UInt32, vars: System.Single[], b: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CameraController::Camera_LoadTuning(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  void *this;
  undefined4 unaff_retaddr;
  int *piVar3;
  int local_8 [2];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    piVar3 = local_8 + 1;
    local_8[0] = 0;
    local_8[1] = 0;
    (**(code **)(*piVar1 + 0x78))(param_2,piVar3,local_8);
    iVar2 = FUN_00969bd0();
    if (iVar2 != 0) {
      this = (void *)FUN_00f21ff0(iVar2);
      if (this != (void *)0x0) {
        FUN_00969dc0(this,local_8[0],piVar3,param_2,unaff_retaddr,1,0);
      }
    }
  }
  return;
}

