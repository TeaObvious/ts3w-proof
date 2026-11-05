/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_LotWasRefreshedImpl. Export ordinal(s):
   1464. Entry VA: 0x10582160. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CD4. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined1 __cdecl World_LotWasRefreshedImpl(int param_1,int param_2)

{
  int *piVar1;
  
                    /* 0x582160  1464  World_LotWasRefreshedImpl */
  if (DAT_10c700c4 == (void *)0x0) {
    return 0;
  }
  piVar1 = *(int **)((int)DAT_10c700c4 + 0xb0);
  if ((((piVar1 == (int *)0x0) || (piVar1[0x12] != param_1)) || (piVar1[0x13] != param_2)) &&
     (piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0), piVar1 == (int *)0x0)) {
    return 0;
  }
  return (char)piVar1[0x27];
}

