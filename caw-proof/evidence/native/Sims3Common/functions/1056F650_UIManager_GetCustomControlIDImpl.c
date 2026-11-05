/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetCustomControlIDImpl. Export
   ordinal(s): 1096. Entry VA: 0x1056f650. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600069B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl UIManager_GetCustomControlIDImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  undefined4 uVar4;
  
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      iVar2 = (**(code **)(*piVar1 + 0xc))(0xeeee8218);
      if (iVar2 != 0) {
        iVar2 = (**(code **)(*piVar1 + 0xc))(0x56bb768);
        piVar3 = (int *)(**(code **)(*piVar1 + 0xc))(0xeec58382);
        piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0x3f29fc8);
        if ((iVar2 != 0) && (piVar3 != (int *)0x0)) {
                    /* WARNING: Could not recover jumptable at 0x1056c9e1. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          uVar4 = (**(code **)(*piVar3 + 0x14))();
          return uVar4;
        }
        if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x1056c9f0. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          uVar4 = (**(code **)(*piVar1 + 0x14))();
          return uVar4;
        }
      }
    }
  }
  return 0;
}

