/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst-assigned name, original PC 1.67 TS3W.exe. Evaluates zoom-dependent pitch down limit, up
   limit, and sky/base threshold channels using Catmull-Rom weights. Below-first values extrapolate;
   beyond last real knot final interval uses t=1. Rows are loaded separately from camera variables.
   Called00977F7B;00977F80..00978028 applies limits to pitch lane0 only, preserving yaw lane1.
   Inferred fields and ABI are verified against original instructions; no yaw limit is supplied by
   this helper. */

void __thiscall
MainCamera_EvaluatePitchLimitsAtZoom
          (void *this,float *param_1,float *param_2,float *param_3,float param_4)

{
  float fVar1;
  byte bVar2;
  byte bVar3;
  int iVar4;
  uint uVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;

  fVar1 = DAT_0103fd88;
  bVar3 = 2;
  uVar5 = 2;
  do {
    fVar6 = *(float *)(uVar5 * 0x10 + 0x8fc + (int)this);
    fVar7 = *(float *)(uVar5 * 0x10 + 0x8ec + (int)this);
    if (param_4 <= fVar6) {
      bVar3 = (char)uVar5 - 2;
      fVar6 = (param_4 - fVar7) / (fVar6 - fVar7);
      break;
    }
    bVar2 = (char)uVar5 + 1;
    uVar5 = (uint)bVar2;
    fVar6 = DAT_00f998f8;
  } while (bVar2 < 5);
  uVar5 = (uint)bVar3;
  fVar9 = fVar6 * fVar6;
  fVar7 = fVar9 * fVar6;
  iVar4 = uVar5 * 0x10;
  fVar8 = fVar6 * DAT_010f4ccc;
  *param_1 = (((fVar9 * DAT_0103fd88 - fVar7) - fVar6) * *(float *)(iVar4 + 0x908 + (int)this) +
              ((fVar9 * DAT_00fb3f7c - fVar7 * DAT_00fa2b9c) + fVar6) *
              *(float *)(iVar4 + 0x928 + (int)this) +
              ((fVar7 * DAT_00fa2b9c - fVar9 * _DAT_01062bc8) + fVar8 + DAT_0103fd88) *
              *(float *)((int)this + iVar4 + 0x918) +
             ((fVar7 - fVar9) + fVar8) * *(float *)((int)this + iVar4 + 0x938)) * _DAT_00f9b5b4;
  *param_2 = (((fVar9 * fVar1 - fVar7) - fVar6) * *(float *)((int)this + iVar4 + 0x904) +
              ((fVar9 * DAT_00fb3f7c - fVar7 * DAT_00fa2b9c) + fVar6) *
              *(float *)((int)this + iVar4 + 0x924) +
              ((fVar7 * DAT_00fa2b9c - fVar9 * _DAT_01062bc8) + fVar8 + fVar1) *
              *(float *)((int)this + iVar4 + 0x914) +
             ((fVar7 - fVar9) + fVar8) * *(float *)((int)this + iVar4 + 0x934)) * _DAT_00f9b5b4;
  *param_3 = (((fVar9 * fVar1 - fVar7) - fVar6) * *(float *)((uVar5 + 0x90) * 0x10 + (int)this) +
              ((fVar9 * DAT_00fb3f7c - fVar7 * DAT_00fa2b9c) + fVar6) *
              *(float *)((uVar5 + 0x92) * 0x10 + (int)this) +
              ((fVar7 * DAT_00fa2b9c - fVar9 * _DAT_01062bc8) + fVar8 + fVar1) *
              *(float *)((uVar5 + 0x91) * 0x10 + (int)this) +
             ((fVar7 - fVar9) + fVar8) * *(float *)((uVar5 + 0x93) * 0x10 + (int)this)) *
             _DAT_00f9b5b4;
  return;
}

