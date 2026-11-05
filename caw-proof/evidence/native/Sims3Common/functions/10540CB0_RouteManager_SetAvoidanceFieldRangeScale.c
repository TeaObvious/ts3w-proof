/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_SetAvoidanceFieldRangeScale. Export
   ordinal(s): 592. Entry VA: 0x10540cb0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000E4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
RouteManager_SetAvoidanceFieldRangeScale(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  void *this;
  
                    /* 0x540cb0  592  RouteManager_SetAvoidanceFieldRangeScale */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    this = (void *)FUN_1072abb0(iVar1);
    if (this != (void *)0x0) {
      iVar1 = FUN_10726da0(this,DAT_10c8d978);
      if ((iVar1 != 0) && (*(int *)(iVar1 + 0x10c) != 0)) {
        *(undefined4 *)(*(int *)(iVar1 + 0x10c) + 0xac) = param_3;
      }
    }
  }
  return;
}

