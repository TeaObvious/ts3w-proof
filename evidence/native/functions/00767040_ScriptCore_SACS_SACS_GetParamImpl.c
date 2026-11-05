/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* PC 1.67 registered ScriptCore.SACS::SACS_GetParamImpl. If driver exists, calls 0x00801BA0 with
   paramHash and literal zero; otherwise returns zero. Raw proof:
   guides/sacs/native/disassembly/get-param-entry-767040.objdump.txt;
   reference . */



/* PC 1.67 registered ScriptCore.SACS::SACS_GetParamImpl. If driver exists, calls 0x00801BA0 with
   paramHash and literal zero; otherwise returns zero. Raw proof: the canonical ASM/C pair for this
   function; reference SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

int ScriptCore_SACS__SACS_GetParamImpl(int param_1)

{
  int *piVar1;
  void *this;
  int iVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this == (void *)0x0) {
    return 0;
  }
  iVar2 = SacsDriver_ReadHashOrDefinitionDefault(this,param_1,0);
  return iVar2;
}

