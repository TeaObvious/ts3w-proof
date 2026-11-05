/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. cdecl product
   pointer, x87 floating return. Null product gives0; no host011EE780 returns rawfloat+58. Product
   virtual20 chooses build vs buy branch. MULSS float rounding occurs after host+16C build scale
   or+170 buy scale, and after+174 electronics scale when object interface519E4F25 function+B0 bit4.
   Build interface04ED4893 returns scaled value unrounded. Other paths load float into x87, add
   float0.5 atF9B5B4, store double then call floor F7F7D0. The product+58 input is a raw float load,
   not integer conversion; original SSE/x87 sequence is authoritative. No household/depreciation
   arithmetic occurs here.
   
   Tool-proxy closure: C9B190 vtable20 is compiler-shared513D50 true; C9B0E0/C92FE0 reject04ED4893,
   so proxy price takes rounded build branch. Physical tool calls useD1A900 five-byte thunk
   thenFSTPbinary32. Retain MULSS stored float, x87 FADD0.5, FSTPdouble and floor;
   MathF.Floor(floatScaled+0.5f) prematurely rounds the sum. Local ECX/stack virtual-call overrides
   record exact cleanup; remaining decompiler register aliases must be judged against instructions.
   
   Physical custom storage: one actual product pointer at stack+4; x87 extended result is ST0 (80
   bits), not a hidden return-buffer pointer. Explicit storage avoids the default datatype model
   lowering float10 to an aggregate-return ABI. Actual callers push only product, call D1A900 and
   FSTP their float result; target plainRET never consumes a hidden buffer argument. */

float10 __cdecl CatalogProduct_ComputeDisplayPrice(undefined *product)

{
  float fVar1;
  bool bVar2;
  undefined *puVar3;
  float10 fVar4;
  double dVar5;
  float local_4;
  
  local_4 = 0.0;
  if ((product != (undefined *)0x0) && (local_4 = *(float *)(product + 0x58), DAT_011ee780 != 0)) {
    bVar2 = (**(code **)(*(int *)product + 0x20))(product);
    if (bVar2) {
                    /* Analyst: Build scale is scalar single precision; value is stored before
                       interface query. */
      fVar1 = *(float *)(DAT_011ee780 + 0x16c);
      puVar3 = (**(code **)(*(int *)product + 0xc))(product,0x4ed4893);
      fVar4 = (float10)(fVar1 * local_4);
                    /* Analyst: This interface bypasses integer display rounding. */
      if (puVar3 != (undefined *)0x0) {
        return fVar4;
      }
      dVar5 = floor((double)(fVar4 + (float10)0.5));
      return (float10)dVar5;
    }
    if (DAT_011ee780 != 0) {
      local_4 = *(float *)(DAT_011ee780 + 0x170) * local_4;
      puVar3 = (**(code **)(*(int *)product + 0xc))(product,0x519e4f25);
      if ((puVar3 != (undefined *)0x0) && ((puVar3[0xb0] & 4) != 0)) {
        local_4 = *(float *)(DAT_011ee780 + 0x174) * local_4;
      }
                    /* Analyst: x87 adds float0.5 to the rounded scalar float; imported floor takes
                       double. */
      dVar5 = floor((double)(local_4 + 0.5));
      return (float10)dVar5;
    }
  }
  return (float10)local_4;
}

