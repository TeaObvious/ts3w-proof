/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_KeySearchFreeSearchImpl;
   CASUtils_PartSearchFreeSearchImpl. Export ordinal(s): 119; 130. Entry VA: 0x103a5cf0. Original
   managed P/Invoke MethodDef(s): ScriptCore:0x060003D7; ScriptCore:0x060003E3. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl CASUtils_KeySearchFreeSearchImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      piVar2 = (int *)FUN_1055b120();
      (**(code **)(*piVar2 + 0xd8))(param_1);
      if (*piVar1 != 0) {
        FUN_10918e90(*piVar1);
      }
      FUN_10918e90((int)piVar1);
    }
  }
  return;
}

