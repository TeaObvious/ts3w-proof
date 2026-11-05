/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_GetParamImpl. Export ordinal(s): 719. Entry
   VA: 0x10558e30. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EAE. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl SACS_GetParamImpl(int param_1)

{
  int *piVar1;
  void *this;
  int iVar2;
  
                    /* 0x558e30  719  SACS_GetParamImpl */
  piVar1 = (int *)FUN_1055b120();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    iVar2 = FUN_105f37e0(this,param_1,0);
    return iVar2;
  }
  return 0;
}

