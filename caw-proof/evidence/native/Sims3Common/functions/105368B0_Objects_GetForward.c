/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Objects_GetForward. Export ordinal(s): 478. Entry
   VA: 0x105368b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000FB8. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * __cdecl Objects_GetForward(undefined4 *param_1)

{
  int iVar1;
  void *pvVar2;
  uint local_50 [8];
  undefined4 local_30 [11];
  
                    /* 0x5368b0  478  Objects_GetForward */
  iVar1 = FUN_1072a1a0();
  pvVar2 = (void *)FUN_1072abb0(iVar1);
  if (pvVar2 != (void *)0x0) {
    pvVar2 = (void *)FUN_10726da0(pvVar2,DAT_10c8d998);
    if (pvVar2 != (void *)0x0) {
      FUN_1074a310(pvVar2,local_50);
      FUN_1055dc20(param_1,local_30);
      return param_1;
    }
  }
  FUN_1055da40(param_1,0,0,0x3f800000);
  return param_1;
}

