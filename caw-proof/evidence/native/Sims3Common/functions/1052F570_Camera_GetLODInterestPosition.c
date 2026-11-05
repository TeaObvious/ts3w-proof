/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_GetLODInterestPosition. Export ordinal(s):
   282. Entry VA: 0x1052f570. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A23. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * __cdecl Camera_GetLODInterestPosition(undefined4 *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  
                    /* 0x52f570  282  Camera_GetLODInterestPosition */
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    iVar1 = FUN_10937a80(iVar1);
    if (iVar1 != 0) {
      iVar1 = FUN_1075c950(iVar1);
      if (iVar1 != 0) {
        puVar2 = (undefined4 *)FUN_10752740(*(int *)(iVar1 + 0xc));
        FUN_1055dc20(param_1,puVar2);
        return param_1;
      }
    }
  }
  FUN_1055da40(param_1,0,0,0);
  return param_1;
}

