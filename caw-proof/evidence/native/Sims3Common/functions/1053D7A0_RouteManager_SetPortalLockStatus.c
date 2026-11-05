/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_SetPortalLockStatus. Export
   ordinal(s): 606. Entry VA: 0x1053d7a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000DE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl RouteManager_SetPortalLockStatus(uint param_1,uint param_2,undefined1 param_3)

{
  int iVar1;
  void *this;
  
                    /* 0x53d7a0  606  RouteManager_SetPortalLockStatus */
  iVar1 = thunk_FUN_10627370();
  if (iVar1 != 0) {
    this = (void *)FUN_1061ae10(iVar1);
    if (this != (void *)0x0) {
      iVar1 = FUN_10427bc0(this,param_1,param_2);
      if (iVar1 != 0) {
        *(undefined1 *)(iVar1 + 0x8f) = param_3;
        return CONCAT31((int3)((uint)iVar1 >> 8),1);
      }
    }
  }
  return 0;
}

