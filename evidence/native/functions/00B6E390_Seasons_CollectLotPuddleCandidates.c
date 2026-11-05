/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Collects candidate ground puddle tile parts around qualifying grid
   vertices. Restricted ground and excluded commercial subtype suppress candidates. Noise sampled
   assuming full wetness. Eight-part vertex ring feeds the manager candidate set; filters physical
   lot bounds. Consult instructions for packed tile order/width. */

void __fastcall Seasons_CollectLotPuddleCandidates(int param_1)

{
  int iVar1;
  bool bVar2;
  undefined4 uVar3;
  char *pcVar4;
  float10 fVar5;
  undefined1 local_48 [12];
  LotXZLevel local_3c;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if ((*(int *)(param_1 + 0x10) == 0) && (*(char *)(param_1 + 0x38) == '\0')) {
    *(undefined1 *)(param_1 + 0x38) = 1;
    iVar1 = *(int *)(DAT_011edbc4 + 0x74);
    bVar2 = FlagWord_TestAnyMask(&DAT_011cede0,0x8000);
    if ((bVar2) && ((iVar1 != 0 && (*(int *)(param_1 + 0x34) != 0)))) {
      FUN_00793350(param_1 + 4);
      iVar1 = *(int *)(param_1 + 0x34);
      uVar3 = FUN_00624bc0(iVar1);
      if (((char)uVar3 == '\0') && (*(char *)(iVar1 + 0x4bc) == '\0')) {
        FUN_00af6530(local_48,0,iVar1);
        bVar2 = TilePartRectangleIterator_IsDone((int)local_48);
        while (!bVar2) {
          pcVar4 = (char *)TilePartRectangleIterator_Current((int)local_48);
          local_3c.z = (float)(int)pcVar4[1];
          local_3c.level = (int)pcVar4[2];
          local_3c.x = (float)(int)*pcVar4;
          fVar5 = LotLevelHeight_SampleLocalPosition
                            (*(void **)(*(int *)(param_1 + 0x34) + 0x290),&local_3c);
          fStack_2c = (float)fVar5;
          fStack_28 = local_3c.z;
          fStack_24 = local_3c.x;
          local_30 = local_3c.x;
          local_20 = local_3c.x;
          fStack_18 = local_3c.z;
          fStack_14 = local_3c.x;
          fStack_1c = fStack_2c;
          Lot_LocalPositionToWorldVector(*(void **)(param_1 + 0x34),&local_20,&local_20);
          uVar3 = Seasons_HasRainPuddleAtPoint(&local_20,*(void **)(param_1 + 0x34),'\0','\x01');
          if ((char)uVar3 != '\0') {
            FUN_00af8320(*(int *)(param_1 + 0x34),(void *)(param_1 + 4),&local_3c.x);
          }
          FUN_00af6610(local_48);
          bVar2 = TilePartRectangleIterator_IsDone((int)local_48);
        }
      }
    }
  }
  return;
}

