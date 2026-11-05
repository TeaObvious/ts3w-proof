/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TransformComponent_GetAbsoluteTransform. Export
   ordinal(s): 2533. Entry VA: 0x109804d0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000004. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl TransformComponent_GetAbsoluteTransform(undefined4 *param_1,void *param_2)

{
  undefined4 *puVar1;
  int iVar2;
  uint local_90 [16];
  undefined4 local_50 [19];
  
                    /* 0x9804d0  2533  TransformComponent_GetAbsoluteTransform */
  puVar1 = (undefined4 *)FUN_1074a310(param_2,local_90);
  puVar1 = (undefined4 *)FUN_10980020(local_50,puVar1);
  for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
    *param_1 = *puVar1;
    puVar1 = puVar1 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

