/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Five physical cdecl words with second word unused locally; copy input three-word position/level to fourth output. Typed product A4mask403F snaps planar words via MULSS2, inherited-x87 FISTP, CVTSI2SS*.5. Odd quantized orientation plus AFFCE0 gate repeats snap and applies106B850 table; total four rows or zero-row A4mask10000/type2 selects second half. No local rounding-control change or host finite/domain guards. Output level word preserved.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00B059C0_FUN_00b059c0.asm
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __cdecl
FUN_00b059c0(void *param_1,undefined4 param_2,float *param_3,float *param_4,float param_5)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  bool bVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  
  *param_4 = *param_3;
  param_4[1] = param_3[1];
  param_4[2] = param_3[2];
  iVar2 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)param_1 + 0x18));
  fVar6 = _DAT_00f9b5b4;
  if ((iVar2 != 0) && ((*(uint *)(iVar2 + 0xa4) & 0x403f) != 0)) {
    fVar8 = param_3[1] * DAT_0103fd88;
    *param_4 = (float)(int)ROUND(*param_3 * DAT_0103fd88) * _DAT_00f9b5b4;
    param_4[1] = (float)(int)ROUND(fVar8) * fVar6;
  }
  fVar6 = param_5 / DAT_011845d4;
  if (((int)ROUND(fVar6) & 1U) == 0) {
    return;
  }
  if (iVar2 == 0) {
    return;
  }
  uVar3 = FUN_00affce0(param_1,iVar2);
  fVar8 = _DAT_00f9b5b4;
  if ((char)uVar3 == '\0') {
    return;
  }
  fVar7 = param_3[1] * DAT_0103fd88;
  *param_4 = (float)(int)ROUND(*param_3 * DAT_0103fd88) * _DAT_00f9b5b4;
  param_4[1] = (float)(int)ROUND(fVar7) * fVar8;
  iVar4 = *(int *)(iVar2 + 0xd8) - *(int *)(iVar2 + 0xd4);
  iVar1 = iVar4 >> 0x1f;
  iVar4 = iVar4 / 0x28 + iVar1;
  uVar3 = (int)(((int)ROUND(fVar6) & 7U) - 1) / 2;
  if (iVar4 == iVar1) {
    if ((*(uint *)(iVar2 + 0xa4) & 0x10000) == 0) goto LAB_00b05b5c;
    iVar2 = FUN_00affd30(param_1);
    bVar5 = iVar2 == 2;
  }
  else {
    bVar5 = iVar4 - iVar1 == 4;
  }
  if (bVar5) {
    uVar3 = uVar3 + 4;
  }
LAB_00b05b5c:
  if (uVar3 < 8) {
    *param_4 = *(float *)(&DAT_0106b850 + uVar3 * 8) + *param_4;
    param_4[1] = *(float *)(&DAT_0106b854 + uVar3 * 8) + param_4[1];
  }
  return;
}

