/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimBuilderSetAgeGenderSpeciesImpl.
   Export ordinal(s): 183. Entry VA: 0x1039f3e0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060003EA. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl CASUtils_SimBuilderSetAgeGenderSpeciesImpl(uint param_1)

{
  int *piVar1;
  void *this;
  
                    /* 0x39f3e0  183  CASUtils_SimBuilderSetAgeGenderSpeciesImpl */
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (this != (void *)0x0) {
      FUN_103db550(this,param_1);
    }
  }
  return;
}

