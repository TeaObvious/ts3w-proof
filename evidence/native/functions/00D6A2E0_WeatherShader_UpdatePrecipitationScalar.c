/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 weather snapshot instruction contract. One stackpointer RET4; incomingECXunused.
   If type0 -> density51(initialfilefloat1193278). Else strength projected using actual
   bit-signselection(-0-x),(1-x); if COMISS0.001strength JBE (inclunordered)
   takesformula1/(strength*stored0.98+stored0.02), else default51. SeparateMULSS/ADDSS/DIVSS; if
   ordered result<1 set1, unorderedretainsNaN. Storedfloatconstants words3A83126F/3F7AE148/3CA3D70A,
   not exactdecimal. UpdatesXlaneof11EF1A0 only. Full
   precipitationcellselection/rendering/NaNbitpatternacceptance remainsunexpanded. */

void WeatherShader_UpdatePrecipitationScalar(PCWeatherSettings *settings)

{
  uint uVar1;
  float fVar2;
  
  _DAT_011ef1a0 = FLOAT_01193278;
                    /* COMISS threshold,strength then JBE: unordered/NaN takes formula branch. The
                       decompiler ordered threshold<=strength C condition does NOT preserve this
                       unordered edge. Bitwise casts in this function represent raw float bits for
                       masks, not additional numeric UInt32 conversions. */
  if (((settings->precipitationType != 0) &&
      (fVar2 = (float)((uint)settings->precipitationStrength &
                      (int)(FLOAT_00f998f0 - settings->precipitationStrength) >> 0x1f),
      uVar1 = (int)(FLOAT_00f998f8 - fVar2) >> 0x1f,
      fVar2 = (float)(~uVar1 & (uint)fVar2 | (uint)FLOAT_00f998f8 & uVar1), FLOAT_00fb35b4 <= fVar2)
      ) && (_DAT_011ef1a0 = FLOAT_00f998f8 / (fVar2 * FLOAT_00ff3a3c + FLOAT_00fa2bac),
           _DAT_011ef1a0 < FLOAT_00f998f8)) {
    _DAT_011ef1a0 = FLOAT_00f998f8;
  }
  return;
}

