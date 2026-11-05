/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_FootprintClearLockKeys. Export
   ordinal(s): 564. Entry VA: 0x1053d690. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000C4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl RouteManager_FootprintClearLockKeys(undefined4 param_1,undefined4 param_2)

{
  void *this;
  int iVar1;
  
                    /* 0x53d690  564  RouteManager_FootprintClearLockKeys */
  this = (void *)thunk_FUN_10627370();
  if (this != (void *)0x0) {
    iVar1 = FUN_1061c780(this,param_1,param_2,(int *)0x0);
    if (iVar1 != 0) {
      FUN_107385d0(iVar1);
      return;
    }
  }
  return;
}

