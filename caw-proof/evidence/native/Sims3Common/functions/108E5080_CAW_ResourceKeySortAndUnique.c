/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Sorts resource keys through103B7C10/103B66D0 and removes
   duplicate complete keys. Filename map-list producer10528650 invokes this before opening maps.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

int __cdecl CAW_ResourceKeySortAndUnique(int *param_1)

{
  undefined4 *puVar1;
  int *piVar2;
  
  FUN_103b7c10((uint *)*param_1,(uint *)param_1[1]);
  piVar2 = FUN_108e5010((int *)*param_1,(int *)param_1[1]);
  puVar1 = (undefined4 *)param_1[1];
  FUN_108dfec0(puVar1,puVar1,piVar2);
  param_1[1] = param_1[1] + ((int)puVar1 - (int)piVar2 >> 4) * -0x10;
  return param_1[1] - *param_1 >> 4;
}

