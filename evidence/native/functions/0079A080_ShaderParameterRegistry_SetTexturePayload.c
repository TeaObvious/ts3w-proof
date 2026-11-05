/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* ECX registry, UInt32handle/32-bitpayload, RET8. If handle<count, revision++, row+8=1,
   UInt16row+6=5, UInt16row+4=registry+12hex, row+C=payload. Does not set sampler filter/wrap/sRGB.
    */

void __thiscall ShaderParameterRegistry_SetTexturePayload(void *this,uint param_1,int param_2)

{
  int *piVar1;
  
  if (param_1 < *(uint *)((int)this + 8)) {
    piVar1 = (int *)(param_1 * 0x10 + *(int *)((int)this + 4));
    *piVar1 = *piVar1 + 1;
    piVar1[2] = 1;
    *(undefined2 *)((int)piVar1 + 6) = 5;
    *(undefined2 *)(piVar1 + 1) = *(undefined2 *)((int)this + 0x12);
    piVar1[3] = param_2;
  }
  return;
}

