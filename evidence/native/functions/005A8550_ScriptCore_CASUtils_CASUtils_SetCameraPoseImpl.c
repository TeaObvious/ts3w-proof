/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011564a0 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SetCameraPoseImpl [assembly=ScriptCore token=0x060002F2;
   basePoseHash: System.UInt32, closeUpPoseHash: System.UInt32, zoom: System.Single, zoomDelta:
   System.Single, lerp: System.UInt32; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_CASUtils__CASUtils_SetCameraPoseImpl
                  (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int *piVar2;
  float10 fVar3;
  undefined4 unaff_retaddr;
  
  iVar1 = FUN_00969bd0();
  iVar1 = FUN_00f21ff0(iVar1);
  piVar2 = (int *)FUN_00513de0(iVar1);
  if (piVar2 != (int *)0x0) {
    piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xe5b55c53);
    if (piVar2 != (int *)0x0) {
      fVar3 = (float10)(**(code **)(*piVar2 + 100))(unaff_retaddr,param_1,param_2,param_3,param_4);
      return fVar3;
    }
  }
  return (float10)DAT_00fab218;
}

