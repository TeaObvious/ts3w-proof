/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DataFactory_GetDataClassNameImpl. Export
   ordinal(s): 322. Entry VA: 0x10531ca0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000B7A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl DataFactory_GetDataClassNameImpl(undefined4 param_1)

{
  int *piVar1;
  
                    /* 0x531ca0  322  DataFactory_GetDataClassNameImpl */
  piVar1 = (int *)FUN_1055b120();
  piVar1 = (int *)(**(code **)(*piVar1 + 0x17c))();
  (**(code **)(*piVar1 + 0x44))(param_1);
  return;
}

