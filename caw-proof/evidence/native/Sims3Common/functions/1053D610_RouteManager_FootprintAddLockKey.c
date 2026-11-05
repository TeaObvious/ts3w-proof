/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_FootprintAddLockKey. Export
   ordinal(s): 563. Entry VA: 0x1053d610. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000C1. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
RouteManager_FootprintAddLockKey
          (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,undefined4 param_5)

{
  void *pvVar1;
  
                    /* 0x53d610  563  RouteManager_FootprintAddLockKey */
  pvVar1 = (void *)thunk_FUN_10627370();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = (void *)FUN_1061c780(pvVar1,param_1,param_2,(int *)&DAT_00000001);
    if (pvVar1 != (void *)0x0) {
      FUN_10738f80(pvVar1,param_4,param_5,param_3);
    }
  }
  return;
}

