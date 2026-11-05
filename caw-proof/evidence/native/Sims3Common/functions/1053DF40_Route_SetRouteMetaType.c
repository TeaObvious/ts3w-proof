/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_SetRouteMetaType. Export ordinal(s): 697.
   Entry VA: 0x1053df40. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600019C. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Route_SetRouteMetaType(uint param_1,int param_2)

{
  int *piVar1;
  
                    /* 0x53df40  697  Route_SetRouteMetaType */
  if ((DAT_10c78944 != (void *)0x0) &&
     (piVar1 = (int *)FUN_1053c0f0(DAT_10c78944,param_1), piVar1 != (int *)0x0)) {
    (**(code **)(*piVar1 + 0x10))();
    piVar1[0x7c] = param_2;
                    /* WARNING: Could not recover jumptable at 0x1053df76. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x14))();
    return;
  }
  return;
}

