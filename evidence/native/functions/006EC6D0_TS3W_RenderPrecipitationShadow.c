/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst-assigned name; original PC 1.67 renderer helper. When rendering is available and
   owner+0x29C enables the pass, binds the precipitation shadow target, rebuilds the current caster
   submission, and renders it. No camera-matrix or published-scene-pointer equality cache in this
   routine. Guessed fastcall signature and indirect renderer calls are not an ABI proof. */

void __fastcall TS3W_RenderPrecipitationShadow(void *renderOwner)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  void *pvVar9;
  void *pvVar10;
  undefined4 uVar11;
  int *piVar12;
  int iVar13;
  undefined4 *puVar14;
  float local_4950;
  float fStack_494c;
  float fStack_4948;
  float fStack_4944;
  int *local_4934;
  int local_4930;
  undefined4 *local_492c;
  float local_4928;
  void *local_4924;
  int *local_4920;
  undefined1 *puStack_491c;
  undefined4 uStack_4918;
  undefined4 uStack_4914;
  undefined4 uStack_4910;
  undefined1 uStack_490c;
  undefined1 uStack_490b;
  undefined1 uStack_490a;
  undefined1 uStack_4909;
  undefined1 uStack_4908;
  undefined1 uStack_4907;
  undefined1 uStack_4906;
  undefined4 uStack_4904;
  uint *puStack_4900;
  undefined4 uStack_48fc;
  undefined4 uStack_48f8;
  undefined4 uStack_48f4;
  undefined4 uStack_48f0;
  undefined4 uStack_48ec;
  undefined4 local_48e8 [14];
  float fStack_48b0;
  float fStack_48ac;
  float fStack_48a8;
  float fStack_48a4;
  float fStack_48a0;
  float fStack_489c;
  float fStack_4898;
  float fStack_4894;
  int local_4880 [4];
  undefined4 local_4870 [12];
  undefined1 auStack_4840 [1056];
  uint auStack_4420 [4355];
  undefined4 uStack_14;
  
  uStack_14 = 0x6ec6e0;
  pvVar10 = (void *)Graphics_GetManagerSingleton();
  pvVar9 = DAT_011d8530;
  if (*(char *)((int)pvVar10 + 0x8d) != '\0') {
    return;
  }
  local_4924 = pvVar10;
  ShaderParameterRegistry_SetTexturePayload
            (DAT_011d8530,*(uint *)((int)renderOwner + 0x22c),*(int *)(DAT_011d2530 + 300));
  uVar11 = ReadDwordOffset18_531F70((int)pvVar10);
  *(undefined4 *)((int)renderOwner + 0x368) = uVar11;
  if (*(char *)((int)renderOwner + 0x29c) == '\0') goto LAB_006ecf0a;
  pvVar10 = (void *)FUN_00617780();
  local_4920 = RenderTargets_FindTarget(pvVar10,0xd54b783);
  local_492c = RenderTargets_FindTarget(pvVar10,0xd54ac6f);
  local_4934 = SurfaceRegistry_FindValueByTag(pvVar10,0xd536718);
  pvVar10 = local_4924;
  local_4930 = DAT_0115c3e0;
  if ((DAT_011d2b90 & 1) == 0) {
    DAT_011d2b90 = DAT_011d2b90 | 1;
  }
  local_4950 = (float)DAT_0115c3e0;
  if (DAT_0115c3e0 < 0) {
    local_4950 = local_4950 + 4.2949673e+09;
  }
  fStack_494c = 1.0 / local_4950;
  fStack_4944 = 0.0;
  fStack_4948 = fStack_494c * 2.0;
  uRam011d2b8c = 0;
  _DAT_011d2b80 = local_4950;
  fRam011d2b84 = fStack_494c;
  fRam011d2b88 = fStack_4948;
  if (*(uint *)((int)renderOwner + 0x20c) < *(uint *)((int)pvVar9 + 8)) {
    piVar12 = (int *)(*(uint *)((int)renderOwner + 0x20c) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar12 = *piVar12 + 1;
    *(undefined2 *)(piVar12 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar12[3] = (int)&DAT_011d2b80;
  }
  if (*(uint *)((int)renderOwner + 0x210) < *(uint *)((int)pvVar9 + 8)) {
    piVar12 = (int *)(*(uint *)((int)renderOwner + 0x210) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar12 = *piVar12 + 1;
    *(undefined2 *)(piVar12 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar12[3] = (int)renderOwner + 0x110;
  }
  if (*(uint *)((int)renderOwner + 0x214) < *(uint *)((int)pvVar9 + 8)) {
    piVar12 = (int *)(*(uint *)((int)renderOwner + 0x214) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar12 = *piVar12 + 1;
    *(undefined2 *)(piVar12 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar12[3] = (int)renderOwner + 0xd0;
  }
  if (*(uint *)((int)renderOwner + 0x218) < *(uint *)((int)pvVar9 + 8)) {
    piVar12 = (int *)(*(uint *)((int)renderOwner + 0x218) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar12 = *piVar12 + 1;
    *(undefined2 *)(piVar12 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar12[3] = (int)renderOwner + 0x150;
  }
  if (*(uint *)((int)renderOwner + 0x200) < *(uint *)((int)pvVar9 + 8)) {
    piVar12 = (int *)(*(uint *)((int)renderOwner + 0x200) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar12 = *piVar12 + 1;
    *(undefined2 *)(piVar12 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar12[3] = (int)renderOwner + 0x110;
  }
  if (*(uint *)((int)renderOwner + 0x204) < *(uint *)((int)pvVar9 + 8)) {
    piVar12 = (int *)(*(uint *)((int)renderOwner + 0x204) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar12 = *piVar12 + 1;
    *(undefined2 *)(piVar12 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar12[3] = (int)renderOwner + 0xd0;
  }
  if (*(uint *)((int)renderOwner + 0x208) < *(uint *)((int)pvVar9 + 8)) {
    piVar12 = (int *)(*(uint *)((int)renderOwner + 0x208) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar12 = *piVar12 + 1;
    *(undefined2 *)(piVar12 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar12[3] = (int)renderOwner + 0x150;
  }
  local_4928 = local_4950;
  FUN_00610600(local_4924,local_4880);
  FUN_00618720(local_48e8);
  FUN_0060e930(pvVar10,local_4870);
  if (local_4920 == (int *)0x0) {
    iVar13 = 0;
  }
  else {
    iVar13 = *local_4920;
  }
  FUN_0060f560(pvVar10,0,iVar13);
  if (local_492c == (undefined4 *)0x0) {
    if (local_4934 != (undefined4 *)0x0) {
      FUN_00619bf0((void *)*local_4934,0);
      puVar14 = local_48e8;
      goto LAB_006ec94d;
    }
  }
  else {
    puVar14 = (undefined4 *)*local_492c;
LAB_006ec94d:
    FUN_0060f5b0(pvVar10,(int)puVar14);
  }
  FUN_0060f2a0((int)pvVar10);
  FUN_006fac30(auStack_4420,*(undefined4 *)((int)renderOwner + 0x2ec),
               *(undefined4 *)(DAT_011d2530 + 0xf4),*(undefined4 *)((int)renderOwner + 0x34));
  FUN_0068ddd0(auStack_4840,*(void **)((int)renderOwner + 0x34));
  uStack_48f4 = *(undefined4 *)((int)renderOwner + 0x250);
  uStack_4914 = *(undefined4 *)((int)renderOwner + 0x34);
  uStack_4904 = 0;
  uStack_48f8 = 0;
  uStack_48f0 = 0;
  uStack_48ec = 0;
  puStack_4900 = auStack_4420;
  uStack_48fc = 0;
  uStack_4907 = *(undefined1 *)((int)renderOwner + 0x2a2);
  puStack_491c = auStack_4840;
  uStack_490b = 0;
  uStack_490a = 0;
  uStack_4909 = 0;
  uStack_4908 = 0;
  uStack_4906 = 0;
  uStack_4918 = 8;
  uStack_490c = 0;
  uStack_4910 = uStack_4914;
  SceneRenderer_ApplyDrawContextRasterDefaults(renderOwner,(int)&puStack_491c);
  RenderDevice_SetBaselineState(pvVar10,0xae,1);
  if ((DAT_0115c3cc != '\0') || (DAT_0115c3cd != '\0')) {
    RenderDevice_SetBaselineState(pvVar10,0xc3,*(uint *)((int)renderOwner + 0x1b4));
    RenderDevice_SetBaselineState(pvVar10,0xaf,*(uint *)((int)renderOwner + 0x1b0));
  }
  FUN_0060fda0(pvVar10,0);
  local_4950 = 0.0;
  fStack_494c = 0.0;
  fStack_4948 = (float)local_4930;
  fStack_4944 = (float)local_4930;
  FUN_0060f490(pvVar10,&local_4950);
  local_4950 = 0.0;
  fStack_494c = 0.0;
  fStack_4948 = (float)local_4930;
  fStack_4944 = (float)local_4930;
  FUN_00610630(pvVar10,(int *)&local_4950,0,0x3f800000);
  if (DAT_0115c3cd == '\0') {
    uVar11 = 6;
  }
  else {
    uVar11 = 2;
  }
  FUN_0060f8b0(pvVar10,uVar11,0);
  local_4950 = 1.4013e-45;
  fStack_494c = 1.4013e-45;
  fStack_4948 = (float)(local_4930 + -1);
  fStack_4944 = fStack_4948;
  FUN_0060f490(pvVar10,&local_4950);
  iVar13 = *(int *)((int)renderOwner + 0x20);
  local_4934 = (int *)(iVar13 + 0x150);
  local_492c = (undefined4 *)(iVar13 + 0x120);
  FUN_006ea7e0(iVar13,*(int *)((int)renderOwner + 0x34));
  if ((local_4934[1] - *local_4934 & 0xfffffff8U) != 0) {
    SceneShadow_DrawQueuedCasters
              (renderOwner,*(int *)((int)renderOwner + 0x20),local_4934,&puStack_491c);
  }
  piVar12 = (int *)FloraRenderer_GetService();
  if (piVar12 != (int *)0x0) {
    (**(code **)(*piVar12 + 8))(local_492c,&puStack_491c);
  }
  FUN_006fa900(auStack_4420);
  FUN_00610330((int)pvVar10);
  FUN_0060ea60(pvVar10,(int)local_4870);
  fStack_4944 = 1.0;
  fStack_4948 = 0.0;
  fStack_494c = 0.5;
  local_4950 = 0.5;
  if ((DAT_011d2b90 & 2) == 0) {
    DAT_011d2b90 = DAT_011d2b90 | 2;
  }
  if ((DAT_011d2b90 & 4) == 0) {
    DAT_011d2b90 = DAT_011d2b90 | 4;
  }
  fVar1 = *(float *)((int)renderOwner + 0x110);
  fVar2 = *(float *)((int)renderOwner + 0x114);
  fVar3 = *(float *)((int)renderOwner + 0x118);
  fVar4 = *(float *)((int)renderOwner + 0x11c);
  fVar5 = *(float *)((int)renderOwner + 0x120);
  fVar6 = *(float *)((int)renderOwner + 0x124);
  fVar7 = *(float *)((int)renderOwner + 0x128);
  fVar8 = *(float *)((int)renderOwner + 300);
  _DAT_011d2b40 = fVar1 * 0.5 + fVar2 * 0.0 + fVar3 * 0.0 + fVar4 * 0.5;
  fRam011d2b44 = fVar1 * 0.0 + fVar2 * -0.5 + fVar3 * 0.0 + fVar4 * 0.5;
  fRam011d2b48 = fVar1 * 0.0 + fVar2 * 0.0 + fVar3 * 1.0 + fVar4 * 0.0;
  fRam011d2b4c = fVar1 * 0.0 + fVar2 * 0.0 + fVar3 * 0.0 + fVar4 * 1.0;
  fVar1 = *(float *)((int)renderOwner + 0x130);
  fVar2 = *(float *)((int)renderOwner + 0x134);
  fVar3 = *(float *)((int)renderOwner + 0x138);
  fVar4 = *(float *)((int)renderOwner + 0x13c);
  _DAT_011d2b50 = fVar5 * 0.5 + fVar6 * 0.0 + fVar7 * 0.0 + fVar8 * 0.5;
  fRam011d2b54 = fVar5 * 0.0 + fVar6 * -0.5 + fVar7 * 0.0 + fVar8 * 0.5;
  fRam011d2b58 = fVar5 * 0.0 + fVar6 * 0.0 + fVar7 * 1.0 + fVar8 * 0.0;
  fRam011d2b5c = fVar5 * 0.0 + fVar6 * 0.0 + fVar7 * 0.0 + fVar8 * 1.0;
  fVar5 = *(float *)((int)renderOwner + 0x140);
  fVar6 = *(float *)((int)renderOwner + 0x144);
  fVar7 = *(float *)((int)renderOwner + 0x148);
  fVar8 = *(float *)((int)renderOwner + 0x14c);
  fStack_48a0 = fVar1 * 0.5 + fVar2 * 0.0 + fVar3 * 0.0 + fVar4 * 0.5;
  fStack_489c = fVar1 * 0.0 + fVar2 * -0.5 + fVar3 * 0.0 + fVar4 * 0.5;
  fStack_4898 = fVar1 * 0.0 + fVar2 * 0.0 + fVar3 * 1.0 + fVar4 * 0.0;
  fStack_4894 = fVar1 * 0.0 + fVar2 * 0.0 + fVar3 * 0.0 + fVar4 * 1.0;
  _DAT_011d2b70 = fVar5 * 0.5 + fVar6 * 0.0 + fVar7 * 0.0 + fVar8 * 0.5;
  fRam011d2b74 = fVar5 * 0.0 + fVar6 * -0.5 + fVar7 * 0.0 + fVar8 * 0.5;
  fRam011d2b78 = fVar5 * 0.0 + fVar6 * 0.0 + fVar7 * 1.0 + fVar8 * 0.0;
  fRam011d2b7c = fVar5 * 0.0 + fVar6 * 0.0 + fVar7 * 0.0 + fVar8 * 1.0;
  fVar1 = *(float *)((int)renderOwner + 0xd0);
  fVar2 = *(float *)((int)renderOwner + 0xd4);
  fVar3 = *(float *)((int)renderOwner + 0xd8);
  fVar4 = *(float *)((int)renderOwner + 0xdc);
  fVar5 = *(float *)((int)renderOwner + 0xe0);
  fVar6 = *(float *)((int)renderOwner + 0xe4);
  fVar7 = *(float *)((int)renderOwner + 0xe8);
  fVar8 = *(float *)((int)renderOwner + 0xec);
  _DAT_011d2b00 = fVar1 * 0.5 + fVar2 * 0.0 + fVar3 * 0.0 + fVar4 * 0.5;
  fRam011d2b04 = fVar1 * 0.0 + fVar2 * -0.5 + fVar3 * 0.0 + fVar4 * 0.5;
  fRam011d2b08 = fVar1 * 0.0 + fVar2 * 0.0 + fVar3 * 1.0 + fVar4 * 0.0;
  fRam011d2b0c = fVar1 * 0.0 + fVar2 * 0.0 + fVar3 * 0.0 + fVar4 * 1.0;
  fVar1 = *(float *)((int)renderOwner + 0xf0);
  fVar2 = *(float *)((int)renderOwner + 0xf4);
  fVar3 = *(float *)((int)renderOwner + 0xf8);
  fVar4 = *(float *)((int)renderOwner + 0xfc);
  fStack_48b0 = fVar5 * 0.5 + fVar6 * 0.0 + fVar7 * 0.0 + fVar8 * 0.5;
  fStack_48ac = fVar5 * 0.0 + fVar6 * -0.5 + fVar7 * 0.0 + fVar8 * 0.5;
  fStack_48a8 = fVar5 * 0.0 + fVar6 * 0.0 + fVar7 * 1.0 + fVar8 * 0.0;
  fStack_48a4 = fVar5 * 0.0 + fVar6 * 0.0 + fVar7 * 0.0 + fVar8 * 1.0;
  fVar5 = *(float *)((int)renderOwner + 0x100);
  fVar6 = *(float *)((int)renderOwner + 0x104);
  fVar7 = *(float *)((int)renderOwner + 0x108);
  fVar8 = *(float *)((int)renderOwner + 0x10c);
  _DAT_011d2b20 = fVar1 * 0.5 + fVar2 * 0.0 + fVar3 * 0.0 + fVar4 * 0.5;
  fRam011d2b24 = fVar1 * 0.0 + fVar2 * -0.5 + fVar3 * 0.0 + fVar4 * 0.5;
  fRam011d2b28 = fVar1 * 0.0 + fVar2 * 0.0 + fVar3 * 1.0 + fVar4 * 0.0;
  fRam011d2b2c = fVar1 * 0.0 + fVar2 * 0.0 + fVar3 * 0.0 + fVar4 * 1.0;
  _DAT_011d2b30 = fVar5 * 0.5 + fVar6 * 0.0 + fVar7 * 0.0 + fVar8 * 0.5;
  fRam011d2b34 = fVar5 * 0.0 + fVar6 * -0.5 + fVar7 * 0.0 + fVar8 * 0.5;
  fRam011d2b38 = fVar5 * 0.0 + fVar6 * 0.0 + fVar7 * 1.0 + fVar8 * 0.0;
  fRam011d2b3c = fVar5 * 0.0 + fVar6 * 0.0 + fVar7 * 0.0 + fVar8 * 1.0;
  _DAT_011d2b10 = fStack_48b0;
  fRam011d2b14 = fStack_48ac;
  fRam011d2b18 = fStack_48a8;
  fRam011d2b1c = fStack_48a4;
  _DAT_011d2b60 = fStack_48a0;
  fRam011d2b64 = fStack_489c;
  fRam011d2b68 = fStack_4898;
  fRam011d2b6c = fStack_4894;
  if (*(uint *)((int)renderOwner + 0x210) < *(uint *)((int)pvVar9 + 8)) {
    piVar12 = (int *)(*(uint *)((int)renderOwner + 0x210) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar12 = *piVar12 + 1;
    *(undefined2 *)(piVar12 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar12[3] = (int)&DAT_011d2b40;
  }
  if (*(uint *)((int)renderOwner + 0x214) < *(uint *)((int)pvVar9 + 8)) {
    piVar12 = (int *)(*(uint *)((int)renderOwner + 0x214) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar12 = *piVar12 + 1;
    *(undefined2 *)(piVar12 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar12[3] = (int)&DAT_011d2b00;
  }
  if (*(uint *)((int)renderOwner + 0x200) < *(uint *)((int)pvVar9 + 8)) {
    piVar12 = (int *)(*(uint *)((int)renderOwner + 0x200) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar12 = *piVar12 + 1;
    *(undefined2 *)(piVar12 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar12[3] = (int)&DAT_011d28f0;
  }
  if (*(uint *)((int)renderOwner + 0x204) < *(uint *)((int)pvVar9 + 8)) {
    piVar12 = (int *)(*(uint *)((int)renderOwner + 0x204) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar12 = *piVar12 + 1;
    *(undefined2 *)(piVar12 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar12[3] = (int)&DAT_011d28b0;
  }
  if (*(uint *)((int)renderOwner + 0x208) < *(uint *)((int)pvVar9 + 8)) {
    piVar12 = (int *)(*(uint *)((int)renderOwner + 0x208) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar12 = *piVar12 + 1;
    *(undefined2 *)(piVar12 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar12[3] = (int)renderOwner + 0xc0;
  }
  FUN_006183f0(local_48e8);
LAB_006ecf0a:
  iVar13 = ReadDwordOffset18_531F70((int)pvVar10);
  *(int *)((int)renderOwner + 0x368) = iVar13 - *(int *)((int)renderOwner + 0x368);
  return;
}

