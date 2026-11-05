/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_AddStairPortals. Export ordinal(s):
   557. Entry VA: 0x1053c1b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060000D9. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl RouteManager_AddStairPortals(int param_1,int param_2)

{
  void *this;
  int iVar1;
  
                    /* 0x53c1b0  557  RouteManager_AddStairPortals */
  iVar1 = 0;
  this = (void *)thunk_FUN_10627370();
  if (this != (void *)0x0) {
    iVar1 = FUN_10620a00(this,param_1,param_2);
  }
  return iVar1 != 0;
}

