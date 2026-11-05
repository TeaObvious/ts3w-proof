/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_AddPlatformPortals;
   RouteManager_AddPoolPortals. Export ordinal(s): 552; 553. Entry VA: 0x1053d750. Original managed
   P/Invoke MethodDef(s): ScriptCore:0x060000D7; ScriptCore:0x060000D8. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl RouteManager_AddPlatformPortals(int param_1,int param_2)

{
  void *this;
  int iVar1;
  
                    /* 0x53d750  552  RouteManager_AddPlatformPortals
                       0x53d750  553  RouteManager_AddPoolPortals */
  iVar1 = 0;
  this = (void *)thunk_FUN_10627370();
  if (this != (void *)0x0) {
    iVar1 = FUN_106209e0(this,param_1,param_2);
  }
  return iVar1 != 0;
}

