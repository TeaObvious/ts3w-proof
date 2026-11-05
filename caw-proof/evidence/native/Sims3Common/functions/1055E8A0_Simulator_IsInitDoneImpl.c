/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_IsInitDoneImpl. Export ordinal(s): 760.
   Entry VA: 0x1055e8a0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060010EE. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Simulator_IsInitDoneImpl(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  
                    /* 0x55e8a0  760  Simulator_IsInitDoneImpl */
  piVar1 = (int *)FUN_1055b120();
  piVar1 = (int *)(**(code **)(*piVar1 + 0x17c))();
  (**(code **)(*piVar1 + 8))(param_1,param_2);
  return;
}

