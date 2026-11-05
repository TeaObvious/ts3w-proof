/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_FacialBlendSupportsAgeGenderSpeciesImpl.
   Export ordinal(s): 94. Entry VA: 0x103a0020. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000440. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl CASUtils_FacialBlendSupportsAgeGenderSpeciesImpl(uint param_1)

{
  uint uVar1;
  int *piVar2;
  void *this;
  
                    /* 0x3a0020  94  CASUtils_FacialBlendSupportsAgeGenderSpeciesImpl */
  uVar1 = param_1 & 0xff000000;
  if (uVar1 == 0x35000000) {
    piVar2 = (int *)FUN_1055b120();
    this = (void *)(**(code **)(*piVar2 + 0xcc))(param_1);
    uVar1 = 0;
    if (this != (void *)0x0) {
      uVar1 = FUN_103bfec0(this,param_1);
      return uVar1;
    }
  }
  return uVar1;
}

