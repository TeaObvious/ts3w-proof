/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetInterestPointAtIndex. Export ordinal(s):
   639. Entry VA: 0x10548590. Original managed P/Invoke MethodDef(s): ScriptCore:0x060001C1. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Route_GetInterestPointAtIndex(undefined4 *param_1,uint param_2,uint param_3)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 local_40 [16];
  
                    /* 0x548590  639  Route_GetInterestPointAtIndex */
  puVar1 = (undefined4 *)FUN_105467d0(local_40,param_2,param_3);
  for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
    *param_1 = *puVar1;
    puVar1 = puVar1 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

