/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_TextSearchFreeImpl. Export ordinal(s):
   252. Entry VA: 0x103a88b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600047A. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl CASUtils_TextSearchFreeImpl(uint param_1)

{
  int *piVar1;
  
                    /* 0x3a88b0  252  CASUtils_TextSearchFreeImpl */
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      FUN_103a8710(piVar1);
      FUN_10918e90((int)piVar1);
    }
  }
  return;
}

