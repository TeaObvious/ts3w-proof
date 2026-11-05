/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 weather snapshot instruction contract. Two stack words RET8;
   incomingECXnotsemantic (overwritten). Only LOWBYTEofsecond flag tested. Selected math uses
   separate SSE ops and bit-signselection from(-0-x),(1-x) toproject floatinputs toward0..1; not a
   blanket Math.Clamp or nonfinite promise. suppressflagzero copies wet/frost/snow/roaddepth
   projections into globalblock11EF140; nonzerozeros those four. Tree leafloss/fallcolor
   alwaysproject into11EF150/154, not gatedbythisflag.
   Otherwind/snow/ambientconstantlanesandD69110consumer retained; actual fullshaderbind/define
   meaning requires separateproducer/consumer evidence. */

void WeatherShader_PublishSettingsConstants(PCWeatherSettings *settings,undefined4 suppressWord)

{
  uint uVar1;
  float fVar2;
  
  if ((char)suppressWord == '\0') {
                    /* SSE binary32 subtraction followed by MOV bits/SAR31/AND/OR selects raw
                       floating representations. Decompiled int/uint/float casts are bit-mask
                       artifacts; do not treat them as ordinary numeric conversions or generalized
                       finite Math.Clamp. */
    fVar2 = (float)((uint)settings->wetAmount & (int)(-0.0 - settings->wetAmount) >> 0x1f);
    uVar1 = (int)(1.0 - fVar2) >> 0x1f;
    _DAT_011ef140 = ~uVar1 & (uint)fVar2 | uVar1 & (uint)1.0;
  }
  else {
    _DAT_011ef140 = 0;
  }
  uRam011ef1e4 = 0;
  if ((char)suppressWord == '\0') {
    fVar2 = (float)((uint)settings->frostAmount & (int)(-0.0 - settings->frostAmount) >> 0x1f);
    uVar1 = (int)(1.0 - fVar2) >> 0x1f;
    uRam011ef144 = ~uVar1 & (uint)fVar2 | uVar1 & (uint)1.0;
    fVar2 = (float)((uint)settings->snowThickness & (int)(-0.0 - settings->snowThickness) >> 0x1f);
    uVar1 = (int)(1.0 - fVar2) >> 0x1f;
    uRam011ef148 = ~uVar1 & (uint)fVar2 | uVar1 & (uint)1.0;
    fVar2 = (float)((uint)settings->snowRoadDepth & (int)(-0.0 - settings->snowRoadDepth) >> 0x1f);
    uVar1 = (int)(1.0 - fVar2) >> 0x1f;
    uRam011ef14c = ~uVar1 & (uint)fVar2 | uVar1 & (uint)1.0;
  }
  else {
    uRam011ef144 = 0;
    uRam011ef148 = 0;
    uRam011ef14c = 0;
  }
  fVar2 = (float)((uint)settings->treeLeafLoss & (int)(-0.0 - settings->treeLeafLoss) >> 0x1f);
  uVar1 = (int)(1.0 - fVar2) >> 0x1f;
  _DAT_011ef150 = ~uVar1 & (uint)fVar2 | uVar1 & (uint)1.0;
  fVar2 = (float)((uint)settings->treeFallColor & (int)(-0.0 - settings->treeFallColor) >> 0x1f);
  uVar1 = (int)(1.0 - fVar2) >> 0x1f;
  uRam011ef154 = ~uVar1 & (uint)fVar2 | uVar1 & (uint)1.0;
  fVar2 = (float)((uint)settings->pondFreeze & (int)(-0.0 - settings->pondFreeze) >> 0x1f);
  uVar1 = (int)(1.0 - fVar2) >> 0x1f;
  uRam011ef158 = ~uVar1 & (uint)fVar2 | uVar1 & (uint)1.0;
  uRam011ef15c = DAT_01192d84;
  fVar2 = (float)((uint)settings->worldLeaves & (int)(-0.0 - settings->worldLeaves) >> 0x1f);
  uVar1 = (int)(1.0 - fVar2) >> 0x1f;
  _DAT_011ef160 = ~uVar1 & (uint)fVar2 | uVar1 & (uint)1.0;
  fVar2 = settings->frostAmount / _DAT_01192d8c;
  fVar2 = (float)((uint)fVar2 & (int)(-0.0 - fVar2) >> 0x1f);
  uVar1 = (int)(1.0 - fVar2) >> 0x1f;
  uRam011ef1c8 = ~uVar1 & (uint)fVar2 | uVar1 & (uint)1.0;
  if ((char)suppressWord == '\0') {
    fVar2 = (float)((uint)settings->snowThickness & (int)(-0.0 - settings->snowThickness) >> 0x1f);
    uVar1 = (int)(1.0 - fVar2) >> 0x1f;
    _DAT_011ef1c0 = ~uVar1 & (uint)fVar2 | uVar1 & (uint)1.0;
    fVar2 = (float)((uint)settings->frostAmount & (int)(-0.0 - settings->frostAmount) >> 0x1f);
    uVar1 = (int)(1.0 - fVar2) >> 0x1f;
    _DAT_011ef1e0 = ~uVar1 & (uint)fVar2 | uVar1 & (uint)1.0;
    fVar2 = (float)((uint)settings->snowThickness & (int)(-0.0 - settings->snowThickness) >> 0x1f);
    uVar1 = (int)(1.0 - fVar2) >> 0x1f;
    uRam011ef1e4 = ~uVar1 & (uint)fVar2 | uVar1 & (uint)1.0;
  }
  else {
    _DAT_011ef1c0 = 0;
    uRam011ef1c8 = 0;
    _DAT_011ef1e0 = 0;
  }
  uRam011ef1cc = uRam011ef1c8;
  WeatherResources_PublishGlobalBindings(0x11ef130);
  return;
}

