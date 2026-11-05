/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Original PC 1.67: After underlying tile mutation, active byte+1 gates3175AE42 submission with
   owner+4 pair and tile state. Exact tile semantics/authoring inputs remain separate; no
   all-floor-input equivalence claim. RET8. */

void __thiscall LotTile_ChangeStateAndEmitMessage(void *this,char param_1,int *param_2)

{
  undefined1 uVar1;
  ushort uVar2;
  undefined2 uVar3;
  undefined4 *puVar4;
  int *piVar5;
  byte *pbVar6;
  undefined4 uVar7;
  uint uVar8;
  int iVar9;
  int *piVar10;
  int *piVar11;
  
  FloorManager_SetQuarterFlagsRaw(this,(bool)param_1,(undefined *)param_2);
  if (*(char *)((int)this + 1) != '\0') {
    MessageDispatch_GetCurrent();
    puVar4 = FloorMessagePool_AcquireStorage();
    if (puVar4 == (undefined4 *)0x0) {
      piVar5 = (int *)0x0;
    }
    else {
      piVar5 = FUN_00a8b070(puVar4);
    }
    iVar9 = *(int *)((int)this + 4);
    piVar5[2] = *(int *)(iVar9 + 0x48);
    piVar5[3] = *(int *)(iVar9 + 0x4c);
    piVar5[4] = *param_2;
    if (param_1 == '\0') {
      piVar10 = &DAT_011ec920;
      piVar11 = piVar5 + 6;
      for (iVar9 = 0x10; iVar9 != 0; iVar9 = iVar9 + -1) {
        *piVar11 = *piVar10;
        piVar10 = piVar10 + 1;
        piVar11 = piVar11 + 1;
      }
    }
    else {
      piVar10 = piVar5 + 6;
      uVar2 = FUN_00a8d1c0(this,(char *)param_2);
      FloorManager_CopyPatternKeysForCellId(this,uVar2,piVar10);
    }
    FUN_00a911c0(this,(byte *)(piVar5 + 6),(undefined2 *)(piVar5 + 0x16));
    pbVar6 = ByteTileGrid_CellPointer
                       (*(void **)((int)this + 0x30),(int)(char)*param_2,
                        (int)*(char *)((int)param_2 + 1),
                        (int)*(char *)((int)param_2 + 2) - *(int *)((int)this + 0x10));
    *(byte *)((int)piVar5 + 0x5a) = *pbVar6;
    if (((~*(byte *)((int)param_2 + 3) & 0x10) == 0) ||
       (uVar7 = TestPlatformRegion(*(void **)((int)this + 4),(char *)param_2,'\0'),
       (char)uVar7 == '\0')) {
      uVar1 = 0;
    }
    else {
      uVar1 = 1;
    }
    *(undefined1 *)(piVar5 + 0x21) = uVar1;
    uVar1 = FUN_00acfa20(*(void **)((int)this + 4),(undefined2 *)param_2,1,(undefined1 *)0x0);
    *(undefined1 *)((int)piVar5 + 0x85) = uVar1;
    uVar8 = FUN_00a934a0(this,(char *)param_2,'\x01');
    *(char *)((int)piVar5 + 0x5b) = (char)uVar8;
    uVar3 = FUN_00b470e0(*(void **)(*(int *)((int)this + 4) + 0x298),(char *)param_2,0,'\0');
    *(undefined2 *)((int)piVar5 + 0x5e) = uVar3;
    piVar10 = piVar5 + 4;
    uVar7 = FUN_00ad1380(*(void **)((int)this + 4),(char *)piVar10);
    *(char *)((int)piVar5 + 0x86) = (char)uVar7;
    if (((~*(byte *)((int)piVar5 + 0x13) & 0x10) == 0) ||
       (uVar7 = Lot_TestCellSupportRegionType
                          (*(void **)((int)this + 4),(char *)piVar10,'\x01',(undefined1 *)0x0),
       (char)uVar7 == '\0')) {
      uVar1 = 0;
    }
    else {
      uVar1 = 1;
    }
    *(undefined1 *)(piVar5 + 0x17) = uVar1;
    uVar1 = FUN_00acfa20(*(void **)((int)this + 4),(undefined2 *)param_2,1,(undefined1 *)0x0);
    *(undefined1 *)((int)piVar5 + 0x85) = uVar1;
    uVar1 = FUN_00ab3a00(*(void **)((int)this + 4),(char *)piVar10);
    *(undefined1 *)(piVar5 + 0x22) = uVar1;
    FUN_007d3210(0x3175ae42,piVar5);
    FUN_00ac0580(*(void **)((int)this + 4),(char *)param_2);
  }
  return;
}

