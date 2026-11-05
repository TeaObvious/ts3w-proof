/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst contract (original PC1.67; instruction-checked selected branches): Per live lot level
   creates PuddleGeometry and BurntTileGeometry, and LeavesTileGeometry when installed feature
   mask8000 admits it. Calls each actual virtual initializer. Registers floor-feature and related
   message IDs after successful level creation. Object creation/failure ownership is native; managed
   script alarms do not create this render container. */

undefined4 __thiscall LotFloorFeatureRenderer_CreateLevels(void *this,int param_1)

{
  int iVar1;
  char cVar2;
  bool bVar3;
  void *this_00;
  int *piVar4;
  undefined4 *puVar5;
  int *piVar6;
  int iVar7;
  int iVar8;
  uint uVar9;
  undefined4 uVar10;
  
  *(int *)((int)this + 4) = param_1;
  FUN_00ac1740(*(void **)(param_1 + 0x18),(int *)((int)this + 0x38),(undefined4 *)((int)this + 0x3c)
              );
  iVar8 = *(int *)(param_1 + 0x68);
  *(int *)((int)this + 0x34) = iVar8;
  iVar1 = *(int *)(param_1 + 0x6c);
  while( true ) {
    if (iVar1 < iVar8) {
      piVar4 = (int *)MessageDispatch_GetCurrent();
      uVar10 = 0;
      if (piVar4 != (int *)0x0) {
        (**(code **)(*piVar4 + 0x24))(this,0x143ddccf,0,0);
        (**(code **)(*piVar4 + 0x24))(this,0xcf1f010,0,0);
        (**(code **)(*piVar4 + 0x24))(this,0x6592b57,0,0);
        (**(code **)(*piVar4 + 0x24))(this,0x95c720d9,0,0);
        (**(code **)(*piVar4 + 0x24))(this,0x29df1a51,0,0);
        (**(code **)(*piVar4 + 0x24))(this,0x3175ae42,0,0);
        uVar10 = (**(code **)(*piVar4 + 0x24))(this,0x934a19e,0,0);
      }
      return CONCAT31((int3)((uint)uVar10 >> 8),1);
    }
    this_00 = (void *)FUN_004e4500(0x2c0,"LotRenderer/PuddleGeometry",0);
    uVar9 = 0;
    if (this_00 == (void *)0x0) goto LAB_00a818de;
    piVar4 = (int *)PuddleGeometry_Construct(this_00);
    uVar9 = 0;
    if (piVar4 == (int *)0x0) goto LAB_00a818de;
    (**(code **)*piVar4)();
    cVar2 = (**(code **)(*piVar4 + 0x80))(param_1,iVar8);
    if (((cVar2 == '\0') ||
        (puVar5 = (undefined4 *)FUN_004e4500(0x2d0,"LotRenderer/BurntTileGeometry",0),
        puVar5 == (undefined4 *)0x0)) || (piVar6 = FUN_00a478f0(puVar5), piVar6 == (int *)0x0))
    break;
    (**(code **)*piVar6)();
    cVar2 = (**(code **)(*piVar6 + 0x80))(param_1,iVar8);
    if (cVar2 == '\0') {
      (**(code **)(*piVar6 + 4))();
      break;
    }
    FUN_00a81560((void *)((int)this + 8));
    iVar7 = *(int *)((int)this + 0x20);
    if (iVar7 == *(int *)((int)this + 0x24)) {
      iVar7 = *(int *)(*(int *)((int)this + 0x2c) + -4) + 0xc0;
    }
    *(int **)(iVar7 + -0xc) = piVar4;
    iVar7 = *(int *)((int)this + 0x20);
    if (iVar7 == *(int *)((int)this + 0x24)) {
      iVar7 = *(int *)(*(int *)((int)this + 0x2c) + -4) + 0xc0;
    }
    *(int **)(iVar7 + -8) = piVar6;
    bVar3 = FlagWord_TestAnyMask(&DAT_011cede0,0x8000);
    if (bVar3) {
      puVar5 = (undefined4 *)FUN_004e4500(0x2e0,"LotRenderer/LeavesTileGeometry",0);
      uVar9 = 0;
      if (puVar5 == (undefined4 *)0x0) goto LAB_00a818de;
      piVar4 = FUN_00aa9210(puVar5);
      uVar9 = 0;
      if (piVar4 == (int *)0x0) goto LAB_00a818de;
      (**(code **)*piVar4)();
      cVar2 = (**(code **)(*piVar4 + 0x80))(param_1,iVar8);
      if (cVar2 == '\0') break;
      iVar7 = FUN_00a81120((int)this + 8);
      *(int **)(iVar7 + 8) = piVar4;
    }
    iVar8 = iVar8 + 1;
  }
  uVar9 = (**(code **)(*piVar4 + 4))();
LAB_00a818de:
  return uVar9 & 0xffffff00;
}

