/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name, original PC 1.67 TS3W.exe. Called by main frame00975CEB with controller
   input subobject +40. Initializes two 9-float outputs: translation XYZW, angular XYZW, zoom
   scalar. The frame treats first as rate and second as per-frame impulse divided by dt. Before
   aggregation, wheel +1F0 minus +1C0 is drained, signed-scaled from bank1 +108/+10C and later added
   to impulse zoom. Active drag mask +4E0: bit2 emits angular impulse from current +500 minus
   previous +510, with inverted Y; bit4 emits translation rate from current minus anchor +4F0 after
   radial8-unit deadzone; bit8 selects Y versus Z translation. Warp compensation +520 is applied to
   anchor and previous, then cleared after collecting four 0x100-stride banks via009622C0. No
   angular cap or shortest-angle rule occurs here. Field roles are inferred from instruction-checked
   producer/consumer layout; physical button identity is established separately. */

void __thiscall CameraInput_CollectRateAndImpulse(void *this,float *rateOutput,float *impulseOutput)

{
  float fVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  int iVar11;
  int extraout_ECX;
  int extraout_EDX;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar17;
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  float fVar18;
  undefined4 uVar19;
  undefined4 uVar20;
  undefined4 uVar21;
  undefined4 uVar22;
  float local_20;

  uVar19 = 0;
  uVar20 = 0;
  uVar21 = 0;
  uVar22 = 0;
  *rateOutput = 0.0;
  rateOutput[1] = 0.0;
  rateOutput[2] = 0.0;
  rateOutput[3] = 0.0;
  rateOutput[4] = 0.0;
  rateOutput[5] = 0.0;
  rateOutput[6] = 0.0;
  rateOutput[7] = 0.0;
  rateOutput[8] = 0.0;
  *impulseOutput = 0.0;
  impulseOutput[1] = 0.0;
  impulseOutput[2] = 0.0;
  impulseOutput[3] = 0.0;
  impulseOutput[4] = 0.0;
  impulseOutput[5] = 0.0;
  impulseOutput[6] = 0.0;
  impulseOutput[7] = 0.0;
  impulseOutput[8] = 0.0;
                    /* Drain signed wheel difference +1F0 minus +1C0 to zero; select bank1 scalar
                       +108 for positive difference, +10C for zero/negative. This scalar is added to
                       impulseOutput[8] after bank aggregation. */
  fVar12 = *(float *)((int)this + 0x1f0) - *(float *)((int)this + 0x1c0);
  iVar11 = 2;
  if (fVar12 <= 0.0) {
    iVar11 = 3;
  }
  fVar1 = *(float *)((int)this + iVar11 * 4 + 0x100);
  *(undefined4 *)((int)this + 0x1f0) = 0;
  *(undefined4 *)((int)this + 0x1c0) = 0;
  if (*(char *)((int)this + 0x4e0) == '\0') {
                    /* When drag mask is zero, clear bank1 motion vectors/scalars at+140..+190
                       and+1A0..+1F0. Wheel was already captured locally, so wheel impulse still
                       survives this clear. Other three banks are not cleared here. */
    *(undefined1 *)((int)this + 0x4e0) = 0;
    *(undefined4 *)((int)this + 0x170) = 0;
    *(undefined4 *)((int)this + 0x174) = 0;
    *(undefined4 *)((int)this + 0x178) = 0;
    *(undefined4 *)((int)this + 0x17c) = 0;
    *(undefined4 *)((int)this + 0x180) = 0;
    *(undefined4 *)((int)this + 0x184) = 0;
    *(undefined4 *)((int)this + 0x188) = 0;
    *(undefined4 *)((int)this + 0x18c) = 0;
    *(undefined4 *)((int)this + 400) = 0;
    *(undefined4 *)((int)this + 0x140) = 0;
    *(undefined4 *)((int)this + 0x144) = 0;
    *(undefined4 *)((int)this + 0x148) = 0;
    *(undefined4 *)((int)this + 0x14c) = 0;
    *(undefined4 *)((int)this + 0x150) = 0;
    *(undefined4 *)((int)this + 0x154) = 0;
    *(undefined4 *)((int)this + 0x158) = 0;
    *(undefined4 *)((int)this + 0x15c) = 0;
    *(undefined4 *)((int)this + 0x160) = 0;
    *(undefined4 *)((int)this + 0x1d0) = 0;
    *(undefined4 *)((int)this + 0x1d4) = 0;
    *(undefined4 *)((int)this + 0x1d8) = 0;
    *(undefined4 *)((int)this + 0x1dc) = 0;
    *(undefined4 *)((int)this + 0x1e0) = 0;
    *(undefined4 *)((int)this + 0x1e4) = 0;
    *(undefined4 *)((int)this + 0x1e8) = 0;
    *(undefined4 *)((int)this + 0x1ec) = 0;
    *(undefined4 *)((int)this + 0x1f0) = 0;
    *(undefined4 *)((int)this + 0x1a0) = 0;
    *(undefined4 *)((int)this + 0x1a4) = 0;
    *(undefined4 *)((int)this + 0x1a8) = 0;
    *(undefined4 *)((int)this + 0x1ac) = 0;
    *(undefined4 *)((int)this + 0x1b0) = 0;
    *(undefined4 *)((int)this + 0x1b4) = 0;
    *(undefined4 *)((int)this + 0x1b8) = 0;
    *(undefined4 *)((int)this + 0x1bc) = 0;
    *(undefined4 *)((int)this + 0x1c0) = 0;
  }
  else {
                    /* Apply warp compensation vector +520 to both anchor +4F0 and previous sample
                       +510. Current sample is +500. Rotation delta uses current minus compensated
                       previous; panning displacement uses current minus compensated anchor, with
                       screen Y inverted. Previous is updated to current at00962DC4. */
    *(float *)((int)this + 0x4f0) = *(float *)((int)this + 0x520) + *(float *)((int)this + 0x4f0);
    *(float *)((int)this + 0x4f4) = *(float *)((int)this + 0x524) + *(float *)((int)this + 0x4f4);
    *(float *)((int)this + 0x4f8) = *(float *)((int)this + 0x528) + *(float *)((int)this + 0x4f8);
    *(float *)((int)this + 0x4fc) = *(float *)((int)this + 0x52c) + *(float *)((int)this + 0x4fc);
    *(float *)((int)this + 0x510) = *(float *)((int)this + 0x520) + *(float *)((int)this + 0x510);
    *(float *)((int)this + 0x514) = *(float *)((int)this + 0x524) + *(float *)((int)this + 0x514);
    *(float *)((int)this + 0x518) = *(float *)((int)this + 0x528) + *(float *)((int)this + 0x518);
    *(float *)((int)this + 0x51c) = *(float *)((int)this + 0x52c) + *(float *)((int)this + 0x51c);
    fVar14 = DAT_0117eddc;
    fVar7 = *(float *)((int)this + 0x500);
    fVar8 = *(float *)((int)this + 0x504);
    fVar9 = *(float *)((int)this + 0x510);
    fVar10 = *(float *)((int)this + 0x514);
    fVar13 = fVar7 - *(float *)((int)this + 0x4f0);
    fVar18 = 0.0 - (fVar8 - *(float *)((int)this + 0x4f4));
    auVar15._0_4_ = fVar13 * fVar13;
    fVar17 = fVar18 * fVar18;
    auVar15._4_4_ = auVar15._0_4_;
    auVar15._8_4_ = auVar15._0_4_;
    auVar15._12_4_ = auVar15._0_4_;
    auVar16._4_4_ = fVar17 + auVar15._0_4_;
    auVar16._0_4_ = fVar17 + auVar15._0_4_;
    auVar16._8_4_ = fVar17 + auVar15._0_4_;
    auVar16._12_4_ = fVar17 + auVar15._0_4_;
    auVar16 = sqrtps(auVar15,auVar16);
                    /* Original binary32 radius [0117EDDC] =8.0f, bytes00000041. If displacement
                       length<8 select zero; otherwise subtract8/length times displacement. This
                       radial deadzone governs translation rate for pan maskbit4, not rotation
                       impulse. */
    local_20 = auVar16._0_4_;
    *(float *)((int)this + 0x510) = fVar7;
    *(float *)((int)this + 0x514) = fVar8;
    *(undefined4 *)((int)this + 0x518) = *(undefined4 *)((int)this + 0x508);
    *(undefined4 *)((int)this + 0x51c) = *(undefined4 *)((int)this + 0x50c);
    if (fVar14 <= local_20) {
      fVar14 = fVar14 / local_20;
      fVar13 = fVar13 - fVar14 * fVar13;
      fVar18 = fVar18 - fVar14 * fVar18;
    }
    else {
      fVar13 = 0.0;
      fVar18 = 0.0;
    }
                    /* CL=2 here: maskbit2 gates angular impulse. Inverted cursor deltaY is written
                       to input+1E0 (bank1 angular impulseX), cursor deltaX to+1E4 (angular
                       impulseY). The frame later uses angularY for yaw. */
    local_20 = 0.0 - (fVar8 - fVar10);
    if ((*(byte *)((int)this + 0x4e0) & 2) == 0) {
      local_20 = 0.0;
    }
    *(float *)((int)this + 0x1e0) = local_20;
    *(undefined4 *)((int)this + 0x1e4) = *(undefined4 *)((int)this + 0x1e4);
    *(undefined4 *)((int)this + 0x1e8) = *(undefined4 *)((int)this + 0x1e8);
    *(undefined4 *)((int)this + 0x1ec) = *(undefined4 *)((int)this + 0x1ec);
    local_20 = fVar7 - fVar9;
    if ((*(byte *)((int)this + 0x4e0) & 2) == 0) {
      local_20 = 0.0;
    }
    *(undefined4 *)((int)this + 0x1e0) = *(undefined4 *)((int)this + 0x1e0);
    *(float *)((int)this + 0x1e4) = local_20;
    *(undefined4 *)((int)this + 0x1e8) = *(undefined4 *)((int)this + 0x1e8);
    *(undefined4 *)((int)this + 0x1ec) = *(undefined4 *)((int)this + 0x1ec);
    auVar6._12_4_ = 0;
    auVar6._0_12_ = SUB1612(*(undefined1 (*) [16])((int)this + 0x1b0),4);
    *(undefined1 (*) [16])((int)this + 0x1b0) = auVar6 << 0x20;
    *(undefined4 *)((int)this + 0x1b0) = *(undefined4 *)((int)this + 0x1b0);
    *(undefined4 *)((int)this + 0x1b4) = 0;
    *(undefined4 *)((int)this + 0x1b8) = *(undefined4 *)((int)this + 0x1b8);
    *(undefined4 *)((int)this + 0x1bc) = *(undefined4 *)((int)this + 0x1bc);
                    /* Maskbit4 gates continuous panning translation into bank1 +170/+174/+178.
                       Maskbit8 chooses vertical Y translation; otherwise inverted screenY goes to
                       Z. These are translation slots, not angular slots. */
    if ((*(byte *)((int)this + 0x4e0) & 4) == 0) {
      fVar13 = 0.0;
    }
    *(float *)((int)this + 0x170) = fVar13;
    *(undefined4 *)((int)this + 0x174) = *(undefined4 *)((int)this + 0x174);
    *(undefined4 *)((int)this + 0x178) = *(undefined4 *)((int)this + 0x178);
    *(undefined4 *)((int)this + 0x17c) = *(undefined4 *)((int)this + 0x17c);
    auVar5._12_4_ = 0;
    auVar5._0_12_ = SUB1612(*(undefined1 (*) [16])((int)this + 0x140),4);
    *(undefined1 (*) [16])((int)this + 0x140) = auVar5 << 0x20;
    if ((*(byte *)((int)this + 0x4e0) & 8) == 0) {
      *(undefined4 *)((int)this + 0x170) = *(undefined4 *)((int)this + 0x170);
      *(undefined4 *)((int)this + 0x174) = 0;
      *(undefined4 *)((int)this + 0x178) = *(undefined4 *)((int)this + 0x178);
      *(undefined4 *)((int)this + 0x17c) = *(undefined4 *)((int)this + 0x17c);
      if ((*(byte *)((int)this + 0x4e0) & 4) == 0) {
        fVar18 = 0.0;
      }
      uVar2 = *(undefined4 *)((int)this + 0x170);
      uVar4 = *(undefined4 *)((int)this + 0x174);
      uVar3 = *(undefined4 *)((int)this + 0x17c);
    }
    else {
      if ((*(byte *)((int)this + 0x4e0) & 4) == 0) {
        fVar18 = 0.0;
      }
      *(undefined4 *)((int)this + 0x170) = *(undefined4 *)((int)this + 0x170);
      *(float *)((int)this + 0x174) = fVar18;
      *(undefined4 *)((int)this + 0x178) = *(undefined4 *)((int)this + 0x178);
      *(undefined4 *)((int)this + 0x17c) = *(undefined4 *)((int)this + 0x17c);
      uVar2 = *(undefined4 *)((int)this + 0x170);
      uVar4 = *(undefined4 *)((int)this + 0x174);
      uVar3 = *(undefined4 *)((int)this + 0x17c);
      fVar18 = 0.0;
    }
    *(undefined4 *)((int)this + 0x170) = uVar2;
    *(undefined4 *)((int)this + 0x174) = uVar4;
    *(float *)((int)this + 0x178) = fVar18;
    *(undefined4 *)((int)this + 0x17c) = uVar3;
    *(undefined4 *)((int)this + 0x140) = *(undefined4 *)((int)this + 0x140);
    *(undefined4 *)((int)this + 0x144) = 0;
    *(undefined4 *)((int)this + 0x148) = *(undefined4 *)((int)this + 0x148);
    *(undefined4 *)((int)this + 0x14c) = *(undefined4 *)((int)this + 0x14c);
    *(undefined4 *)((int)this + 0x140) = *(undefined4 *)((int)this + 0x140);
    *(undefined4 *)((int)this + 0x144) = *(undefined4 *)((int)this + 0x144);
    *(undefined4 *)((int)this + 0x148) = 0;
    *(undefined4 *)((int)this + 0x14c) = *(undefined4 *)((int)this + 0x14c);
  }
                    /* Aggregate four banks at strides0x100 with009622C0. Add saved wheel term to
                       second output.zoom at00963036..00963041, then clear warp compensation+520
                       at00963048. Other accumulated impulse fields are not universally cleared by
                       this helper. */
  iVar11 = 4;
  do {
    CameraInput_AccumulateBankOutputs(this,rateOutput,impulseOutput);
    this = (void *)(extraout_ECX + 0x100);
    iVar11 = iVar11 + -1;
  } while (iVar11 != 0);
  impulseOutput[8] = impulseOutput[8] + fVar1 * fVar12;
  *(undefined4 *)(extraout_EDX + 0x520) = uVar19;
  *(undefined4 *)(extraout_EDX + 0x524) = uVar20;
  *(undefined4 *)(extraout_EDX + 0x528) = uVar21;
  *(undefined4 *)(extraout_EDX + 0x52c) = uVar22;
  return;
}

