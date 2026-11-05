/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteEvent_GetData2. Export ordinal(s): 541.
   Entry VA: 0x1053eaa0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000147. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl RouteEvent_GetData2(uint param_1)

{
  int iVar1;
  int *piVar2;
  
                    /* 0x53eaa0  541  RouteEvent_GetData2 */
  if (DAT_10c78944 != (void *)0x0) {
    piVar2 = (int *)FUN_1053c150(DAT_10c78944,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)*piVar2)();
      iVar1 = piVar2[0x19];
      (**(code **)(*piVar2 + 4))();
      return iVar1;
    }
  }
  return 0;
}

