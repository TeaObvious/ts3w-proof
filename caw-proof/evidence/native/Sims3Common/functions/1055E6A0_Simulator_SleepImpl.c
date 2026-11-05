/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_SleepImpl. Export ordinal(s): 766.
   Entry VA: 0x1055e6a0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060010E0. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Simulator_SleepImpl(uint param_1)

{
  int *piVar1;
  
                    /* 0x55e6a0  766  Simulator_SleepImpl */
  if (0xfffffc16 < param_1) {
    param_1 = 0xfffffc17;
  }
  piVar1 = (int *)FUN_1055b120();
  piVar1 = (int *)(**(code **)(*piVar1 + 0x17c))();
  (**(code **)(*piVar1 + 0x20))(param_1);
  return;
}

