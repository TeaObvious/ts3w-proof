/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 local light rig contract. ECXrig+responseOut+selection+direction RET0C;
   EAXreturnsresponseOut (correctedfalsevoid). Zerofourlaneoutput. selection.firstPrimarySlot used
   asSTARTINDEX in BOTHprimarydirection+10/color+50 ANDsecondarydirection+90/color+D0, throughslot3;
   ifstart>=4 outputzero. For each orderedprimarythensecondary dotXYZ direction, MAXPS zero,dot
   andfourlane color multiply/add. MAXPSoperandorderretainsSSEunorderedsemantics; do
   notreplacewithunspecifiedMath.Max. This response excludessecondary0 whenstart1, even
   thoughlatercolor-scalingincludesALLsecondaryslots. */

float * __thiscall
Rig_ResponseOnDirection
          (void *this,float *responseOut,Analyst_RigBankSelection *selection,float *direction)

{
  uint uVar1;
  undefined1 auVar2 [16];
  float *pfVar3;
  float *pfVar4;
  float *pfVar5;
  float *pfVar6;
  int iVar7;
  float fVar8;
  float fVar9;
  float fVar11;
  float fVar12;
  undefined1 auVar10 [16];
  float fVar13;
  
  uVar1 = selection->firstPrimarySlot;
  fVar9 = 0.0;
  fVar11 = 0.0;
  fVar12 = 0.0;
  fVar13 = 0.0;
  *responseOut = 0.0;
  responseOut[1] = 0.0;
  responseOut[2] = 0.0;
  responseOut[3] = 0.0;
  if (uVar1 < 4) {
    pfVar6 = (float *)((uVar1 + 5) * 0x10 + (int)this);
    iVar7 = 4 - uVar1;
    do {
      fVar8 = pfVar6[-0xe] * direction[2] + pfVar6[-0xf] * direction[1] + pfVar6[-0x10] * *direction
      ;
      auVar10._4_4_ = fVar8;
      auVar10._0_4_ = fVar8;
      auVar10._8_4_ = fVar8;
      auVar10._12_4_ = fVar8;
      auVar10 = maxps(ZEXT816(0),auVar10);
      fVar8 = *pfVar6;
      pfVar3 = pfVar6 + 1;
      pfVar4 = pfVar6 + 2;
      pfVar5 = pfVar6 + 3;
      pfVar6 = pfVar6 + 4;
      iVar7 = iVar7 + -1;
      fVar9 = auVar10._0_4_ * fVar8 + fVar9;
      fVar11 = auVar10._4_4_ * *pfVar3 + fVar11;
      fVar12 = auVar10._8_4_ * *pfVar4 + fVar12;
      fVar13 = auVar10._12_4_ * *pfVar5 + fVar13;
    } while (iVar7 != 0);
    *responseOut = fVar9;
    responseOut[1] = fVar11;
    responseOut[2] = fVar12;
    responseOut[3] = fVar13;
    if (uVar1 < 4) {
      fVar9 = *responseOut;
      fVar11 = responseOut[1];
      fVar12 = responseOut[2];
      fVar13 = responseOut[3];
      pfVar6 = (float *)((uVar1 + 0xd) * 0x10 + (int)this);
      iVar7 = 4 - uVar1;
      do {
        fVar8 = pfVar6[-0xe] * direction[2] + pfVar6[-0xf] * direction[1] +
                pfVar6[-0x10] * *direction;
        auVar2._4_4_ = fVar8;
        auVar2._0_4_ = fVar8;
        auVar2._8_4_ = fVar8;
        auVar2._12_4_ = fVar8;
        auVar10 = maxps(ZEXT816(0),auVar2);
        fVar8 = *pfVar6;
        pfVar3 = pfVar6 + 1;
        pfVar4 = pfVar6 + 2;
        pfVar5 = pfVar6 + 3;
        pfVar6 = pfVar6 + 4;
        iVar7 = iVar7 + -1;
        fVar9 = auVar10._0_4_ * fVar8 + fVar9;
        fVar11 = auVar10._4_4_ * *pfVar3 + fVar11;
        fVar12 = auVar10._8_4_ * *pfVar4 + fVar12;
        fVar13 = auVar10._12_4_ * *pfVar5 + fVar13;
      } while (iVar7 != 0);
      *responseOut = fVar9;
      responseOut[1] = fVar11;
      responseOut[2] = fVar12;
      responseOut[3] = fVar13;
    }
  }
  return responseOut;
}

