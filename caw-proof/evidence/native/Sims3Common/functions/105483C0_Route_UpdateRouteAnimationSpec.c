/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_UpdateRouteAnimationSpec. Export
   ordinal(s): 706. Entry VA: 0x105483c0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600017E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
Route_UpdateRouteAnimationSpec
          (uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6,undefined4 param_7)

{
  int *this;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x5483c0  706  Route_UpdateRouteAnimationSpec */
  local_c = param_5;
  local_10 = param_4;
  local_8 = param_6;
  local_4 = param_7;
  if ((DAT_10c78944 != (void *)0x0) &&
     (this = (int *)FUN_1053c0f0(DAT_10c78944,param_1), this != (int *)0x0)) {
    (**(code **)(*this + 0x10))();
    FUN_10543e20(this,&local_10,0,0,0);
                    /* WARNING: Could not recover jumptable at 0x10548423. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*this + 0x14))();
    return;
  }
  return;
}

