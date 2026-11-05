/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; analyst display name FootprintQueryCell_IntersectsExpandedSegment.
   Original Ghidra database symbol: FUN_0066aa30; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [0066aa30,0066abad); 0 envelope gap bytes are not owned instructions.
*/

/* This tests segment versus an axis-aligned CELL square expanded on both axes by the supplied extent. It does not inspect footprint vertices. For finite ordered values, three separating-axis comparisons are inclusive: 66AB47/JBE, 66AB6D/JBE and 66AB9F/JA. The implementation mixes SSE Float32 and x87 arithmetic; the generated algebra does not establish equivalent rounding, NaN handling or floating-point mode in a replacement. */

/* WARNING: Removing unreachable block (ram,0x0066aac8) */
/* WARNING: Removing unreachable block (ram,0x0066ab08) */

uint __thiscall
FootprintQueryCell_IntersectsExpandedSegment(void *this,float param_1,float param_2,float param_3,float param_4,float param_5)

{
  float fVar1;
  float fVar2;
  uint uVar3;
  uint uVar4;
  uint3 uVar5;
  uint uVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  
  fVar1 = *(float *)((int)this + 0x14);
  uVar6 = *(uint *)((int)this + 0x1c) & 0xff;
  fVar7 = *(float *)(&DAT_00fef440 + uVar6 * 4) * fVar1 * 0.5;
  fVar8 = fVar7 + param_5;
  fVar9 = (param_3 - param_1) * 0.5;
  fVar11 = (param_4 - param_2) * 0.5;
  uVar3 = *(uint *)((int)this + 0x18) >> 0x10;
  uVar4 = uVar3 & 0xfff;
  fVar2 = (param_1 + param_3) * 0.5 -
          (((float)(*(uint *)((int)this + 0x18) & 0xfff) + *(float *)(&DAT_00fef198 + uVar6 * 8)) *
           fVar1 + *(float *)(*(int *)((int)this + 4) + 4) + fVar7);
  fVar10 = -0.0 - fVar9;
  fVar1 = (param_2 + param_4) * 0.5 -
          (((float)uVar4 + *(float *)(&DAT_00fef19c + uVar6 * 8)) * fVar1 +
           *(float *)(*(int *)((int)this + 4) + 8) + fVar7);
  /* 0066AB47/JBE: equality admits the cell; mixed x87/SSE precision remains material. */
  if (ABS(fVar2) <= ABS(fVar9) + fVar8) {
    fVar7 = ABS(fVar11);
    uVar5 = (uint3)(uVar4 >> 8);
    if (fVar7 + fVar8 < ABS(fVar1)) {
      return (uint)uVar5 << 8;
    }
    if (ABS(fVar10 * fVar1 + fVar2 * fVar11) <= fVar8 * (ABS(fVar10) + fVar7)) {
      return CONCAT31(uVar5,1);
    }
  }
  return uVar3 & 0xf00;
}
