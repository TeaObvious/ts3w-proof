/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_DeRegisterAllEventsImpl. Export
   ordinal(s): 1075. Entry VA: 0x1056f910. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006C1. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl UIManager_DeRegisterAllEventsImpl(uint param_1)

{
  int *piVar1;
  
                    /* 0x56f910  1075  UIManager_DeRegisterAllEventsImpl */
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
      if (piVar1 != (int *)0x0) {
        FUN_10533910(DAT_10c7b1fc,piVar1);
      }
    }
  }
  return;
}

