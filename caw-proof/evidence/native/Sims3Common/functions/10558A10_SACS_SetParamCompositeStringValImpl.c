/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_SetParamCompositeStringValImpl. Export
   ordinal(s): 731. Entry VA: 0x10558a10. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000EAD. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void SACS_SetParamCompositeStringValImpl(void)

{
  wint_t _C;
  int *piVar1;
  wint_t *pwVar2;
  undefined4 unaff_retaddr;
  undefined4 in_stack_00000010;
  
                    /* 0x558a10  731  SACS_SetParamCompositeStringValImpl */
  piVar1 = (int *)FUN_1055b120();
  pwVar2 = (wint_t *)(**(code **)(*piVar1 + 0x58))(in_stack_00000010);
  if (pwVar2 != (wint_t *)0x0) {
    _C = *pwVar2;
    while (_C != 0) {
      towlower(_C);
      pwVar2 = pwVar2 + 1;
      _C = *pwVar2;
    }
  }
  SACS_SetParamCompositeImpl(unaff_retaddr);
  return;
}

