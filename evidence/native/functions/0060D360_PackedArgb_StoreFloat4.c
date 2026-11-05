/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst-assigned generic color-storage role from original PC1.67 instructions; also referenced by
   existing CAS hair-color paths, not compositor-exclusive. Physical thiscall ECX output-word
   pointer, one stack float4 pointer, RET4. Tests low flag mask1 at011CFCC0 and lazily writes four
   255 lanes at011CFCB0 from physical float00FA4134 (bits437F0000). MULPS scales the input float4;
   ADDSS uses physical float00FE87C4 (bits4B400000,12582912), then stored float bits are
   reinterpreted/shifted/combined into A/R/G/B word and written through ECX. The apparent C casts
   are not a CVTTSS2SI channel conversion. For finite[0,1] in ordinary nearest-even SSE mode this
   gives byte rounding with ties to even. The body does not set ambient SSE mode, clamp or validate
   channels. The two globals are virtual-only analysis snapshots in retained evidence, not authored
   PE constants or observed runtime values; no lock/parallel-init guarantee is inferred. */

void __thiscall PackedArgb_StoreFloat4(void *this,float *param_1)

{
  if ((_DAT_011cfcc0 & 1) == 0) {
    _DAT_011cfcc0 = _DAT_011cfcc0 | 1;
    _DAT_011cfcb0 = DAT_00fa4134;
    fRam011cfcb4 = DAT_00fa4134;
    fRam011cfcb8 = DAT_00fa4134;
    fRam011cfcbc = DAT_00fa4134;
  }
  *(uint *)this =
       (((int)(param_1[3] * fRam011cfcbc + DAT_00fe87c4) << 8 |
        (uint)(*param_1 * _DAT_011cfcb0 + DAT_00fe87c4)) << 8 |
       (int)(param_1[1] * fRam011cfcb4 + DAT_00fe87c4) - 0x400000U) << 8 |
       (int)(param_1[2] * fRam011cfcb8 + DAT_00fe87c4) + 0xb4c00000U;
  return;
}

