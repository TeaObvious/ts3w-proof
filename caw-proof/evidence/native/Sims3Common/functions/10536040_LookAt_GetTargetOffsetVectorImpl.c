/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LookAt_GetTargetOffsetVectorImpl. Export
   ordinal(s): 450. Entry VA: 0x10536040. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060002AF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * __cdecl LookAt_GetTargetOffsetVectorImpl(undefined4 *param_1,uint param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 local_c [3];
  
                    /* 0x536040  450  LookAt_GetTargetOffsetVectorImpl */
  puVar2 = FUN_105354d0(local_c,param_2);
  *param_1 = *puVar2;
  uVar1 = puVar2[2];
  param_1[1] = puVar2[1];
  param_1[2] = uVar1;
  return param_1;
}

