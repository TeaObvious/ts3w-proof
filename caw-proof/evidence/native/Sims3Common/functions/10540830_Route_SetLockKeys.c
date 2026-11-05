/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_SetLockKeys. Export ordinal(s): 690. Entry
   VA: 0x10540830. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600019D. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Route_SetLockKeys(uint param_1,undefined4 param_2)

{
  int *piVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  if ((DAT_10c78944 != (void *)0x0) &&
     (piVar1 = (int *)FUN_1053c0f0(DAT_10c78944,param_1), piVar1 != (int *)0x0)) {
    (**(code **)(*piVar1 + 0x10))();
    uStack_4 = 0;
    uStack_8 = 0;
    piVar2 = (int *)FUN_1055b120();
    puVar3 = &uStack_8;
    (**(code **)(*piVar2 + 0x68))(param_2);
    FUN_1060e7e0(piVar1 + 0x56,(int)puVar3,(uint)&uStack_4);
                    /* WARNING: Could not recover jumptable at 0x1053dff4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x14))();
    return;
  }
  return;
}

