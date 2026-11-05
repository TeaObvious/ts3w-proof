/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   RouteManager_SetAvoidanceFieldUseAdvancedAvoidance. Export ordinal(s): 594. Entry VA: 0x10540e00.
   Original managed P/Invoke MethodDef(s): ScriptCore:0x060000E9. This is an export/declaration
   annotation only; ABI, behavior and runtime execution require the original instructions and caller
   evidence. */

void __cdecl
RouteManager_SetAvoidanceFieldUseAdvancedAvoidance
          (undefined4 param_1,undefined4 param_2,undefined1 param_3)

{
  int iVar1;
  void *this;
  
                    /* 0x540e00  594  RouteManager_SetAvoidanceFieldUseAdvancedAvoidance */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    this = (void *)FUN_1072abb0(iVar1);
    if (this != (void *)0x0) {
      iVar1 = FUN_10726da0(this,DAT_10c8d978);
      if ((iVar1 != 0) && (*(int *)(iVar1 + 0x10c) != 0)) {
        *(undefined1 *)(*(int *)(iVar1 + 0x10c) + 0xb4) = param_3;
      }
    }
  }
  return;
}

