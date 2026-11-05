/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. cdecl
   outKey,inputKey, no stack cleanup. Key is instanceLow,instanceHigh,type,group four32-bit words.
   If group high nibble nonzero copy unchanged. Otherwise toggle group08000000. Only listed
   non-OBJD/non-OBJK types with instanceHigh0 and instanceLow top5bits0 additionally toggle
   instanceLow08000000; OBJD319E4F1D and OBJK02DC343F preserve full64-bit instance. No resource
   presence test occurs in this leaf. */

void __cdecl ResourceKey_MakeAlternate(uint *param_1,uint *param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  
  if ((param_2[3] & 0xf0000000) != 0) {
    *param_1 = *param_2;
    param_1[1] = param_2[1];
    uVar1 = param_2[3];
    param_1[2] = param_2[2];
    param_1[3] = uVar1;
    return;
  }
  uVar1 = param_2[3];
  uVar2 = param_2[2];
  uVar4 = *param_2;
  uVar3 = param_2[1];
  if (((uVar3 == 0) && ((uVar4 & 0xf8000000) == 0)) &&
     (((uVar2 == 0x736884f1 ||
       (((uVar2 == 0x94c5d14a || (uVar2 == 0x1d10f34)) || (uVar2 == 0x1661233)))) ||
      (uVar2 == 0xae6c67)))) {
    uVar4 = uVar4 ^ 0x8000000;
  }
  *param_1 = uVar4;
  param_1[1] = uVar3;
  param_1[2] = uVar2;
  param_1[3] = uVar1 ^ 0x8000000;
  return;
}

