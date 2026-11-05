/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_MarkRoomForUpdate. Export
   ordinal(s): 580. Entry VA: 0x1053d7e0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000DF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl RouteManager_MarkRoomForUpdate(uint param_1,uint param_2,int param_3)

{
  int iVar1;
  void *this;
  
                    /* 0x53d7e0  580  RouteManager_MarkRoomForUpdate */
  iVar1 = thunk_FUN_10627370();
  if (iVar1 != 0) {
    this = (void *)FUN_1061ae10(iVar1);
    if (this != (void *)0x0) {
      FUN_1042d660(this,param_1,param_2,param_3);
    }
  }
  return;
}

