/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimBuilderProcessModelImpl. Export
   ordinal(s): 175. Entry VA: 0x103a3ae0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060003F6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void CASUtils_SimBuilderProcessModelImpl(int param_1,undefined4 param_2)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  undefined8 uVar5;
  
  piVar2 = (int *)FUN_108835e0();
  piVar3 = (int *)FUN_1055b120();
  piVar4 = FUN_1055c9d0();
  if (piVar4 == (int *)0x0) {
    piVar4 = (int *)0x0;
  }
  else {
    uVar5 = (**(code **)(*piVar3 + 0x118))();
    *piVar4 = (int)&PTR_FUN_10b60b30;
    LOCK();
    piVar4[1] = 0;
    UNLOCK();
    *(undefined8 *)(piVar4 + 2) = uVar5;
    piVar4[4] = (int)FUN_103a8ec0;
    *piVar4 = (int)&PTR_LAB_10afa670;
    piVar4[6] = param_1;
  }
  (**(code **)(*piVar4 + 4))();
  iVar1 = *piVar3;
  uVar5 = (**(code **)(iVar1 + 0x118))(0xffffffff,param_2,0);
  (**(code **)(iVar1 + 0x120))(uVar5);
  (**(code **)(*piVar2 + 0x1c))(0x30290f0,piVar4,0,0);
  (**(code **)(*piVar4 + 8))();
                    /* WARNING: Could not recover jumptable at 0x103a2d1e. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar3 + 0x11c))();
  return;
}

