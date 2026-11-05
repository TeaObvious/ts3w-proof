/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Static PC1.67 original combo-control comparison; no execution. ECX control; complete retained
   body gates empty values and required services, allocates/configures a native0x500 grid, seeds
   values/appearance/geometry, optionally constructs background state, selects modal-service
   behavior and attaches a0x14 callback object. Child grid/font/focus/destruction details remain
   lower authority; inferred C loses indirect-call stack tracking. This does not prove current CPU
   popup/scrollbar/input or pixel equivalence. */

void __fastcall WinComboBox_CreateModalList(uint param_1)

{
  float fVar1;
  char cVar2;
  int iVar3;
  uint *puVar4;
  void *pvVar5;
  int *piVar6;
  undefined4 *puVar7;
  float *pfVar8;
  int *piVar9;
  undefined4 uVar10;
  int *piVar11;
  uint uVar12;
  uint uVar13;
  float fVar14;
  undefined1 *puVar15;
  float fStack_1b4;
  undefined1 *puStack_1b0;
  undefined1 *puStack_1ac;
  float fStack_1a8;
  float fStack_1a4;
  undefined4 uStack_1a0;
  float in_stack_fffffe6c;
  undefined1 auStack_18a [22];
  int iStack_174;
  undefined4 uStack_15c;
  undefined4 uStack_158;
  undefined4 uStack_154;
  undefined4 uStack_150;
  undefined4 uStack_14c;
  undefined4 uStack_148;
  undefined4 uStack_144;
  int iStack_140;
  undefined4 uStack_13c;
  undefined4 uStack_138;
  undefined4 uStack_134;
  undefined4 uStack_130;
  undefined4 uStack_12c;
  undefined4 uStack_128;
  undefined4 uStack_124;
  uint uStack_120;
  undefined4 uStack_11c;
  undefined4 uStack_118;
  undefined4 uStack_114;
  undefined4 uStack_110;
  undefined4 uStack_10c;
  float fStack_108;
  float fStack_104;
  float fStack_100;
  float fStack_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  undefined4 uStack_f0;
  undefined4 uStack_ec;
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  uint uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  
  if (*(int *)(param_1 + 0x294) == *(int *)(param_1 + 0x298)) {
    return;
  }
  if (*(int *)(param_1 + 0x30) == 0) {
    return;
  }
  iVar3 = (**(code **)(**(int **)(param_1 + 0x30) + 4))();
  if (iVar3 == 0) {
    return;
  }
  uStack_84 = 0x51d34e;
  puVar4 = AllocateWithAllocatorHeader(0x500,0x10,"UI/UTFWin/WinGrid",(int *)0x0);
  if (puVar4 == (uint *)0x0) {
    return;
  }
  pvVar5 = UiGrid_InitializeFields(puVar4);
  if (pvVar5 == (void *)0x0) {
    return;
  }
  piVar11 = (int *)((int)pvVar5 + 0x250);
  if (piVar11 == (int *)0x0) {
    return;
  }
  (**(code **)(*piVar11 + 0x2c))();
  uStack_84 = 0x51d390;
  (**(code **)(*piVar11 + 0x2c))();
  uStack_84 = 0;
  uStack_88 = 8;
  uStack_8c = 0x51d39d;
  (**(code **)(*piVar11 + 0x2c))();
  uStack_8c = 0;
  uStack_90 = 0x10;
  uStack_94 = 0x51d3aa;
  (**(code **)(*piVar11 + 0x2c))();
  uStack_94 = 0;
  uStack_98 = 0x20;
  uStack_9c = 0x51d3b7;
  (**(code **)(*piVar11 + 0x2c))();
  uStack_9c = 0;
  uStack_a0 = 0x40;
  uStack_a4 = 0x51d3c4;
  (**(code **)(*piVar11 + 0x2c))();
  uStack_a4 = 1;
  uStack_a8 = 0x80;
  uStack_ac = 0x51d3d4;
  (**(code **)(*piVar11 + 0x2c))();
  uStack_ac = *(byte *)(param_1 + 0x288) & 0xffffff01;
  uStack_b0 = 0x200;
  uStack_b4 = 0x51d3ef;
  (**(code **)(*piVar11 + 0x2c))();
  uStack_b4 = 0;
  uStack_b8 = 0x400;
  uStack_bc = 0x51d3ff;
  (**(code **)(*piVar11 + 0x2c))();
  uStack_bc = 0;
  uStack_c0 = 0x800;
  uStack_c4 = 0x51d40f;
  (**(code **)(*piVar11 + 0x2c))();
  uStack_c4 = 1;
  uStack_c8 = 0x2000;
  uStack_cc = 0x51d41f;
  (**(code **)(*piVar11 + 0x2c))();
  uStack_cc = 1;
  uStack_d0 = 0x2000;
  uStack_d4 = 0x51d42f;
  (**(code **)(*piVar11 + 0x2c))();
  uStack_d4 = 0;
  uStack_d8 = 0x4000;
  uStack_dc = 0x51d43f;
  (**(code **)(*piVar11 + 0x2c))();
  uStack_dc = 0;
  uStack_e0 = 0x1000;
  uStack_e4 = 0x51d44f;
  (**(code **)(*piVar11 + 0x2c))();
  uStack_e4 = 0;
  uStack_e8 = 0x8000;
  uStack_ec = 0x51d45f;
  (**(code **)(*piVar11 + 0x2c))();
  uStack_ec = 0;
  uStack_f0 = 0x10000;
  uStack_f4 = 0x51d46f;
  (**(code **)(*piVar11 + 0x2c))();
  uStack_f4 = 0;
  uStack_f8 = 0x20000;
  fStack_fc = 7.514904e-39;
  (**(code **)(*piVar11 + 0x2c))();
  if ((*(byte *)(param_1 + 0x288) & 1) == 0) {
    fStack_fc = *(float *)(param_1 + 0x2e8);
    fStack_100 = *(float *)(param_1 + 0x2e4);
    fStack_104 = *(float *)(param_1 + 0x2e0);
    fStack_108 = *(float *)(param_1 + 0x2dc);
  }
  else {
    fStack_fc = *(float *)(param_1 + 0x2e8) + 1.0;
    fStack_100 = *(float *)(param_1 + 0x2e4) + 1.0;
    fStack_104 = *(float *)(param_1 + 0x2e0) + 1.0;
    fStack_108 = *(float *)(param_1 + 0x2dc) + 1.0;
  }
  uStack_10c = 0x51d50c;
  (**(code **)(*piVar11 + 0x58))();
  uStack_10c = 0x40000000;
  uStack_110 = 0x40000000;
  uStack_114 = 0x40000000;
  uStack_118 = 0x40000000;
  uStack_11c = 0x51d52d;
  (**(code **)(*piVar11 + 0x68))();
  uStack_11c = 0;
  uStack_120 = 1;
  uStack_124 = 0x51d53d;
  (**(code **)(*piVar11 + 0xf0))();
  uStack_124 = 1;
  uStack_128 = 1;
  uStack_12c = 0x51d54d;
  (**(code **)(*piVar11 + 0xcc))();
  uStack_12c = 0;
  uStack_130 = 0x51d55f;
  (**(code **)(*piVar11 + 0x118))();
  uStack_130 = *(undefined4 *)(param_1 + 0x314);
  uStack_134 = *(undefined4 *)(param_1 + 0x310);
  uStack_138 = *(undefined4 *)(param_1 + 0x30c);
  uStack_13c = *(undefined4 *)(param_1 + 0x308);
  iStack_140 = 0x51d592;
  (**(code **)(*piVar11 + 0x6c))();
  iStack_140 = *(int *)(param_1 + 0x2a4);
  if (iStack_140 != 0) {
    uStack_144 = 0x51d5a9;
    (**(code **)(*piVar11 + 0x240))();
  }
  iStack_140 = *(undefined4 *)(param_1 + 0x8c);
  uStack_144 = 0x51d5b9;
  (**(code **)(*piVar11 + 0x34))();
  uStack_148 = *(undefined4 *)(param_1 + 0x268);
  uStack_144 = 0;
  uStack_14c = 0x51d5cb;
  (**(code **)(*piVar11 + 0x3c))();
  uStack_150 = *(undefined4 *)(param_1 + 0x26c);
  uStack_14c = 1;
  uStack_154 = 0x51d5dd;
  (**(code **)(*piVar11 + 0x3c))();
  uStack_158 = *(undefined4 *)(param_1 + 0x274);
  uStack_154 = 5;
  uStack_15c = 0x51d5ef;
  (**(code **)(*piVar11 + 0x3c))();
  uStack_15c = 4;
  (**(code **)(*piVar11 + 0x3c))();
  (**(code **)(*piVar11 + 0x3c))();
  (**(code **)(*piVar11 + 0x3c))();
  (**(code **)(*piVar11 + 0x3c))();
  piVar6 = (int *)(**(code **)(*piVar11 + 0x10))();
  (**(code **)(*piVar6 + 0xb0))();
  (**(code **)(*piVar11 + 0x2c))();
  uVar13 = 0;
  uVar12 = *(int *)(param_1 + 0x298) - *(int *)(param_1 + 0x294) >> 4;
  if (uVar12 != 0) {
    iStack_174 = 0;
    do {
      in_stack_fffffe6c = *(float *)(iStack_174 + *(int *)(param_1 + 0x294));
      uStack_1a0 = (int *)0x51d6b3;
      (**(code **)(*piVar11 + 0x1dc))();
      uStack_1a0 = (int *)0x51d6bc;
      FUN_00523c20(&uStack_15c);
      uStack_1a0 = &uStack_15c;
      fStack_1a8 = 0.0;
      puStack_1ac = (undefined1 *)0x51d6d0;
      fStack_1a4 = (float)uVar13;
      cVar2 = (**(code **)(*piVar11 + 0x168))();
      if (cVar2 != '\0') {
        uStack_120 = uStack_120 & 0xffffff00;
        in_stack_fffffe6c = 7.515776e-39;
        (**(code **)(*piVar11 + 0x16c))();
      }
      iStack_174 = iStack_174 + 0x10;
      uVar13 = uVar13 + 1;
    } while (uVar13 < uVar12);
  }
  (**(code **)(*piVar11 + 0xdc))();
  if (*(int *)(param_1 + 0x2a8) == 0) {
    piVar6 = (int *)(**(code **)(*piVar11 + 0x10))();
  }
  else {
    uStack_1a0 = (int *)0x51d72a;
    puVar4 = AllocateWithAllocatorHeader(0x250,0x10,"UI/UTFWin/Window",(int *)0x0);
    if ((puVar4 == (uint *)0x0) ||
       (puVar7 = Window_InitializeNativeFields(puVar4), puVar7 == (undefined4 *)0x0)) {
      piVar6 = (int *)0x0;
    }
    else {
      piVar6 = puVar7 + 1;
    }
    (**(code **)(*piVar6 + 0xb0))();
    in_stack_fffffe6c = *(float *)(param_1 + 0x2a8);
    (**(code **)(*piVar6 + 0xb4))();
    uStack_1a0 = (int *)0x51d774;
    (**(code **)(*piVar6 + 0x74))();
  }
  fStack_1a4 = 7.516007e-39;
  uStack_1a0 = piVar6;
  cVar2 = (**(code **)(_DAT_00000004 + 0xdc))();
  if (cVar2 != '\0') {
    if (*(int *)(param_1 + 0x2a8) != 0) {
      iVar3 = *piVar6;
      fStack_1a4 = 7.51606e-39;
      fStack_1a4 = (float)(**(code **)(*piVar11 + 0x10))();
      fStack_1a8 = 7.516076e-39;
      (**(code **)(iVar3 + 0xdc))();
    }
    uVar12 = *(uint *)(param_1 + 0x288);
    uVar10 = *(undefined4 *)(param_1 + 0x40);
    fVar14 = *(float *)(param_1 + 0x4c);
    fVar1 = *(float *)(param_1 + 0x2ec);
    fStack_1a4 = 7.516154e-39;
    (**(code **)(_DAT_00000004 + 0x34))();
    puStack_1ac = auStack_18a + -6;
    puStack_1b0 = (undefined1 *)0x51d841;
    fStack_1a8 = (float)uVar10;
    fStack_1a4 = (fVar14 - (float)(uVar12 & 1)) + fVar1;
    pfVar8 = (float *)(**(code **)(*(int *)(*(int *)(param_1 + 0x2c) + 4) + 0xc4))();
    fStack_1b4 = *pfVar8;
    puStack_1b0 = (undefined1 *)pfVar8[1];
    puVar15 = auStack_18a + -0x12;
    puVar7 = (undefined4 *)(**(code **)(_DAT_00000004 + 200))(puVar15);
    uStack_1a0 = (int *)*puVar7;
    fVar14 = (float)puVar7[1];
    (**(code **)(*piVar11 + 0x18))
              (0xffffffff,*(undefined4 *)(param_1 + 0x284),
               *(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40),0);
    (**(code **)(*piVar11 + 0x1bc))(0,*(undefined4 *)(param_1 + 0x260));
    piVar9 = (int *)(**(code **)(*piVar11 + 0x10))();
    pfVar8 = (float *)(**(code **)(*piVar9 + 0x34))();
    in_stack_fffffe6c = in_stack_fffffe6c - fVar14;
    fStack_1a4 = (pfVar8[3] - pfVar8[1]) + fStack_1b4;
    fStack_1a8 = (pfVar8[2] - *pfVar8) + (float)puVar15;
    puStack_1ac = (undefined1 *)fStack_1b4;
    if (in_stack_fffffe6c <= fStack_1a4 - fStack_1b4) {
      fStack_1a4 = in_stack_fffffe6c + fStack_1b4;
    }
    fVar14 = fStack_1a4 - fStack_1b4;
    if (in_stack_fffffe6c < fVar14 + fStack_1b4) {
      puStack_1ac = (undefined1 *)(in_stack_fffffe6c - fVar14);
      fStack_1a8 = (fStack_1a8 - (float)puVar15) + (float)puVar15;
      fStack_1a4 = fVar14 + (float)puStack_1ac;
    }
    puStack_1b0 = puVar15;
    (**(code **)(*piVar6 + 100))(&puStack_1b0);
    if (*(int *)(param_1 + 0x2a8) != 0) {
      puStack_1ac = (undefined1 *)((float)puStack_1ac - fStack_1b4);
      fStack_1a8 = fStack_1a8 - (float)puStack_1b0;
      fStack_1b4 = 0.0;
      puStack_1b0 = (undefined1 *)0x0;
      piVar6 = (int *)(**(code **)(*piVar11 + 0x10))();
      (**(code **)(*piVar6 + 100))(&fStack_1b4);
    }
    iVar3 = **(int **)(param_1 + 0x30);
    if ((*(byte *)(param_1 + 0x288) & 4) == 0) {
      uVar10 = (**(code **)(*piVar11 + 0x10))(param_1 + 0x254);
      (**(code **)(iVar3 + 0x80))(uVar10);
    }
    else {
      uVar10 = (**(code **)(*piVar11 + 0x10))(1);
      (**(code **)(iVar3 + 100))(1,uVar10);
      puVar7 = *(undefined4 **)(param_1 + 0x254);
      uVar10 = (**(code **)(*piVar11 + 0x10))();
      (*(code *)*puVar7)(uVar10);
    }
    puVar4 = AllocateWithAllocatorHeader(0x14,4,"UI/UTFWin/ListBoxWinProc",(int *)0x0);
    if (puVar4 == (uint *)0x0) {
      puVar4 = (uint *)0x0;
    }
    else {
      puVar4[1] = (uint)&PTR_LAB_00fbb1fc;
      puVar4[2] = 0;
      *(undefined1 *)(puVar4 + 3) = 0;
      *puVar4 = (uint)&PTR_CountedReference_Retain_00fbc9b0;
      puVar4[1] = (uint)&PTR_LAB_00fbc994;
      puVar4[4] = param_1;
    }
    FUN_008c8d00((undefined4 *)(param_1 + 0x304),(int *)puVar4);
    piVar11 = (int *)(**(code **)(*piVar11 + 0x10))();
    (**(code **)(*piVar11 + 0x108))(*(undefined4 *)(param_1 + 0x304));
  }
  return;
}

