/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_ResetAvoidanceFieldForSnorkeling.
   Export ordinal(s): 588. Entry VA: 0x1053e7f0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000E7. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void RouteManager_ResetAvoidanceFieldForSnorkeling(void)

{
  int iVar1;
  void *this;
  
                    /* 0x53e7f0  588  RouteManager_ResetAvoidanceFieldForSnorkeling */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    this = (void *)FUN_1072abb0(iVar1);
    if (this != (void *)0x0) {
      iVar1 = FUN_10726da0(this,DAT_10c8d978);
      if (iVar1 != 0) {
        FUN_10745000(iVar1);
        return;
      }
    }
  }
  return;
}

