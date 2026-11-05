/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Original PC1.67 modular-stairs scene-model preparation. Reuses the selected cached scene model or
   allocates/configures a model and records its cache/instance membership. For either nonzero
   texture TYPE word at input+08/+18, creates TexCompFixupLOD from exactly two 16-byte keys,
   installs it through scene virtual+80, refreshes through6DCC00 and releases the temporary
   reference. No third saved-preset key enters that initializer. Existing transform, floor, state,
   alternate-output and reference-lifetime branches remain part of this body; inferred parameter
   types are not a reconstructed public ABI. */

void __thiscall
ModularStairsRenderer_PrepareComponentSceneModel
          (void *this,int *param_1,undefined4 *param_2,float *param_3,undefined4 *param_4,
          uint param_5,int param_6,uint param_7,int param_8,void *param_9,char param_10,
          char param_11)

{
  undefined4 uVar1;
  undefined4 uVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  bool bVar7;
  uint uVar8;
  void *pvVar9;
  undefined4 *puVar10;
  undefined4 uVar11;
  int *piVar12;
  undefined4 uVar13;
  int iVar14;
  int *this_00;
  uint *puVar15;
  int *piVar16;
  uint *puVar17;
  undefined8 local_110;
  ulonglong local_100;
  float local_f4;
  void *local_f0;
  int iStack_ec;
  void *pvStack_e8;
  float local_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  uint local_d0 [4];
  int local_c0;
  int local_bc;
  int local_b8;
  uint local_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  uint auStack_98 [8];
  int *piStack_78;
  uint auStack_70 [8];
  uint uStack_50;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  int iStack_20;
  
  local_d0[3] = param_1[1];
  local_d0[2] = *param_1;
  local_d0[0] = param_7;
  local_c0 = param_1[2];
  this_00 = (int *)0x0;
  local_bc = param_1[3];
  local_100 = local_100 & 0xffffffff00000000;
  bVar7 = true;
  local_b8 = param_6;
  local_b4 = param_5;
  local_f0 = this;
  if (param_9 == (void *)0x0) {
    FUN_00b24f90((void *)((int)this + 0x40),(undefined4 *)&local_110,(int *)local_d0);
    if ((int *)local_110 !=
        (int *)*(float *)(*(int *)((int)this + 0x44) + *(int *)((int)this + 0x48) * 4)) {
      piVar16 = *(int **)((int)(int *)local_110 + 0x20);
      if (piVar16 != (int *)0x0) {
        (**(code **)*piVar16)();
        this_00 = piVar16;
      }
      bVar7 = false;
      goto LAB_00b28e8f;
    }
  }
  local_e0 = *param_3;
  fStack_dc = param_3[1];
  fStack_d8 = param_3[2];
  fStack_d4 = param_3[3];
  local_110 = local_110 & 0xffffffff00000000;
  local_f4 = 0.0;
  local_b0 = local_e0;
  fStack_ac = fStack_dc;
  fStack_a8 = fStack_d8;
  fStack_a4 = fStack_d4;
  FUN_00a68f00(*(void **)((int)this + 0x1c),local_e0,fStack_d8,(float *)&local_110,&local_f4);
  local_110 = FUN_00afc840((int *)local_110,local_f4,(byte)param_6,(char)param_8 << 4 | 2);
  pvVar9 = (void *)FUN_004e4520(0x340,0x10,0,"LotRenderer/ModularStairsRenderManager/SceneModel",0);
  if (pvVar9 != (void *)0x0) {
    puVar10 = FUN_006f9730(pvVar9,(int *)local_110,local_110._4_4_);
    local_110 = CONCAT44(local_110._4_4_,puVar10);
    if (puVar10 != (undefined4 *)0x0) {
      (**(code **)*puVar10)();
      local_100 = CONCAT44(local_100._4_4_,(int *)local_110);
      this_00 = (int *)local_110;
    }
  }
  FUN_006f46f0(this_00,param_1,0,0,0);
  if ((*(int *)((int)this + 0x1c) != 0) && (*(char *)(*(int *)((int)this + 0x1c) + 0x3d6) != '\0'))
  {
    FUN_006dd400(this_00 + 0x84,0x305a2d54);
  }
  pvVar9 = LoadPump_ReadFrameServiceGlobal();
  local_110 = CONCAT44(local_110._4_4_,pvVar9);
  uVar11 = 0x8080;
  if ((param_8 == 1) || (param_8 == 2)) {
    uVar11 = 0x40008080;
  }
  (**(code **)(*this_00 + 0x34))(0x7ffff080,uVar11);
  if ((int)param_7 < 1) {
    uVar11 = 0;
    uVar13 = 0;
  }
  else {
    uVar11 = *(undefined4 *)(*(int *)((int)this + 0x1c) + 0x10);
    uVar13 = *(undefined4 *)(*(int *)((int)this + 0x1c) + 0x14);
  }
  (**(code **)(*this_00 + 0x4c))(uVar11,uVar13);
  iVar14 = param_6;
  (**(code **)(*this_00 + 0x50))(param_6);
  local_e0 = *param_3;
  fStack_dc = param_3[1];
  fStack_d8 = param_3[2];
  fStack_d4 = param_3[3];
  local_b0 = local_e0;
  fStack_ac = fStack_dc;
  fStack_a8 = fStack_d8;
  fStack_a4 = fStack_d4;
  FUN_006fb070(this_00,local_e0,fStack_d8);
  if ((int *)local_110 != (int *)0x0) {
    if (iVar14 == -1) {
      FUN_00b27450((void *)((int)this + 0x124),(int *)&local_100);
      if ((*(char *)((int)this + 0x11c) != '\0') &&
         (-1 < *(int *)(*(int *)((int)this + 0x1c) + 0x29c))) {
        iVar14 = 0;
      }
      this_00 = (int *)local_100;
    }
    pvVar9 = (void *)(*(code *)**(undefined4 **)(*(int *)((int)this + 0x1c) + 8))(iVar14);
    FUN_006e82e0((int *)local_110,this_00,pvVar9);
  }
  if ((param_2[2] != 0) || (param_2[6] != 0)) {
    pvVar9 = (void *)FUN_004e4520(0x30,8,0,"Renderer/TexCompFixupLOD",0);
    piVar16 = (int *)0x0;
    if ((pvVar9 != (void *)0x0) &&
       (piVar12 = (int *)TexCompFixupLOD_Initialize(pvVar9,param_2,param_2 + 4),
       piVar12 != (int *)0x0)) {
      (**(code **)*piVar12)();
      piVar16 = piVar12;
    }
    (**(code **)(*this_00 + 0x80))(piVar16,&DAT_00ffaf14);
    ModelBinding_ApplyMaterialToAvailableLod(this_00 + 0x84);
    if (piVar16 != (int *)0x0) {
      (**(code **)(*piVar16 + 4))();
    }
  }
LAB_00b28e8f:
  if (param_10 != '\0') {
    (**(code **)(*this_00 + 0x34))(1,0);
  }
  local_e0 = *param_3;
  fStack_dc = param_3[1];
  local_f4 = param_3[2];
  fStack_d4 = param_3[3];
  local_100 = (ulonglong)ROUND(local_e0);
  local_110 = (ulonglong)ROUND(local_f4);
  fStack_d8 = local_f4;
  if (param_11 != '\0') {
    FUN_006f9830(this_00,param_3,param_4,
                 ((int)(int *)local_100 * 100 + (int)(int *)local_110) * 0x40000 + param_5,0);
  }
  if (param_9 == (void *)0x0) {
    if (bVar7) {
      if (this_00 != (int *)0x0) {
        (**(code **)*this_00)();
        (**(code **)*this_00)();
        (**(code **)(*this_00 + 4))();
      }
      puVar15 = local_d0;
      puVar17 = auStack_98;
      for (iVar14 = 8; iVar14 != 0; iVar14 = iVar14 + -1) {
        *puVar17 = *puVar15;
        puVar15 = puVar15 + 1;
        puVar17 = puVar17 + 1;
      }
      piStack_78 = this_00;
      if (this_00 != (int *)0x0) {
        (**(code **)*this_00)();
      }
      local_110 = local_110 & 0xffffffffffffff00;
      FUN_00b251b0((void *)((int)local_f0 + 0x40),(undefined4 *)&local_110,(int *)auStack_98);
      if (piStack_78 != (int *)0x0) {
        (**(code **)(*piStack_78 + 4))();
      }
      if (this_00 != (int *)0x0) {
        (**(code **)(*this_00 + 4))();
      }
    }
    pvVar9 = local_f0;
    uVar8 = param_5;
    uVar11 = *param_4;
    uVar13 = param_4[1];
    uVar1 = param_4[2];
    uVar2 = param_4[3];
    fVar3 = *param_3;
    fVar4 = param_3[1];
    fVar5 = param_3[2];
    fVar6 = param_3[3];
    puVar15 = local_d0;
    puVar17 = auStack_70;
    for (iVar14 = 8; iVar14 != 0; iVar14 = iVar14 + -1) {
      *puVar17 = *puVar15;
      puVar15 = puVar15 + 1;
      puVar17 = puVar17 + 1;
    }
    local_110 = local_110 & 0xffffffffffffff00;
    iStack_20 = param_8;
    uStack_50 = param_5;
    fStack_40 = fVar3;
    fStack_3c = fVar4;
    fStack_38 = fVar5;
    fStack_34 = fVar6;
    uStack_30 = uVar11;
    uStack_2c = uVar13;
    uStack_28 = uVar1;
    uStack_24 = uVar2;
    FUN_00b25070((void *)((int)local_f0 + 0x20),(int *)&local_f0,(int *)auStack_70);
    local_110 = CONCAT44(local_110._4_4_,(void *)((int)pvVar9 + 0x80));
    FUN_00b24730((void *)((int)pvVar9 + 0x80),&local_f0,&param_5);
    pvVar9 = local_f0;
    while (pvVar9 != pvStack_e8) {
      if ((((*(uint *)((int)pvVar9 + 8) == param_7) && (*(int *)((int)pvVar9 + 0x10) == local_d0[2])
           ) && (*(int *)((int)pvVar9 + 0x18) == local_c0)) &&
         (((*(int *)((int)pvVar9 + 0x1c) == local_bc &&
           (*(int *)((int)pvVar9 + 0x14) == local_d0[3])) &&
          ((*(int *)((int)pvVar9 + 0x20) == param_6 && (*(uint *)((int)pvVar9 + 0x24) == uVar8))))))
      goto LAB_00b290b7;
      pvVar9 = *(void **)((int)pvVar9 + 0x28);
      while (pvVar9 == (void *)0x0) {
        piVar16 = (int *)(iStack_ec + 4);
        iStack_ec = iStack_ec + 4;
        pvVar9 = (void *)*piVar16;
      }
    }
    auStack_98[0] = uVar8;
    local_f0 = (void *)((uint)local_f0 & 0xffffff00);
    puVar15 = local_d0;
    puVar17 = auStack_98 + 2;
    for (iVar14 = 8; iVar14 != 0; iVar14 = iVar14 + -1) {
      *puVar17 = *puVar15;
      puVar15 = puVar15 + 1;
      puVar17 = puVar17 + 1;
    }
    FUN_00b24940((int *)local_110,&local_f0,auStack_98);
  }
  else {
    FUN_00b27c40(param_9,this_00);
  }
LAB_00b290b7:
  if (this_00 != (int *)0x0) {
    (**(code **)(*this_00 + 4))();
  }
  return;
}

