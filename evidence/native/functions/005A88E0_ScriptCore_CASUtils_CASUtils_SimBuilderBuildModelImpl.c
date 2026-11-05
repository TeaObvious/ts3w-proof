/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011562e0 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimBuilderBuildModelImpl [assembly=ScriptCore token=0x06000301;
   handle: System.UInt32, detailLevel: System.Int32, callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.CASUtils::CASUtils_SimBuilderBuildModelImpl
               (int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  undefined8 uVar5;
  
  piVar2 = (int *)FUN_0044c4f0();
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar4 = FUN_0076ae20();
  if (piVar4 == (int *)0x0) {
    piVar4 = (int *)0x0;
  }
  else {
    uVar5 = (**(code **)(*piVar3 + 0x118))();
    *piVar4 = (int)&PTR_FUN_0106c91c;
    LOCK();
    piVar4[1] = 0;
    UNLOCK();
    *(undefined8 *)(piVar4 + 2) = uVar5;
    piVar4[4] = (int)FUN_005ae130;
    *piVar4 = (int)&PTR_LAB_00fe2900;
    piVar4[6] = param_1;
    piVar4[7] = param_2;
  }
  (**(code **)(*piVar4 + 4))();
  iVar1 = *piVar3;
  uVar5 = (**(code **)(iVar1 + 0x118))(0xffffffff,param_3,0);
  (**(code **)(iVar1 + 0x120))(uVar5);
  (**(code **)(*piVar2 + 0x1c))(0x30290f0,piVar4,0,0);
  (**(code **)(*piVar4 + 8))();
                    /* WARNING: Could not recover jumptable at 0x005a8995. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar3 + 0x11c))();
  return;
}

