/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetInstanceIDImpl. Export ordinal(s):
   1102. Entry VA: 0x1056f600. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600069A. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl UIManager_GetInstanceIDImpl(uint param_1)

{
  int *piVar1;
  undefined4 uVar2;
  
                    /* 0x56f600  1102  UIManager_GetInstanceIDImpl */
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
      if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x1056f643. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        uVar2 = (**(code **)(*piVar1 + 0x18))();
        return uVar2;
      }
    }
  }
  return 0;
}

