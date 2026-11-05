/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; analyst-assigned role. Physical thiscall ECX window interface
   (complete object+4), float X/Y and outputfloat2 stack arguments, RET0C; Boolean uses AL only.
   Parent transform refresh follows+2C chain and bit4 at complete+1F8 through50DEE0.
   Transform-state+1DC equal4 returns false without writing outLocalPoint. Otherwise evaluate
   four-lane binary32 x*basis+19C plus y*basis+1AC plus translation+1CC with separate MULPS/ADDPS,
   no FMA. If Z basis+1C4 lies outside inclusive[-2^-23,+2^-23], subtract basis+1BC times
   transformedZ/basisZ. If resulting homogeneousW is within that finite interval, write output0,0
   and false; otherwise compute reciprocal1/W with DIVPS and multiply X/Y into outputs. COMISS
   unordered/NaN branches must be read from ASM, not replaced by a generic finite abs test.
   Decompiler's parent-pointer-derived upper return bits and SIMD temporary types are artifacts;
   only physical AL/outfloat2 are claimed. Constants have exact original bits34000000/B4000000, not
   rounded decimal epsilon. */

bool __thiscall
UiWindow_ScreenPointToLocal(void *this,float screenX,float screenY,float *outLocalPoint)

{
  undefined1 auVar1 [16];
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  
  iVar3 = (int)this + -4;
  if (*(void **)((int)this + 0x2c) != (void *)0x0) {
    iVar4 = 0;
    do {
      if ((*(byte *)(iVar3 + 0x1f8) & 4) != 0) {
        iVar4 = iVar3;
      }
      iVar3 = *(int *)(iVar3 + 0x2c);
    } while (iVar3 != 0);
    if (iVar4 != 0) {
      FUN_0050dee0(*(void **)((int)this + 0x2c),iVar4);
    }
  }
  if (*(int *)((int)this + 0x1dc) != 4) {
    fVar5 = screenX * *(float *)((int)this + 0x19c) + screenY * *(float *)((int)this + 0x1ac) +
            *(float *)((int)this + 0x1cc);
    fVar6 = screenX * *(float *)((int)this + 0x1a0) + screenY * *(float *)((int)this + 0x1b0) +
            *(float *)((int)this + 0x1d0);
    fVar7 = screenX * *(float *)((int)this + 0x1a4) + screenY * *(float *)((int)this + 0x1b4) +
            *(float *)((int)this + 0x1d4);
    fVar8 = screenX * *(float *)((int)this + 0x1a8) + screenY * *(float *)((int)this + 0x1b8) +
            *(float *)((int)this + 0x1d8);
    if ((DAT_00fbbab0 < *(float *)((int)this + 0x1c4)) ||
       (*(float *)((int)this + 0x1c4) < FLOAT_00fae548)) {
      uVar2 = *(undefined4 *)((int)this + 0x1c4);
      auVar10._4_4_ = fVar7;
      auVar10._0_4_ = fVar7;
      auVar10._8_4_ = fVar7;
      auVar10._12_4_ = fVar7;
      auVar11._4_4_ = uVar2;
      auVar11._0_4_ = uVar2;
      auVar11._8_4_ = uVar2;
      auVar11._12_4_ = uVar2;
      auVar11 = divps(auVar10,auVar11);
      fVar5 = fVar5 - *(float *)((int)this + 0x1bc) * auVar11._0_4_;
      fVar6 = fVar6 - *(float *)((int)this + 0x1c0) * auVar11._4_4_;
      fVar8 = fVar8 - *(float *)((int)this + 0x1c8) * auVar11._12_4_;
    }
    if ((DAT_00fbbab0 < fVar8) || (fVar8 < FLOAT_00fae548)) {
      auVar9._4_4_ = FLOAT_00f998f8;
      auVar9._0_4_ = FLOAT_00f998f8;
      auVar9._8_4_ = FLOAT_00f998f8;
      auVar9._12_4_ = FLOAT_00f998f8;
      auVar1._4_4_ = fVar8;
      auVar1._0_4_ = fVar8;
      auVar1._8_4_ = fVar8;
      auVar1._12_4_ = fVar8;
      auVar11 = divps(auVar9,auVar1);
      *outLocalPoint = fVar5 * auVar11._0_4_;
      outLocalPoint[1] = fVar6 * auVar11._0_4_;
      return true;
    }
    *outLocalPoint = 0.0;
    outLocalPoint[1] = 0.0;
  }
  return false;
}

