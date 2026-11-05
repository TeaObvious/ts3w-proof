/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_TextAutoSizeImpl. Export ordinal(s):
   1165. Entry VA: 0x1056fb00. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006E0. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl UIManager_TextAutoSizeImpl(uint param_1)

{
  int *piVar1;
  undefined4 unaff_retaddr;
  
                    /* 0x56fb00  1165  UIManager_TextAutoSizeImpl */
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xf15f4bd);
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 0x14))(unaff_retaddr);
      }
    }
  }
  return;
}

