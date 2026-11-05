/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Wrapped bilinear sample of the CPU copy of a weather texture.
   Dimensions/layout parameters are a copied compressed-grid value; Ghidra does not fully recover
   this by-value ABI. u/v are reduced by floor, scaled by texture size and shifted by half a texel.
   Truncated first texel and wrapped successor are read through the 4x4 compressed grid. Final
   interpolation uses x87 arithmetic; pseudocode casts/ROUND do not establish rounding mode. */

float10 Seasons_SampleWrappedCpuGrid
                  (float param_1,float param_2,uint param_3,undefined4 param_4,undefined4 param_5,
                  int param_6,undefined4 param_7,int param_8)

{
  byte bVar1;
  byte bVar2;
  ushort uVar3;
  float fVar4;
  float fVar5;
  int iVar6;
  byte *pbVar7;
  byte *pbVar8;
  uint uVar9;
  uint uVar10;
  byte *pbVar11;
  uint uVar12;
  float fVar13;
  double dVar14;
  double dVar15;
  void *in_stack_00000030;
  void *in_stack_00000040;
  int local_10;
  
  fVar4 = (float)(int)param_3;
  if ((int)param_3 < 0) {
    fVar4 = fVar4 + 4.2949673e+09;
  }
  dVar14 = floor((double)param_1);
  fVar5 = (param_1 - (float)dVar14) * fVar4 - 0.5;
  dVar14 = floor((double)param_2);
  fVar4 = (param_2 - (float)dVar14) * fVar4 - 0.5;
  dVar14 = floor((double)fVar5);
  dVar15 = floor((double)fVar4);
  uVar10 = (uint)fVar4;
  uVar12 = (uint)fVar5;
  iVar6 = ((int)uVar10 >> 2) * param_6 + ((int)uVar12 >> 2);
  uVar3 = *(ushort *)((int)in_stack_00000040 + iVar6 * 2);
  if ((short)uVar3 < 0) {
    pbVar7 = (byte *)(iVar6 + param_8);
  }
  else {
    pbVar7 = (byte *)((int)in_stack_00000030 + ((uVar10 & 3) + (uint)uVar3 * 4) * 4 + (uVar12 & 3));
  }
  local_10 = (int)(longlong)ROUND(fVar5);
  uVar9 = (local_10 + 1U) % param_3;
  iVar6 = ((int)uVar10 >> 2) * param_6 + ((int)uVar9 >> 2);
  uVar3 = *(ushort *)((int)in_stack_00000040 + iVar6 * 2);
  if ((short)uVar3 < 0) {
    pbVar11 = (byte *)(param_8 + iVar6);
  }
  else {
    pbVar11 = (byte *)((int)in_stack_00000030 + ((uVar10 & 3) + (uint)uVar3 * 4) * 4 + (uVar9 & 3));
  }
  local_10 = (int)(longlong)ROUND(fVar4);
  uVar10 = (local_10 + 1U) % param_3;
  iVar6 = ((int)uVar10 >> 2) * param_6 + ((int)uVar9 >> 2);
  uVar3 = *(ushort *)((int)in_stack_00000040 + iVar6 * 2);
  if ((short)uVar3 < 0) {
    pbVar8 = (byte *)(iVar6 + param_8);
  }
  else {
    pbVar8 = (byte *)((int)in_stack_00000030 + ((uVar10 & 3) + (uint)uVar3 * 4) * 4 + (uVar9 & 3));
  }
  bVar1 = *pbVar8;
  iVar6 = ((int)uVar10 >> 2) * param_6 + ((int)uVar12 >> 2);
  uVar3 = *(ushort *)((int)in_stack_00000040 + iVar6 * 2);
  if ((short)uVar3 < 0) {
    pbVar8 = (byte *)(iVar6 + param_8);
  }
  else {
    pbVar8 = (byte *)((int)in_stack_00000030 + ((uVar10 & 3) + (uint)uVar3 * 4) * 4 + (uVar12 & 3));
  }
  bVar2 = *pbVar8;
  fVar13 = ((float)*pbVar11 - (float)*pbVar7) * (fVar5 - (float)dVar14) + (float)*pbVar7;
  if (in_stack_00000040 != (void *)0x0) {
    Memory_FreeIfNonNull(in_stack_00000040);
  }
  if (in_stack_00000030 != (void *)0x0) {
    Memory_FreeIfNonNull(in_stack_00000030);
  }
  if (param_8 != 0) {
    Memory_FreeIfNonNull((void *)param_8);
  }
  return (float10)(((((float)bVar1 - (float)bVar2) * (fVar5 - (float)dVar14) + (float)bVar2) -
                   fVar13) * (fVar4 - (float)dVar15) + fVar13);
}

