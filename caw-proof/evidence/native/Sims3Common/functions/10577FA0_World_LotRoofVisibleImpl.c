/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_LotRoofVisibleImpl. Export ordinal(s):
   1451. Entry VA: 0x10577fa0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000BBA. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined1 __cdecl World_LotRoofVisibleImpl(int param_1,int param_2)

{
  undefined1 uVar1;
  int *piVar2;
  
                    /* 0x577fa0  1451  World_LotRoofVisibleImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar2 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    if ((piVar2 != (int *)0x0) && (piVar2[0xab] != 0)) {
      uVar1 = FUN_10163010(piVar2[0xab]);
      return uVar1;
    }
  }
  return 0;
}

