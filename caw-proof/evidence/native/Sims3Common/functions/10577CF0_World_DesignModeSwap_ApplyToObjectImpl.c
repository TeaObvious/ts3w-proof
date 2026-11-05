/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_DesignModeSwap_ApplyToObjectImpl. Export
   ordinal(s): 1278. Entry VA: 0x10577cf0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CCF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_DesignModeSwap_ApplyToObjectImpl(uint param_1)

{
  int *piVar1;
  void *pvVar2;
  
                    /* 0x577cf0  1278  World_DesignModeSwap_ApplyToObjectImpl */
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x45000000) {
    pvVar2 = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (pvVar2 != (void *)0x0) {
      FUN_1001fac0(pvVar2);
      return;
    }
  }
  return;
}

