/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 registered ScriptCore.SACS::SACS_SetParamImpl. If driver lookup succeeds, forwards
   paramHash and valueHash to 0x00801B80; missing driver is a no-op. Raw proof:
   guides/sacs/native/disassembly/set-param-entry-766fd0.objdump.txt;
   reference . */

void ScriptCore_SACS__SACS_SetParamImpl(int param_1,undefined4 param_2)

{
  int *piVar1;
  void *this;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    FUN_00801b80(this,param_1,param_2);
  }
  return;
}

