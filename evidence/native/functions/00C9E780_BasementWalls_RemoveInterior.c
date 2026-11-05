/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl seven words. Skips pool/fountain walls via C5B9B0;
   region containment B03070. Ordinary dig considers basement-style walls only; removal also removes
   other region walls. Basement wall is removed only when opposite-side excavation matches; removal
   can record old wall patterns for closure. Releases unused undo rather than publishing it. */

void __cdecl
BasementWalls_RemoveInterior
          (void *param_1,char param_2,char *param_3,char *param_4,char param_5,void *param_6,
          void *param_7)

{
  char cVar1;
  bool bVar2;
  undefined4 *puVar3;
  int iVar4;
  int *piVar5;
  undefined4 uVar6;
  void *pvVar7;
  uint uVar8;
  uint uVar9;
  undefined4 *puVar10;
  int *this;
  int iStack_170;
  undefined2 uStack_16c;
  char cStack_166;
  bool bStack_165;
  char cStack_164;
  char cStack_163;
  char cStack_162;
  undefined1 uStack_161;
  char cStack_160;
  char cStack_15f;
  char cStack_15e;
  undefined1 uStack_15d;
  void *pvStack_158;
  int *local_154;
  uint uStack_150;
  int *piStack_14c;
  uint auStack_144 [2];
  undefined1 auStack_13c [4];
  undefined4 *puStack_138;
  uint uStack_134;
  undefined4 uStack_130;
  float fStack_12c;
  undefined4 uStack_128;
  undefined4 uStack_124;
  char *pcStack_120;
  undefined4 auStack_11c [3];
  int iStack_110;
  undefined2 uStack_10c;
  undefined4 auStack_108 [32];
  undefined4 auStack_88 [33];
  
  puVar3 = (undefined4 *)FUN_004e4500(0x110,"UserTool/BasementPlacementHelper/WallUndoable",0);
  if (puVar3 == (undefined4 *)0x0) {
    local_154 = (int *)0x0;
  }
  else {
    local_154 = FUN_00d2ddd0(puVar3);
    if (local_154 != (int *)0x0) {
      local_154[1] = local_154[1] + 1;
    }
  }
  this = local_154;
  (**(code **)(*local_154 + 4))();
  FUN_00d2c870(this,param_1);
  cStack_166 = '\0';
  piStack_14c = (int *)BasementProducts_GetWallKey();
  pvVar7 = *(void **)((int)param_1 + 0x298);
  fStack_12c = 1.0;
  uStack_128 = 0x40000000;
  pcStack_120 = "UserTool/BasementPlacementHelper/WallLocSet";
  uStack_134 = 1;
  puStack_138 = &DAT_0114d900;
  uStack_130 = 0;
  uStack_124 = 0;
  pvStack_158 = pvVar7;
  iVar4 = FUN_00b47e40((int)pvVar7);
  auStack_144[0] = iVar4 - 1;
  if (-1 < (int)auStack_144[0]) {
    do {
      iStack_170 = -0xff0001;
      uStack_16c = 0xff;
      FUN_00b47e60(pvVar7,auStack_144[0],(undefined1 *)&iStack_170);
      piVar5 = FUN_00b47df0(pvVar7,(char *)&iStack_170,'\0');
      uVar6 = FUN_00c5b9b0(piVar5,'\x01');
      if (((char)uVar6 == '\0') &&
         (((param_5 != '\0' ||
           ((((*piVar5 == *piStack_14c && (piVar5[2] == piStack_14c[2])) &&
             (piVar5[3] == piStack_14c[3])) && (piVar5[1] == piStack_14c[1])))) &&
          (uVar6 = FUN_00b03070(param_2,param_3,param_4,(char *)&iStack_170), (char)uVar6 == '\0')))
         ) {
        if ((param_5 == '\0') ||
           (((*piVar5 == *piStack_14c && (piVar5[2] == piStack_14c[2])) &&
            ((piVar5[3] == piStack_14c[3] && (piVar5[1] == piStack_14c[1])))))) {
          cStack_164 = -1;
          cStack_163 = -1;
          cStack_162 = '\0';
          uStack_161 = 0xff;
          cStack_160 = -1;
          cStack_15f = -1;
          cStack_15e = '\0';
          uStack_15d = 0xff;
          WallLocator_QueryFirstAdjacentTile((char *)&iStack_170,(undefined2 *)&cStack_164);
          WallLocator_QueryOtherAdjacentTile((undefined2 *)&iStack_170,(undefined2 *)&cStack_160);
          bStack_165 = false;
          if (((-1 < cStack_164) && ((int)cStack_164 < *(int *)((int)param_1 + 0x174))) &&
             ((-1 < cStack_163 &&
              ((((int)cStack_163 < *(int *)((int)param_1 + 0x178) &&
                (*(int *)((int)param_1 + 0x17c) <= (int)cStack_162)) &&
               ((int)cStack_162 <= *(int *)((int)param_1 + 0x180))))))) {
            bStack_165 = LotBasement_TestAnyRequestedPart(param_1,&cStack_164);
          }
          bVar2 = false;
          if ((((-1 < cStack_160) && ((int)cStack_160 < *(int *)((int)param_1 + 0x174))) &&
              ((-1 < cStack_15f &&
               (((int)cStack_15f < *(int *)((int)param_1 + 0x178) &&
                (*(int *)((int)param_1 + 0x17c) <= (int)cStack_15e)))))) &&
             ((int)cStack_15e <= *(int *)((int)param_1 + 0x180))) {
            bVar2 = LotBasement_TestAnyRequestedPart(param_1,&cStack_160);
          }
          if ((bStack_165 == bVar2) &&
             (cVar1 = FUN_00d2e630(this,(int)param_1,(char *)&iStack_170,'\x01'), cVar1 != '\0'))
          goto LAB_00c9eabc;
        }
        else {
          cVar1 = FUN_00d2e630(this,(int)param_1,(char *)&iStack_170,'\x01');
          if (cVar1 != '\0') {
            if (param_7 != (void *)0x0) {
              uStack_150 = uStack_150 & 0xffffff00;
              FUN_00a56040(auStack_13c,auStack_11c,(char *)&iStack_170);
            }
LAB_00c9eabc:
            cStack_166 = '\x01';
          }
        }
      }
      auStack_144[0] = auStack_144[0] - 1;
      pvVar7 = pvStack_158;
    } while (-1 < (int)auStack_144[0]);
    if (cStack_166 != '\0') {
      if (param_7 != (void *)0x0) {
        piStack_14c = (int *)puStack_138[uStack_134];
        pvVar7 = (void *)FUN_00d2c8a0((int)this);
        uVar9 = 0;
        pvStack_158 = pvVar7;
        if (0 < (int)pvVar7) {
          do {
            iStack_170 = -0xff0001;
            uStack_16c = 0xff;
            FUN_00afbc90(auStack_88);
            uVar8 = FUN_00d2c8f0(this,uVar9,&iStack_170,auStack_88);
            if (((char)uVar8 != '\0') &&
               (puVar3 = (undefined4 *)FUN_00a55f20(auStack_13c,auStack_144,(char *)&iStack_170),
               (int *)*puVar3 != piStack_14c)) {
              iStack_110 = iStack_170;
              uStack_10c = uStack_16c;
              puVar3 = auStack_88;
              puVar10 = auStack_108;
              for (iVar4 = 0x20; iVar4 != 0; iVar4 = iVar4 + -1) {
                *puVar10 = *puVar3;
                puVar3 = puVar3 + 1;
                puVar10 = puVar10 + 1;
              }
              uStack_150 = uStack_150 & 0xffffff00;
              FUN_00c9deb0(param_7,(undefined4 *)&cStack_160,&iStack_110);
              pvVar7 = pvStack_158;
              this = local_154;
            }
            uVar9 = uVar9 + 1;
          } while ((int)uVar9 < (int)pvVar7);
        }
      }
      FUN_00d1b200(param_6,this);
      goto LAB_00c9e84f;
    }
  }
  (**(code **)(*this + 8))();
LAB_00c9e84f:
  FUN_0073ebe0((int)puStack_138,uStack_134);
  uStack_130 = 0;
  if (1 < uStack_134) {
    Memory_FreeIfNonNull(puStack_138);
  }
  iVar4 = this[1];
  this[1] = iVar4 + -1;
  if (iVar4 + -1 == 0) {
    this[1] = 1;
    (**(code **)*this)(1);
  }
  return;
}

