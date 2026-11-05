/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 local light rig contract. cdeclbegin/end RET,48byterecordinsertionpass.
   InsertsnextrecordbackwardonlywhenCOMISSnewBrightness(+28),previousBrightness thenNOTJBE:
   strictorderedgreater. Equalorunorderedstops; copieswhole48bytepayload.
   Thisselectedpassisdescendinganddoesnotmoveequalkeysacrossoneanother,
   butpriorpartition6BAE70/largesort6B8A00notreviewed, sofullsortstabilityunresolved. */

void __cdecl RigCandidates_InsertionSort(void *begin,void *end)

{
  float fVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  undefined4 *puVar16;
  undefined4 *puVar17;
  undefined4 *puVar18;
  
  puVar17 = begin;
  if (begin != end) {
    while (puVar16 = puVar17 + 0xc, puVar16 != end) {
      uVar2 = puVar17[0x17];
      uVar3 = puVar17[0x15];
      uVar5 = *puVar16;
      uVar6 = puVar17[0xd];
      uVar7 = puVar17[0xe];
      uVar8 = puVar17[0xf];
      uVar9 = puVar17[0x10];
      uVar10 = puVar17[0x11];
      uVar11 = puVar17[0x12];
      uVar12 = puVar17[0x13];
      uVar4 = puVar17[0x14];
      fVar1 = (float)puVar17[0x16];
      puVar18 = puVar16;
      if (puVar16 != begin) {
        puVar17 = puVar17 + 8;
        do {
          if (fVar1 < (float)puVar17[2] || fVar1 == (float)puVar17[2]) break;
          uVar13 = puVar17[-7];
          uVar14 = puVar17[-6];
          uVar15 = puVar17[-5];
          *puVar18 = puVar17[-8];
          puVar18[1] = uVar13;
          puVar18[2] = uVar14;
          puVar18[3] = uVar15;
          puVar17[8] = puVar17[-4];
          puVar17[9] = puVar17[-3];
          puVar17[10] = puVar17[-2];
          puVar17[0xb] = puVar17[-1];
          puVar17[0xc] = *puVar17;
          puVar17[0xd] = puVar17[1];
          puVar17[0xe] = puVar17[2];
          puVar17[0xf] = puVar17[3];
          puVar18 = puVar18 + -0xc;
          puVar17 = puVar17 + -0xc;
        } while (puVar18 != begin);
      }
      *puVar18 = uVar5;
      puVar18[1] = uVar6;
      puVar18[2] = uVar7;
      puVar18[3] = uVar8;
      puVar18[4] = uVar9;
      puVar18[5] = uVar10;
      puVar18[6] = uVar11;
      puVar18[7] = uVar12;
      puVar18[9] = uVar3;
      puVar18[8] = uVar4;
      puVar18[10] = fVar1;
      puVar18[0xb] = uVar2;
      puVar17 = puVar16;
    }
  }
  return;
}

