/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl seven words. Clear uses null pattern and CB1F20; dig
   chooses BasementFloor or alternate lot+4BC floor product and checks CB1270. Per-quarter
   rectangle/diamond iteration. Only changed pattern undo is appended. The alternate product and
   exact four-quarter acceptance are independent of a host whole-tile projection. */

void __cdecl
BasementFloors_ApplyRegionPattern
          (void *param_1,char param_2,char param_3,char *param_4,char *param_5,int *param_6,
          void *param_7)

{
  char *pcVar1;
  int iVar2;
  bool bVar3;
  int *piVar4;
  int *piVar5;
  int *piVar6;
  bool bVar7;
  char cVar8;
  void *pvVar9;
  int *this;
  uint *puVar10;
  char *pcVar11;
  char *pcVar12;
  char *pcVar13;
  _GUID *p_Var14;
  uint uVar15;
  char *pcVar16;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  uint uStack_a8;
  uint uStack_a4;
  uint uStack_a0;
  uint uStack_9c;
  int *piStack_98;
  int *piStack_94;
  int *piStack_90;
  undefined4 uStack_8c;
  char *pcStack_88;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  uint uStack_50;
  uint uStack_4c;
  uint uStack_48;
  uint uStack_44;
  undefined1 auStack_40 [64];
  
  pvVar9 = (void *)FUN_004e4500(0x78,"UserTool/BasementPlacementHelper/FloorPatternUndoable",0);
  if (pvVar9 == (void *)0x0) {
    this = (int *)0x0;
  }
  else {
    this = FUN_00d22f60(pvVar9,0);
    if (this != (int *)0x0) {
      this[1] = this[1] + 1;
    }
  }
  (**(code **)(*this + 4))();
  FUN_00d22a90(this,param_1);
  pvVar9 = DAT_011ee034;
  bVar3 = false;
  if (param_3 == '\0') {
    puVar10 = &DAT_011ec8a0;
  }
  else {
    if ((param_1 == (void *)0x0) || (*(char *)((int)param_1 + 0x4bc) == '\0')) {
      puVar10 = (uint *)BasementProducts_GetFloorKey();
    }
    else {
      puVar10 = (uint *)FUN_00c8b3c0();
    }
    uStack_a8 = *puVar10;
    uStack_a4 = puVar10[1];
    uStack_a0 = puVar10[2];
    uStack_9c = puVar10[3];
    puVar10 = &uStack_a8;
  }
  uStack_50 = *puVar10;
  uStack_48 = puVar10[2];
  uStack_4c = puVar10[1];
  uStack_44 = puVar10[3];
  pvVar9 = (void *)ProductCatalog_FindExactKeyInFourBanks(pvVar9,&uStack_50);
  piStack_98 = (int *)0x0;
  piStack_94 = (int *)0x0;
  piStack_90 = (int *)0x0;
  uStack_8c = 0;
  pcStack_88 = "Lot/tPatterDesignModeData";
  uStack_80 = 0;
  uStack_7c = 0;
  uStack_78 = 0;
  uStack_74 = 0;
  uStack_70 = 0;
  uStack_6c = 0;
  uStack_68 = 0;
  uStack_64 = 0;
  uStack_60 = 0;
  uStack_5c = 0;
  uStack_58 = 0;
  uStack_54 = 0;
  if (param_3 == '\0') {
    uStack_80 = DAT_011ec8d0;
    uStack_7c = DAT_011ec8d4;
    uStack_78 = DAT_011ec8d8;
    uStack_74 = DAT_011ec8dc;
    uStack_60 = DAT_011ec8d0;
    uStack_5c = DAT_011ec8d4;
    uStack_58 = DAT_011ec8d8;
    uStack_54 = DAT_011ec8dc;
    uStack_70 = DAT_011ec8d0;
    uStack_6c = DAT_011ec8d4;
    uStack_68 = DAT_011ec8d8;
    uStack_64 = DAT_011ec8dc;
  }
  else if (param_6 == (int *)0x0) {
    if (((pvVar9 != (void *)0x0) &&
        (uVar15 = PatternProduct_CountAuthoredAndInstalledPresets(pvVar9), uVar15 != 0)) &&
       ((param_1 == (void *)0x0 || (*(char *)((int)param_1 + 0x4bc) == '\0')))) {
      uVar15 = FUN_00c99a00((int)pvVar9);
      PatternContext_PrepareFromBankProduct((int)param_1,&uStack_50,uVar15,1,&piStack_98);
    }
  }
  else {
    FUN_00c9efb0(&piStack_98,param_6);
  }
  if (param_2 == '\0') {
    pcVar13 = param_5;
    if (*param_4 <= *param_5) {
      pcVar13 = param_4;
    }
    pcVar16 = param_5 + 1;
    pcVar1 = param_4 + 1;
    pcVar11 = pcVar16;
    if (param_4[1] <= *pcVar16) {
      pcVar11 = pcVar1;
    }
    pcVar12 = param_5;
    if (*param_5 <= *param_4) {
      pcVar12 = param_4;
    }
    if (*pcVar16 <= *pcVar1) {
      pcVar16 = pcVar1;
    }
    uStack_ac._3_1_ = (char)*pcVar13 >> 7;
    uStack_ac._0_3_ = CONCAT12(param_4[2],CONCAT11(*pcVar11,*pcVar13));
    uStack_b0._3_1_ = (char)*pcVar11 >> 7;
    uStack_b0._0_3_ = CONCAT12(param_5[2],CONCAT11(*pcVar16 + -1,*pcVar12 + -1));
    TilePartRectangleIterator_Construct
              (&uStack_a8,(undefined2 *)&uStack_ac,(undefined2 *)&uStack_b0);
    bVar7 = TilePartRectangleIterator_IsDone((int)&uStack_a8);
    if (!bVar7) {
      do {
        pcVar13 = (char *)TilePartRectangleIterator_Current((int)&uStack_a8);
        if (param_3 == '\0') {
          uVar15 = FUN_00cb1f20(param_1,pcVar13,(void *)0x0,'\x01');
          if ((char)uVar15 != '\0') {
            p_Var14 = (_GUID *)FUN_00afbb10(auStack_40,&uStack_50,&uStack_70,&uStack_60,&uStack_80);
            FUN_00d23af0(this,(undefined2 *)pcVar13,p_Var14);
            goto LAB_00c9f503;
          }
        }
        else {
          cVar8 = FUN_00cb1270(param_1,pcVar13,(void *)0x0,'\0','\0');
          if (cVar8 != '\0') {
            p_Var14 = (_GUID *)FUN_00afbb10(auStack_40,&uStack_50,&uStack_70,&uStack_60,&uStack_80);
            FUN_00d23ad0(this,(undefined2 *)pcVar13,p_Var14);
LAB_00c9f503:
            bVar3 = true;
          }
        }
        TilePartRectangleIterator_Next((undefined1 *)&uStack_a8);
        bVar7 = TilePartRectangleIterator_IsDone((int)&uStack_a8);
      } while (!bVar7);
LAB_00c9f603:
      if (bVar3) {
        FUN_00d1b200(param_7,this);
        piVar4 = piStack_94;
        piVar5 = piStack_90;
        goto joined_r0x00c9f630;
      }
    }
  }
  else {
    FUN_00af7180(&uStack_a8,param_4,param_5);
    bVar7 = FUN_00af68d0((int)&uStack_a8);
    if (!bVar7) {
      do {
        pcVar13 = (char *)FUN_00af68c0((int)&uStack_a8);
        if (param_3 == '\0') {
          uVar15 = FUN_00cb1f20(param_1,pcVar13,(void *)0x0,'\x01');
          if ((char)uVar15 != '\0') {
            p_Var14 = (_GUID *)FUN_00afbb10(auStack_40,&uStack_50,&uStack_70,&uStack_60,&uStack_80);
            FUN_00d23af0(this,(undefined2 *)pcVar13,p_Var14);
            goto LAB_00c9f5e4;
          }
        }
        else {
          cVar8 = FUN_00cb1270(param_1,pcVar13,(void *)0x0,'\0','\0');
          if (cVar8 != '\0') {
            p_Var14 = (_GUID *)FUN_00afbb10(auStack_40,&uStack_50,&uStack_70,&uStack_60,&uStack_80);
            FUN_00d23ad0(this,(undefined2 *)pcVar13,p_Var14);
LAB_00c9f5e4:
            bVar3 = true;
          }
        }
        FUN_00af6e70((char *)&uStack_a8);
        bVar7 = FUN_00af68d0((int)&uStack_a8);
      } while (!bVar7);
      goto LAB_00c9f603;
    }
  }
  (**(code **)(*this + 8))();
  piVar4 = piStack_94;
  piVar5 = piStack_90;
joined_r0x00c9f630:
  for (; piVar6 = piStack_90, piVar4 < piStack_90; piVar4 = piVar4 + 1) {
    piStack_90 = piVar5;
    if ((int *)*piVar4 != (int *)0x0) {
      (**(code **)(*(int *)*piVar4 + 4))();
    }
    piVar5 = piStack_90;
    piStack_90 = piVar6;
  }
  piStack_90 = piVar5;
  if (piStack_94 != (int *)0x0) {
    Memory_FreeIfNonNull(piStack_94);
  }
  if (piStack_98 != (int *)0x0) {
    (**(code **)(*piStack_98 + 4))();
  }
  iVar2 = this[1];
  this[1] = iVar2 + -1;
  if (iVar2 + -1 == 0) {
    this[1] = 1;
    (**(code **)*this)(1);
  }
  return;
}

