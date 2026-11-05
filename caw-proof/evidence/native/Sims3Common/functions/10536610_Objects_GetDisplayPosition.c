/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Objects_GetDisplayPosition. Export ordinal(s):
   477. Entry VA: 0x10536610. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000FB4. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * __cdecl Objects_GetDisplayPosition(undefined4 *param_1)

{
  int iVar1;
  void *pvVar2;
  undefined4 *puVar3;
  float local_20 [7];
  
                    /* 0x536610  477  Objects_GetDisplayPosition */
  iVar1 = FUN_1072a1a0();
  pvVar2 = (void *)FUN_1072abb0(iVar1);
  if (pvVar2 != (void *)0x0) {
    pvVar2 = (void *)FUN_10726da0(pvVar2,DAT_10c8d998);
    if (pvVar2 != (void *)0x0) {
      puVar3 = (undefined4 *)FUN_1074a8f0(pvVar2,local_20);
      FUN_1055dc20(param_1,puVar3);
      return param_1;
    }
  }
  FUN_1055da40(param_1,0,0,0);
  return param_1;
}

