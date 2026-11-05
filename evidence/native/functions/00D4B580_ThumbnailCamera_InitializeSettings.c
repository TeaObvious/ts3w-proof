/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 SACS migration contract): ECX settings descriptor. Establishes position0,
   view replicated negative1, up(0,1,0), field-of-view and near/far constants from data,
   projection0, scale1, PositionFromScale true and preview-bound flagfalse. Exact numeric data
   central in thumbnail-camera-literals.tsv. Default settings are not all inferred from a specific
   installed INI. */

void __fastcall ThumbnailCamera_InitializeSettings(undefined4 *param_1)

{
  float fVar1;
  undefined4 uVar2;
  
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  fVar1 = FLOAT_00fab218;
  param_1[4] = FLOAT_00fab218;
  param_1[5] = fVar1;
  param_1[6] = fVar1;
  param_1[7] = fVar1;
  fVar1 = FLOAT_00f998f8;
  param_1[8] = 0;
  param_1[9] = fVar1;
  param_1[10] = 0;
  param_1[0xb] = 0;
  param_1[0xc] = _DAT_0104487c;
  uVar2 = _DAT_00faab8c;
  param_1[0xd] = fVar1;
  param_1[0xe] = uVar2;
  param_1[0xf] = DAT_00f99974;
  param_1[0x18] = _DAT_00faad94;
  param_1[0x19] = fVar1;
  param_1[0x1a] = 0;
  *(undefined1 *)(param_1 + 0x1b) = 1;
  *(undefined1 *)((int)param_1 + 0x6d) = 0;
  return;
}

