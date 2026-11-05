/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Selected PC1.67 actual default caller closure atD3AE8C..E2: tests type DWORD of incoming
   diffuse/specular/design keys; if all0, queries interface0418FE16, calls C94510 on its returned
   product, pushes the returned full first-authored ID and product key, ECX=helper fromtool+11C,
   then D45FF0. Otherwise passes the three explicit keys to D46D80. It does not pass fixed ordinal0.
   Whole tool input extraction and surrounding product-state update remain separate from this
   bounded default selection fact. */

undefined1 __thiscall WallTool_InitializePlacementFinish(void *this,undefined1 *param_1)

{
  uint *productKey;
  short sVar1;
  void *this_00;
  undefined1 *puVar2;
  char cVar3;
  void *pvVar4;
  undefined4 *puVar5;
  uint *puVar6;
  int iVar7;
  int *piVar8;
  uint presetId;
  undefined4 *puVar9;
  uint uStack_50;
  undefined4 uStack_4c;
  int iStack_48;
  undefined4 uStack_44;
  uint uStack_40;
  uint uStack_3c;
  uint uStack_38;
  uint uStack_34;
  uint uStack_30;
  uint uStack_2c;
  uint uStack_28;
  uint uStack_24;
  undefined4 auStack_20 [8];
  
  cVar3 = FUN_00cd2d30((int)this);
  if (cVar3 == '\0') {
    return 0;
  }
  pvVar4 = (void *)FUN_004e4500(0x10,"World/UserToolObject/UserToolElevatorIndicator",0);
  if (pvVar4 == (void *)0x0) {
    puVar5 = (undefined4 *)0x0;
  }
  else {
    puVar5 = (undefined4 *)FUN_00cdc510(pvVar4,*(undefined4 *)((int)this + 0xc));
  }
  puVar9 = *(undefined4 **)((int)this + 0x118);
  if (puVar5 != puVar9) {
    if (puVar5 != (undefined4 *)0x0) {
      puVar5[1] = puVar5[1] + 1;
    }
    *(undefined4 **)((int)this + 0x118) = puVar5;
    if ((puVar9 != (undefined4 *)0x0) &&
       (iVar7 = puVar9[1], puVar9[1] = iVar7 + -1, iVar7 + -1 == 0)) {
      puVar9[1] = 1;
      (**(code **)*puVar9)(1);
    }
  }
  *(undefined1 *)((int)this + 0x68) = 0;
  puVar5 = (undefined4 *)FUN_004e4500(0x60,"UserTool/Wall/WallPlacementHelper",0);
  if (puVar5 == (undefined4 *)0x0) {
    puVar5 = (undefined4 *)0x0;
  }
  else {
    puVar5 = (undefined4 *)FUN_00c9e730(puVar5);
  }
  puVar9 = *(undefined4 **)((int)this + 0x11c);
  if (puVar5 != puVar9) {
    if (puVar5 != (undefined4 *)0x0) {
      puVar5[1] = puVar5[1] + 1;
    }
    *(undefined4 **)((int)this + 0x11c) = puVar5;
    if ((puVar9 != (undefined4 *)0x0) &&
       (iVar7 = puVar9[1], puVar9[1] = iVar7 + -1, iVar7 + -1 == 0)) {
      puVar9[1] = 1;
      (**(code **)*puVar9)(1);
    }
  }
  Camera_SetProjectionMode(*(void **)((int)this + 0x11c),*(undefined4 *)((int)this + 0xc));
  pvVar4 = DAT_011ee034;
  if ((DAT_011ee034 != (void *)0x0) && (param_1 != (undefined1 *)0x0)) {
    puVar6 = (uint *)FUN_00cefae0((int)param_1);
    productKey = (uint *)((int)this + 0x70);
    *productKey = *puVar6;
    *(uint *)((int)this + 0x74) = puVar6[1];
    *(uint *)((int)this + 0x78) = puVar6[2];
    *(uint *)((int)this + 0x7c) = puVar6[3];
    iVar7 = FUN_00c8fa20(pvVar4,productKey,'\x01');
    if (iVar7 == 0) {
      return 0;
    }
    iVar7 = 1;
    piVar8 = (int *)FUN_00c8fa20(pvVar4,productKey,'\x01');
    if (piVar8 != (int *)0x0) {
      iVar7 = piVar8[0x28];
    }
    FUN_00d3a9b0(this,productKey);
    if (iVar7 == 1) {
      *(undefined4 *)((int)this + 0x84) = 0;
      FUN_00cede10(this,*(char **)((int)this + 0x98));
      *(undefined1 *)((int)this + 0x113) = 1;
    }
    else if (iVar7 == 2) {
      *(undefined4 *)((int)this + 0x84) = 2;
      FUN_00cede10(this,*(char **)((int)this + 0xd8));
      *(undefined1 *)((int)this + 0x113) = 0;
    }
    *(undefined4 *)((int)this + 0x80) = *(undefined4 *)((int)this + 0x84);
    FUN_00ccea10();
    if (piVar8[0x23] == 1) {
      sVar1 = *(short *)(param_1 + 0x2a);
      if (sVar1 != 0x201) {
        FUN_00cd8d60(auStack_20,&DAT_011ec8d0);
        puVar5 = auStack_20;
      }
      else {
        puVar5 = (undefined4 *)(param_1 + 0x20);
      }
      puVar6 = (uint *)FUN_00cefae0((int)puVar5);
      uStack_30 = *puVar6;
      uStack_2c = puVar6[1];
      uStack_28 = puVar6[2];
      uStack_24 = puVar6[3];
      if (sVar1 != 0x201) {
        FUN_004f5820(auStack_20);
      }
      sVar1 = *(short *)(param_1 + 0x4a);
      puVar2 = param_1;
      if (sVar1 != 0x201) {
        FUN_00cd8d60(auStack_20,&DAT_011ec8d0);
        puVar2 = &stack0xffffffa0;
      }
      puVar6 = (uint *)FUN_00cefae0((int)(puVar2 + 0x40));
      uStack_40 = *puVar6;
      uStack_3c = puVar6[1];
      uStack_38 = puVar6[2];
      uStack_34 = puVar6[3];
      if (sVar1 != 0x201) {
        FUN_004f5820(auStack_20);
      }
      uStack_50 = DAT_011ec8d0;
      uStack_4c = DAT_011ec8d4;
      iStack_48 = DAT_011ec8d8;
      uStack_44 = DAT_011ec8dc;
      if (*(short *)(param_1 + 0x6a) == 0x13) {
        puVar5 = FUN_00793b00((int)(param_1 + 0x60));
        FUN_00b0af70((int)&uStack_50,puVar5);
      }
      if (((uStack_28 == 0) && (uStack_38 == 0)) && (iStack_48 == 0)) {
        pvVar4 = (void *)(**(code **)(*piVar8 + 0xc))(0x418fe16);
        if (pvVar4 != (void *)0x0) {
          this_00 = *(void **)((int)this + 0x11c);
          presetId = FenceProduct_FirstAuthoredPresetId(pvVar4);
          WallPlacementHelper_BuildFencePreset(this_00,productKey,presetId);
        }
      }
      else {
        WallPlacementHelper_InstallFinishKeys
                  (*(void **)((int)this + 0x11c),&uStack_30,&uStack_40,&uStack_50);
      }
    }
  }
  puVar5 = (undefined4 *)((int)this + 0x5c);
  if (*(int *)((int)this + 0x5c) == 0) {
    puVar9 = (undefined4 *)FUN_004e4500(0x110,"UserTool/Wall/UserToolUndoableWall",0);
    if (puVar9 == (undefined4 *)0x0) {
      puVar9 = (undefined4 *)0x0;
    }
    else {
      puVar9 = FUN_00d2ddd0(puVar9);
    }
    FUN_00566590(puVar5,puVar9);
    (**(code **)(*(int *)*puVar5 + 4))();
    FUN_00d2c870((void *)*puVar5,*(undefined4 *)((int)this + 0xc));
  }
  if (*(int *)((int)this + 0x60) == 0) {
    pvVar4 = (void *)FUN_004e4500(0xb0,"UserTool/Wall/UndoableFloorElevation",0);
    if (pvVar4 == (void *)0x0) {
      puVar5 = (undefined4 *)0x0;
    }
    else {
      puVar5 = FUN_00d21810(pvVar4,*(undefined4 **)((int)this + 0xc));
    }
    FUN_00566590((undefined4 *)((int)this + 0x60),puVar5);
    (**(code **)(**(int **)((int)this + 0x60) + 4))();
  }
  puVar5 = *(undefined4 **)((int)this + 100);
  if (puVar5 != (undefined4 *)0x0) {
    *(undefined4 *)((int)this + 100) = 0;
    iVar7 = puVar5[1];
    puVar5[1] = iVar7 + -1;
    if (iVar7 + -1 == 0) {
      puVar5[1] = 1;
      (**(code **)*puVar5)(1);
    }
  }
  return 1;
}

