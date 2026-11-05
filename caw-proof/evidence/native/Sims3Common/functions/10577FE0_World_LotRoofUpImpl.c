/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_LotRoofUpImpl. Export ordinal(s): 1450.
   Entry VA: 0x10577fe0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000BBB. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl World_LotRoofUpImpl(int param_1,int param_2)

{
  int *piVar1;
  
                    /* 0x577fe0  1450  World_LotRoofUpImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    if (piVar1 != (int *)0x0) {
      FUN_10086eb0(piVar1);
      return;
    }
  }
  return;
}

