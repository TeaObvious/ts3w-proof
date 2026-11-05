/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX cluster; registry, instance count, low-byte seasonal gate,
   RET0C. Registers TreeLocations as3float4 perinstance from11D3130; separately
   TreeLightDirections/Colors3rows, optionalTerrainNormals1row andTreeRandomFactors1row. Unsigned
   handle bounds. This is shader constant-array publication, not GPU vertex/index regeneration. */

void __thiscall Flora_BindPerInstanceShaderArrays(void *this,int param_1,int param_2,char param_3)

{
  int *piVar1;
  
  if (*(uint *)(PTR_DAT_0115c488 + 0x6c) < *(uint *)(param_1 + 8)) {
    piVar1 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x6c) * 0x10 + *(int *)(param_1 + 4));
    *piVar1 = *piVar1 + 1;
    piVar1[2] = param_2 * 3;
    *(undefined2 *)((int)piVar1 + 6) = 2;
    *(undefined2 *)(piVar1 + 1) = *(undefined2 *)(param_1 + 0x12);
    piVar1[3] = (int)&DAT_011d3130;
  }
  if (*(uint *)(PTR_DAT_0115c488 + 0xcc) < *(uint *)(param_1 + 8)) {
    piVar1 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0xcc) * 0x10 + *(int *)(param_1 + 4));
    *piVar1 = *piVar1 + 1;
    piVar1[2] = param_2 * 3;
    *(undefined2 *)((int)piVar1 + 6) = 2;
    *(undefined2 *)(piVar1 + 1) = *(undefined2 *)(param_1 + 0x12);
    piVar1[3] = (int)&DAT_011d35b0;
  }
  if (*(uint *)(PTR_DAT_0115c488 + 200) < *(uint *)(param_1 + 8)) {
    piVar1 = (int *)(*(uint *)(PTR_DAT_0115c488 + 200) * 0x10 + *(int *)(param_1 + 4));
    *piVar1 = *piVar1 + 1;
    piVar1[2] = param_2 * 3;
    *(undefined2 *)((int)piVar1 + 6) = 2;
    *(undefined2 *)(piVar1 + 1) = *(undefined2 *)(param_1 + 0x12);
    piVar1[3] = (int)&DAT_011d3400;
  }
  if ((*(char *)((int)this + 0x537) != '\0') &&
     (*(uint *)(PTR_DAT_0115c488 + 0x70) < *(uint *)(param_1 + 8))) {
    piVar1 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x70) * 0x10 + *(int *)(param_1 + 4));
    *piVar1 = *piVar1 + 1;
    piVar1[2] = param_2;
    *(undefined2 *)((int)piVar1 + 6) = 2;
    *(undefined2 *)(piVar1 + 1) = *(undefined2 *)(param_1 + 0x12);
    piVar1[3] = (int)&DAT_011d32e0;
  }
  if ((param_3 != '\0') && (*(uint *)(PTR_DAT_0115c488 + 0xa0) < *(uint *)(param_1 + 8))) {
    piVar1 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0xa0) * 0x10 + *(int *)(param_1 + 4));
    *piVar1 = *piVar1 + 1;
    piVar1[2] = param_2;
    *(undefined2 *)((int)piVar1 + 6) = 2;
    *(undefined2 *)(piVar1 + 1) = *(undefined2 *)(param_1 + 0x12);
    piVar1[3] = (int)&DAT_011d3370;
  }
  return;
}

