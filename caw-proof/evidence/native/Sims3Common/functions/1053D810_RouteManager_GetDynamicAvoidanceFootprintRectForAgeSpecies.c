/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   RouteManager_GetDynamicAvoidanceFootprintRectForAgeSpecies. Export ordinal(s): 569. Entry VA:
   0x1053d810. Original managed P/Invoke MethodDef(s): ScriptCore:0x060000EF. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * __cdecl
RouteManager_GetDynamicAvoidanceFootprintRectForAgeSpecies(undefined4 *param_1,uint param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 local_10 [4];
  
                    /* 0x53d810  569  RouteManager_GetDynamicAvoidanceFootprintRectForAgeSpecies */
  puVar2 = FUN_1053c2e0(local_10,param_2);
  *param_1 = *puVar2;
  param_1[1] = puVar2[1];
  uVar1 = puVar2[3];
  param_1[2] = puVar2[2];
  param_1[3] = uVar1;
  return param_1;
}

