/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 physicalECXthis,noargs/plainRETvoid. Boundlot50 required AND floorentrycount68!=0
   ORwaterentrycount84!=0. BracketsmanagerfloorchangesA8AD70/A8EE10.
   WalkfloorRBtree58/5C,pointpackedkey10,priorheightFloat3214/current18;A930A0appliespriorheight,thenSWAPRAWDWORD14/18.
   WaterRBtree74/78 usesX10/Z14,priorFloat3218/current1C;AEE970appliesprior,swapDWORDs.
   Pondpartmap90 togglesphysicalbitandstoredjournalbool,thenwaterrefreshAED470. GenuineC
   numericcasts(float)piVar6[5/6] are REINTERPRETATIONartifacts:
   originalFLDloadsFloat32memory;donotconvertInt32heightbitsnumerically.
   ThisownedbodyhasnodirectToolUndoable_ApplyCharge/FamilyFundscall;downstreamheight/watermessages/dirtyeffectsremaincalleecontracts.
   SculptD2BF20invokesthisBEFOREitsownwater/pondjournal,thenD2C090/0C0monetarycallisAFTERreturn.
   BaseHasChangesD213A0testsONLYfloorcount68,notwater84.
   Completeatomicmessage/lifetime/exceptionrecoverynotinferredfromthisswap. */

void __thiscall FloorElevationUndoable_SwapCapturedState(void *this)

{
  int *piVar1;
  float fVar2;
  int iVar3;
  int iVar4;
  ushort *puVar5;
  int *piVar6;
  ushort *puVar7;
  int iVar8;
  byte bVar9;
  byte *pbVar10;
  
  if ((*(int *)((int)this + 0x50) != 0) &&
     ((*(int *)((int)this + 0x68) != 0 || (*(int *)((int)this + 0x84) != 0)))) {
    iVar3 = *(int *)(*(int *)((int)this + 0x50) + 0x290);
    FUN_00a8ad70(iVar3);
    iVar4 = *(int *)(*(int *)((int)this + 0x50) + 0x294);
    for (piVar6 = *(int **)((int)this + 0x5c); piVar6 != (int *)((int)this + 0x58);
        piVar6 = FUN_004e1030(piVar6)) {
      if (*(int *)((int)this + 0x50) != 0) {
        iVar8 = piVar6[6];
        fVar2 = (float)piVar6[5];
        FUN_00a930a0(*(void **)(*(int *)((int)this + 0x50) + 0x290),fVar2,(char *)(piVar6 + 4),
                     '\x01');
        piVar6[6] = (int)fVar2;
        piVar6[5] = iVar8;
      }
    }
    for (piVar6 = *(int **)((int)this + 0x78); piVar6 != (int *)((int)this + 0x74);
        piVar6 = FUN_004e1030(piVar6)) {
      if (*(int *)((int)this + 0x50) != 0) {
        iVar8 = piVar6[7];
        fVar2 = (float)piVar6[6];
        FUN_00aee970(*(void **)(*(int *)((int)this + 0x50) + 0x294),piVar6[4],piVar6[5],fVar2);
        piVar6[7] = (int)fVar2;
        piVar6[6] = iVar8;
      }
    }
    piVar6 = *(int **)((int)this + 0x90);
    puVar7 = (ushort *)*piVar6;
    if (puVar7 == (ushort *)0x0) {
      piVar6 = piVar6 + 1;
      iVar8 = *piVar6;
      while (iVar8 == 0) {
        piVar6 = piVar6 + 1;
        iVar8 = *piVar6;
      }
      puVar7 = (ushort *)*piVar6;
    }
    puVar5 = *(ushort **)(*(int *)((int)this + 0x90) + *(int *)((int)this + 0x94) * 4);
    while (puVar7 != puVar5) {
      iVar8 = (*puVar7 & 0xff) * *(int *)(*(int *)(iVar4 + 0xcc) + 8) + (uint)(*puVar7 >> 8);
      bVar9 = '\x01' << ((byte)iVar8 & 7);
      pbVar10 = (byte *)((iVar8 >> 3) + *(int *)(*(int *)(iVar4 + 0xcc) + 0xc));
      if ((char)puVar7[1] == '\0') {
        *pbVar10 = *pbVar10 & ~bVar9;
      }
      else {
        *pbVar10 = *pbVar10 | bVar9;
      }
      *(bool *)(puVar7 + 1) = (char)puVar7[1] == '\0';
      puVar7 = *(ushort **)(puVar7 + 2);
      while (puVar7 == (ushort *)0x0) {
        piVar1 = piVar6 + 1;
        piVar6 = piVar6 + 1;
        puVar7 = (ushort *)*piVar1;
      }
    }
    if (iVar4 != 0) {
      FUN_00aed470(iVar4);
    }
    FUN_00a8ee10(iVar3);
    return;
  }
  return;
}

