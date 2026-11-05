/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_GetTaskImpl. Export ordinal(s): 757.
   Entry VA: 0x1055e600. Original managed P/Invoke MethodDef(s): ScriptCore:0x060010E3. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Simulator_GetTaskImpl(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  
                    /* 0x55e600  757  Simulator_GetTaskImpl */
  piVar1 = (int *)FUN_1055b120();
  piVar1 = (int *)(**(code **)(*piVar1 + 0x17c))();
  (**(code **)(*piVar1 + 0x18))(param_1,param_2,param_3);
  return;
}

