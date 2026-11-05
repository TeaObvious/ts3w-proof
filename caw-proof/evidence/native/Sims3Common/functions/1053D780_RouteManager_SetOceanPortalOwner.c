/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_SetOceanPortalOwner. Export
   ordinal(s): 603. Entry VA: 0x1053d780. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000DA. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl RouteManager_SetOceanPortalOwner(undefined4 param_1,undefined4 param_2)

{
  void *this;
  undefined4 uVar1;
  
                    /* 0x53d780  603  RouteManager_SetOceanPortalOwner */
  this = (void *)thunk_FUN_10627370();
  uVar1 = 0;
  if (this != (void *)0x0) {
    uVar1 = FUN_1061a920(this,param_1,param_2);
  }
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}

