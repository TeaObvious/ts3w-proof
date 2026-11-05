/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl six words, ST0 result. Quarter iteration selects
   currently differing excavation parts. Dig adds (tileCost+selectedFloorPrice)*0.25; removal uses
   existing floor price plus tile cost and optional0.8 factor. Float intermediates are stored.
   Lot+4BC selects alternate floor product; not uniform BasementFloor for every lot. */

float10 __cdecl
BasementRegion_ComputeFloorAndDigCost
          (void *param_1,char param_2,char param_3,char *param_4,char *param_5,char param_6)

{
  char *pcVar1;
  void *pvVar2;
  bool bVar3;
  uint *puVar4;
  uint uVar5;
  undefined1 *this;
  char *pcVar6;
  char *pcVar7;
  char *pcVar8;
  char *pcVar9;
  float10 *unaff_EDI;
  float10 extraout_ST0;
  float10 fVar10;
  float local_7c;
  char local_78;
  undefined1 auStack_77 [3];
  char local_74;
  char local_73;
  char local_72;
  float local_70;
  float local_6c;
  uint local_68;
  uint local_64;
  uint local_60;
  uint local_5c;
  float local_58;
  void *local_54;
  uint local_50;
  uint local_4c;
  uint local_48;
  uint local_44;
  uint local_40 [16];
  
  pvVar2 = DAT_011ee034;
  local_7c = 0.0;
  if (param_3 == '\0') {
    puVar4 = &DAT_011ec8a0;
  }
  else {
    if ((param_1 == (void *)0x0) || (*(char *)((int)param_1 + 0x4bc) == '\0')) {
      puVar4 = (uint *)BasementProducts_GetFloorKey();
    }
    else {
      puVar4 = (uint *)FUN_00c8b3c0();
    }
    local_68 = *puVar4;
    local_64 = puVar4[1];
    local_60 = puVar4[2];
    local_5c = puVar4[3];
    puVar4 = &local_68;
  }
  local_50 = *puVar4;
  local_48 = puVar4[2];
  local_4c = puVar4[1];
  local_44 = puVar4[3];
  uVar5 = ProductCatalog_FindExactKeyInFourBanks(pvVar2,&local_50);
  if (param_6 == '\0') {
    local_6c = 1.0;
  }
  else {
    local_6c = 0.8;
  }
  if (uVar5 == 0) {
    local_58 = 0.0;
  }
  else {
    local_58 = *(float *)(uVar5 + 0x58);
  }
  pvVar2 = *(void **)((int)param_1 + 0x290);
  local_54 = pvVar2;
  this = FUN_00aafe30();
  LotSettings_GetBasementTileCost(this,unaff_EDI);
  local_70 = (float)extraout_ST0;
  if (param_2 == '\0') {
    pcVar8 = param_5;
    if (*param_4 <= *param_5) {
      pcVar8 = param_4;
    }
    pcVar9 = param_5 + 1;
    pcVar1 = param_4 + 1;
    pcVar6 = pcVar9;
    if (param_4[1] <= param_5[1]) {
      pcVar6 = pcVar1;
    }
    pcVar7 = param_5;
    if (*param_5 <= *param_4) {
      pcVar7 = param_4;
    }
    if (*pcVar9 <= *pcVar1) {
      pcVar9 = pcVar1;
    }
    local_74 = *pcVar7 + -1;
    local_72 = param_5[2];
    local_73 = *pcVar9 + -1;
    auStack_77[2] = (char)*pcVar8 >> 7;
    _local_78 = CONCAT31(CONCAT12(auStack_77[2],CONCAT11(param_4[2],*pcVar6)),*pcVar8);
    TilePartRectangleIterator_Construct(&local_68,(undefined2 *)&local_78,(undefined2 *)&local_74);
    bVar3 = TilePartRectangleIterator_IsDone((int)&local_68);
    pvVar2 = local_54;
    if (!bVar3) {
      do {
        pcVar8 = (char *)TilePartRectangleIterator_Current((int)&local_68);
        bVar3 = LotBasement_TestAnyRequestedPart(param_1,pcVar8);
        if (bVar3 != (bool)param_3) {
          if (param_3 == '\0') {
            FUN_00afba70(local_40);
            FUN_00a8fa90(pvVar2,pcVar8,local_40);
            fVar10 = FUN_00cb0e60(local_40,'\0');
            local_7c = (float)((float10)local_7c -
                              (fVar10 + (float10)local_70) * (float10)local_6c * (float10)0.25);
          }
          else {
            local_7c = (local_70 + local_58) * 0.25 + local_7c;
          }
        }
        TilePartRectangleIterator_Next((undefined1 *)&local_68);
        bVar3 = TilePartRectangleIterator_IsDone((int)&local_68);
      } while (!bVar3);
      return (float10)local_7c;
    }
  }
  else {
    FUN_00af7180(&local_68,param_4,param_5);
    bVar3 = FUN_00af68d0((int)&local_68);
    while (!bVar3) {
      pcVar8 = (char *)FUN_00af68c0((int)&local_68);
      bVar3 = LotBasement_TestAnyRequestedPart(param_1,pcVar8);
      if (bVar3 != (bool)param_3) {
        if (param_3 == '\0') {
          FUN_00afba70(local_40);
          FUN_00a8fa90(pvVar2,pcVar8,local_40);
          fVar10 = FUN_00cb0e60(local_40,'\0');
          local_7c = (float)((float10)local_7c -
                            (fVar10 + (float10)local_70) * (float10)local_6c * (float10)0.25);
        }
        else {
          local_7c = (local_70 + local_58) * 0.25 + local_7c;
        }
      }
      FUN_00af6e70((char *)&local_68);
      bVar3 = FUN_00af68d0((int)&local_68);
    }
  }
  return (float10)local_7c;
}

