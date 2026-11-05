/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX runner and five stack words; RET0x14. Stores node index, XZ, sign-extended 16-bit floor,
   current/next lot observations and zero substep. A supplied lot may be reused; otherwise queries
   by the current position. The long-segment branch uses SQRTPS, stored scalar multiplication, ceil
   and the x87 truncate helper to produce a count and step vector; other branches use count1. No
   Boolean return or independent route admission is established. */

void __thiscall
NeighborhoodPathRunner_InitializeSpan
          (void *this,void *param_1,int param_2,int param_3,char param_4,void *param_5)

{
  undefined1 uVar1;
  undefined4 *puVar2;
  undefined3 extraout_var;
  void *pvVar3;
  int iVar4;
  float *pfVar5;
  float fVar6;
  undefined1 auVar7 [16];
  float fVar8;
  double dVar9;
  float local_20;
  
  *(int *)this = param_3;
  puVar2 = (undefined4 *)(param_3 * 0x40 + *(int *)(param_2 + 8));
  *(undefined4 *)((int)this + 4) = *puVar2;
  *(undefined4 *)((int)this + 8) = puVar2[2];
  *(int *)((int)this + 0xc) = (int)*(short *)(puVar2 + 3);
  if (param_4 == '\0') {
    param_5 = LotSpatialIndex_FindContainingLotAtWorldXZ
                        (param_1,*(float *)((int)this + 4),*(float *)((int)this + 8));
  }
  *(void **)((int)this + 0x10) = param_5;
  *(undefined4 *)((int)this + 0x18) = 0;
  if ((puVar2[0xe] != 0) && (param_5 != (void *)0x0)) {
    uVar1 = FUN_00ab0590((int)param_5);
    *(uint *)((int)this + 0xc) = CONCAT31(extraout_var,uVar1);
  }
  if (*(int *)this == (*(int *)(param_2 + 0xc) - *(int *)(param_2 + 8) >> 6) + -1) {
    *(undefined4 *)((int)this + 0x14) = 0;
  }
  else {
    pfVar5 = (float *)((*(int *)this + 1) * 0x40 + *(int *)(param_2 + 8));
    pvVar3 = LotSpatialIndex_FindContainingLotAtWorldXZ(param_1,*pfVar5,pfVar5[2]);
    *(void **)((int)this + 0x14) = pvVar3;
    fVar8 = pfVar5[2] - *(float *)((int)this + 8);
    fVar6 = *pfVar5 - *(float *)((int)this + 4);
    auVar7._0_4_ = fVar6 * fVar6 + fVar8 * fVar8;
    if (DAT_00fcc6f0 < auVar7._0_4_) {
      auVar7._4_4_ = auVar7._0_4_;
      auVar7._8_4_ = auVar7._0_4_;
      auVar7._12_4_ = auVar7._0_4_;
      auVar7 = sqrtps(auVar7,auVar7);
      local_20 = auVar7._0_4_;
      dVar9 = ceil((double)(local_20 * DAT_00fab214));
      iVar4 = Compiler_TruncateX87ToLowInt32((float10)dVar9);
      *(int *)((int)this + 0x1c) = iVar4;
      *(float *)((int)this + 0x20) = (*pfVar5 - *(float *)((int)this + 4)) / (float)iVar4;
      *(float *)((int)this + 0x24) = (pfVar5[2] - *(float *)((int)this + 8)) / (float)iVar4;
      return;
    }
  }
  *(undefined4 *)((int)this + 0x1c) = 1;
  return;
}

