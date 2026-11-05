/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name; original PC 1.67 surface-step preparation. Applies surface-state
   rotation/scale/translation, converts Swarm (x,y,z) to game (-x,z,y), writes the start point, and
   extends the end point along its motion by the supplied radius when motion exceeds binary32
   epsilon. Decompiler fastcall register parameters are not fully typed. */

void __fastcall
TS3W_SwarmSurfaceStepToGame
          (undefined4 param_1,undefined4 param_2,byte *surfaceState,float *stepStartSimulation,
          float *stepEndSimulation,float particleRadius,float *stepStartGame,float *inflatedEndGame)

{
  undefined1 auVar1 [16];
  undefined4 uVar2;
  float fVar3;
  float fVar4;
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;

  fVar11 = *stepStartSimulation;
  fVar10 = stepStartSimulation[1];
  fVar17 = stepStartSimulation[2];
  fVar3 = fVar11;
  fVar8 = fVar10;
  if ((*surfaceState & 2) != 0) {
    fVar3 = *(float *)(surfaceState + 0x20) * fVar10 + *(float *)(surfaceState + 0x2c) * fVar17 +
            *(float *)(surfaceState + 0x14) * fVar11;
    fVar8 = *(float *)(surfaceState + 0x18) * fVar11 + *(float *)(surfaceState + 0x24) * fVar10 +
            *(float *)(surfaceState + 0x30) * fVar17;
    fVar17 = *(float *)(surfaceState + 0x1c) * fVar11 + *(float *)(surfaceState + 0x28) * fVar10 +
             *(float *)(surfaceState + 0x34) * fVar17;
  }
  fVar11 = *(float *)(surfaceState + 0x10);
  fVar9 = *(float *)(surfaceState + 8) + fVar11 * fVar8;
  fVar12 = *(float *)(surfaceState + 0xc) + fVar11 * fVar17;
  fVar4 = -0.0 - (*(float *)(surfaceState + 4) + fVar11 * fVar3);
  *stepStartGame = fVar4;
  stepStartGame[1] = fVar12;
  stepStartGame[2] = fVar9;
  stepStartGame[3] = fVar4;
  fVar11 = *stepEndSimulation;
  fVar10 = stepEndSimulation[1];
  fVar17 = stepEndSimulation[2];
  fVar3 = fVar11;
  fVar8 = fVar10;
  if ((*surfaceState & 2) != 0) {
    fVar3 = *(float *)(surfaceState + 0x2c) * fVar17 + *(float *)(surfaceState + 0x20) * fVar10 +
            *(float *)(surfaceState + 0x14) * fVar11;
    fVar8 = *(float *)(surfaceState + 0x30) * fVar17 + *(float *)(surfaceState + 0x24) * fVar10 +
            *(float *)(surfaceState + 0x18) * fVar11;
    fVar17 = *(float *)(surfaceState + 0x34) * fVar17 + *(float *)(surfaceState + 0x28) * fVar10 +
             *(float *)(surfaceState + 0x1c) * fVar11;
  }
  fVar11 = *(float *)(surfaceState + 0x10);
  fVar16 = -0.0 - (*(float *)(surfaceState + 4) + fVar11 * fVar3);
  fVar10 = fVar16 - fVar4;
  fVar17 = (*(float *)(surfaceState + 0xc) + fVar11 * fVar17) - fVar12;
  fVar11 = (*(float *)(surfaceState + 8) + fVar11 * fVar8) - fVar9;
  fVar3 = fVar16 - fVar4;
  auVar5._0_4_ = fVar10 * -1.0;
  auVar5._4_4_ = fVar17 * -1.0;
  auVar5._8_4_ = fVar11 * -1.0;
  auVar5._12_4_ = fVar3 * -1.0;
  auVar6._4_4_ = fVar17;
  auVar6._0_4_ = fVar10;
  auVar6._8_4_ = fVar11;
  auVar6._12_4_ = fVar3;
  auVar6 = maxps(auVar5,auVar6);
  auVar7._4_4_ = -(uint)(auVar6._4_4_ <= 1.1920929e-07);
  auVar7._0_4_ = -(uint)(auVar6._0_4_ <= 1.1920929e-07);
  auVar7._8_4_ = -(uint)(auVar6._8_4_ <= 1.1920929e-07);
  auVar7._12_4_ = -(uint)(auVar6._12_4_ <= 1.1920929e-07);
  uVar2 = movmskps(param_2,auVar7);
  if (((byte)uVar2 & 7) != 7) {
    fVar8 = fVar11 * fVar11 + fVar17 * fVar17 + fVar10 * fVar10;
    auVar1._4_4_ = fVar8;
    auVar1._0_4_ = fVar8;
    auVar1._8_4_ = fVar8;
    auVar1._12_4_ = fVar8;
    auVar6 = rsqrtps(ZEXT416((uint)fVar16),auVar1);
    fVar16 = auVar6._0_4_;
    fVar13 = auVar6._4_4_;
    fVar14 = auVar6._8_4_;
    fVar15 = auVar6._12_4_;
    fVar16 = (1.0 - fVar16 * fVar16 * fVar8) * fVar16 * 0.5 + fVar16;
    fVar13 = (1.0 - fVar13 * fVar13 * fVar8) * fVar13 * 0.5 + fVar13;
    fVar14 = (1.0 - fVar14 * fVar14 * fVar8) * fVar14 * 0.5 + fVar14;
    fVar15 = (1.0 - fVar15 * fVar15 * fVar8) * fVar15 * 0.5 + fVar15;
    fVar10 = ((1.0 - fVar16 * fVar16 * fVar8) * fVar16 * 0.5 + fVar16) * fVar10 * particleRadius +
             fVar10;
    fVar17 = ((1.0 - fVar13 * fVar13 * fVar8) * fVar13 * 0.5 + fVar13) * fVar17 * particleRadius +
             fVar17;
    fVar11 = ((1.0 - fVar14 * fVar14 * fVar8) * fVar14 * 0.5 + fVar14) * fVar11 * particleRadius +
             fVar11;
    fVar3 = ((1.0 - fVar15 * fVar15 * fVar8) * fVar15 * 0.5 + fVar15) * fVar3 * particleRadius +
            fVar3;
  }
  *inflatedEndGame = fVar4 + fVar10;
  inflatedEndGame[1] = fVar12 + fVar17;
  inflatedEndGame[2] = fVar9 + fVar11;
  inflatedEndGame[3] = fVar4 + fVar3;
  return;
}

