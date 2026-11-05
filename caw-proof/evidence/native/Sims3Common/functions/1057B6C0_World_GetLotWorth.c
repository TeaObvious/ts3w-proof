/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetLotWorth. Export ordinal(s): 1352. Entry
   VA: 0x1057b6c0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C99. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl World_GetLotWorth(int param_1,int param_2)

{
  int *piVar1;
  undefined4 uVar2;
  uint extraout_EDX;
  
                    /* 0x57b6c0  1352  World_GetLotWorth */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    if (piVar1 != (int *)0x0) {
      uVar2 = FUN_100902c0(piVar1,extraout_EDX);
      return uVar2;
    }
  }
  return 0;
}

