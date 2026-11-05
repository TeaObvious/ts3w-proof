/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 weather snapshot instruction contract. cdecl2pointer, RET callerpops, EAX1/0.
   ExactUInt32 fields0/C/38/3C, exactbyte24/2C, exactWORD40; 16floatfields compare independentSUBSS
   difference thenMAXPS(-difference,difference),CMPLEPS againstfloat2^-16(bits37800000),
   MOVMSKPS==F. Paddingignored. NaNanddifferenceInf-Inf failcomparison, finite
   signedzeroscompareequal. This is tolerant semantic equality, NOTbytearraycomparison and NOT
   exactfloatoperator equality. Current publication uses bitwise packet identity; its separate frame
   comparator is not classified as equivalent solely from this body. */

uint __cdecl WeatherSettings_AreSimilar(PCWeatherSettings *left,PCWeatherSettings *right)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  int iVar16;
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  float fVar19;
  undefined1 auVar20 [16];
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  undefined1 auVar27 [16];
  undefined1 auVar28 [16];
  undefined1 auVar29 [16];
  undefined1 auVar30 [16];
  undefined1 auVar31 [16];
  undefined1 auVar32 [16];
  undefined1 auVar33 [16];
  undefined1 auVar34 [16];
  undefined1 auVar35 [16];
  undefined1 auVar36 [16];
  undefined1 auVar37 [16];
  undefined1 auVar38 [16];
  undefined1 auVar39 [16];
  undefined1 auVar40 [16];
  undefined1 auVar41 [16];
  undefined1 auVar42 [16];
  undefined1 auVar43 [16];
  undefined1 auVar44 [16];
  undefined1 auVar45 [16];
  undefined1 auVar46 [16];
  undefined1 auVar47 [16];
  undefined1 auVar48 [16];
  undefined1 auVar49 [16];
  undefined1 auVar50 [16];
  
  if (left->precipitationType == right->precipitationType) {
    fVar19 = left->precipitationStrength - right->precipitationStrength;
    auVar20._0_4_ = FLOAT_00fab218 * fVar19;
    auVar20._4_4_ = FLOAT_00fab218 * fVar19;
    auVar20._8_4_ = FLOAT_00fab218 * fVar19;
    auVar20._12_4_ = FLOAT_00fab218 * fVar19;
    auVar21._4_4_ = fVar19;
    auVar21._0_4_ = fVar19;
    auVar21._8_4_ = fVar19;
    auVar21._12_4_ = fVar19;
    auVar21 = maxps(auVar20,auVar21);
    auVar22._4_4_ = -(uint)(auVar21._4_4_ <= FLOAT_0108b27c);
    auVar22._0_4_ = -(uint)(auVar21._0_4_ <= FLOAT_0108b27c);
    auVar22._8_4_ = -(uint)(auVar21._8_4_ <= FLOAT_0108b27c);
    auVar22._12_4_ = -(uint)(auVar21._12_4_ <= FLOAT_0108b27c);
    iVar16 = movmskps(left->precipitationType,auVar22);
    if (iVar16 == 0xf) {
      fVar19 = left->frostAmount - right->frostAmount;
      auVar23._0_4_ = FLOAT_00fab218 * fVar19;
      auVar23._4_4_ = FLOAT_00fab218 * fVar19;
      auVar23._8_4_ = FLOAT_00fab218 * fVar19;
      auVar23._12_4_ = FLOAT_00fab218 * fVar19;
      auVar1._4_4_ = fVar19;
      auVar1._0_4_ = fVar19;
      auVar1._8_4_ = fVar19;
      auVar1._12_4_ = fVar19;
      auVar21 = maxps(auVar23,auVar1);
      auVar24._4_4_ = -(uint)(auVar21._4_4_ <= FLOAT_0108b27c);
      auVar24._0_4_ = -(uint)(auVar21._0_4_ <= FLOAT_0108b27c);
      auVar24._8_4_ = -(uint)(auVar21._8_4_ <= FLOAT_0108b27c);
      auVar24._12_4_ = -(uint)(auVar21._12_4_ <= FLOAT_0108b27c);
      iVar16 = movmskps(0xf,auVar24);
      if ((iVar16 == 0xf) && (left->currentSeason == right->currentSeason)) {
        fVar19 = left->sunriseOffset - right->sunriseOffset;
        auVar25._0_4_ = FLOAT_00fab218 * fVar19;
        auVar25._4_4_ = FLOAT_00fab218 * fVar19;
        auVar25._8_4_ = FLOAT_00fab218 * fVar19;
        auVar25._12_4_ = FLOAT_00fab218 * fVar19;
        auVar2._4_4_ = fVar19;
        auVar2._0_4_ = fVar19;
        auVar2._8_4_ = fVar19;
        auVar2._12_4_ = fVar19;
        auVar21 = maxps(auVar25,auVar2);
        auVar26._4_4_ = -(uint)(auVar21._4_4_ <= FLOAT_0108b27c);
        auVar26._0_4_ = -(uint)(auVar21._0_4_ <= FLOAT_0108b27c);
        auVar26._8_4_ = -(uint)(auVar21._8_4_ <= FLOAT_0108b27c);
        auVar26._12_4_ = -(uint)(auVar21._12_4_ <= FLOAT_0108b27c);
        iVar16 = movmskps(left->currentSeason,auVar26);
        if (iVar16 == 0xf) {
          fVar19 = left->sunsetOffset - right->sunsetOffset;
          auVar27._0_4_ = FLOAT_00fab218 * fVar19;
          auVar27._4_4_ = FLOAT_00fab218 * fVar19;
          auVar27._8_4_ = FLOAT_00fab218 * fVar19;
          auVar27._12_4_ = FLOAT_00fab218 * fVar19;
          auVar3._4_4_ = fVar19;
          auVar3._0_4_ = fVar19;
          auVar3._8_4_ = fVar19;
          auVar3._12_4_ = fVar19;
          auVar21 = maxps(auVar27,auVar3);
          auVar28._4_4_ = -(uint)(auVar21._4_4_ <= FLOAT_0108b27c);
          auVar28._0_4_ = -(uint)(auVar21._0_4_ <= FLOAT_0108b27c);
          auVar28._8_4_ = -(uint)(auVar21._8_4_ <= FLOAT_0108b27c);
          auVar28._12_4_ = -(uint)(auVar21._12_4_ <= FLOAT_0108b27c);
          iVar16 = movmskps(0xf,auVar28);
          if (iVar16 == 0xf) {
            fVar19 = left->snowThickness - right->snowThickness;
            auVar29._0_4_ = FLOAT_00fab218 * fVar19;
            auVar29._4_4_ = FLOAT_00fab218 * fVar19;
            auVar29._8_4_ = FLOAT_00fab218 * fVar19;
            auVar29._12_4_ = FLOAT_00fab218 * fVar19;
            auVar4._4_4_ = fVar19;
            auVar4._0_4_ = fVar19;
            auVar4._8_4_ = fVar19;
            auVar4._12_4_ = fVar19;
            auVar21 = maxps(auVar29,auVar4);
            auVar30._4_4_ = -(uint)(auVar21._4_4_ <= FLOAT_0108b27c);
            auVar30._0_4_ = -(uint)(auVar21._0_4_ <= FLOAT_0108b27c);
            auVar30._8_4_ = -(uint)(auVar21._8_4_ <= FLOAT_0108b27c);
            auVar30._12_4_ = -(uint)(auVar21._12_4_ <= FLOAT_0108b27c);
            iVar16 = movmskps(0xf,auVar30);
            if (iVar16 == 0xf) {
              fVar19 = left->snowRoadDepth - right->snowRoadDepth;
              auVar31._0_4_ = FLOAT_00fab218 * fVar19;
              auVar31._4_4_ = FLOAT_00fab218 * fVar19;
              auVar31._8_4_ = FLOAT_00fab218 * fVar19;
              auVar31._12_4_ = FLOAT_00fab218 * fVar19;
              auVar5._4_4_ = fVar19;
              auVar5._0_4_ = fVar19;
              auVar5._8_4_ = fVar19;
              auVar5._12_4_ = fVar19;
              auVar21 = maxps(auVar31,auVar5);
              auVar32._4_4_ = -(uint)(auVar21._4_4_ <= FLOAT_0108b27c);
              auVar32._0_4_ = -(uint)(auVar21._0_4_ <= FLOAT_0108b27c);
              auVar32._8_4_ = -(uint)(auVar21._8_4_ <= FLOAT_0108b27c);
              auVar32._12_4_ = -(uint)(auVar21._12_4_ <= FLOAT_0108b27c);
              iVar16 = movmskps(0xf,auVar32);
              if (iVar16 == 0xf) {
                fVar19 = left->wetAmount - right->wetAmount;
                auVar33._0_4_ = FLOAT_00fab218 * fVar19;
                auVar33._4_4_ = FLOAT_00fab218 * fVar19;
                auVar33._8_4_ = FLOAT_00fab218 * fVar19;
                auVar33._12_4_ = FLOAT_00fab218 * fVar19;
                auVar6._4_4_ = fVar19;
                auVar6._0_4_ = fVar19;
                auVar6._8_4_ = fVar19;
                auVar6._12_4_ = fVar19;
                auVar21 = maxps(auVar33,auVar6);
                auVar34._4_4_ = -(uint)(auVar21._4_4_ <= FLOAT_0108b27c);
                auVar34._0_4_ = -(uint)(auVar21._0_4_ <= FLOAT_0108b27c);
                auVar34._8_4_ = -(uint)(auVar21._8_4_ <= FLOAT_0108b27c);
                auVar34._12_4_ = -(uint)(auVar21._12_4_ <= FLOAT_0108b27c);
                iVar16 = movmskps(0xf,auVar34);
                if ((((iVar16 == 0xf) && (left->isSnowMelting == right->isSnowMelting)) &&
                    (left->precipitationAudioIndex == right->precipitationAudioIndex)) &&
                   ((left->windAudioIndex == right->windAudioIndex &&
                    (left->weatherTerrain == right->weatherTerrain)))) {
                  fVar19 = left->treeLeafLoss - right->treeLeafLoss;
                  auVar35._0_4_ = FLOAT_00fab218 * fVar19;
                  auVar35._4_4_ = FLOAT_00fab218 * fVar19;
                  auVar35._8_4_ = FLOAT_00fab218 * fVar19;
                  auVar35._12_4_ = FLOAT_00fab218 * fVar19;
                  auVar7._4_4_ = fVar19;
                  auVar7._0_4_ = fVar19;
                  auVar7._8_4_ = fVar19;
                  auVar7._12_4_ = fVar19;
                  auVar21 = maxps(auVar35,auVar7);
                  auVar36._4_4_ = -(uint)(auVar21._4_4_ <= FLOAT_0108b27c);
                  auVar36._0_4_ = -(uint)(auVar21._0_4_ <= FLOAT_0108b27c);
                  auVar36._8_4_ = -(uint)(auVar21._8_4_ <= FLOAT_0108b27c);
                  auVar36._12_4_ = -(uint)(auVar21._12_4_ <= FLOAT_0108b27c);
                  iVar16 = movmskps(CONCAT22((short)(left->windAudioIndex >> 0x10),
                                             left->weatherTerrain),auVar36);
                  if ((iVar16 == 0xf) && (left->useFallSet == right->useFallSet)) {
                    fVar19 = left->treeFallColor - right->treeFallColor;
                    auVar37._0_4_ = FLOAT_00fab218 * fVar19;
                    auVar37._4_4_ = FLOAT_00fab218 * fVar19;
                    auVar37._8_4_ = FLOAT_00fab218 * fVar19;
                    auVar37._12_4_ = FLOAT_00fab218 * fVar19;
                    auVar8._4_4_ = fVar19;
                    auVar8._0_4_ = fVar19;
                    auVar8._8_4_ = fVar19;
                    auVar8._12_4_ = fVar19;
                    auVar21 = maxps(auVar37,auVar8);
                    auVar38._4_4_ = -(uint)(auVar21._4_4_ <= FLOAT_0108b27c);
                    auVar38._0_4_ = -(uint)(auVar21._0_4_ <= FLOAT_0108b27c);
                    auVar38._8_4_ = -(uint)(auVar21._8_4_ <= FLOAT_0108b27c);
                    auVar38._12_4_ = -(uint)(auVar21._12_4_ <= FLOAT_0108b27c);
                    iVar16 = movmskps((uint)left->useFallSet,auVar38);
                    if (iVar16 == 0xf) {
                      fVar19 = left->precipitationFog - right->precipitationFog;
                      auVar39._0_4_ = FLOAT_00fab218 * fVar19;
                      auVar39._4_4_ = FLOAT_00fab218 * fVar19;
                      auVar39._8_4_ = FLOAT_00fab218 * fVar19;
                      auVar39._12_4_ = FLOAT_00fab218 * fVar19;
                      auVar9._4_4_ = fVar19;
                      auVar9._0_4_ = fVar19;
                      auVar9._8_4_ = fVar19;
                      auVar9._12_4_ = fVar19;
                      auVar21 = maxps(auVar39,auVar9);
                      auVar40._4_4_ = -(uint)(auVar21._4_4_ <= FLOAT_0108b27c);
                      auVar40._0_4_ = -(uint)(auVar21._0_4_ <= FLOAT_0108b27c);
                      auVar40._8_4_ = -(uint)(auVar21._8_4_ <= FLOAT_0108b27c);
                      auVar40._12_4_ = -(uint)(auVar21._12_4_ <= FLOAT_0108b27c);
                      iVar16 = movmskps(0xf,auVar40);
                      if (iVar16 == 0xf) {
                        fVar19 = left->pondFreeze - right->pondFreeze;
                        auVar41._0_4_ = FLOAT_00fab218 * fVar19;
                        auVar41._4_4_ = FLOAT_00fab218 * fVar19;
                        auVar41._8_4_ = FLOAT_00fab218 * fVar19;
                        auVar41._12_4_ = FLOAT_00fab218 * fVar19;
                        auVar10._4_4_ = fVar19;
                        auVar10._0_4_ = fVar19;
                        auVar10._8_4_ = fVar19;
                        auVar10._12_4_ = fVar19;
                        auVar21 = maxps(auVar41,auVar10);
                        auVar42._4_4_ = -(uint)(auVar21._4_4_ <= FLOAT_0108b27c);
                        auVar42._0_4_ = -(uint)(auVar21._0_4_ <= FLOAT_0108b27c);
                        auVar42._8_4_ = -(uint)(auVar21._8_4_ <= FLOAT_0108b27c);
                        auVar42._12_4_ = -(uint)(auVar21._12_4_ <= FLOAT_0108b27c);
                        iVar16 = movmskps(0xf,auVar42);
                        if (iVar16 == 0xf) {
                          fVar19 = left->heatShimmerDistance - right->heatShimmerDistance;
                          auVar43._0_4_ = FLOAT_00fab218 * fVar19;
                          auVar43._4_4_ = FLOAT_00fab218 * fVar19;
                          auVar43._8_4_ = FLOAT_00fab218 * fVar19;
                          auVar43._12_4_ = FLOAT_00fab218 * fVar19;
                          auVar11._4_4_ = fVar19;
                          auVar11._0_4_ = fVar19;
                          auVar11._8_4_ = fVar19;
                          auVar11._12_4_ = fVar19;
                          auVar21 = maxps(auVar43,auVar11);
                          auVar44._4_4_ = -(uint)(auVar21._4_4_ <= FLOAT_0108b27c);
                          auVar44._0_4_ = -(uint)(auVar21._0_4_ <= FLOAT_0108b27c);
                          auVar44._8_4_ = -(uint)(auVar21._8_4_ <= FLOAT_0108b27c);
                          auVar44._12_4_ = -(uint)(auVar21._12_4_ <= FLOAT_0108b27c);
                          iVar16 = movmskps(0xf,auVar44);
                          if (iVar16 == 0xf) {
                            fVar19 = left->worldLeaves - right->worldLeaves;
                            auVar45._0_4_ = FLOAT_00fab218 * fVar19;
                            auVar45._4_4_ = FLOAT_00fab218 * fVar19;
                            auVar45._8_4_ = FLOAT_00fab218 * fVar19;
                            auVar45._12_4_ = FLOAT_00fab218 * fVar19;
                            auVar12._4_4_ = fVar19;
                            auVar12._0_4_ = fVar19;
                            auVar12._8_4_ = fVar19;
                            auVar12._12_4_ = fVar19;
                            auVar21 = maxps(auVar45,auVar12);
                            auVar46._4_4_ = -(uint)(auVar21._4_4_ <= FLOAT_0108b27c);
                            auVar46._0_4_ = -(uint)(auVar21._0_4_ <= FLOAT_0108b27c);
                            auVar46._8_4_ = -(uint)(auVar21._8_4_ <= FLOAT_0108b27c);
                            auVar46._12_4_ = -(uint)(auVar21._12_4_ <= FLOAT_0108b27c);
                            iVar16 = movmskps(0xf,auVar46);
                            if (iVar16 == 0xf) {
                              fVar19 = left->cloudinessTarget - right->cloudinessTarget;
                              auVar47._0_4_ = FLOAT_00fab218 * fVar19;
                              auVar47._4_4_ = FLOAT_00fab218 * fVar19;
                              auVar47._8_4_ = FLOAT_00fab218 * fVar19;
                              auVar47._12_4_ = FLOAT_00fab218 * fVar19;
                              auVar13._4_4_ = fVar19;
                              auVar13._0_4_ = fVar19;
                              auVar13._8_4_ = fVar19;
                              auVar13._12_4_ = fVar19;
                              auVar21 = maxps(auVar47,auVar13);
                              auVar48._4_4_ = -(uint)(auVar21._4_4_ <= FLOAT_0108b27c);
                              auVar48._0_4_ = -(uint)(auVar21._0_4_ <= FLOAT_0108b27c);
                              auVar48._8_4_ = -(uint)(auVar21._8_4_ <= FLOAT_0108b27c);
                              auVar48._12_4_ = -(uint)(auVar21._12_4_ <= FLOAT_0108b27c);
                              iVar16 = movmskps(0xf,auVar48);
                              if (iVar16 == 0xf) {
                                fVar19 = left->windStrength - right->windStrength;
                                auVar49._0_4_ = FLOAT_00fab218 * fVar19;
                                auVar49._4_4_ = FLOAT_00fab218 * fVar19;
                                auVar49._8_4_ = FLOAT_00fab218 * fVar19;
                                auVar49._12_4_ = FLOAT_00fab218 * fVar19;
                                auVar14._4_4_ = fVar19;
                                auVar14._0_4_ = fVar19;
                                auVar14._8_4_ = fVar19;
                                auVar14._12_4_ = fVar19;
                                auVar21 = maxps(auVar49,auVar14);
                                auVar50._4_4_ = -(uint)(auVar21._4_4_ <= FLOAT_0108b27c);
                                auVar50._0_4_ = -(uint)(auVar21._0_4_ <= FLOAT_0108b27c);
                                auVar50._8_4_ = -(uint)(auVar21._8_4_ <= FLOAT_0108b27c);
                                auVar50._12_4_ = -(uint)(auVar21._12_4_ <= FLOAT_0108b27c);
                                iVar16 = movmskps(0xf,auVar50);
                                if (iVar16 == 0xf) {
                                  fVar19 = left->normalFog - right->normalFog;
                                  auVar17._0_4_ = FLOAT_00fab218 * fVar19;
                                  auVar17._4_4_ = FLOAT_00fab218 * fVar19;
                                  auVar17._8_4_ = FLOAT_00fab218 * fVar19;
                                  auVar17._12_4_ = FLOAT_00fab218 * fVar19;
                                  auVar15._4_4_ = fVar19;
                                  auVar15._0_4_ = fVar19;
                                  auVar15._8_4_ = fVar19;
                                  auVar15._12_4_ = fVar19;
                                  auVar21 = maxps(auVar17,auVar15);
                                  auVar18._4_4_ = -(uint)(auVar21._4_4_ <= FLOAT_0108b27c);
                                  auVar18._0_4_ = -(uint)(auVar21._0_4_ <= FLOAT_0108b27c);
                                  auVar18._8_4_ = -(uint)(auVar21._8_4_ <= FLOAT_0108b27c);
                                  auVar18._12_4_ = -(uint)(auVar21._12_4_ <= FLOAT_0108b27c);
                                  iVar16 = movmskps(left,auVar18);
                                  if (iVar16 == 0xf) {
                                    return 1;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  return 0;
}

