/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_SetParamImpl. Export ordinal(s): 732. Entry
   VA: 0x10558b50. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EAA. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl SACS_SetParamImpl(int param_1,undefined4 param_2)

{
  int *piVar1;
  void *this;
  
                    /* 0x558b50  732  SACS_SetParamImpl */
  piVar1 = (int *)FUN_1055b120();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    FUN_105f37c0(this,param_1,param_2);
  }
  return;
}

