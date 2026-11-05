/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst name, not a recovered symbol. ECX is the receiver; two stack words, RET8. Empty submitted
   range skips work. The batch prepares camera/light bases and writes receiver+24 from
   0.5*dot(normalized horizontal camera,normalized horizontal frame-light)+0.5. Light degeneracy
   uses componentwise absolute-value CMPLEPS against binary32 2^-23, masked to XYZ; that branch
   supplies0.5. This is not a squared-length comparison or proof of a matching camera guard. RSQRTPS
   is refined twice; do not infer bit parity with CLR Normalize. Frame-light RGB is copied to
   receiver+30; wind count is capped at8 and each matrix contributes three float4 rows with zero W.
   Normal dispatch calls submitted objects at virtual+18; flag80h additionally binds encoded object
   IDs. Existing ABI/types are inferred and unchanged.
   
   Billboard UV/fade join: BillboardAzimuth handle+60 is atan2(GetCamera direction.z,-direction.x);
   original FABS/FLD DOUBLE atFFC990 compares against binary64 0.01, replacing small absolute values
   by positive binary32 0.01 at106E6EC, then wrapping once into[0,2pi). Do not read the first DWORD
   of this DOUBLE as a float threshold. CameraAzimuthTrig handle+54 comes separately from SDK
   camera-degree values7B87A0. Neither receiver+24 light-side interpolation nor fog color alpha is
   the VS9279 t2.z image factor. */

