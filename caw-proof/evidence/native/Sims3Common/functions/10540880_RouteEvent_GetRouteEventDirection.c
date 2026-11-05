/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteEvent_GetRouteEventDirection. Export
   ordinal(s): 544. Entry VA: 0x10540880. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000142. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
RouteEvent_GetRouteEventDirection(uint param_1,int *param_2,int *param_3,int *param_4)

{
  int iVar1;
  int *piVar2;
  
  if (DAT_10c78944 != (void *)0x0) {
    piVar2 = (int *)FUN_1053c150(DAT_10c78944,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)*piVar2)();
      *param_2 = piVar2[0x10];
      *param_3 = piVar2[0x11];
      iVar1 = *piVar2;
      *param_4 = piVar2[0x12];
      (**(code **)(iVar1 + 4))();
      return 1;
    }
  }
  return 0;
}

