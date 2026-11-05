/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_ShutdownLayoutImpl. Export ordinal(s):
   1163. Entry VA: 0x1056bd30. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000690. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl UIManager_ShutdownLayoutImpl(uint param_1)

{
  int *piVar1;
  
                    /* 0x56bd30  1163  UIManager_ShutdownLayoutImpl */
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x1056bd61. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar1 + 8))();
      return;
    }
  }
  return;
}

