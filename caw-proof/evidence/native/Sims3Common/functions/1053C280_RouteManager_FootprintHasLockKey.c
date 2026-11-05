/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_FootprintHasLockKey. Export
   ordinal(s): 565. Entry VA: 0x1053c280. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000C3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl
RouteManager_FootprintHasLockKey
          (undefined4 param_1,undefined4 param_2,int param_3,uint param_4,uint param_5)

{
  bool bVar1;
  void *pvVar2;
  
                    /* 0x53c280  565  RouteManager_FootprintHasLockKey */
  pvVar2 = (void *)thunk_FUN_10627370();
  if (pvVar2 != (void *)0x0) {
    pvVar2 = (void *)FUN_1061c780(pvVar2,param_1,param_2,(int *)0x0);
    if (pvVar2 != (void *)0x0) {
      bVar1 = FUN_10738730(pvVar2,param_4,param_5,param_3);
      return bVar1;
    }
  }
  return false;
}

