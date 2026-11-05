/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Uses sizeX/sizeZ at tile +14/+18 with exact -0.5 and+0.5
   scalars for local X/Z bounds. Converts minimum/maximum packed short Y through the supplied scale
   Y and placement Y, confirming center-relative horizontal collision coordinates. Analyst-assigned
   helper names are not recovered original symbols. Original instructions govern decompiler
   ABI/register artifacts. */

void __thiscall
CAW_SetWorldTerrainTileLocalBounds(void *this,short param_1,short param_2,int param_3,int param_4)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  
  fVar4 = (float)*(int *)((int)this + 0x14);
  fVar1 = *(float *)(param_3 + 4);
  fVar2 = *(float *)(param_4 + 4);
  if (*(int *)((int)this + 0x14) < 0) {
    fVar4 = fVar4 + _DAT_10aae190;
  }
  fVar5 = (float)*(int *)((int)this + 0x18);
  fVar3 = fVar4 * DAT_10aae2c0;
  if (*(int *)((int)this + 0x18) < 0) {
    fVar5 = fVar5 + _DAT_10aae190;
  }
  fVar6 = fVar5 * DAT_10aae2c0;
  *(float *)((int)this + 0x20) = fVar3;
  *(float *)((int)this + 0x24) = (float)(int)param_1 * fVar1 + fVar2;
  *(float *)((int)this + 0x28) = fVar6;
  *(float *)((int)this + 0x2c) = fVar3;
  fVar1 = *(float *)(param_3 + 4);
  fVar2 = *(float *)(param_4 + 4);
  fVar4 = fVar4 * _DAT_10b310ec;
  fVar5 = fVar5 * _DAT_10b310ec;
  *(float *)((int)this + 0x30) = fVar4;
  *(float *)((int)this + 0x34) = (float)(int)param_2 * fVar1 + fVar2;
  *(float *)((int)this + 0x38) = fVar5;
  *(float *)((int)this + 0x3c) = fVar4;
  return;
}