void __thiscall Flora_PrepareBatchLightWindAndDispatch(void *this,int *param_1,int param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  int *piVar3;
  undefined1 auVar4 [16];
  undefined4 uVar5;
  undefined4 uVar6;
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  undefined1 auVar10 [12];
  undefined1 auVar11 [16];
  void *this_00;
  int iVar12;
  void *pvVar13;
  int *piVar14;
  int iVar15;
  uint uVar16;
  int *piVar17;
  undefined4 *puVar18;
  undefined4 extraout_EDX;
  undefined4 uVar19;
  undefined4 *puVar20;
  float10 fVar21;
  float10 fVar22;
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  float fVar27;
  float fVar28;
  float fVar29;
  undefined1 auVar30 [16];
  undefined1 auVar31 [16];
  float fVar32;
  float fVar33;
  float fVar34;
  undefined1 auVar35 [16];
  undefined1 local_2c0 [20];
  float local_2ac;
  float local_2a8;
  void *local_2a4;
  undefined1 local_2a0 [8];
  float fStack_298;
  float fStack_294;
  float local_284;
  undefined1 local_280 [8];
  float fStack_278;
  float fStack_274;
  undefined1 local_270 [8];
  undefined8 uStack_268;
  float local_260;
  float fStack_25c;
  float fStack_258;
  float fStack_254;
  undefined1 local_250 [8];
  float fStack_248;
  float local_234 [2];
  float local_22c;
  float local_228;
  float local_224;
  float local_220;
  float local_21c;
  float local_218;
  undefined4 local_214;
  float local_210;
  float local_20c;
  float local_208;
  undefined4 local_204;
  undefined4 local_200;
  undefined4 local_1fc;
  undefined4 local_1f8;
  undefined4 local_1f4;
  float local_1f0;
  float fStack_1ec;
  float fStack_1e8;
  undefined4 uStack_1e4;
  float local_1e0;
  float fStack_1dc;
  float fStack_1d8;
  undefined4 uStack_1d4;
  undefined1 local_1d0 [16];
  undefined4 local_1c0;
  undefined4 uStack_1bc;
  undefined4 uStack_1b8;
  float fStack_1b4;
  undefined4 local_1ac [3];
  undefined1 local_1a0 [16];
  undefined4 local_190;
  undefined1 local_18c [4];
  undefined4 local_188 [97];
  
  if (*param_1 == 0) {
    return;
  }
  local_2a4 = this;
  if ((*(byte *)(param_2 + 4) & 8) == 0) {
    iVar12 = *(int *)(param_2 + 8);
    local_280._4_4_ = 0.0 - *(float *)(iVar12 + 0x54);
    local_280._0_4_ = 0.0 - *(float *)(iVar12 + 0x50);
    fStack_278 = 0.0 - *(float *)(iVar12 + 0x58);
    fStack_274 = 0.0 - *(float *)(iVar12 + 0x5c);
    _local_270 = *(undefined1 (*) [16])(iVar12 + 0x60);
    Flora_UpdateCachedSpeedTreeCamera(local_280,local_270,(float *)local_270,(float *)local_280);
    QueryPerformanceCounter((LARGE_INTEGER *)local_2c0);
    uVar19 = local_2c0._0_4_;
    uVar5 = local_2c0._4_4_;
    local_2c0._4_4_ =
         (local_2c0._4_4_ - *(int *)((int)this + 0x1c)) -
         (uint)((uint)local_2c0._0_4_ < *(uint *)((int)this + 0x18));
    local_2c0._0_4_ = local_2c0._0_4_ - *(uint *)((int)this + 0x18);
    iVar12 = Compiler_TruncateX87ToLowInt32
                       ((float10)(longlong)local_2c0._0_8_ * (float10)*(float *)((int)this + 0x20));
    if (0xffff < iVar12) {
      *(undefined4 *)((int)this + 0x18) = uVar19;
      *(undefined4 *)((int)this + 0x1c) = uVar5;
    }
    *(ushort *)((int)this + 0x16) = (ushort)iVar12 | 1;
  }
  this_00 = DAT_011d8530;
  SpeedTree_GetCameraAzimuthPitchDegrees(&local_2a8,&local_284);
  SpeedTree_GetCamera(local_1ac,local_234);
  fVar22 = (float10)fpatan((float10)local_22c,-(float10)local_234[0]);
  local_2a8 = local_2a8 * DAT_00ffc7e0;
  local_280._4_4_ = local_284 * DAT_00ffc7e0;
  local_280._0_4_ = local_284 * DAT_00ffc7e0;
  fStack_278 = local_284 * DAT_00ffc7e0;
  fStack_274 = local_284 * DAT_00ffc7e0;
  local_2ac = (float)fVar22;
  if (ABS(fVar22) < (float10)_DAT_00ffc990) {
    local_2ac = _DAT_0106e6ec;
  }
  if (local_2a8 < 0.0) {
    local_2a8 = local_2a8 + DAT_00ffc7e8;
  }
  if (0.0 <= local_2ac) {
    if (DAT_00ffc7e8 <= local_2ac) {
      local_2ac = local_2ac - DAT_00ffc7e8;
    }
  }
  else {
    local_2ac = local_2ac + DAT_00ffc7e8;
  }
  fVar22 = (float10)fsin(-(float10)local_2a8);
  fStack_1ec = 0.0;
  _local_250 = ZEXT416((uint)FLOAT_00f998f8);
  local_1f0 = FLOAT_00f998f8;
  fStack_1e8 = 0.0;
  uStack_1e4 = 0;
  local_260 = 0.0;
  fStack_25c = FLOAT_00f998f8;
  fStack_258 = 0.0;
  fStack_254 = 0.0;
  local_1e0 = 0.0;
  fStack_1dc = FLOAT_00f998f8;
  fStack_1d8 = 0.0;
  uStack_1d4 = 0;
  local_204 = 0;
  local_2c0._0_12_ = ZEXT812(0);
  local_2c0._12_4_ = FLOAT_00f998f8;
  auVar25._8_8_ = 0;
  auVar25._0_8_ = local_2c0._8_8_;
  local_2c0._0_16_ = auVar25 << 0x40;
  auVar7._12_4_ = 0;
  auVar7._0_12_ = local_2c0._4_12_;
  local_2c0._0_16_ = auVar7 << 0x20;
  local_1d0 = ZEXT416((uint)FLOAT_00f998f8) << 0x40;
  local_1c0 = 0;
  uStack_1bc = 0;
  uStack_1b8 = 0;
  fStack_1b4 = FLOAT_00f998f8;
  local_210 = (float)fVar22;
  fVar21 = (float10)fcos(-(float10)local_2a8);
  local_20c = (float)fVar21;
  local_208 = (float)-fVar22;
  local_284 = local_284 * DAT_00ffc7e0;
  pvVar13 = LoadPump_ReadFrameServiceGlobal();
  iVar12 = FUN_006e8220((int)pvVar13);
  local_1a0 = *(undefined1 (*) [16])(iVar12 + 0x140);
  local_270._4_4_ = local_1a0._0_4_;
  uStack_268._0_4_ = local_1a0._4_4_;
  local_270._0_4_ = local_1a0._8_4_;
  fVar22 = (float10)fpatan((float10)(0.0 - (float)local_270._0_4_),(float10)(float)local_270._4_4_);
  if (fVar22 < (float10)0) {
    fVar22 = (float10)((float)fVar22 + DAT_00ffc7e8);
  }
  auVar35._0_8_ = local_1a0._4_8_;
  auVar35._8_4_ = local_270._4_4_;
  auVar35._12_4_ = local_270._4_4_;
  local_1f0 = fStack_25c * (float)local_270._0_4_ - fStack_258 * (float)uStack_268;
  fStack_1ec = fStack_258 * (float)local_270._4_4_ - local_260 * (float)local_270._0_4_;
  fStack_1e8 = local_260 * (float)uStack_268 - fStack_25c * (float)local_270._4_4_;
  fVar29 = local_260 * (float)local_270._4_4_ - local_260 * (float)local_270._4_4_;
  auVar24._0_4_ = FLOAT_00fab218 * local_1f0;
  auVar24._4_4_ = FLOAT_00fab218 * fStack_1ec;
  auVar24._8_4_ = FLOAT_00fab218 * fStack_1e8;
  auVar24._12_4_ = FLOAT_00fab218 * fVar29;
  auVar4._4_4_ = fStack_1ec;
  auVar4._0_4_ = local_1f0;
  auVar4._8_4_ = fStack_1e8;
  auVar4._12_4_ = fVar29;
  auVar25 = maxps(auVar24,auVar4);
  auVar26._4_4_ = -(uint)(auVar25._4_4_ <= DAT_00ffc7f0);
  auVar26._0_4_ = -(uint)(auVar25._0_4_ <= DAT_00ffc7f0);
  auVar26._8_4_ = -(uint)(auVar25._8_4_ <= DAT_00ffc7f0);
  auVar26._12_4_ = -(uint)(auVar25._12_4_ <= DAT_00ffc7f0);
  uVar19 = movmskps(extraout_EDX,auVar26);
  uStack_268._4_4_ = local_270._4_4_;
  local_260 = DAT_00ffc7f0;
  fStack_25c = DAT_00ffc7f0;
  fStack_258 = DAT_00ffc7f0;
  fStack_254 = DAT_00ffc7f0;
  if (((byte)uVar19 & 7) == 7) {
    local_1f0 = (float)local_250._0_4_;
    fStack_1ec = (float)local_250._4_4_;
    fStack_1e8 = fStack_248;
  }
  else {
    auVar23._0_4_ = fStack_1e8 * fStack_1e8 + fStack_1ec * fStack_1ec + local_1f0 * local_1f0;
    auVar23._4_4_ = auVar23._0_4_;
    auVar23._8_4_ = auVar23._0_4_;
    auVar23._12_4_ = auVar23._0_4_;
    auVar25 = rsqrtps(auVar35,auVar23);
    fVar29 = auVar25._0_4_;
    fVar27 = auVar25._4_4_;
    fVar28 = auVar25._8_4_;
    fVar29 = (FLOAT_00f998f8 - fVar29 * fVar29 * auVar23._0_4_) * _DAT_00f9b5b4 * fVar29 + fVar29;
    fVar27 = (FLOAT_00f998f8 - fVar27 * fVar27 * auVar23._0_4_) * _DAT_00f9b5b4 * fVar27 + fVar27;
    fVar28 = (FLOAT_00f998f8 - fVar28 * fVar28 * auVar23._0_4_) * _DAT_00f9b5b4 * fVar28 + fVar28;
    local_1f0 = ((FLOAT_00f998f8 - fVar29 * fVar29 * auVar23._0_4_) * _DAT_00f9b5b4 * fVar29 +
                fVar29) * local_1f0;
    fStack_1ec = ((FLOAT_00f998f8 - fVar27 * fVar27 * auVar23._0_4_) * _DAT_00f9b5b4 * fVar27 +
                 fVar27) * fStack_1ec;
    fStack_1e8 = ((FLOAT_00f998f8 - fVar28 * fVar28 * auVar23._0_4_) * _DAT_00f9b5b4 * fVar28 +
                 fVar28) * fStack_1e8;
  }
  local_1e0 = fStack_1e8 * (float)uStack_268 - fStack_1ec * (float)local_270._0_4_;
  fStack_1dc = local_1f0 * (float)local_270._0_4_ - fStack_1e8 * (float)local_270._4_4_;
  fStack_1d8 = fStack_1ec * (float)local_270._4_4_ - local_1f0 * (float)uStack_268;
  uStack_1e4 = 0;
  uStack_1d4 = 0;
  local_1d0._0_12_ = local_1a0._0_12_;
  local_1d0._12_4_ = 0;
  local_280._0_4_ = local_22c * local_22c + 0.0 + local_234[0] * local_234[0];
  local_280._4_4_ = local_280._0_4_;
  fStack_278 = (float)local_280._0_4_;
  fStack_274 = (float)local_280._0_4_;
  auVar25 = rsqrtps(ZEXT816(0),_local_280);
  fVar29 = auVar25._0_4_;
  fVar27 = auVar25._4_4_;
  fVar28 = auVar25._8_4_;
  fVar29 = (FLOAT_00f998f8 - fVar29 * fVar29 * (float)local_280._0_4_) * _DAT_00f9b5b4 * fVar29 +
           fVar29;
  fVar27 = (FLOAT_00f998f8 - fVar27 * fVar27 * (float)local_280._0_4_) * _DAT_00f9b5b4 * fVar27 +
           fVar27;
  fVar28 = (FLOAT_00f998f8 - fVar28 * fVar28 * (float)local_280._0_4_) * _DAT_00f9b5b4 * fVar28 +
           fVar28;
  auVar8._4_4_ = local_270._4_4_;
  auVar8._0_4_ = local_270._0_4_;
  auVar8._8_8_ = 0;
  local_2c0._0_16_ = auVar8 << 0x40;
  local_2c0._0_4_ = local_270._4_4_;
  auVar30._0_4_ = FLOAT_00fab218 * (float)local_270._4_4_;
  auVar30._4_4_ = FLOAT_00fab218 * 0.0;
  auVar30._8_4_ = FLOAT_00fab218 * (float)local_270._0_4_;
  auVar30._12_4_ = FLOAT_00fab218 * (float)local_270._4_4_;
  auVar25 = maxps(auVar30,(undefined1  [16])local_2c0._0_16_);
  auVar31._4_4_ = -(uint)(auVar25._4_4_ <= DAT_00ffc7f0);
  auVar31._0_4_ = -(uint)(auVar25._0_4_ <= DAT_00ffc7f0);
  auVar31._8_4_ = -(uint)(auVar25._8_4_ <= DAT_00ffc7f0);
  auVar31._12_4_ = -(uint)(auVar25._12_4_ <= DAT_00ffc7f0);
  uVar19 = movmskps(iVar12,auVar31);
  if (((byte)uVar19 & 7) == 7) {
    fVar29 = _DAT_00f9b5b4;
    _local_2a0 = local_1a0;
    _local_250 = local_1a0;
  }
  else {
    fVar32 = (float)local_270._4_4_ * (float)local_270._4_4_;
    auVar11._4_4_ = fVar32;
    auVar11._0_4_ = fVar32;
    auVar11._8_4_ = fVar32;
    auVar11._12_4_ = 0;
    local_250._0_4_ = (float)local_270._0_4_ * (float)local_270._0_4_ + 0.0 + fVar32;
    local_250._4_4_ = local_250._0_4_;
    fStack_248 = (float)local_250._0_4_;
    register0x0000130c = local_250._0_4_;
    auVar25 = rsqrtps(auVar11 << 0x20,_local_250);
    fVar32 = auVar25._0_4_;
    fVar33 = auVar25._4_4_;
    fVar34 = auVar25._8_4_;
    fVar32 = (FLOAT_00f998f8 - fVar32 * fVar32 * (float)local_250._0_4_) * _DAT_00f9b5b4 * fVar32 +
             fVar32;
    fVar33 = (FLOAT_00f998f8 - fVar33 * fVar33 * (float)local_250._0_4_) * _DAT_00f9b5b4 * fVar33 +
             fVar33;
    fVar34 = (FLOAT_00f998f8 - fVar34 * fVar34 * (float)local_250._0_4_) * _DAT_00f9b5b4 * fVar34 +
             fVar34;
    local_2a0._4_4_ =
         (((FLOAT_00f998f8 - fVar28 * fVar28 * (float)local_280._0_4_) * _DAT_00f9b5b4 * fVar28 +
          fVar28) * local_22c *
          ((FLOAT_00f998f8 - fVar34 * fVar34 * (float)local_250._0_4_) * _DAT_00f9b5b4 * fVar34 +
          fVar34) * (float)local_270._0_4_ +
          ((FLOAT_00f998f8 - fVar27 * fVar27 * (float)local_280._0_4_) * _DAT_00f9b5b4 * fVar27 +
          fVar27) * 0.0 *
          ((FLOAT_00f998f8 - fVar33 * fVar33 * (float)local_250._0_4_) * _DAT_00f9b5b4 * fVar33 +
          fVar33) * 0.0 +
         ((FLOAT_00f998f8 - fVar29 * fVar29 * (float)local_280._0_4_) * _DAT_00f9b5b4 * fVar29 +
         fVar29) * local_234[0] *
         ((FLOAT_00f998f8 - fVar32 * fVar32 * (float)local_250._0_4_) * _DAT_00f9b5b4 * fVar32 +
         fVar32) * (float)local_270._4_4_) * _DAT_00f9b5b4 + _DAT_00f9b5b4;
    local_2a0._0_4_ = local_2a0._4_4_;
    fStack_298 = (float)local_2a0._4_4_;
    fStack_294 = (float)local_2a0._4_4_;
    fVar29 = (float)local_2a0._4_4_;
  }
  *(float *)((int)this + 0x24) = fVar29;
  uVar19 = *(undefined4 *)(iVar12 + 0x134);
  uVar5 = *(undefined4 *)(iVar12 + 0x138);
  uVar6 = *(undefined4 *)(iVar12 + 0x13c);
  fVar21 = (float10)fsin(-fVar22);
  *(undefined4 *)((int)this + 0x30) = *(undefined4 *)(iVar12 + 0x130);
  *(undefined4 *)((int)this + 0x34) = uVar19;
  *(undefined4 *)((int)this + 0x38) = uVar5;
  *(undefined4 *)((int)this + 0x3c) = uVar6;
  local_214 = 0;
  local_228 = local_2a8;
  local_224 = local_284;
  local_220 = (float)fVar21;
  fVar22 = (float10)fcos(-fVar22);
  local_21c = (float)fVar22;
  local_218 = (float)-fVar21;
  if (*(uint *)((int)this + 0x50) < *(uint *)((int)this_00 + 8)) {
    piVar14 = (int *)(*(uint *)((int)this + 0x50) * 0x10 + *(int *)((int)this_00 + 4));
    *piVar14 = *piVar14 + 1;
    *(undefined2 *)(piVar14 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar14[3] = (int)&local_228;
  }
  if (*(uint *)((int)this + 0x54) < *(uint *)((int)this_00 + 8)) {
    piVar14 = (int *)(*(uint *)((int)this + 0x54) * 0x10 + *(int *)((int)this_00 + 4));
    *piVar14 = *piVar14 + 1;
    *(undefined2 *)(piVar14 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar14[3] = (int)&local_210;
  }
  FUN_0079a040(this_00,*(uint *)((int)this + 0x58),(int)&local_1f0);
  if (*(uint *)((int)this + 0x5c) < *(uint *)((int)this_00 + 8)) {
    piVar14 = (int *)(*(uint *)((int)this + 0x5c) * 0x10 + *(int *)((int)this_00 + 4));
    *piVar14 = *piVar14 + 1;
    *(undefined2 *)(piVar14 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar14[3] = (int)&local_220;
  }
  if (*(uint *)((int)this + 0x60) < *(uint *)((int)this_00 + 8)) {
    piVar14 = (int *)(*(uint *)((int)this + 0x60) * 0x10 + *(int *)((int)this_00 + 4));
    *piVar14 = *piVar14 + 1;
    *(undefined2 *)(piVar14 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar14[3] = (int)&local_2ac;
  }
  local_190 = 0;
  memset(local_18c,0,0x17c);
  uVar19 = FUN_007c2920(0x11d3780);
  local_2c0._0_4_ = uVar19;
  if (8 < (int)uVar19) {
    local_2c0._0_4_ = 8;
    auVar25 = (undefined1  [16])local_2c0._0_16_;
    local_2c0._0_4_ = 8;
    uVar19 = local_2c0._0_4_;
    local_2c0._0_16_ = auVar25;
  }
  iVar12 = 0;
  if (3 < (int)uVar19) {
    puVar20 = (undefined4 *)(DAT_0115c490 + 8);
    iVar15 = (uVar19 - 4 >> 2) + 1;
    iVar12 = iVar15 * 4;
    puVar18 = local_188;
    do {
      puVar1 = (undefined4 *)puVar20[-2];
      puVar18[-2] = *puVar1;
      puVar18[-1] = puVar1[1];
      *puVar18 = puVar1[2];
      puVar18[1] = 0;
      puVar18[2] = puVar1[4];
      puVar18[3] = puVar1[5];
      puVar18[4] = puVar1[6];
      puVar18[5] = 0;
      puVar18[6] = puVar1[8];
      puVar18[7] = puVar1[9];
      puVar2 = (undefined4 *)puVar20[-1];
      puVar18[8] = puVar1[10];
      puVar18[9] = 0;
      puVar18[10] = *puVar2;
      puVar18[0xb] = puVar2[1];
      puVar18[0xc] = puVar2[2];
      puVar18[0xd] = 0;
      puVar18[0xe] = puVar2[4];
      puVar18[0xf] = puVar2[5];
      puVar18[0x10] = puVar2[6];
      puVar18[0x11] = 0;
      puVar18[0x12] = puVar2[8];
      puVar18[0x13] = puVar2[9];
      puVar1 = (undefined4 *)*puVar20;
      puVar18[0x14] = puVar2[10];
      puVar18[0x15] = 0;
      puVar18[0x16] = *puVar1;
      puVar18[0x17] = puVar1[1];
      puVar18[0x18] = puVar1[2];
      puVar18[0x19] = 0;
      puVar18[0x1a] = puVar1[4];
      puVar18[0x1b] = puVar1[5];
      puVar18[0x1c] = puVar1[6];
      puVar18[0x1d] = 0;
      puVar18[0x1e] = puVar1[8];
      puVar18[0x1f] = puVar1[9];
      puVar2 = (undefined4 *)puVar20[1];
      puVar18[0x20] = puVar1[10];
      puVar18[0x21] = 0;
      puVar18[0x22] = *puVar2;
      puVar18[0x23] = puVar2[1];
      puVar18[0x24] = puVar2[2];
      puVar18[0x25] = 0;
      puVar18[0x26] = puVar2[4];
      puVar18[0x27] = puVar2[5];
      puVar18[0x28] = puVar2[6];
      puVar18[0x29] = 0;
      puVar20 = puVar20 + 4;
      puVar18[0x2a] = puVar2[8];
      iVar15 = iVar15 + -1;
      puVar18[0x2b] = puVar2[9];
      puVar18[0x2c] = puVar2[10];
      puVar18[0x2d] = 0;
      puVar18 = puVar18 + 0x30;
    } while (iVar15 != 0);
    uVar19 = local_2c0._0_4_;
    this = local_2a4;
  }
  if (iVar12 < (int)uVar19) {
    puVar18 = local_188 + iVar12 * 0xc;
    do {
      puVar20 = *(undefined4 **)(DAT_0115c490 + iVar12 * 4);
      iVar12 = iVar12 + 1;
      puVar18[-2] = *puVar20;
      puVar18[-1] = puVar20[1];
      uVar19 = puVar20[2];
      puVar18[1] = 0;
      *puVar18 = uVar19;
      puVar18[2] = puVar20[4];
      puVar18[3] = puVar20[5];
      uVar19 = puVar20[6];
      puVar18[5] = 0;
      puVar18[4] = uVar19;
      puVar18[6] = puVar20[8];
      puVar18[7] = puVar20[9];
      uVar19 = puVar20[10];
      puVar18[9] = 0;
      puVar18[8] = uVar19;
      puVar18 = puVar18 + 0xc;
    } while (iVar12 < (int)local_2c0._0_4_);
    uVar19 = local_2c0._0_4_;
  }
  FUN_0079a020(this_00,*(int *)((int)this + 0x44),uVar19 * 3,2);
  if (*(uint *)((int)this + 0x44) < *(uint *)((int)this_00 + 8)) {
    piVar14 = (int *)(*(uint *)((int)this + 0x44) * 0x10 + *(int *)((int)this_00 + 4));
    *piVar14 = *piVar14 + 1;
    *(undefined2 *)(piVar14 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar14[3] = (int)&local_190;
  }
  local_1fc = uRam011d38b4;
  local_200 = _DAT_011d38b0;
  local_2a0._4_4_ = uRam011d38b4;
  local_2a0._0_4_ = _DAT_011d38b0;
  fStack_298 = (float)uRam011d38b8;
  fStack_294 = (float)uRam011d38bc;
  local_1f8 = 0;
  local_1f4 = 0;
  if (*(uint *)((int)this + 0x4c) < *(uint *)((int)this_00 + 8)) {
    piVar14 = (int *)(*(uint *)((int)this + 0x4c) * 0x10 + *(int *)((int)this_00 + 4));
    *piVar14 = *piVar14 + 1;
    *(undefined2 *)(piVar14 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar14[3] = (int)&local_200;
  }
  piVar14 = (int *)*param_1;
  iVar12 = param_1[1] - (int)piVar14 >> 3;
  if ((*(byte *)(param_2 + 4) & 0x80) == 0) {
    for (; iVar12 != 0; iVar12 = iVar12 + -1) {
      puVar18 = (undefined4 *)*piVar14;
      piVar14 = piVar14 + 2;
      (**(code **)(*(int *)*puVar18 + 0x18))(puVar18[1],param_2);
    }
  }
  else {
    local_2c0._0_16_ = ZEXT816(0);
    auVar9._12_4_ = 0;
    auVar9._0_12_ = local_2c0._4_12_;
    local_2c0._0_16_ = auVar9 << 0x20;
    fStack_25c = 0.0;
    fStack_258 = 0.0;
    fStack_254 = 0.0;
    while (iVar12 != 0) {
      piVar3 = (int *)*piVar14;
      uVar16 = *(int *)(*piVar3 + 0x34) + 1;
      auVar10._4_8_ = uStack_268;
      auVar10._0_4_ = fStack_25c;
      local_270 = (undefined1  [8])(auVar10._0_8_ << 0x20);
      uStack_268._0_4_ = fStack_258;
      uStack_268._4_4_ = fStack_254;
      local_2c0._0_4_ = uVar16 >> 8 & 0xff;
      local_260 = (float)(uVar16 & 0xff) * DAT_00fae564;
      iVar12 = iVar12 + -1;
      local_270._0_4_ = local_260;
      local_280._4_4_ = fStack_25c;
      local_280._0_4_ = local_260;
      fStack_278 = fStack_258;
      fStack_274 = fStack_254;
      fStack_25c = DAT_00fae564 * (float)local_2c0._0_4_;
      piVar14 = piVar14 + 2;
      local_280._4_4_ = fStack_25c;
      if (*(uint *)((int)local_2a4 + 100) < *(uint *)((int)this_00 + 8)) {
        piVar17 = (int *)(*(uint *)((int)local_2a4 + 100) * 0x10 + *(int *)((int)this_00 + 4));
        *piVar17 = *piVar17 + 1;
        piVar17[2] = 1;
        *(undefined2 *)((int)piVar17 + 6) = 2;
        *(undefined2 *)(piVar17 + 1) = *(undefined2 *)((int)this_00 + 0x12);
        piVar17[3] = (int)&local_260;
      }
      (**(code **)(*(int *)*piVar3 + 0x18))(piVar3[1],param_2);
    }
    if (*(uint *)((int)local_2a4 + 100) < *(uint *)((int)this_00 + 8)) {
      piVar14 = (int *)(*(uint *)((int)local_2a4 + 100) * 0x10 + *(int *)((int)this_00 + 4));
      *piVar14 = *piVar14 + 1;
      piVar14[2] = 1;
      *(undefined2 *)((int)piVar14 + 6) = 2;
      *(undefined2 *)(piVar14 + 1) = *(undefined2 *)((int)this_00 + 0x12);
      piVar14[3] = 0;
    }
  }
  if (*(uint *)((int)local_2a4 + 0x48) < *(uint *)((int)this_00 + 8)) {
    piVar14 = (int *)(*(uint *)((int)local_2a4 + 0x48) * 0x10 + *(int *)((int)this_00 + 4));
    *piVar14 = *piVar14 + 1;
    *(undefined2 *)(piVar14 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar14[3] = 0;
  }
  return;
}

