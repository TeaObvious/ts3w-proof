/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011562e8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_SimBuilderProcessModelImpl [assembly=ScriptCore token=0x06000302;
   handle: System.UInt32, callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.CASUtils::CASUtils_SimBuilderProcessModelImpl(int param_1,undefined4 param_2)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  undefined8 uVar5;
  
  piVar2 = (int *)MessageDispatch_GetCurrent();
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
    piVar4[4] = (int)FUN_005ae270;
    *piVar4 = (int)&PTR_LAB_00fe2900;
    piVar4[6] = param_1;
  }
  (**(code **)(*piVar4 + 4))();
  iVar1 = *piVar3;
  uVar5 = (**(code **)(iVar1 + 0x118))(0xffffffff,param_2,0);
  (**(code **)(iVar1 + 0x120))(uVar5);
  (**(code **)(*piVar2 + 0x1c))(0x30290f0,piVar4,0,0);
  (**(code **)(*piVar4 + 8))();
                    /* WARNING: Could not recover jumptable at 0x005a8a4e. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar3 + 0x11c))();
  return;
}

