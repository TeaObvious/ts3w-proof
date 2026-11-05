/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_KeySearchMoveNextImpl;
   CASUtils_PartSearchMoveNextImpl. Export ordinal(s): 121; 132. Entry VA: 0x103a3930. Original
   managed P/Invoke MethodDef(s): ScriptCore:0x060003D5; ScriptCore:0x060003E1. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl CASUtils_KeySearchMoveNextImpl(uint param_1)

{
  int *piVar1;
  
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      if (piVar1[5] != 0) {
        if (piVar1[4] != piVar1[1]) {
          piVar1[4] = piVar1[4] + 0x10;
        }
        return piVar1[4] != piVar1[1];
      }
      if (*piVar1 != piVar1[1]) {
        piVar1[5] = (int)(piVar1 + 4);
        piVar1[4] = *piVar1;
        return true;
      }
    }
  }
  return false;
}

