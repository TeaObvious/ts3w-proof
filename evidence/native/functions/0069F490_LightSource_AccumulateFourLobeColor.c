/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC1.67 four-lobe directional source-color accumulation. Physical sample pointer Stack4, source
   pointer Stack8, four aligned16B destination rows StackC; RET12. Existing analysis types and
   undefined/unassigned return metadata are preserved, not a complete source-class or semantic
   return declaration. Source virtual+24 supplies position; SUBPS subtracts sample. XYZ squared
   length=(z*z+y*y)+x*x; RSQRTPS is refined twice as r=(1-r*r*s)*(.5*r)+r, then multiplied by delta.
   Source virtual+10 supplies a local row; its four color lanes at row+10 are consumed, not its
   blended direction. Native lazy lobe table XYZ is (+a,b,0),(-a,b,0),(0,b,+a),(0,b,-a),
   a=DWORD3F64F766,b=3EE4F766. Dot grouping=(zterm+yterm)+xterm including zero products. Clamp
   selects by signs of -0-dot then1-low. Weights sum in0..3 order from+0. COMISS branches distribute
   for sum>2^-23, sum<-2^-23 or unordered. Four16B rows update as existing+(color*weight)/sum.
   Caller6A0E26 pushes sample/source/output and reloads EAX before index increment in the bounded
   observed window. Source-provider behavior, native row initialization internals, CPU
   estimate/MXCSR, allocation failure and complete room/map publication are outside this selected
   body proof. Analyst name and previously empty PLATE only; all ABI, locals, references,
   instructions, owned ranges and bytes remain unchanged. */

void LightSource_AccumulateFourLobeColor(float *param_1,int *param_2,float *param_3)

{
  undefined1 auVar1 [16];
  float *pfVar2;
  uint uVar3;
  uint uVar4;
  float fVar5;
  float fVar6;
  undefined1 auVar7 [16];
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  undefined1 in_XMM4 [16];
  undefined1 auVar13 [16];
  float fStack_6c;
  float fStack_68;
  float afStack_5c [3];
  undefined1 local_50 [12];
  undefined1 auStack_44 [4];
  undefined1 local_40 [4];
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  
  if ((_DAT_011d12e0 & 1) == 0) {
    _DAT_011d12e0 = _DAT_011d12e0 | 1;
    _DAT_011d12a0 = DAT_00ff4408;
    fRam011d12a4 = DAT_00ff4404;
    uRam011d12a8 = 0;
    uRam011d12ac = DAT_00ff4408;
    in_XMM4._4_4_ = DAT_00ff4404;
    in_XMM4._0_4_ = DAT_00ff4400;
    in_XMM4._8_4_ = 0;
    in_XMM4._12_4_ = DAT_00ff4400;
    afStack_5c[2] = 0.0;
    afStack_5c[1] = (float)DAT_00ff4400;
    afStack_5c[0] = DAT_00ff4404;
    _DAT_011d12c0 = 0;
    fRam011d12c4 = DAT_00ff4404;
    uRam011d12c8 = DAT_00ff4408;
    uRam011d12cc = 0;
    _DAT_011d12d0 = 0;
    fRam011d12d4 = DAT_00ff4404;
    uRam011d12d8 = DAT_00ff4400;
    uRam011d12dc = 0;
    _DAT_011d12b0 = in_XMM4;
  }
  FUN_006bc2d0((int)local_40);
  pfVar2 = (float *)(**(code **)(*param_2 + 0x24))(local_50);
  fVar12 = *pfVar2 - *param_1;
  afStack_5c[0] = pfVar2[2] - param_1[2];
  fVar5 = afStack_5c[0] * afStack_5c[0] + (pfVar2[1] - param_1[1]) * (pfVar2[1] - param_1[1]) +
          fVar12 * fVar12;
  auVar13._4_4_ = fVar5;
  auVar13._0_4_ = fVar5;
  auVar13._8_4_ = fVar5;
  auVar13._12_4_ = fVar5;
  auVar13 = rsqrtps(in_XMM4,auVar13);
  fVar8 = auVar13._0_4_;
  fVar9 = auVar13._8_4_;
  fVar10 = auVar13._12_4_;
  fVar8 = (FLOAT_00f998f8 - fVar8 * fVar8 * fVar5) * _DAT_00f9b5b4 * fVar8 + fVar8;
  fVar9 = (FLOAT_00f998f8 - fVar9 * fVar9 * fVar5) * _DAT_00f9b5b4 * fVar9 + fVar9;
  fVar10 = (FLOAT_00f998f8 - fVar10 * fVar10 * fVar5) * _DAT_00f9b5b4 * fVar10 + fVar10;
  fVar6 = FLOAT_00f998f8 - fVar8 * fVar8 * fVar5;
  fVar11 = _DAT_00f9b5b4 * fVar8;
  afStack_5c[0] =
       ((FLOAT_00f998f8 - fVar9 * fVar9 * fVar5) * _DAT_00f9b5b4 * fVar9 + fVar9) * afStack_5c[0];
  afStack_5c[1] =
       ((FLOAT_00f998f8 - fVar10 * fVar10 * fVar5) * _DAT_00f9b5b4 * fVar10 + fVar10) *
       (pfVar2[3] - param_1[3]);
  (**(code **)(*param_2 + 0x10))(param_1,auStack_44);
  fVar5 = 0.0;
  pfVar2 = afStack_5c;
  uVar4 = 0;
  do {
    fVar9 = *(float *)(uVar4 + 0x11d12a8) * (fVar6 * fVar11 + fVar8) * fVar12 +
            *(float *)(uVar4 + 0x11d12a4) * fStack_68 +
            *(float *)(&DAT_011d12a0 + uVar4) * fStack_6c;
    fVar9 = (float)((uint)fVar9 & (int)(FLOAT_00f998f0 - fVar9) >> 0x1f);
    uVar3 = (int)(FLOAT_00f998f8 - fVar9) >> 0x1f;
    fVar9 = (float)(~uVar3 & (uint)fVar9 | (uint)FLOAT_00f998f8 & uVar3);
    *pfVar2 = fVar9;
    uVar4 = uVar4 + 0x10;
    pfVar2 = pfVar2 + 1;
    fVar5 = fVar9 + fVar5;
  } while (uVar4 < 0x40);
  if ((_DAT_00ff43d8 < fVar5) || (fVar5 < FLOAT_00fae548)) {
    uVar4 = 0;
    do {
      fVar6 = afStack_5c[uVar4];
      auVar7._0_4_ = fVar6 * fStack_3c;
      auVar7._4_4_ = fVar6 * fStack_38;
      auVar7._8_4_ = fVar6 * fStack_34;
      auVar7._12_4_ = fVar6 * fStack_30;
      auVar1._4_4_ = fVar5;
      auVar1._0_4_ = fVar5;
      auVar1._8_4_ = fVar5;
      auVar1._12_4_ = fVar5;
      auVar13 = divps(auVar7,auVar1);
      *param_3 = auVar13._0_4_ + *param_3;
      param_3[1] = auVar13._4_4_ + param_3[1];
      param_3[2] = auVar13._8_4_ + param_3[2];
      param_3[3] = auVar13._12_4_ + param_3[3];
      uVar4 = uVar4 + 1;
      param_3 = param_3 + 4;
    } while (uVar4 < 4);
  }
  return;
}

