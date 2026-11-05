/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Physical ECX tool plus undoable pointer and low-byte option in two DWORD stack slots, RET8.
   Virtual34 supplies raw float cost; abs-cost .01f gate, stored-cost rounding under ambient native
   FP state and nonzero signed charge precede cost effects. Sound requires byte1C clear and effect20
   present or supplied option. Positive stops previous tool30 with parameter0, allocates/stores an
   ID and submits buy key011EBF58 through860880; negative submits sell key011EBF60 throughCD04A0.
   Final D39980 submission follows the cost/effect/audio work. Full undoable children and rounding
   environment remain separately scoped. */

void __thiscall UserTool_SubmitUndoableWithCostEffects(void *this,int *param_1,char param_2)

{
  int iVar1;
  void *pvVar2;
  undefined4 *puVar3;
  float *pfVar4;
  int *piVar5;
  undefined4 uVar6;
  char *pcVar7;
  undefined4 *puVar8;
  float10 fVar9;
  byte *pbVar10;
  uint uVar11;
  undefined4 *puStack_a8;
  float fStack_a4;
  float afStack_a0 [4];
  byte abStack_90 [140];
  
  fVar9 = (float10)(**(code **)(*param_1 + 0x34))();
  fStack_a4 = (float)fVar9;
  if ((float10)_DAT_0106e6ec <= ABS(fVar9)) {
    puStack_a8 = (undefined4 *)(int)ROUND(fStack_a4);
    puVar8 = puStack_a8;
    if (puStack_a8 == (undefined4 *)0x0) {
      if (fStack_a4 < DAT_010f4ccc) {
        puVar8 = (undefined4 *)0xffffffff;
      }
      else {
        puVar8 = (undefined4 *)0x1;
      }
    }
    if ((*(char *)((int)this + 0x1c) == '\0') &&
       ((*(int *)((int)this + 0x20) != 0 || (param_2 != '\0')))) {
      if ((int)puVar8 < 1) {
        uVar11 = 0x3f;
        pbVar10 = abStack_90 + 2;
        abStack_90[0] = 0x2b;
        abStack_90[1] = 0;
      }
      else {
        uVar11 = 0x40;
        pbVar10 = abStack_90;
      }
      fStack_a4 = (float)-(int)puVar8;
      FUN_00449630((double)-(int)puVar8,(short *)pbVar10,uVar11,0x1001f60,(short *)&DAT_01001f70);
      puStack_a8 = (undefined4 *)0x0;
      if (*(int *)((int)this + 0x20) == 0) {
        pvVar2 = (void *)FUN_004e4500(0x40,"UserTool/UserToolEffect",0);
        if (pvVar2 == (void *)0x0) {
          puVar3 = (undefined4 *)0x0;
        }
        else {
          puVar3 = FUN_00cdc230(pvVar2,*(undefined4 *)((int)this + 0xc),"itemCostRise");
        }
        FUN_00566590(&puStack_a8,puVar3);
        pfVar4 = (float *)FUN_00cd3130();
        puVar3 = puStack_a8;
        FUN_00cdb9c0(puStack_a8,pfVar4);
      }
      else {
        pvVar2 = (void *)FUN_004e4500(0x40,"UserTool/UserToolEffect",0);
        if (pvVar2 == (void *)0x0) {
          puVar3 = (undefined4 *)0x0;
        }
        else {
          pcVar7 = "ep2ItemCostLowers";
          if (*(char *)((int)this + 0x24) == '\0') {
            pcVar7 = "itemCostRise";
          }
          puVar3 = FUN_00cdc230(pvVar2,*(undefined4 *)((int)this + 0xc),pcVar7);
        }
        FUN_00566590(&puStack_a8,puVar3);
        pfVar4 = FUN_00cdba50(*(void **)((int)this + 0x20),afStack_a0);
        puVar3 = puStack_a8;
        FUN_00cdb9e0(puStack_a8,pfVar4);
      }
      FUN_00cdbb50(puVar3,1.0,1.0,0);
      FUN_00cdc2d0(puVar3,abStack_90);
      *(undefined1 *)((int)puVar3 + 0x31) = 0;
      FUN_00cdbc10(puVar3,1);
      FUN_00cdb910(puVar3,0);
      if ((int)puVar8 < 1) {
        BuildBuy_PlayKeyedSound(DAT_011ebf60);
      }
      else {
        if (*(int *)((int)this + 0x30) != 0) {
          Audio_SubmitHandleStopCommand(*(int *)((int)this + 0x30));
        }
        piVar5 = (int *)FUN_008afe00();
        if (piVar5 == (int *)0x0) {
          uVar6 = 0;
        }
        else {
          uVar6 = (**(code **)(*piVar5 + 0x28))();
        }
        *(undefined4 *)((int)this + 0x30) = uVar6;
        Audio_SubmitKeyedPlayCommand(DAT_011ebf58);
      }
      iVar1 = puVar3[1];
      puVar3[1] = iVar1 + -1;
      if (iVar1 + -1 == 0) {
        puVar3[1] = 1;
        (**(code **)*puVar3)(1);
      }
    }
  }
  if (*(void **)((int)this + 0x20) != (void *)0x0) {
    FUN_00cdb970(*(void **)((int)this + 0x20),1);
    puVar8 = *(undefined4 **)((int)this + 0x20);
    if (puVar8 != (undefined4 *)0x0) {
      *(undefined4 *)((int)this + 0x20) = 0;
      iVar1 = puVar8[1];
      puVar8[1] = iVar1 + -1;
      if (iVar1 + -1 == 0) {
        puVar8[1] = 1;
        (**(code **)*puVar8)(1);
      }
    }
    *(undefined1 *)((int)this + 0x24) = 0;
  }
  if (*(void **)((int)this + 0x28) != (void *)0x0) {
    FUN_00cdb970(*(void **)((int)this + 0x28),1);
    puVar8 = *(undefined4 **)((int)this + 0x28);
    if (puVar8 != (undefined4 *)0x0) {
      *(undefined4 *)((int)this + 0x28) = 0;
      iVar1 = puVar8[1];
      puVar8[1] = iVar1 + -1;
      if (iVar1 + -1 == 0) {
        puVar8[1] = 1;
        (**(code **)*puVar8)(1);
      }
    }
    *(undefined1 *)((int)this + 0x2c) = 0;
  }
  FUN_00d39980(*(void **)((int)this + 0x18),param_1);
  return;
}

