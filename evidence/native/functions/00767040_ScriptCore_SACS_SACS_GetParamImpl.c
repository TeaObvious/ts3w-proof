/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 registered ScriptCore.SACS::SACS_GetParamImpl. If driver exists, calls 0x00801BA0 with
   paramHash and literal zero; otherwise returns zero. Raw proof:
   guides/sacs/native/disassembly/get-param-entry-767040.objdump.txt;
   reference . */

int ScriptCore_SACS__SACS_GetParamImpl(int param_1)

{
  int *piVar1;
  void *this;
  int iVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    iVar2 = FUN_00801ba0(this,param_1,0);
    return iVar2;
  }
  return 0;
}

