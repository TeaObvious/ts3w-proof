/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TransformComponent_GetAbsolutePosition. Export
   ordinal(s): 2532. Entry VA: 0x10980a90. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000005. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl TransformComponent_GetAbsolutePosition(undefined4 *param_1,void *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 local_20 [7];
  
                    /* 0x980a90  2532  TransformComponent_GetAbsolutePosition */
  puVar3 = (undefined4 *)FUN_1074a2b0(param_2,local_20);
  uVar1 = puVar3[1];
  uVar2 = puVar3[2];
  *param_1 = *puVar3;
  param_1[1] = uVar1;
  param_1[2] = uVar2;
  return;
}

