/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. cdecl two output pointers, RET. Requires both nonnull else
   reports original error. Copies original camera position11D953C/540/544 and direction1163EB0/B4/B8
   without normalization or coordinate swizzle. */

void __cdecl SpeedTree_GetCamera(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  
  uVar5 = DAT_011d9544;
  uVar4 = DAT_011d9540;
  uVar3 = DAT_01163eb8;
  uVar2 = DAT_01163eb4;
  uVar1 = DAT_01163eb0;
  if ((param_1 == (undefined4 *)0x0) || (param_2 == (undefined4 *)0x0)) {
    FUN_007ba7b0("GetCamera() requires non-NULL position and direction values");
    return;
  }
  *param_1 = DAT_011d953c;
  param_1[1] = uVar4;
  param_1[2] = uVar5;
  *param_2 = uVar1;
  param_2[1] = uVar2;
  param_2[2] = uVar3;
  return;
}

