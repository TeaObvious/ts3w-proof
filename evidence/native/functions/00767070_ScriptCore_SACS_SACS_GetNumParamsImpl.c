/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 registered ScriptCore.SACS::SACS_GetNumParamsImpl. If driver exists, tail-calls
   0x00800080; otherwise returns zero. Raw proof:
   guides/sacs/native/disassembly/get-num-params-entry-767070.objdump.txt;
   reference . */

int ScriptCore_SACS__SACS_GetNumParamsImpl(undefined4 param_1)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
  if (iVar2 != 0) {
    return *(int *)(iVar2 + 0x24) - *(int *)(iVar2 + 0x20) >> 4;
  }
  return 0;
}

