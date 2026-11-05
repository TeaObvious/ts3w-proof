/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 local light rig contract. ECX rig+candidateVector+selection RET8. Signed
   count=(end-begin)/48; primaryCount=signedmin(count,selection.maxPrimary). Copies
   firstprimaryCount toprimary slots startingselection.first, XYZ direction/color
   withfourthlaneZERO. Secondarycount=signedmin(count-4,selection.maxSecondary); nonpositive skips,
   NOT count-primaryCount. Secondary starts candidate indexprimaryCount anddestsecondary0, copies
   FULLfourlane direction/color. For{1,3,4}, N4..8 one tailcandidate isexcluded (notcompletefill).
   Unwritten bank slots are not cleared here. Optional1159D5D gates6B9410. Opposingfill only
   if(state+1D4==0 ORflags20) AND1159D5C; whenflags20 also invokes6B95E0 usingdynamic11D1BD8.
   Balanceprecedesmidget. Flags/settings/admission not universalenabled. */

void __thiscall
Rig_SelectCandidateBanks(void *this,void *candidateVector,Analyst_RigBankSelection *selection)

{
  undefined4 *puVar1;
  uint uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  float *pfVar7;
  int iVar8;
  uint uVar9;
  uint uVar10;
  int iVar11;
  int iVar12;
  uint local_3c;
  
  uVar2 = (*(int *)((int)candidateVector + 4) - *(int *)candidateVector) / 0x30;
  uVar9 = selection->firstPrimarySlot;
  iVar12 = 0;
  uVar10 = uVar2;
  if ((int)selection->maxPrimaryCandidates < (int)uVar2) {
    uVar10 = selection->maxPrimaryCandidates;
  }
                    /* Secondary count uses candidateCOUNT MINUS FOUR regardlessprimaryCount/start;
                       signednonpositivecountskipsloop. */
  local_3c = selection->maxSecondaryCandidates;
  if ((int)(uVar2 - 4) <= (int)selection->maxSecondaryCandidates) {
    local_3c = uVar2 - 4;
  }
  if (3 < (int)uVar10) {
    iVar11 = (uVar10 - 4 >> 2) + 1;
    puVar6 = (undefined4 *)((uVar9 + 5) * 0x10 + (int)this);
    iVar12 = iVar11 * 4;
    iVar8 = 0;
    uVar9 = uVar9 + iVar12;
    do {
      puVar1 = (undefined4 *)(*(int *)candidateVector + iVar8);
      uVar3 = puVar1[1];
      uVar4 = puVar1[2];
      puVar6[-0x10] = *puVar1;
      puVar6[-0xf] = uVar3;
      puVar6[-0xe] = uVar4;
      puVar6[-0xd] = 0;
      puVar1 = (undefined4 *)(iVar8 + 0x10 + *(int *)candidateVector);
      uVar3 = puVar1[1];
      uVar4 = puVar1[2];
      *puVar6 = *puVar1;
      puVar6[1] = uVar3;
      puVar6[2] = uVar4;
      puVar6[3] = 0;
      puVar1 = (undefined4 *)(iVar8 + 0x30 + *(int *)candidateVector);
      uVar3 = puVar1[1];
      uVar4 = puVar1[2];
      puVar6[-0xc] = *puVar1;
      puVar6[-0xb] = uVar3;
      puVar6[-10] = uVar4;
      puVar6[-9] = 0;
      puVar1 = (undefined4 *)(iVar8 + 0x40 + *(int *)candidateVector);
      uVar3 = puVar1[1];
      uVar4 = puVar1[2];
      puVar6[4] = *puVar1;
      puVar6[5] = uVar3;
      puVar6[6] = uVar4;
      puVar6[7] = 0;
      puVar1 = (undefined4 *)(iVar8 + 0x60 + *(int *)candidateVector);
      uVar3 = puVar1[1];
      uVar4 = puVar1[2];
      puVar6[-8] = *puVar1;
      puVar6[-7] = uVar3;
      puVar6[-6] = uVar4;
      puVar6[-5] = 0;
      puVar1 = (undefined4 *)(iVar8 + 0x70 + *(int *)candidateVector);
      uVar3 = puVar1[1];
      uVar4 = puVar1[2];
      puVar6[8] = *puVar1;
      puVar6[9] = uVar3;
      puVar6[10] = uVar4;
      puVar6[0xb] = 0;
      puVar1 = (undefined4 *)(*(int *)candidateVector + 0x90 + iVar8);
      uVar3 = puVar1[1];
      uVar4 = puVar1[2];
      puVar6[-4] = *puVar1;
      puVar6[-3] = uVar3;
      puVar6[-2] = uVar4;
      puVar6[-1] = 0;
      puVar1 = (undefined4 *)(iVar8 + 0xa0 + *(int *)candidateVector);
      uVar3 = puVar1[1];
      uVar4 = puVar1[2];
      puVar6[0xc] = *puVar1;
      puVar6[0xd] = uVar3;
      puVar6[0xe] = uVar4;
      puVar6[0xf] = 0;
      puVar6 = puVar6 + 0x10;
      iVar8 = iVar8 + 0xc0;
      iVar11 = iVar11 + -1;
    } while (iVar11 != 0);
  }
  if (iVar12 < (int)uVar10) {
    puVar6 = (undefined4 *)((uVar9 + 5) * 0x10 + (int)this);
    iVar11 = uVar10 - iVar12;
    iVar8 = iVar12 * 0x30;
    iVar12 = iVar12 + iVar11;
    do {
      puVar1 = (undefined4 *)(*(int *)candidateVector + iVar8);
      uVar3 = puVar1[1];
      uVar4 = puVar1[2];
      puVar6[-0x10] = *puVar1;
      puVar6[-0xf] = uVar3;
      puVar6[-0xe] = uVar4;
      puVar6[-0xd] = 0;
      puVar1 = (undefined4 *)(*(int *)candidateVector + 0x10 + iVar8);
      uVar3 = puVar1[1];
      uVar4 = puVar1[2];
      *puVar6 = *puVar1;
      puVar6[1] = uVar3;
      puVar6[2] = uVar4;
      puVar6[3] = 0;
      puVar6 = puVar6 + 4;
      iVar8 = iVar8 + 0x30;
      iVar11 = iVar11 + -1;
    } while (iVar11 != 0);
  }
  if (0 < (int)local_3c) {
    iVar12 = iVar12 * 0x30;
    puVar6 = (undefined4 *)((int)this + 0xd0);
    do {
      puVar1 = (undefined4 *)(*(int *)candidateVector + iVar12);
      uVar3 = puVar1[1];
      uVar4 = puVar1[2];
      uVar5 = puVar1[3];
      puVar6[-0x10] = *puVar1;
      puVar6[-0xf] = uVar3;
      puVar6[-0xe] = uVar4;
      puVar6[-0xd] = uVar5;
      puVar1 = (undefined4 *)(*(int *)candidateVector + 0x10 + iVar12);
      uVar3 = puVar1[1];
      uVar4 = puVar1[2];
      uVar5 = puVar1[3];
      *puVar6 = *puVar1;
      puVar6[1] = uVar3;
      puVar6[2] = uVar4;
      puVar6[3] = uVar5;
      iVar12 = iVar12 + 0x30;
      puVar6 = puVar6 + 4;
      local_3c = local_3c - 1;
    } while (local_3c != 0);
  }
  if (DAT_01159d5d != '\0') {
    Rig_BalanceSelectedResponse(this,selection);
  }
  if ((((*(int *)((int)this + 0x1d4) == 0) || ((*(byte *)((int)this + 0x224) & 0x20) != 0)) &&
      (DAT_01159d5c != '\0')) &&
     (Rig_InsertOpposingFill(this), (*(byte *)((int)this + 0x224) & 0x20) != 0)) {
    pfVar7 = (float *)FUN_007e51a0(&DAT_011d1bd8);
    FUN_006b95e0(this,*pfVar7);
  }
  return;
}

