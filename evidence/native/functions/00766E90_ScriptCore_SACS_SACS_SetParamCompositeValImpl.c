/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161e30 (original PC 1.67 TS3W.exe).
   ScriptCore.SACS::SACS_SetParamCompositeValImpl [managed declarations=0; exact native prototype
   unresolved]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_SACS__SACS_SetParamCompositeValImpl(void)

{
  wint_t _C;
  int *piVar1;
  wint_t *pwVar2;
  undefined4 unaff_retaddr;
  undefined4 in_stack_00000010;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pwVar2 = (wint_t *)(**(code **)(*piVar1 + 0x58))(in_stack_00000010);
  if (pwVar2 != (wint_t *)0x0) {
    _C = *pwVar2;
    while (_C != 0) {
      towlower(_C);
      pwVar2 = pwVar2 + 1;
      _C = *pwVar2;
    }
  }
  ScriptCore.SACS::SACS_SetParamCompositeImpl(unaff_retaddr);
  return;
}

