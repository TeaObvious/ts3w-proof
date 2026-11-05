/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_SetAvoidanceFieldForSnorkeling.
   Export ordinal(s): 591. Entry VA: 0x10540d70. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000E6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void RouteManager_SetAvoidanceFieldForSnorkeling(void)

{
  int iVar1;
  void *this;
  
                    /* 0x540d70  591  RouteManager_SetAvoidanceFieldForSnorkeling */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    this = (void *)FUN_1072abb0(iVar1);
    if (this != (void *)0x0) {
      iVar1 = FUN_10726da0(this,DAT_10c8d978);
      if (iVar1 != 0) {
        FUN_10744eb0(iVar1);
        return;
      }
    }
  }
  return;
}

