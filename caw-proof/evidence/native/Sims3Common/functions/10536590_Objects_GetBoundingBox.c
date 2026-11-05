/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Objects_GetBoundingBox. Export ordinal(s): 476.
   Entry VA: 0x10536590. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000FB3. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * __cdecl Objects_GetBoundingBox(undefined4 *param_1)

{
  int iVar1;
  void *this;
  undefined4 *puVar2;
  
                    /* 0x536590  476  Objects_GetBoundingBox */
  iVar1 = FUN_1072a1a0();
  this = (void *)FUN_1072abb0(iVar1);
  if (this != (void *)0x0) {
    iVar1 = FUN_10726da0(this,DAT_10c8d804);
    if (iVar1 != 0) {
      puVar2 = (undefined4 *)FUN_1073af00(iVar1);
      FUN_1055dc70(param_1,puVar2);
      return param_1;
    }
  }
  FUN_1055da40(param_1,0,0,0);
  FUN_1055da40(param_1 + 3,0,0,0);
  return param_1;
}

