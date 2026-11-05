/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_SetParamStringImpl. Export ordinal(s): 733.
   Entry VA: 0x10558bf0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EAB. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl SACS_SetParamStringImpl(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  void *this;
  wint_t *pwVar2;
  int unaff_retaddr;
  
                    /* 0x558bf0  733  SACS_SetParamStringImpl */
  piVar1 = (int *)FUN_1055b120();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    pwVar2 = (wint_t *)(**(code **)(*piVar1 + 0x58))(param_2);
    FUN_105f37a0(this,unaff_retaddr,pwVar2);
  }
  return;
}

