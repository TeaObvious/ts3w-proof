/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_SetFollower. Export ordinal(s): 689. Entry
   VA: 0x1053ddc0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600016A. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Route_SetFollower(uint param_1,undefined4 param_2,undefined4 param_3)

{
  int *this;
  
                    /* 0x53ddc0  689  Route_SetFollower */
  if ((DAT_10c78944 != (void *)0x0) &&
     (this = (int *)FUN_1053c0f0(DAT_10c78944,param_1), this != (int *)0x0)) {
    (**(code **)(*this + 0x10))();
    FUN_1053bfe0(this,param_2,param_3);
                    /* WARNING: Could not recover jumptable at 0x1053ddfd. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*this + 0x14))();
    return;
  }
  return;
}

