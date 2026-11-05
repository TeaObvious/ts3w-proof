/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_CreateObjectImpl. Export ordinal(s):
   746. Entry VA: 0x1055ec80. Original managed P/Invoke MethodDef(s): ScriptCore:0x060010DD. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
Simulator_CreateObjectImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  int *piVar1;
  
                    /* 0x55ec80  746  Simulator_CreateObjectImpl */
  piVar1 = (int *)FUN_1055b120();
  piVar1 = (int *)(**(code **)(*piVar1 + 0x17c))();
  (**(code **)(*piVar1 + 4))(param_1,param_2,param_3,param_4,param_5);
  return;
}

