/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Pass key0 means no hook and AL0. Otherwise invokes7a-library hook and returns
   AL1; draw callback is skipped for this pass regardless of hook return. */

undefined4 __fastcall ShaderPass_InvokeOptionalHook(int *param_1)

{
  undefined4 uVar1;
  
  if (*param_1 == 0) {
    return 0;
  }
  uVar1 = FUN_0079b120(*param_1);
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}

