/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_LotShowRoofImpl. Export ordinal(s): 1461.
   Entry VA: 0x1057a980. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000BB9. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl World_LotShowRoofImpl(int param_1,int param_2,undefined1 param_3)

{
  int *piVar1;
  
                    /* 0x57a980  1461  World_LotShowRoofImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    if ((piVar1 != (int *)0x0) && ((void *)piVar1[0xab] != (void *)0x0)) {
      FUN_101636b0((void *)piVar1[0xab],param_3);
    }
  }
  return;
}

