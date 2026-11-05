/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PhysicalthiscallECXnoargs/plainRETvoid. BaseheightstateswapD213B0 first;
   walkcapturedheightmapBC,switchprior/currentwaterheightwhenunequal throughAEE970,swapstoredvalues;
   walkpondpartmapDC,writeoriginalbittheninvertjournalbit;
   ifheightmapC4nonzeroandlotterrainB4nonnull invokeAED470/AF0A70refresh. Nochargeinside:
   wrappersD2C090/0C0handlemoneyAFTERthisgeometryswap.
   Hostimmutablefullrevisionundoisallowedownershipimplementation,butcompletewater/pondandheightrecordlogicisnotreconstructedbyscalarfinanceunit.
    */

void __thiscall TerrainSculptUndoable_SwapHeightAndPondState(void *this)

{
  int *piVar1;
  undefined4 uVar2;
  ushort *puVar3;
  ushort *puVar4;
  int iVar5;
  byte bVar6;
  int *piVar7;
  int iVar8;
  byte *pbVar9;
  
  if (*(int *)((int)this + 0xb0) != 0) {
    FUN_00d213b0((int)this);
    piVar7 = *(int **)((int)this + 0xbc);
    iVar8 = *piVar7;
    if (iVar8 == 0) {
      piVar7 = piVar7 + 1;
      iVar8 = *piVar7;
      while (iVar8 == 0) {
        piVar7 = piVar7 + 1;
        iVar8 = *piVar7;
      }
      iVar8 = *piVar7;
    }
    iVar5 = *(int *)(*(int *)((int)this + 0xbc) + *(int *)((int)this + 0xc0) * 4);
    while (iVar8 != iVar5) {
      if (*(float *)(iVar8 + 0xc) != *(float *)(iVar8 + 0x10)) {
        FUN_00aee970(*(void **)((int)this + 0xb4),*(uint *)(iVar8 + 4),*(int *)(iVar8 + 8),
                     *(float *)(iVar8 + 0xc));
        uVar2 = *(undefined4 *)(iVar8 + 0xc);
        *(undefined4 *)(iVar8 + 0xc) = *(undefined4 *)(iVar8 + 0x10);
        *(undefined4 *)(iVar8 + 0x10) = uVar2;
      }
      iVar8 = *(int *)(iVar8 + 0x18);
      while (iVar8 == 0) {
        piVar1 = piVar7 + 1;
        piVar7 = piVar7 + 1;
        iVar8 = *piVar1;
      }
    }
    piVar7 = *(int **)((int)this + 0xdc);
    puVar4 = (ushort *)*piVar7;
    if (puVar4 == (ushort *)0x0) {
      piVar7 = piVar7 + 1;
      iVar8 = *piVar7;
      while (iVar8 == 0) {
        piVar7 = piVar7 + 1;
        iVar8 = *piVar7;
      }
      puVar4 = (ushort *)*piVar7;
    }
    puVar3 = *(ushort **)(*(int *)((int)this + 0xdc) + *(int *)((int)this + 0xe0) * 4);
    while (puVar4 != puVar3) {
      iVar8 = *(int *)(*(int *)((int)this + 0xb4) + 0xcc);
      iVar5 = (*puVar4 & 0xff) * *(int *)(iVar8 + 8) + (uint)(*puVar4 >> 8);
      bVar6 = '\x01' << ((byte)iVar5 & 7);
      pbVar9 = (byte *)((iVar5 >> 3) + *(int *)(iVar8 + 0xc));
      if ((char)puVar4[1] == '\0') {
        *pbVar9 = *pbVar9 & ~bVar6;
      }
      else {
        *pbVar9 = *pbVar9 | bVar6;
      }
      *(bool *)(puVar4 + 1) = (char)puVar4[1] == '\0';
      puVar4 = *(ushort **)(puVar4 + 2);
      while (puVar4 == (ushort *)0x0) {
        piVar1 = piVar7 + 1;
        piVar7 = piVar7 + 1;
        puVar4 = (ushort *)*piVar1;
      }
    }
    if ((*(int *)((int)this + 0xc4) != 0) && (*(int *)((int)this + 0xb4) != 0)) {
      FUN_00aed470(*(int *)((int)this + 0xb4));
      FUN_00af0a70(*(void **)((int)this + 0xb4));
      return;
    }
  }
  return;
}

