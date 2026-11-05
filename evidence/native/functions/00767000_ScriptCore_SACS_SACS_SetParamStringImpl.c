/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 registered ScriptCore.SACS::SACS_SetParamStringImpl. If driver exists, converts incoming
   managed string through host vtable +0x58, then forwards paramHash and converted value to
   0x00801B60. Missing driver is a no-op. Raw proof:
   guides/sacs/native/disassembly/set-param-string-entry-767000.objdump.txt;
   reference . */

void ScriptCore_SACS__SACS_SetParamStringImpl(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  void *this;
  wint_t *pwVar2;
  int unaff_retaddr;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    pwVar2 = (wint_t *)(**(code **)(*piVar1 + 0x58))(param_2);
    FUN_00801b60(this,unaff_retaddr,pwVar2);
  }
  return;
}

