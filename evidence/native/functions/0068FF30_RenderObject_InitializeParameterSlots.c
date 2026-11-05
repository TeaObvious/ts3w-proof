/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67: Registers RugSort as scalar float parameter (name hash0x906997a9) into
   DAT011598c8 alongside object matrices, opacity and animation fields. Analyst name; no original
   symbol recovery. */

undefined4 * __fastcall RenderObject_InitializeParameterSlots(undefined4 *param_1)

{
  void *this;
  
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
  param_1[0x2e] = 1.0;
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
    DAT_011598d0 = ShaderParameterRegistry_RegisterNamedRow(DAT_011d8530,"SkinMatrices",0xf0,2);
    DAT_011598cc = ShaderParameterRegistry_RegisterNamedRow(this,"Diffuse",1,2);
    DAT_011598b8 = ShaderParameterRegistry_RegisterNamedRow(this,"Opacity",1,2);
    DAT_011598bc = ShaderParameterRegistry_RegisterNamedRow(this,"OverlayAlphaThreshold",1,1);
    DAT_011598c0 = ShaderParameterRegistry_RegisterNamedRow(this,"ObjectToWorldSpaceMatrix",4,2);
    DAT_011598c4 = ShaderParameterRegistry_RegisterNamedRow(this,"ObjectToClipSpaceMatrix",4,2);
    DAT_011598c8 = ShaderParameterRegistry_RegisterNamedRow(this,"RugSort",1,1);
    DAT_011598d8 = ShaderParameterRegistry_RegisterNamedRow(this,"VertexAnimBlendWeights",0x10,2);
    DAT_011598d4 = ShaderParameterRegistry_RegisterNamedRow(this,"morphWeights",1,2);
    DAT_011598dc = ShaderParameterRegistry_RegisterNamedRow(this,"SecondaryNormalMapWeights",1,2);
    DAT_011598e0 = ShaderParameterRegistry_RegisterNamedRow
                             (this,"HasExteriorAndInteriorLighting",1,1);
    DAT_011598e4 = ShaderParameterRegistry_RegisterNamedRow(this,"DisableSnowXRay",1,1);
  }
  return param_1;
}

