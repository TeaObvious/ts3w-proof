/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Registers RugSort as scalar float parameter (name hash0x906997a9) into
   DAT011598c8 alongside object matrices, opacity and animation fields. Analyst name; no original
   symbol recovery. */

undefined4 * __fastcall RenderObject_InitializeParameterSlots(undefined4 *param_1)

{
  undefined4 uVar1;
  void *this;
  
  uVar1 = DAT_00f998f8;
  *param_1 = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[10] = 0;
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[0xd] = 0;
  param_1[0x14] = 0;
  param_1[0x15] = 0;
  param_1[0x16] = 0;
  param_1[0x17] = 0;
  param_1[0x18] = 0;
  param_1[0x19] = 0;
  param_1[0x1a] = 0;
  param_1[0x1b] = 0xffffffff;
  param_1[0x1c] = 0;
  param_1[0x1d] = 0;
  param_1[0x1e] = 0;
  *(undefined2 *)(param_1 + 0x1f) = 100;
  param_1[0x2c] = 0;
  param_1[0x2d] = 0;
  param_1[0x2e] = uVar1;
  param_1[0x2f] = 0;
  *(byte *)((int)param_1 + 0xc2) = *(byte *)((int)param_1 + 0xc2) & 0xf0;
  *(undefined1 *)(param_1 + 0x30) = 0;
  *(undefined1 *)((int)param_1 + 0xc1) = 4;
  param_1[0x31] = 0;
  param_1[0x32] = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  this = DAT_011d8530;
  if (DAT_011598d0 == -1) {
    DAT_011598d0 = FUN_0079a530(DAT_011d8530,"SkinMatrices",0xf0,2);
    DAT_011598cc = FUN_0079a530(this,"Diffuse",1,2);
    DAT_011598b8 = FUN_0079a530(this,"Opacity",1,2);
    DAT_011598bc = FUN_0079a530(this,"OverlayAlphaThreshold",1,1);
    DAT_011598c0 = FUN_0079a530(this,"ObjectToWorldSpaceMatrix",4,2);
    DAT_011598c4 = FUN_0079a530(this,"ObjectToClipSpaceMatrix",4,2);
    DAT_011598c8 = FUN_0079a530(this,"RugSort",1,1);
    DAT_011598d8 = FUN_0079a530(this,"VertexAnimBlendWeights",0x10,2);
    DAT_011598d4 = FUN_0079a530(this,"morphWeights",1,2);
    DAT_011598dc = FUN_0079a530(this,"SecondaryNormalMapWeights",1,2);
    DAT_011598e0 = FUN_0079a530(this,"HasExteriorAndInteriorLighting",1,1);
    DAT_011598e4 = FUN_0079a530(this,"DisableSnowXRay",1,1);
  }
  return param_1;
}

