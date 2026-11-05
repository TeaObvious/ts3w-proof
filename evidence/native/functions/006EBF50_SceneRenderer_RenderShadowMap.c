/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 actual scene-shadow pass. Physical ECX receiver, no stack arguments, RET.
   Device+8D gate returns immediately; ShadowMainMap handle receiver+224 receives RenderSystem+12C
   before receiver+28E enable is tested. Enabled path binds target entries by separate tags,
   prepares the merged shadow shader receiver+2EC and camera+2C, then prepares source receiver+14.
   Nonempty source+150 queue (8-byte row stride) is submitted by006EA9A0; only afterward00712BE0
   obtains optional flora service and vtable+8 receives source+120 plus the same stack draw context.
   The virtual implementation is unresolved here. No Vulkan stable-tier/static-copy/matrix-identity
   reuse or submission receipt is established by this selected complete body. Decompiler local_4940
   etc are reused stack storage: at6EC30F..6EC32E viewport bounds are integer bit patterns 1 and
   size-1, not tiny float coordinates. Rendering/timing/matrix parameters are changed in original
   order; no stack context may be retained beyond this call. */

void __fastcall SceneRenderer_RenderShadowMap(void *param_1)

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
  void *this;
  int *piVar10;
  undefined4 uVar11;
  int iVar12;
  undefined4 *puVar13;
  float local_4940;
  float fStack_493c;
  float fStack_4938;
  float fStack_4934;
  void *local_4930;
  int *local_492c;
  int *local_4928;
  float local_4924;
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
  
  uStack_14 = 0x6ebf60;
  this = (void *)FUN_0060e910();
  pvVar9 = DAT_011d8530;
  if (*(char *)((int)this + 0x8d) != '\0') {
    return;
  }
  ShaderParameterRegistry_SetTexturePayload
            (DAT_011d8530,*(uint *)((int)param_1 + 0x224),*(int *)(DAT_011d2530 + 300));
  _DAT_011d2af4 = (uint)(*(char *)((int)param_1 + 0x28e) != '\0');
  if (*(uint *)((int)param_1 + 0x230) < *(uint *)((int)pvVar9 + 8)) {
    piVar10 = (int *)(*(uint *)((int)param_1 + 0x230) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar10 = *piVar10 + 1;
    *(undefined2 *)(piVar10 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar10[3] = (int)&DAT_011d2af4;
  }
  uVar11 = ReadDwordOffset18_531F70((int)this);
  *(undefined4 *)((int)param_1 + 0x360) = uVar11;
  if (*(char *)((int)param_1 + 0x28e) == '\0') goto LAB_006ec6b4;
  local_4930 = (void *)FUN_00617780();
  local_4920 = (int *)FUN_00617c50(local_4930);
  local_4928 = (int *)FUN_00617c50(local_4930);
  local_492c = SurfaceRegistry_FindValueByTag(local_4930,0x633e72e2);
  local_4930 = (void *)DAT_0115c3c8;
  if ((_DAT_011d2af0 & 1) == 0) {
    _DAT_011d2af0 = _DAT_011d2af0 | 1;
  }
  local_4940 = (float)DAT_0115c3c8;
  if (DAT_0115c3c8 < 0) {
    local_4940 = local_4940 + FLOAT_00f99948;
  }
  fStack_493c = FLOAT_00f998f8 / local_4940;
  fStack_4934 = 0.0;
  fStack_4938 = fStack_493c * DAT_0103fd88;
  uRam011d2aec = 0;
  _DAT_011d2ae0 = local_4940;
  fRam011d2ae4 = fStack_493c;
  fRam011d2ae8 = fStack_4938;
  if (*(uint *)((int)param_1 + 0x1fc) < *(uint *)((int)pvVar9 + 8)) {
    piVar10 = (int *)(*(uint *)((int)param_1 + 0x1fc) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar10 = *piVar10 + 1;
    *(undefined2 *)(piVar10 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar10[3] = (int)&DAT_011d2ae0;
  }
  if (*(uint *)((int)param_1 + 0x200) < *(uint *)((int)pvVar9 + 8)) {
    piVar10 = (int *)(*(uint *)((int)param_1 + 0x200) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar10 = *piVar10 + 1;
    *(undefined2 *)(piVar10 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar10[3] = (int)param_1 + 0x80;
  }
  if (*(uint *)((int)param_1 + 0x204) < *(uint *)((int)pvVar9 + 8)) {
    piVar10 = (int *)(*(uint *)((int)param_1 + 0x204) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar10 = *piVar10 + 1;
    *(undefined2 *)(piVar10 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar10[3] = (int)param_1 + 0x40;
  }
  if (*(uint *)((int)param_1 + 0x208) < *(uint *)((int)pvVar9 + 8)) {
    piVar10 = (int *)(*(uint *)((int)param_1 + 0x208) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar10 = *piVar10 + 1;
    *(undefined2 *)(piVar10 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar10[3] = (int)param_1 + 0xc0;
  }
  local_4924 = local_4940;
  FUN_00610600(this,local_4880);
  FUN_00618720(local_48e8);
  FUN_0060e930(this,local_4870);
  if (local_4920 == (int *)0x0) {
    iVar12 = 0;
  }
  else {
    iVar12 = *local_4920;
  }
  FUN_0060f560(this,0,iVar12);
  if (local_4928 == (int *)0x0) {
    if (local_492c != (undefined4 *)0x0) {
      FUN_00619bf0((void *)*local_492c,0);
      puVar13 = local_48e8;
      goto LAB_006ec18a;
    }
  }
  else {
    puVar13 = (undefined4 *)*local_4928;
LAB_006ec18a:
    FUN_0060f5b0(this,(int)puVar13);
  }
  FUN_0060f2a0((int)this);
  FUN_006fac30(auStack_4420,*(undefined4 *)((int)param_1 + 0x2ec),
               *(undefined4 *)(DAT_011d2530 + 0xf4),*(undefined4 *)((int)param_1 + 0x2c));
  FUN_0068ddd0(auStack_4840,*(void **)((int)param_1 + 0x2c));
  uStack_4914 = *(undefined4 *)((int)param_1 + 0x2c);
  uStack_48f4 = *(undefined4 *)((int)param_1 + 0x250);
  uStack_4904 = 0;
  uStack_48f8 = 0;
  uStack_48f0 = 0;
  uStack_48ec = 0;
  puStack_4900 = auStack_4420;
  uStack_48fc = 0;
  puStack_491c = auStack_4840;
  uStack_4907 = *(undefined1 *)((int)param_1 + 0x2a2);
  uStack_490b = 0;
  uStack_490a = 0;
  uStack_4909 = 0;
  uStack_4908 = 0;
  uStack_4906 = 0;
  uStack_4918 = 8;
  uStack_490c = 1;
  uStack_4910 = uStack_4914;
  FUN_006e8ec0(param_1,(int)&puStack_491c);
  RenderDevice_SetBaselineState(this,0xae,1);
  if ((DAT_0115c3cc != '\0') || (DAT_0115c3cd != '\0')) {
    RenderDevice_SetBaselineState(this,0xc3,*(uint *)((int)param_1 + 0x1b4));
    RenderDevice_SetBaselineState(this,0xaf,*(uint *)((int)param_1 + 0x1b0));
  }
  FUN_0060fda0(this,0);
  local_4940 = 0.0;
  fStack_493c = 0.0;
  fStack_4938 = (float)local_4930;
  fStack_4934 = (float)local_4930;
  FUN_0060f490(this,&local_4940);
  local_4940 = 0.0;
  fStack_493c = 0.0;
  fStack_4938 = (float)local_4930;
  fStack_4934 = (float)local_4930;
  FUN_00610630(this,(int *)&local_4940,0,0x3f800000);
  if (DAT_0115c3cd == '\0') {
    uVar11 = 6;
  }
  else {
    uVar11 = 2;
  }
  FUN_0060f8b0(this,uVar11,0);
                    /* Original instruction uses DWORD viewport bounds 1 and size-1; decompiler
                       reuses float-looking locals for the same stack slots. */
  local_4940 = 1.4013e-45;
  fStack_493c = 1.4013e-45;
  fStack_4938 = (float)((int)local_4930 + -1);
  fStack_4934 = fStack_4938;
  FUN_0060f490(this,&local_4940);
  iVar12 = *(int *)((int)param_1 + 0x14);
  local_492c = (int *)(iVar12 + 0x150);
  local_4928 = (int *)(iVar12 + 0x120);
  FUN_006ea7e0(iVar12,*(int *)((int)param_1 + 0x2c));
  if ((local_492c[1] - *local_492c & 0xfffffff8U) != 0) {
    SceneShadow_DrawQueuedCasters(param_1,*(int *)((int)param_1 + 0x14),local_492c,&puStack_491c);
  }
                    /* After scene source+150 queue: get optional flora service, then virtual+8 with
                       source+120 and borrowed stack draw context. Concrete virtual target
                       unresolved. */
  piVar10 = (int *)FloraRenderer_GetService();
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 8))(local_4928,&puStack_491c);
  }
  FUN_006fa900(auStack_4420);
  FUN_00610330((int)this);
  FUN_0060ea60(this,(int)local_4870);
  fStack_4934 = FLOAT_00f998f8;
  fStack_493c = _DAT_00f9b5b4;
  local_4940 = _DAT_00f9b5b4;
  fVar1 = *(float *)((int)param_1 + 0x80);
  fVar2 = *(float *)((int)param_1 + 0x84);
  fVar3 = *(float *)((int)param_1 + 0x88);
  fVar4 = *(float *)((int)param_1 + 0x8c);
  fVar5 = *(float *)((int)param_1 + 0x90);
  fVar6 = *(float *)((int)param_1 + 0x94);
  fVar7 = *(float *)((int)param_1 + 0x98);
  fVar8 = *(float *)((int)param_1 + 0x9c);
  fStack_4938 = 0.0;
  _DAT_011d28f0 = fVar2 * 0.0 + fVar1 * _DAT_00f9b5b4 + fVar3 * 0.0 + fVar4 * _DAT_00f9b5b4;
  fRam011d28f4 = fVar2 * DAT_00f9b600 + fVar1 * 0.0 + fVar3 * 0.0 + fVar4 * _DAT_00f9b5b4;
  fRam011d28f8 = fVar2 * 0.0 + fVar1 * 0.0 + fVar3 * FLOAT_00f998f8 + fVar4 * 0.0;
  fRam011d28fc = fVar2 * 0.0 + fVar1 * 0.0 + fVar3 * 0.0 + fVar4 * FLOAT_00f998f8;
  fVar1 = *(float *)((int)param_1 + 0xa0);
  fVar2 = *(float *)((int)param_1 + 0xa4);
  fVar3 = *(float *)((int)param_1 + 0xa8);
  fVar4 = *(float *)((int)param_1 + 0xac);
  _DAT_011d2900 = fVar6 * 0.0 + fVar5 * _DAT_00f9b5b4 + fVar7 * 0.0 + fVar8 * _DAT_00f9b5b4;
  fRam011d2904 = fVar6 * DAT_00f9b600 + fVar5 * 0.0 + fVar7 * 0.0 + fVar8 * _DAT_00f9b5b4;
  fRam011d2908 = fVar6 * 0.0 + fVar5 * 0.0 + fVar7 * FLOAT_00f998f8 + fVar8 * 0.0;
  fRam011d290c = fVar6 * 0.0 + fVar5 * 0.0 + fVar7 * 0.0 + fVar8 * FLOAT_00f998f8;
  fStack_48a0 = fVar2 * 0.0 + fVar1 * _DAT_00f9b5b4 + fVar3 * 0.0 + fVar4 * _DAT_00f9b5b4;
  fStack_489c = fVar2 * DAT_00f9b600 + fVar1 * 0.0 + fVar3 * 0.0 + fVar4 * _DAT_00f9b5b4;
  fStack_4898 = fVar2 * 0.0 + fVar1 * 0.0 + fVar3 * FLOAT_00f998f8 + fVar4 * 0.0;
  fStack_4894 = fVar2 * 0.0 + fVar1 * 0.0 + fVar3 * 0.0 + fVar4 * FLOAT_00f998f8;
  fVar1 = *(float *)((int)param_1 + 0xb0);
  fVar2 = *(float *)((int)param_1 + 0xb4);
  fVar3 = *(float *)((int)param_1 + 0xb8);
  fVar4 = *(float *)((int)param_1 + 0xbc);
  _DAT_011d2920 = fVar2 * 0.0 + fVar1 * _DAT_00f9b5b4 + fVar3 * 0.0 + fVar4 * _DAT_00f9b5b4;
  fRam011d2924 = fVar2 * DAT_00f9b600 + fVar1 * 0.0 + fVar3 * 0.0 + fVar4 * _DAT_00f9b5b4;
  fRam011d2928 = fVar2 * 0.0 + fVar1 * 0.0 + fVar3 * FLOAT_00f998f8 + fVar4 * 0.0;
  fRam011d292c = fVar2 * 0.0 + fVar1 * 0.0 + fVar3 * 0.0 + fVar4 * FLOAT_00f998f8;
  fVar1 = *(float *)((int)param_1 + 0x40);
  fVar2 = *(float *)((int)param_1 + 0x44);
  fVar3 = *(float *)((int)param_1 + 0x48);
  fVar4 = *(float *)((int)param_1 + 0x4c);
  fVar5 = *(float *)((int)param_1 + 0x50);
  fVar6 = *(float *)((int)param_1 + 0x54);
  fVar7 = *(float *)((int)param_1 + 0x58);
  fVar8 = *(float *)((int)param_1 + 0x5c);
  _DAT_011d28b0 = fVar2 * 0.0 + fVar1 * _DAT_00f9b5b4 + fVar3 * 0.0 + fVar4 * _DAT_00f9b5b4;
  fRam011d28b4 = fVar2 * DAT_00f9b600 + fVar1 * 0.0 + fVar3 * 0.0 + fVar4 * _DAT_00f9b5b4;
  fRam011d28b8 = fVar2 * 0.0 + fVar1 * 0.0 + fVar3 * FLOAT_00f998f8 + fVar4 * 0.0;
  fRam011d28bc = fVar2 * 0.0 + fVar1 * 0.0 + fVar3 * 0.0 + fVar4 * FLOAT_00f998f8;
  fVar1 = *(float *)((int)param_1 + 0x60);
  fVar2 = *(float *)((int)param_1 + 100);
  fVar3 = *(float *)((int)param_1 + 0x68);
  fVar4 = *(float *)((int)param_1 + 0x6c);
  fStack_48b0 = fVar6 * 0.0 + fVar5 * _DAT_00f9b5b4 + fVar7 * 0.0 + fVar8 * _DAT_00f9b5b4;
  fStack_48ac = fVar6 * DAT_00f9b600 + fVar5 * 0.0 + fVar7 * 0.0 + fVar8 * _DAT_00f9b5b4;
  fStack_48a8 = fVar6 * 0.0 + fVar5 * 0.0 + fVar7 * FLOAT_00f998f8 + fVar8 * 0.0;
  fStack_48a4 = fVar6 * 0.0 + fVar5 * 0.0 + fVar7 * 0.0 + fVar8 * FLOAT_00f998f8;
  fVar5 = *(float *)((int)param_1 + 0x70);
  fVar6 = *(float *)((int)param_1 + 0x74);
  fVar7 = *(float *)((int)param_1 + 0x78);
  fVar8 = *(float *)((int)param_1 + 0x7c);
  _DAT_011d28d0 = fVar2 * 0.0 + fVar1 * _DAT_00f9b5b4 + fVar3 * 0.0 + fVar4 * _DAT_00f9b5b4;
  fRam011d28d4 = fVar2 * DAT_00f9b600 + fVar1 * 0.0 + fVar3 * 0.0 + fVar4 * _DAT_00f9b5b4;
  fRam011d28d8 = fVar2 * 0.0 + fVar1 * 0.0 + fVar3 * FLOAT_00f998f8 + fVar4 * 0.0;
  fRam011d28dc = fVar2 * 0.0 + fVar1 * 0.0 + fVar3 * 0.0 + fVar4 * FLOAT_00f998f8;
  _DAT_011d28e0 = fVar6 * 0.0 + fVar5 * _DAT_00f9b5b4 + fVar7 * 0.0 + fVar8 * _DAT_00f9b5b4;
  fRam011d28e4 = fVar6 * DAT_00f9b600 + fVar5 * 0.0 + fVar7 * 0.0 + fVar8 * _DAT_00f9b5b4;
  fRam011d28e8 = fVar6 * 0.0 + fVar5 * 0.0 + fVar7 * FLOAT_00f998f8 + fVar8 * 0.0;
  fRam011d28ec = fVar6 * 0.0 + fVar5 * 0.0 + fVar7 * 0.0 + fVar8 * FLOAT_00f998f8;
  _DAT_011d28c0 = fStack_48b0;
  fRam011d28c4 = fStack_48ac;
  fRam011d28c8 = fStack_48a8;
  fRam011d28cc = fStack_48a4;
  _DAT_011d2910 = fStack_48a0;
  fRam011d2914 = fStack_489c;
  fRam011d2918 = fStack_4898;
  fRam011d291c = fStack_4894;
  if (*(uint *)((int)param_1 + 0x200) < *(uint *)((int)pvVar9 + 8)) {
    piVar10 = (int *)(*(uint *)((int)param_1 + 0x200) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar10 = *piVar10 + 1;
    *(undefined2 *)(piVar10 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar10[3] = (int)&DAT_011d28f0;
  }
  if (*(uint *)((int)param_1 + 0x204) < *(uint *)((int)pvVar9 + 8)) {
    piVar10 = (int *)(*(uint *)((int)param_1 + 0x204) * 0x10 + *(int *)((int)pvVar9 + 4));
    *piVar10 = *piVar10 + 1;
    *(undefined2 *)(piVar10 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
    piVar10[3] = (int)&DAT_011d28b0;
  }
  FUN_006183f0(local_48e8);
LAB_006ec6b4:
  iVar12 = ReadDwordOffset18_531F70((int)this);
  *(int *)((int)param_1 + 0x360) = iVar12 - *(int *)((int)param_1 + 0x360);
  return;
}

